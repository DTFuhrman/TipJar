package com.techelevator.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


@Component
public class JDBCWorkerDAO implements WorkerDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCWorkerDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	@Override
	public void createNewWorker() {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateStatus() {
		// TODO Auto-generated method stub

	}

	@Override
	public void removeWorker() {
		// TODO Auto-generated method stub

	}

	@Override
	public void getWorkersByName() {
		// TODO Auto-generated method stub

	}

	@Override
	public void getWorkersByEstablishment() {
		// TODO Auto-generated method stub

	}

	@Override
	public void getWorkersByIndustry() {
		// TODO Auto-generated method stub

	}

	@Override
	public void getWorkerById() {
		// TODO Auto-generated method stub

	}
	
	private Worker mapRowToWorker(SqlRowSet results) {
		return null;
		// TODO Auto-generated method stub
		
		
	}

}
