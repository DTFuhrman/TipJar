package com.techelevator.model;

import java.util.List;

public interface WorkerDAO {

	int getNextId();
	Worker updateStatus(Worker theWorker);
	Worker removeWorker(Worker theWorker);
	List<Worker> getWorkersByName();
	List<Worker> getWorkersByEstablishment();
	List<Worker> getWorkersByIndustry();
	Worker getWorkerById(int id);
	Worker submitNewWorker(Worker newWorker);
	
}
