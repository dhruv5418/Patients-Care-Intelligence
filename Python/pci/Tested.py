from flask import Flask,jsonify,request
from flask_cors import CORS, cross_origin
import argparse
import datetime
import imutils
import math
import cv2
import numpy as np
import face_recognition
from flask_mysqldb import MySQL

now=datetime.datetime.now()

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'pci'

mysql = MySQL(app)

@app.route('/')
def DetectNurse():
    width = 800
    textIn = 0
    def testIntersectionIn(x, y):
        res = -500 * x + 300 * y
        if((res >= -1000) and  (res < 1000)):
            print (str(res))
            return True
        return False

    camera = cv2.VideoCapture(r"C:\Users\Mon2\PycharmProjects\pci\resource\17.mp4")
    obama_image = face_recognition.load_image_file(r"C:\Users\Mon2\PycharmProjects\pci\resource\chintan124.JPG")
    obama_face_encoding = face_recognition.face_encodings(obama_image)[0]

    biden_image = face_recognition.load_image_file(r"C:\Users\Mon2\PycharmProjects\pci\resource\ranbir.jpg")
    biden_face_encoding = face_recognition.face_encodings(biden_image)[0]

    # Create arrays of known face encodings and their names
    known_face_encodings = [
        obama_face_encoding,
        biden_face_encoding
    ]
    known_face_names = [
        "Chintan",
        "Employee2"
    ]

    face_locations = []
    face_encodings = []
    face_names = []
    process_this_frame = True
    firstFrame = None

    # loop over the frames of the video
    while True:
        # grab the current frame and initialize the occupied/unoccupied
        # text
        (grabbed, frame) = camera.read()
        text = "Unoccupied"

        # if the frame could not be grabbed, then we have reached the end
        # of the video
        if not grabbed:
            break


        # resize the frame, convert it to grayscale, and blur it

        small_frame = cv2.resize(frame, (0, 0), fx=0.25, fy=0.25)

        # Convert the image from BGR color (which OpenCV uses) to RGB color (which face_recognition uses)
        rgb_small_frame = small_frame[:, :, ::-1]

        # Only process every other frame of video to save time
        if process_this_frame:
            # Find all the faces and face encodings in the current frame of video
            face_locations = face_recognition.face_locations(rgb_small_frame)
            face_encodings = face_recognition.face_encodings(rgb_small_frame, face_locations)

            face_names = []
            for face_encoding in face_encodings:
                # See if the face is a match for the known face(s)
                matches = face_recognition.compare_faces(known_face_encodings, face_encoding)
                name = "Unknown"

                # If a match was found in known_face_encodings, just use the first one.
                if True in matches:
                    first_match_index = matches.index(True)
                    name = known_face_names[first_match_index]

                face_names.append(name)

        process_this_frame = not process_this_frame

        # Display the results
        for (top, right, bottom, left), name in zip(face_locations, face_names):
            # Scale back up face locations since the frame we detected in was scaled to 1/4 size
            top *= 4
            right *= 4
            bottom *= 4
            left *= 4

            # Draw a box around the face
            cv2.rectangle(frame, (left, top), (right, bottom), (0, 0, 255), 2)

            # Draw a label with a name below the face
            cv2.rectangle(frame, (left, bottom - 35), (right, bottom), (0, 0, 255), cv2.FILLED)
            font = cv2.FONT_HERSHEY_DUPLEX
            cv2.putText(frame, name, (left + 6, bottom - 6), font, 1.0, (255, 255, 255), 1)

        frame = imutils.resize(frame, width=width)
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        gray = cv2.GaussianBlur(gray, (21, 21), 0)
        small_frame = cv2.resize(frame, (0, 0), fx=0.25, fy=0.25)

        # Convert the image from BGR color (which OpenCV uses) to RGB color (which face_recognition uses)
        rgb_small_frame = small_frame[:, :, ::-1]
        # if the first frame is None, initialize it
        if firstFrame is None:
            firstFrame = gray
            continue

        # compute the absolute difference between the current frame and
        # first frame
        frameDelta = cv2.absdiff(firstFrame, gray)
        thresh = cv2.threshold(frameDelta, 25, 255, cv2.THRESH_BINARY)[1]
        # dilate the thresholded image to fill in holes, then find contours
        # on thresholded image
        thresh = cv2.dilate(thresh, None, iterations=2)
        _, cnts, _ = cv2.findContours(thresh.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        # loop over the contours
        for c in cnts:
            # if the contour is too small, ignore it
            if cv2.contourArea(c) < 12000:
                continue
            # compute the bounding box for the contour, draw it on the frame,
            # and update the text
            (x, y, w, h) = cv2.boundingRect(c)
            cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 255, 0), 2)

            cv2.line(frame, (0,0), (300,500), (250, 0, 1), 2) #blue line
            #cv2.line(frame, (width // 2 - 50, 0), (width - 50, 450), (0, 0, 255), 2)#red line
            x1=(x+x+w)//2
            y1=(y+y+h)//2

            rectagleCenterPont = ((x + x + w) //2, (y + y + h) //2)
            cv2.circle(frame, rectagleCenterPont, 1, (0, 0, 255), 5)

            if(testIntersectionIn(x1,y1)):
                textIn += 1
                NurseName=face_names[first_match_index]
                print(NurseName)
                minute = now.minute
                hour = now.hour
                day = now.day
                month = now.month
                year = now.year
                # Create cursor
                cur = mysql.connection.cursor()
                cur.execute("INSERT INTO nursedetails(Name,Minute,Hour,Day,Month,Year) VALUES(%s,%s,%s,%s,%s,%s)",(NurseName, minute, hour, day, month, year))
                # Execute query
                # Commit to DB
                mysql.connection.commit()
                # Close connection
                cur.close()

            # show the frame and record if the user presses a key
            # cv2.imshow("Thresh", thresh)
            # cv2.imshow("Frame Delta", frameDelta)

        if cv2.waitKey(100) & 0xFF == ord('q'):
            break

        cv2.putText(frame, "In: {}".format(str(textIn)), (10, 50),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 2)
        # cv2.putText(frame, "Out: {}".format(str(textOut)), (10, 70),
        #             cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 2)
        cv2.putText(frame, datetime.datetime.now().strftime("%A %d %B %Y %I:%M:%S%p"),
                    (10, frame.shape[0] - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.35, (0, 0, 255), 1)
        cv2.imshow("Security Feed", frame)


    # cleanup the camera and close any open windows
    camera.release()
    cv2.destroyAllWindows()
    return None


if __name__ == '__main__':
    app.run(debug='TRUE')