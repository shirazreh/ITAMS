package com.itams.itams.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

// Annotations 
@Entity
public class UsageLog {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long logID;
	private String assetID;
	private String date;
	private String hoursUsed;
	private String reliabilityScore;

	public Long getLogID() {
		return logID;
	}

	public void setLogID(Long logID) {
		this.logID = logID;
	}

	public String getAssetID() {
		return assetID;
	}

	public void setAssetID(String assetID) {
		this.assetID = assetID;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getHoursUsed() {
		return hoursUsed;
	}

	public void setHoursUsed(String hoursUsed) {
		this.hoursUsed = hoursUsed;
	}

	public String getReliabilityScore() {
		return reliabilityScore;
	}

	public void setReliabilityScore(String reliabilityScore) {
		this.reliabilityScore = reliabilityScore;
	}

}
