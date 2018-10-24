package com.platform.dao.test;

import static org.junit.Assert.assertNotNull;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.platform.entity.UserInforEntity;
import com.platform.service.UserManagerService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestUserInforMapper implements ApplicationContextAware {

	static UserManagerService userManagerService;
	private ApplicationContext context;

	@Test
	public void testGetAllUsers() {
		userManagerService = context.getBean(UserManagerService.class);
		List<UserInforEntity> users = userManagerService.getAllUsers();
		assertNotNull(users);
	}

	@Test
	public void testGetUsers() {
		userManagerService = context.getBean(UserManagerService.class);
		Map<String, Object> conditions = new HashMap<String, Object>();
		conditions.put("role_id", "%@@r_002@@%");
		conditions.put("user_phonenum", "18519090160");
		List<UserInforEntity> users = userManagerService.getUsers(conditions);
		assertNotNull(users);
	}

	public void setApplicationContext(ApplicationContext arg0) throws BeansException {
		// TODO Auto-generated method stub
		this.context = arg0;
	}
}
