package com.jessehua.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jessehua.entity.Seckill;

public interface ISeckillDao {
	
	/**
	 * 减少商品库存
	 * @param seckillId
	 * @param killTime
	 * @return
	 */
	int reduceNumber(@Param("seckillId") long seckillId,@Param("killTime") Date killTime);
	
	/**
	 * 根据id查询秒杀的商品信息
	 * @param seckillId
	 * @return
	 */
	Seckill queryById(long seckillId);
	
	
	/**
     * 根据偏移量查询秒杀商品列表
     * @param offset
     * @param limit
     * @return
     */
    List<Seckill> queryAll(@Param("offset") int offset,@Param("limit") int limit);
	
	
	
	
	
	
}
