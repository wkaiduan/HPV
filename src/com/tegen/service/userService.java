package com.tegen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tegen.dao.userDao;
import com.tegen.entity.User;

@Service
@Transactional
public class userService {

	@Resource
	private userDao udo;

	public User checkLogin(User user) {
		return udo.checkLogin(user);
	}
}
