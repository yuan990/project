package com.platform.entity;

import java.util.Date;

public class UserInforEntity {

	private String pkId;
	private String userId;
	private String userName;
	private int userAge;
	private String userSex;
	private String userPhonenum;
	private String userEmail;
	private String userWeixin;
	private Date createTime;
	private Date updateTime;
	private String organizationId;
	private String bz;
	private String roleId;
	private String userAccount;
	private String userPassword;

	public String getPkId() {
		return pkId;
	}

	public void setPkId(String pkId) {
		this.pkId = pkId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getUserAge() {
		return userAge;
	}

	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserPhonenum() {
		return userPhonenum;
	}

	public void setUserPhonenum(String userPhonenum) {
		this.userPhonenum = userPhonenum;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserWeixin() {
		return userWeixin;
	}

	public void setUserWeixin(String userWeixin) {
		this.userWeixin = userWeixin;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getBz() {
		return bz;
	}

	public void setBz(String bz) {
		this.bz = bz;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public String getOrganizationId() {
		return organizationId;
	}

	public void setOrganizationId(String organizationId) {
		this.organizationId = organizationId;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	@Override
	public String toString() {
		return "UserInforEntity [pkId=" + pkId + ", userId=" + userId + ", userName=" + userName + ", userAge="
				+ userAge + ", userSex=" + userSex + ", userPhonenum=" + userPhonenum + ", userEmail=" + userEmail
				+ ", userWeixin=" + userWeixin + ", createTime=" + createTime + ", updateTime=" + updateTime
				+ ", orgnizationId=" + organizationId + ", bz=" + bz + ", roleId=" + roleId + ", userAccount="
				+ userAccount + ", userPassword=" + userPassword + ", getPkId()=" + getPkId() + ", getUserId()="
				+ getUserId() + ", getUserName()=" + getUserName() + ", getUserAge()=" + getUserAge()
				+ ", getUserSex()=" + getUserSex() + ", getUserPhonenum()=" + getUserPhonenum() + ", getUserEmail()="
				+ getUserEmail() + ", getUserWeixin()=" + getUserWeixin() + ", getCreateTime()=" + getCreateTime()
				+ ", getUpdateTime()=" + getUpdateTime() + ", getBz()=" + getBz() + ", getUserAccount()="
				+ getUserAccount() + ", getOrgnizationId()=" + getOrganizationId() + ", getRoleId()=" + getRoleId()
				+ ", getUserPassword()=" + getUserPassword() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

}
