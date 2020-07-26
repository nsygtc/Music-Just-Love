package cn.itcast.service.impl;

import java.util.List;

import cn.itcast.dao.ItheoryDao;
import cn.itcast.entity.Theory;
import cn.itcast.factory.BeanFactory;
import cn.itcast.service.ITheoryService;

public class TheoryService implements ITheoryService{

	private ItheoryDao theoryDao = BeanFactory.getInstance("theoryDao", ItheoryDao.class);

	@Override
	public void add(Theory theory) {
		try {
			theoryDao.add(theory);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public void update(Theory theory) {
		try {
			theoryDao.update(theory);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public void delete(int theory_id) {
		try {
			theoryDao.delete(theory_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public Theory findById(int theory_id) {
		try {
			return theoryDao.findById(theory_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Theory> getAll() {
		try {
			return theoryDao.getAll();
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Theory> getByName(String theory_name) {
		try {
			return theoryDao.getByName(theory_name);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Theory> getByContent(String theory_content) {
		try {
			return theoryDao.getByContent(theory_content);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

}
