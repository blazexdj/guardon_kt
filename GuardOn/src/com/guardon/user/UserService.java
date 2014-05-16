package com.guardon.user;

import java.util.ArrayList;

import com.guardon.user.domain.User;

public interface UserService {
	
	public void insertJoinRequest(User user) throws Exception;

	public void setJoinApproved(String userId) throws Exception;

	public void deleteUser(String userId) throws Exception;

	public ArrayList<User> getJoinUserList(int page) throws Exception;

	public void insertUser(User user) throws Exception;

	public User getUserBasicInfo(String userId) throws Exception;

	public String getUserId(String userId) throws Exception;

	public void updateUser(User user) throws Exception;

	public String getUserPwd(String userId) throws Exception;

	public String getUserDepartment(String userId) throws Exception;

	public String getUserType(String userId) throws Exception;

	public String getUserName(String userId) throws Exception;

	public ArrayList<User> getUserList(int page) throws Exception;

	public ArrayList<User> getWfUserList(int page) throws Exception;

	public void setActive(String userId) throws Exception;

	public void setDeactive(String userId) throws Exception;

	public boolean isActive(String userId) throws Exception;
	
	public String getId(String userName, String companyNumber) throws Exception;
	
	public String getPwd(String userId, String userEmail) throws Exception;

}
