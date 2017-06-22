CREATE DATABASE jfinal_demo;

USE jfinal_demo;

CREATE TABLE `blog` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `blog` VALUES ('1', 'JFinal Demo Title here', 'JFinal Demo Content here');
INSERT INTO `blog` VALUES ('2', 'test 1', 'test 1');
INSERT INTO `blog` VALUES ('3', 'test 2', 'test 2');
INSERT INTO `blog` VALUES ('4', 'test 3', 'test 3');
INSERT INTO `blog` VALUES ('5', 'test 4', 'test 4');



CREATE TABLE `person` (
  `id` int(11) NOT NULL auto_increment,
  `person_name` varchar(200) NOT NULL,
  `gender` varchar(5) not null COMMENT '性别',
  `group_type` varchar(10) COMMENT '人员分组: 研发、设计、测试、实施',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order` (
  `id` int(11) NOT NULL auto_increment,
  `restaurant_name` varchar(50) not null  comment '餐馆名称',
  `orderdate` datetime not null comment '订单日期',
  `totalamount` decimal(10,4) not null  comment '订单总额',
  `actualamount` decimal(10,4) not null comment '实际支付金额',
  `finish_datetime` datetime  comment '完成时间'
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `suborder` (
  `id` int(11) NOT NULL auto_increment,
  `order_id` int(11) not null,
  `person_id` int(11) NOT NULL,
  `gender` varchar(5) not null COMMENT '性别',
  `group_type` varchar(10) COMMENT '人员分组: 研发、设计、测试、实施',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `orderperson` (
  `id` int(11) NOT NULL auto_increment,
  `order_id` int(11) not null,
  `person_id` int(11) not null,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL auto_increment,
  `order_id` int(11) not null,
  
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

