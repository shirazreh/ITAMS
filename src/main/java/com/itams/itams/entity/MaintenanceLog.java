package com.itams.itams.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

// Annotations 
@Entity
public class MaintenanceLog {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long logId;
	private String assetID;
	private String maintenanceDate;
	private String maintenanceType;
	private String assignedTo;
	private String notes;

	public Long getLogId() {
		return logId;
	}

	public void setLogId(Long logId) {
		this.logId = logId;
	}

	public String getAssetID() {
		return assetID;
	}

	public void setAssetID(String assetID) {
		this.assetID = assetID;
	}

	public String getMaintenanceDate() {
		return maintenanceDate;
	}

	public void setMaintenanceDate(String maintenanceDate) {
		this.maintenanceDate = maintenanceDate;
	}

	public String getMaintenanceType() {
		return maintenanceType;
	}

	public void setMaintenanceType(String maintenanceType) {
		this.maintenanceType = maintenanceType;
	}

	public String getAssignedTo() {
		return assignedTo;
	}

	public void setAssignedTo(String assignedTo) {
		this.assignedTo = assignedTo;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

}
