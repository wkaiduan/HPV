package com.tegen.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tegen.dao.mapDao;
import com.tegen.entity.maps;


@Service("ups")
@Transactional
public class mapService {
    
	@Resource
	private mapDao dao;

	public List<maps> getInfo() {
		return dao.getInfo();
	}
}
