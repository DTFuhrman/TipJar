package com.techelevator.model;

import java.time.LocalDate;
import java.util.ArrayList;
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

		String sqlCreateWorker = "INSERT INTO worker(workerid, firstname, lastname, establishment, industry, status, venmo, paypallink, personalmessage, entered) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		//newWorker.setWorkerId(getNextId());
		//newWorker.setEntered(LocalDate.now());
		jdbcTemplate.update(sqlCreateWorker, newWorker.getWorkerId(), newWorker.getFirstName(), newWorker.getLastName(), newWorker.getEstablishment(), newWorker.getIndustry(), newWorker.getStatus(), newWorker.getVenmo(), newWorker.getPaypalLink(), newWorker.getPersonalMessage(), newWorker.getEntered());
		return newWorker;
	}

	@Override
	public int getNextId() {
		int id;
		String sqlNextId = "SELECT nextval('seq_workerId'::regclass)";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlNextId);
		results.next();
		id = results.getInt(1);
		return id;
	}

	@Override
	public Worker removeWorker(Worker theWorker) {

		String sqlDeleteWorker = "DELETE * FROM worker WHERE workerid = ?";
		jdbcTemplate.update(sqlDeleteWorker, theWorker.getWorkerId());
		return theWorker;
	}

	@Override
	public Worker updateStatus(Worker theWorker) {
		
		String sqlUpdateWorker = " UPDATE worker SET status = ? WHERE workerid = ?";
		jdbcTemplate.update(sqlUpdateWorker, theWorker.getStatus(), theWorker.getWorkerId());
		
		return theWorker;
	}


	@Override
	public List<Worker> getWorkersByName() {
		List<Worker> workersByName = new ArrayList<Worker>();
		String sqlGetWorkersByName = "SELECT * FROM worker ORDER BY INITCAP(lastname) ASC, INITCAP(firstname) ASC";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetWorkersByName);
		while(result.next()) {
			Worker theWorker = mapRowToWorker(result);
			workersByName.add(theWorker);
		}
		return workersByName;
	}


	@Override
	public List<Worker> getWorkersByEstablishment() {
		List<Worker> workersByEst = new ArrayList<Worker>();
		String sqlGetWorkersByEst = "SELECT * FROM worker ORDER BY INITCAP(establishment) ASC, INITCAP(lastname) ASC, INITCAP(firstname) ASC";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetWorkersByEst);
		while(result.next()) {
			Worker theWorker = mapRowToWorker(result);
			workersByEst.add(theWorker);
		}
		return workersByEst;
	}


	@Override
	public List<Worker> getWorkersByIndustry() {
		List<Worker> workersByInd = new ArrayList<Worker>();
		String sqlGetWorkersByInd = "SELECT * FROM worker ORDER BY INITCAP(industry) ASC, INITCAP(lastname) ASC, INITCAP(firstname) ASC";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetWorkersByInd);
		while(result.next()) {
			Worker theWorker = mapRowToWorker(result);
			workersByInd.add(theWorker);
		}
		return workersByInd;
	}


	@Override
	public Worker getWorkerById(int id) {
		String sqlGetWorkerById = "SELECT * FROM worker WHERE workerid = ?";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetWorkerById, id);
		result.next();
		Worker workerById = mapRowToWorker(result);
			
		return workerById;
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


	@Override
	public List<String> getAllEstablishments() {
		List<String> establishments = new ArrayList<String>();
		String sqlGetEstablishments = "SELECT COUNT(*), INITCAP(worker.establishment) AS business FROM worker GROUP BY business ORDER BY business ASC";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetEstablishments);
		while(result.next()) {
			establishments.add(result.getString("business"));
		}
		return establishments;
	}


	@Override
	public List<String> getAllIndustries() {
		List<String> industries = new ArrayList<String>();
		String sqlGetIndustries = "SELECT COUNT(*), INITCAP(worker.industry) AS ind FROM worker GROUP BY ind ORDER BY ind ASC";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetIndustries);
		while(result.next()) {
			industries.add(result.getString("ind"));
		}
		return industries;
	}

}
