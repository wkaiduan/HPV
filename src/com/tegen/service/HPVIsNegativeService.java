package com.tegen.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.swing.text.AbstractDocument.Content;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tegen.dao.HPVIsNegativeDao;
import com.tegen.entity.HPVIsNegative;
import com.tegen.entity.Page;
@Service("up")
@Transactional
public class HPVIsNegativeService {
		@Resource
		private HPVIsNegativeDao dao;

		public List<HPVIsNegative> getInfo(HPVIsNegative hpvis) {
			return dao.getInfo(hpvis);
		}

		public int getCount() {
			return dao.getCount();
		}

	}

