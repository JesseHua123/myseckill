create database seckill;

use seckill;

create table seckill(
	'seckill_id' bigint  not null  auto_increment comment '��Ʒ���ID',
	'name' VARCHAR(120) NOT NULL COMMENT '��Ʒ����',
  	'number' int NOT NULL COMMENT '�������',
  	'start_time' timestamp  not null comment '��ɱ���ʼʱ��',
  	'end_time' timestamp not null comment '��ɱ�����ʱ��',
  	'create_time' timestamp not null default CURRENT_TIMESTAMP  comment '����ʱ��',
  	primary key (seckill_id),
 	 key idx_start_time(start_time),
 	 key idx_end_time(end_time),
 	 key idx_create_time(create_time)
  
) engine=innodb auto_increment=1000 default charset=utf-8 comment='��ɱ����';

insert into seckill(name,number,start_time,end_time)
values
	('1000Ԫ��ɱiphone6',100,'2016-01-01 00:00:00','2016-01-02 00:00:00'),
  ('800Ԫ��ɱipad',200,'2016-01-01 00:00:00','2016-01-02 00:00:00'),
  ('6600Ԫ��ɱmac book pro',300,'2016-01-01 00:00:00','2016-01-02 00:00:00'),
  ('7000Ԫ��ɱiMac',400,'2016-01-01 00:00:00','2016-01-02 00:00:00');
  
  CREATE TABLE success_killed(
  `seckill_id` BIGINT NOT NULL COMMENT '��ɱ��ƷID',
  `user_phone` BIGINT NOT NULL COMMENT '�û��ֻ���',
  `state` TINYINT NOT NULL DEFAULT -1 COMMENT '״̬��ʶ:-1:��Ч 0:�ɹ� 1:�Ѹ��� 2:�ѷ���',
  `create_time` TIMESTAMP NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY(seckill_id,user_phone),/*��������*/
  KEY idx_create_time(create_time)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='��ɱ�ɹ���ϸ��';
