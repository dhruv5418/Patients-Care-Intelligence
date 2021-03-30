package com.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dataset_master")
public class DatasetVO
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int datasetId;
	
	@Column(name="datasetname")
	private String datasetName;
	
	@Column(name="datasetfilename")
	private String datasetFileName;
	
	@Column(name="datasetfilepath")
	private String datasetFilePath;

	public int getDatasetId() {
		return datasetId;
	}

	public void setDatasetId(int datasetId) {
		this.datasetId = datasetId;
	}

	public String getDatasetName() {
		return datasetName;
	}

	public void setDatasetName(String datasetName) {
		this.datasetName = datasetName;
	}

	public String getDatasetFileName() {
		return datasetFileName;
	}

	public void setDatasetFileName(String datasetFileName) {
		this.datasetFileName = datasetFileName;
	}

	public String getDatasetFilePath() {
		return datasetFilePath;
	}

	public void setDatasetFilePath(String datasetFilePath) {
		this.datasetFilePath = datasetFilePath;
	}
	
	
	
}
