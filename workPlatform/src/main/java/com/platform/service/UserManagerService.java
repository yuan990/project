package com.platform.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.platform.dao.UserInforMapper;
import com.platform.entity.UserInforEntity;

@Service
public class UserManagerService {

	@Resource
	UserInforMapper userInforMapper;

	public List<UserInforEntity> getAllUsers() {
		return userInforMapper.getAllUsers();
	}

	public List<UserInforEntity> getUsers(Map<String, Object> conditions) {
		return userInforMapper.getUsers(conditions);
	}
}
