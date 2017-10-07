create database seckill;

use seckill;

create table seckill(
	'seckill_id' bigint  not null  auto_increment comment '商品库存ID',
	'name' VARCHAR(120) NOT NULL COMMENT '商品名称',
  	'number' int NOT NULL COMMENT '库存数量',
  	'start_time' timestamp  not null comment '秒杀活动开始时间',
  	'end_time' timestamp not null comment '秒杀活动结束时间',
  	'create_time' timestamp not null default CURRENT_TIMESTAMP  comment '创建时间',
  	primary key (seckill_id),
 	 key idx_start_time(start_time),
 	 key idx_end_time(end_time),
 	 key idx_create_time(create_time)
  
) engine=innodb auto_increment=1000 default charset=utf-8 comment='秒杀库存表';

insert into seckill(name,number,start_time,end_time)
values
	('1000元秒杀iphone6',100,'2016-01-01 00:00:00','2016-01-02 00:00:00'),
  ('800元秒杀ipad',200,'2016-01-01 00:00:00','2016-01-02 00:00:00'),
  ('6600元秒杀mac book pro',300,'2016-01-01 00:00:00','2016-01-02 00:00:00'),
  ('7000元秒杀iMac',400,'2016-01-01 00:00:00','2016-01-02 00:00:00');
  
  CREATE TABLE success_killed(
  `seckill_id` BIGINT NOT NULL COMMENT '秒杀商品ID',
  `user_phone` BIGINT NOT NULL COMMENT '用户手机号',
  `state` TINYINT NOT NULL DEFAULT -1 COMMENT '状态标识:-1:无效 0:成功 1:已付款 2:已发货',
  `create_time` TIMESTAMP NOT NULL COMMENT '创建时间',
  PRIMARY KEY(seckill_id,user_phone),/*联合主键*/
  KEY idx_create_time(create_time)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表';
