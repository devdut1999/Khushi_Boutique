package com.KBTQ.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.KBTQ.dao.GodownDAO;
import com.KBTQ.entity.Godown;


@Service
public class GodownServiceImpl implements GodownService {
	
		//need to inject dao
		@Autowired
		private GodownDAO godownDAO; 

	@Override
	@Transactional
	public List<Godown> getGodowns() {
		
		return godownDAO.getGodowns();
	}

	@Override
	@Transactional
	public void saveGodown(Godown theGodown) {
		
		godownDAO.saveGodown(theGodown);

	}

	@Override
	@Transactional
	public Godown getGodown(int theId) {

		Godown theGodown=godownDAO.getGodown(theId);
		
		return theGodown;
	}

	@Override
	@Transactional
	public void deleteGodown(int theId) {
		
		godownDAO.deleteGodown(theId);

	}

}
