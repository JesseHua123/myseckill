package com.jessehua.dao;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mybatis.xml")
public class ISuccessKilledDaoTest {

    //注入Dao实现类依赖
	 @Resource
	    private ISeckillDao seckillDao;
	 
	 
	@Test
	public void testInsertSuccessKilled() {
		fail("Not yet implemented");
		
		
	}

	@Test
	public void testQueryByIdWithSeckill() {
		fail("Not yet implemented");
	}

}
