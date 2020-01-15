#设置客户端连接服务器端的编码为UTF8
SET NAMES UTF8;
#丢弃数据库，如果存在的话
DROP DATABASE IF EXISTS mes;
#创建数据库
CREATE DATABASE mes CHARSET=UTF8;
#进入创建的数据库
USE mes;
#创建保存用户信息数据的表
CREATE TABLE mes_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	email VARCHAR(65),
	phone VARCHAR(16),
	user_name VARCHAR(64)
);
#插入用户信息数据
INSERT INTO mes_user VALUES(NULL,'gaorourou','123123','2233745288@qq.com','13834205053','高肉肉');
INSERT INTO mes_user VALUES(NULL,'gaojinxu','123123','1653597566@qq.com','15234805079','高进旭');
INSERT INTO mes_user VALUES(NULL,'guoqiang','123123','2233745288@qq.com','13834205053','小强强');
INSERT INTO mes_user VALUES(NULL,'yangtai','123123','2233745288@qq.com','13834205053','杨泰');
INSERT INTO mes_user VALUES(NULL,'wangjiajun','123123','1234567891@qq.com','15512345678','王佳俊');
INSERT INTO mes_user VALUES(NULL,'luoguiling','123123','1567894556@qq.com','13834205053',"罗桂玲");

#创建保存商品信息数据的表
CREATE TABLE mes_details(
	lid INT PRIMARY KEY,
	Cpic1 VARCHAR(64),
	Cpic2 VARCHAR(64),
	Cpic3 VARCHAR(64),
	Cpic4 VARCHAR(64),
	Ppic1 VARCHAR(64),
	Ppic2 VARCHAR(64),
	Ppic3 VARCHAR(64),
	Ppic4 VARCHAR(64),
	Ppic5 VARCHAR(64),
	Ppic6 VARCHAR(64)
);
#插入商品信息数据
INSERT INTO mes_details VALUES(9,'img/details/9/9-1.jpg','img/details/9/9-2.jpg','img/details/9/9-3.jpg','img/details/9/9-4.jpg','img/details/9/detail-1.jpg','img/details/9/detail-2.jpg','img/details/9/detail-3.jpg','img/details/9/detail-4.jpg','img/details/9/detail-5.jpg','img/details/9/detail-6.jpg');
INSERT INTO mes_details VALUES(10,'img/details/10/10-1.jpg','img/details/10/10-2.jpg','img/details/10/10-3.jpg','img/details/10/10-4.jpg','img/details/10/detail-1.jpg','img/details/10/detail-2.jpg','img/details/10/detail-3.jpg','img/details/10/detail-4.jpg','img/details/10/detail-5.jpg','img/details/10/detail-6.jpg');
INSERT INTO mes_details VALUES(19,'img/details/19/19-1.jpg','img/details/19/19-2.jpg','img/details/19/19-3.jpg','img/details/19/19-4.jpg','img/details/19/detail-1.jpg','img/details/19/detail-2.jpg','img/details/19/detail-3.jpg','img/details/19/detail-4.jpg','img/details/19/detail-5.jpg','img/details/19/detail-6.jpg');
INSERT INTO mes_details VALUES(26,'img/details/26/26-1.jpg','img/details/26/26-2.jpg','img/details/26/26-3.jpg','img/details/26/26-4.jpg','img/details/26/detail-1.jpg','img/details/26/detail-2.jpg','img/details/26/detail-3.jpg','img/details/26/detail-4.jpg','img/details/26/detail-5.jpg','img/details/26/detail-6.jpg');
INSERT INTO mes_details VALUES(32,'img/details/32/32-1.jpg','img/details/32/32-2.jpg','img/details/32/32-3.jpg','img/details/32/32-4.jpg','img/details/32/detail-1.jpg','img/details/32/detail-2.jpg','img/details/32/detail-3.jpg','img/details/32/detail-4.jpg','img/details/32/detail-5.jpg','img/details/32/detail-6.jpg');
INSERT INTO mes_details VALUES(33,'img/details/33/33-1.jpg','img/details/33/33-2.jpg','img/details/33/33-3.jpg','img/details/33/33-4.jpg','img/details/33/detail-1.jpg','img/details/33/detail-2.jpg','img/details/33/detail-3.jpg','img/details/33/detail-4.jpg','img/details/33/detail-5.jpg','img/details/33/detail-6.jpg');
INSERT INTO mes_details VALUES(124,'img/details/124/124-1.jpg','img/details/124/124-2.jpg','img/details/124/124-3.jpg','img/details/124/124-4.jpg','img/details/124/detail-1.jpg','img/details/124/detail-2.jpg','img/details/124/detail-3.jpg','img/details/124/detail-4.jpg','img/details/124/detail-5.jpg','img/details/124/detail-6.jpg');
INSERT INTO mes_details VALUES(125,'img/details/125/125-1.jpg','img/details/125/125-2.jpg','img/details/125/125-3.jpg','img/details/125/125-4.jpg','img/details/125/detail-1.jpg','img/details/125/detail-2.jpg','img/details/125/detail-3.jpg','img/details/125/detail-4.jpg','img/details/125/detail-5.jpg','img/details/125/detail-6.jpg');
INSERT INTO mes_details VALUES(135,'img/details/135/135-1.jpg','img/details/135/135-2.jpg','img/details/135/135-3.jpg','img/details/135/135-4.jpg','img/details/135/detail-1.jpg','img/details/135/detail-2.jpg','img/details/135/detail-3.jpg','img/details/135/detail-4.jpg','img/details/135/detail-5.jpg','img/details/135/detail-6.jpg');
INSERT INTO mes_details VALUES(136,'img/details/136/136-1.jpg','img/details/136/136-2.jpg','img/details/136/136-3.jpg','img/details/136/136-4.jpg','img/details/136/detail-1.jpg','img/details/136/detail-2.jpg','img/details/136/detail-3.jpg','img/details/136/detail-4.jpg','img/details/136/detail-5.jpg','img/details/136/detail-6.jpg');
INSERT INTO mes_details VALUES(143,'img/details/143/143-1.jpg','img/details/143/143-2.jpg','img/details/143/143-3.jpg','img/details/143/143-4.jpg','img/details/143/detail-1.jpg','img/details/143/detail-2.jpg','img/details/143/detail-3.jpg','img/details/143/detail-4.jpg','img/details/143/detail-5.jpg','img/details/143/detail-6.jpg');
INSERT INTO mes_details VALUES(152,'img/details/152/152-1.jpg','img/details/152/152-2.jpg','img/details/152/152-3.jpg','img/details/152/152-4.jpg','img/details/152/detail-1.jpg','img/details/152/detail-2.jpg','img/details/152/detail-3.jpg','img/details/152/detail-4.jpg','img/details/152/detail-5.jpg','img/details/152/detail-6.jpg');