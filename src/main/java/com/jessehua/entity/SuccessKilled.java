package com.jessehua.entity;

import java.util.Date;

public class SuccessKilled {
	private  long seckilId;
	private  long userPhone;
	private int  state;
	private Date createTime;
	private Seckill seckill;
	
	
	
	public Seckill getSeckill() {
		return seckill;
	}
	public void setSeckill(Seckill seckill) {
		this.seckill = seckill;
	}
	public SuccessKilled(long seckilId, long userPhone, int state, Date createTime) {
		super();
		this.seckilId = seckilId;
		this.userPhone = userPhone;
		this.state = state;
		this.createTime = createTime;
	}
	public SuccessKilled() {
		super();
	}
	public long getSeckilId() {
		return seckilId;
	}
	public void setSeckilId(long seckilId) {
		this.seckilId = seckilId;
	}
	public long getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(long userPhone) {
		this.userPhone = userPhone;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	@Override
	public String toString() {
		return "SuccessKilled [seckilId=" + seckilId + ", userPhone=" + userPhone + ", state=" + state + ", createTime="
				+ createTime + "]";
	}
	
	
	
	
	
}
