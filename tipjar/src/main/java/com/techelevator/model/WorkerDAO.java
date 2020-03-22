package com.techelevator.model;


public interface WorkerDAO {

	public void createNewWorker();
	public void updateStatus();
	public void removeWorker();
	public void getWorkersByName();
	public void getWorkersByEstablishment();
	public void getWorkersByIndustry();
	public void getWorkerById();
	
}
