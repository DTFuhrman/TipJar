package com.techelevator.model;

import java.util.List;

public interface WorkerDAO {

	int getNextId();
	Worker updateStatus(Worker theWorker);
	Worker removeWorker(Worker theWorker);
	List<Worker> getWorkersByName(String name);
	List<Worker> getWorkersByEstablishment(String establishment);
	List<Worker> getWorkersByIndustry(String industry);
	Worker getWorkerById(int id);
	Worker submitNewWorker(Worker newWorker);
	
}
