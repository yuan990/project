package com.platform.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.platform.entity.UserInforEntity;

@Repository
public interface UserInforMapper {

	public List<UserInforEntity> getUsers(Map<String, Object> params);
	public List<UserInforEntity> getAllUsers();
}
