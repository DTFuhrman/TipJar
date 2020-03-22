package com.techelevator.model;

import java.time.LocalDate;
import java.util.List;

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
	public Worker submitNewWorker(Worker newWorker) {

		String sqlCreateWorker = "INSERT INTO worker(workerid, firstname, lastname, establishment, industry, status, venmo, paypallink, entered) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		newWorker.setWorkerId(getNextId());
		newWorker.setEntered(LocalDate.now());
		jdbcTemplate.update(sqlCreateWorker, newWorker.getWorkerId(), newWorker.getFirstName(), newWorker.getLastName(), newWorker.getEstablishment(), newWorker.getIndustry(), newWorker.getStatus(), newWorker.getVenmo(), newWorker.getPaypalLink(), newWorker.getEntered());
		return newWorker;
	}

	@Override
	public int getNextId() {
		int id;
		String sqlNextId = "SELECT nextval('seq_workerid'::regclass)";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlNextId);
		results.next();
		id = results.getInt(1);
		return id;
	}

	@Override
	public Worker removeWorker(Worker theWorker) {

		String sqlDeleteWorker = "DELETE * FROM worker WHERE workerid EQUALS ?";
		jdbcTemplate.update(sqlDeleteWorker, theWorker.getWorkerId());
		return theWorker;
	}

	@Override
	public Worker updateStatus(Worker theWorker) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Worker> getWorkersByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Worker> getWorkersByEstablishment(String establishment) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Worker> getWorkersByIndustry(String industry) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Worker getWorkerById(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	private Worker mapRowToWorker(SqlRowSet results) {
		Worker theWorker = new Worker();
		theWorker.setWorkerId(results.getInt("workerid"));
		theWorker.setFirstName(results.getString("firstname"));
		theWorker.setLastName(results.getString("lastname"));
		theWorker.setEstablishment(results.getString("establishment"));
		theWorker.setIndustry(results.getString("industry"));
		theWorker.setStatus(results.getString("status"));
		theWorker.setVenmo(results.getString("venmo"));
		theWorker.setPaypalLink(results.getString("paypallink"));
		theWorker.setEntered(results.getDate("entered").toLocalDate());
		
		return theWorker;	
	}

}
