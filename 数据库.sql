-- MySQL dump 10.13  Distrib 5.6.44, for Win64 (x86_64)
--
-- Host: localhost    Database: kf_taobyh_cn
-- ------------------------------------------------------
-- Server version	5.6.44-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `v2_admin`
--

DROP TABLE IF EXISTS `v2_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(55) NOT NULL,
  `admin_password` varchar(155) NOT NULL,
  `last_login_time` datetime DEFAULT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_admin`
--

LOCK TABLES `v2_admin` WRITE;
/*!40000 ALTER TABLE `v2_admin` DISABLE KEYS */;
INSERT INTO `v2_admin` VALUES (1,'admin','e87b8361a8c4c5e6526bde5eba2cdbaa','2021-09-01 18:10:26');
/*!40000 ALTER TABLE `v2_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_black_list`
--

DROP TABLE IF EXISTS `v2_black_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_black_list` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_code` varchar(32) NOT NULL COMMENT '商户标识',
  `ip` varchar(15) NOT NULL COMMENT '黑名单ip',
  `oper_kefu_id` int(11) NOT NULL COMMENT '操作者id',
  `customer_name` varchar(55) DEFAULT NULL,
  `customer_id` varchar(32) DEFAULT NULL,
  `customer_real_name` varchar(55) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`list_id`) USING BTREE,
  KEY `seller_code,ip` (`seller_code`,`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_black_list`
--

LOCK TABLES `v2_black_list` WRITE;
/*!40000 ALTER TABLE `v2_black_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `v2_black_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_chat_log`
--

DROP TABLE IF EXISTS `v2_chat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_chat_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `from_id` varchar(32) NOT NULL COMMENT '网页用户随机编号(仅为记录参考记录)',
  `from_name` varchar(55) NOT NULL COMMENT '发送者名称',
  `from_avatar` varchar(155) NOT NULL COMMENT '发送者头像',
  `to_id` varchar(55) NOT NULL COMMENT '接收方',
  `to_name` varchar(55) NOT NULL COMMENT '接受者名称',
  `seller_code` varchar(32) NOT NULL COMMENT '所属 商户标识',
  `content` text NOT NULL COMMENT '发送的内容',
  `read_flag` tinyint(1) DEFAULT '1' COMMENT '是否已读 1 未读 2 已读 3 发送失败',
  `valid` tinyint(1) DEFAULT '1' COMMENT '是否有效 0 无效  1 有效',
  `create_time` datetime NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`log_id`) USING BTREE,
  KEY `from_id` (`from_id`) USING BTREE,
  KEY `to_id` (`to_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1250 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_chat_log`
--

LOCK TABLES `v2_chat_log` WRITE;
/*!40000 ALTER TABLE `v2_chat_log` DISABLE KEYS */;
INSERT INTO `v2_chat_log` VALUES (1245,'KF_5c6ce9f6d753b','客服小美','/static/common/images/kefu/1.png','2g536ayu0x0','访客2g536ayu0x0','5c6cbcb7d55ca',' face[嘻嘻] ',2,1,'2021-09-02 11:27:00'),(1246,'au4p1vwtkw4','访客au4p1vwtkw4','https://kf.taobyh.cn/static/common/images/customer.png','KF_5c6ce9f6d753b','客服小美','5c6cbcb7d55ca','鹅鹅鹅鹅鹅',2,1,'2021-09-04 18:33:53'),(1247,'KF_5c6ce9f6d753b','客服小美','/static/common/images/kefu/1.png','au4p1vwtkw4','访客au4p1vwtkw4','5c6cbcb7d55ca','您好',2,1,'2021-09-04 18:34:26'),(1248,'au4p1vwtkw4','访客au4p1vwtkw4','https://kf.taobyh.cn/static/common/images/customer.png','KF_5c6ce9f6d753b','客服小美','5c6cbcb7d55ca','您遇到什么问题了吗',2,1,'2021-09-04 18:34:46'),(1249,'KF_5c6ce9f6d753b','客服小美','/static/common/images/kefu/1.png','au4p1vwtkw4','访客au4p1vwtkw4','5c6cbcb7d55ca','是的不知道可以处理不',2,1,'2021-09-04 18:35:04');
/*!40000 ALTER TABLE `v2_chat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_customer`
--

DROP TABLE IF EXISTS `v2_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(32) NOT NULL COMMENT '访客id',
  `customer_name` varchar(55) NOT NULL COMMENT '访客名称',
  `customer_avatar` varchar(155) NOT NULL COMMENT '访客头像',
  `customer_ip` varchar(15) NOT NULL COMMENT '访客ip',
  `seller_code` varchar(32) NOT NULL COMMENT '咨询商家的标识',
  `pre_kefu_code` varchar(32) DEFAULT NULL COMMENT '上次服务的客服标识',
  `client_id` varchar(32) NOT NULL COMMENT '客户端标识',
  `online_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 离线 1 在线',
  `create_time` datetime NOT NULL COMMENT '访问时间',
  `protocol` varchar(15) DEFAULT 'ws' COMMENT '接入协议',
  `province` varchar(55) DEFAULT NULL COMMENT '访客所在省份',
  `city` varchar(55) DEFAULT NULL COMMENT '访客所在城市',
  PRIMARY KEY (`cid`) USING BTREE,
  KEY `visiter` (`customer_id`) USING BTREE,
  KEY `time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_customer`
--

LOCK TABLES `v2_customer` WRITE;
/*!40000 ALTER TABLE `v2_customer` DISABLE KEYS */;
INSERT INTO `v2_customer` VALUES (154,'2g536ayu0x0','访客2g536ayu0x0','https://kf.taobyh.cn/static/common/images/customer.png','14.120.224.228','5c6cbcb7d55ca','5c6ce9f6d753b','7f0000010b5400000008',0,'2021-09-03 09:09:46','ws','广东','广州'),(155,'4dlq6y4an7pm9s','访客4dlq6y4an7pm9s','https://kf.taobyh.cn/static/common/images/customer.png','59.42.110.181','5c6cbcb7d55ca',NULL,'7f0000010b5400000017',0,'2021-09-04 18:19:14','ws','广东','广州'),(156,'55yocvr8eveg3k','访客55yocvr8eveg3k','https://kf.taobyh.cn/static/common/images/customer.png','111.181.2.240','5c6cbcb7d55ca',NULL,'7f0000010b5400000016',0,'2021-09-04 12:46:55','ws','湖北','鄂州'),(157,'au4p1vwtkw4','访客au4p1vwtkw4','https://kf.taobyh.cn/static/common/images/customer.png','124.133.164.116','5c6cbcb7d55ca','5c6ce9f6d753b','7f0000010b5400000026',0,'2021-09-04 22:48:21','ws','山东','济南');
/*!40000 ALTER TABLE `v2_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_customer_info`
--

DROP TABLE IF EXISTS `v2_customer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_customer_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(32) NOT NULL,
  `seller_code` varchar(32) NOT NULL,
  `search_engines` varchar(55) DEFAULT NULL COMMENT '搜索引擎',
  `from_url` varchar(255) DEFAULT NULL,
  `real_name` varchar(55) DEFAULT NULL COMMENT '真实名称',
  `email` varchar(55) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `remark` text,
  `user_agent` varchar(255) DEFAULT NULL COMMENT '访客的设备头信息',
  PRIMARY KEY (`info_id`) USING BTREE,
  KEY `customer_id` (`customer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_customer_info`
--

LOCK TABLES `v2_customer_info` WRITE;
/*!40000 ALTER TABLE `v2_customer_info` DISABLE KEYS */;
INSERT INTO `v2_customer_info` VALUES (97,'au4p1vwtkw4','5c6cbcb7d55ca','直接访问','',NULL,NULL,NULL,NULL,'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
/*!40000 ALTER TABLE `v2_customer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_customer_queue`
--

DROP TABLE IF EXISTS `v2_customer_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_customer_queue` (
  `qid` int(11) NOT NULL AUTO_INCREMENT COMMENT '队列id',
  `customer_id` varchar(32) NOT NULL COMMENT '访客id',
  `customer_name` varchar(55) NOT NULL COMMENT '访客名称',
  `customer_avatar` varchar(155) NOT NULL COMMENT '访客头像',
  `customer_ip` varchar(15) NOT NULL COMMENT '访客ip',
  `seller_code` varchar(32) NOT NULL COMMENT '咨询商家的标识',
  `client_id` varchar(32) NOT NULL COMMENT '客户端标识',
  `create_time` datetime NOT NULL COMMENT '访问时间',
  PRIMARY KEY (`qid`) USING BTREE,
  UNIQUE KEY `id` (`customer_id`) USING BTREE,
  KEY `visiter` (`customer_id`) USING BTREE,
  KEY `time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_customer_queue`
--

LOCK TABLES `v2_customer_queue` WRITE;
/*!40000 ALTER TABLE `v2_customer_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `v2_customer_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_customer_service_log`
--

DROP TABLE IF EXISTS `v2_customer_service_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_customer_service_log` (
  `service_log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务编号',
  `customer_id` varchar(55) NOT NULL COMMENT '访客id',
  `client_id` varchar(32) NOT NULL COMMENT '访客的客户端标识',
  `customer_name` varchar(55) NOT NULL COMMENT '访客名称',
  `customer_avatar` varchar(155) NOT NULL COMMENT '访客头像',
  `customer_ip` varchar(15) NOT NULL COMMENT '访客的ip',
  `kefu_code` varchar(32) NOT NULL DEFAULT '0' COMMENT '接待的客服标识',
  `seller_code` varchar(32) NOT NULL COMMENT '客服所属的商户标识',
  `start_time` datetime NOT NULL COMMENT '开始服务时间',
  `end_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '结束服务时间',
  `protocol` varchar(5) NOT NULL DEFAULT 'ws' COMMENT '来自什么类型的连接',
  PRIMARY KEY (`service_log_id`) USING BTREE,
  KEY `user_id,client_id` (`customer_id`,`client_id`) USING BTREE,
  KEY `kf_id,start_time,end_time` (`kefu_code`,`start_time`,`end_time`) USING BTREE,
  KEY `idx_search` (`seller_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_customer_service_log`
--

LOCK TABLES `v2_customer_service_log` WRITE;
/*!40000 ALTER TABLE `v2_customer_service_log` DISABLE KEYS */;
INSERT INTO `v2_customer_service_log` VALUES (3,'2g536ayu0x0','7f0000010b5400000002','访客2g536ayu0x0','https://kf.taobyh.cn/static/common/images/customer.png','116.22.4.249','5c6ce9f6d753b','5c6cbcb7d55ca','2021-09-02 11:26:44','2021-09-02 11:27:13','ws'),(4,'au4p1vwtkw4','7f0000010b540000001d','访客au4p1vwtkw4','https://kf.taobyh.cn/static/common/images/customer.png','124.133.164.116','5c6ce9f6d753b','5c6cbcb7d55ca','2021-09-04 18:21:35','0000-00-00 00:00:00','ws'),(5,'au4p1vwtkw4','7f0000010b5400000022','访客au4p1vwtkw4','https://kf.taobyh.cn/static/common/images/customer.png','124.133.164.116','5c6ce9f6d753b','5c6cbcb7d55ca','2021-09-04 18:32:10','2021-09-04 18:33:31','ws'),(6,'au4p1vwtkw4','7f0000010b5400000024','访客au4p1vwtkw4','https://kf.taobyh.cn/static/common/images/customer.png','124.133.164.116','5c6ce9f6d753b','5c6cbcb7d55ca','2021-09-04 18:33:35','2021-09-04 18:42:46','ws');
/*!40000 ALTER TABLE `v2_customer_service_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_group`
--

DROP TABLE IF EXISTS `v2_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '业务组id',
  `group_name` varchar(55) NOT NULL COMMENT '业务组名称',
  `group_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '业务组状态 0 禁用 1 激活',
  `first_service` tinyint(1) NOT NULL DEFAULT '0' COMMENT '会否前置服务组 0 不是 1 是',
  `seller_id` int(11) NOT NULL COMMENT '所属商户id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_group`
--

LOCK TABLES `v2_group` WRITE;
/*!40000 ALTER TABLE `v2_group` DISABLE KEYS */;
INSERT INTO `v2_group` VALUES (1,'售前客服',1,1,1,'2019-02-20 13:44:56','2020-11-18 14:35:07'),(2,'售后客服',1,0,1,'2019-02-20 13:45:16','2019-03-27 22:22:12'),(3,'万能客服',1,1,2,'2021-09-01 16:31:48','2021-09-01 16:31:48');
/*!40000 ALTER TABLE `v2_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_kefu`
--

DROP TABLE IF EXISTS `v2_kefu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_kefu` (
  `kefu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服id',
  `kefu_code` varchar(32) NOT NULL COMMENT '客服唯一标识',
  `kefu_name` varchar(55) NOT NULL COMMENT '客服名称',
  `kefu_avatar` varchar(55) NOT NULL COMMENT '客服头像',
  `kefu_password` varchar(32) NOT NULL COMMENT '客服密码',
  `seller_id` int(11) NOT NULL COMMENT '所属商家id',
  `seller_code` varchar(32) NOT NULL COMMENT '所属商家标识',
  `group_id` int(11) NOT NULL COMMENT '所属业务组id',
  `max_service_num` int(11) NOT NULL DEFAULT '10' COMMENT '最大服务人数',
  `kefu_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '客服状态 0 禁用 1 激活',
  `online_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '在线状态 0 离线 1 在线',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最近登录时间',
  PRIMARY KEY (`kefu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_kefu`
--

LOCK TABLES `v2_kefu` WRITE;
/*!40000 ALTER TABLE `v2_kefu` DISABLE KEYS */;
INSERT INTO `v2_kefu` VALUES (1,'5c6ce9f6d753b','客服小美','/static/common/images/kefu/1.png','e91eb955d83ea1b023777a897ae62f79',1,'5c6cbcb7d55ca',1,100,1,1,'2019-02-20 13:49:30','2021-09-04 18:30:04','2021-09-04 22:49:34'),(2,'612f3a858b305','百度官方客服','/static/common/images/kefu/3.png','ec38580424ab588fb99e46a6422fd032',2,'612f39421f022',3,10,1,0,'2021-09-01 16:32:06','2021-09-01 16:32:06','2021-09-01 17:42:39'),(3,'61334a1226f6d','sda','/static/common/images/kefu/1.png','7e4a2da7de4fe25af3e00c20747dad12',1,'5c6cbcb7d55ca',2,10,1,0,'2021-09-04 18:27:30','2021-09-04 18:27:30','2021-09-04 18:27:40');
/*!40000 ALTER TABLE `v2_kefu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_kefu_distribution`
--

DROP TABLE IF EXISTS `v2_kefu_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_kefu_distribution` (
  `distribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL COMMENT '商户的id',
  `kefu_map` longtext COMMENT '待分配的客服数组',
  PRIMARY KEY (`distribute_id`) USING BTREE,
  KEY `idx_seller_id` (`seller_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_kefu_distribution`
--

LOCK TABLES `v2_kefu_distribution` WRITE;
/*!40000 ALTER TABLE `v2_kefu_distribution` DISABLE KEYS */;
INSERT INTO `v2_kefu_distribution` VALUES (1,1,'[{\"kefu_id\":1,\"kefu_code\":\"5c6ce9f6d753b\",\"kefu_name\":\"客服小美\",\"kefu_avatar\":\"/static/common/images/kefu/1.png\",\"max_service_num\":100,\"seller_id\":1}]'),(2,2,'[{\"kefu_id\":2,\"kefu_code\":\"612f3a858b305\",\"kefu_name\":\"百度官方客服\",\"kefu_avatar\":\"/static/common/images/kefu/3.png\",\"max_service_num\":10,\"seller_id\":2}]');
/*!40000 ALTER TABLE `v2_kefu_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_kefu_word`
--

DROP TABLE IF EXISTS `v2_kefu_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_kefu_word` (
  `word_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(155) NOT NULL COMMENT '简略标题',
  `word` text NOT NULL COMMENT '常用语内容',
  `kefu_id` int(11) NOT NULL COMMENT '所属客服的id',
  `cate_id` int(11) NOT NULL COMMENT '所属分类id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`word_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_kefu_word`
--

LOCK TABLES `v2_kefu_word` WRITE;
/*!40000 ALTER TABLE `v2_kefu_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `v2_kefu_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_kefu_word_cate`
--

DROP TABLE IF EXISTS `v2_kefu_word_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_kefu_word_cate` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `cate_name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `kefu_id` int(11) DEFAULT NULL COMMENT '所属客服的id',
  `seller_id` int(11) DEFAULT NULL COMMENT '所属商户的id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cate_id`) USING BTREE,
  KEY `idx_kf_seller` (`kefu_id`,`seller_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_kefu_word_cate`
--

LOCK TABLES `v2_kefu_word_cate` WRITE;
/*!40000 ALTER TABLE `v2_kefu_word_cate` DISABLE KEYS */;
/*!40000 ALTER TABLE `v2_kefu_word_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_knowledge_store`
--

DROP TABLE IF EXISTS `v2_knowledge_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_knowledge_store` (
  `knowledge_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '知识库id',
  `question` varchar(155) NOT NULL COMMENT '问题',
  `answer` varchar(255) NOT NULL COMMENT '答案',
  `cate_id` int(11) DEFAULT '1' COMMENT '所属业务分类id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1 启用  2 禁用',
  `seller_id` int(11) NOT NULL COMMENT '所属商户id',
  `useful_num` int(11) DEFAULT '0' COMMENT '被标记有用数量',
  `useless_num` int(11) DEFAULT '0' COMMENT '被标记无用次数',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`knowledge_id`) USING BTREE,
  KEY `sellerid` (`seller_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_knowledge_store`
--

LOCK TABLES `v2_knowledge_store` WRITE;
/*!40000 ALTER TABLE `v2_knowledge_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `v2_knowledge_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_leave_msg`
--

DROP TABLE IF EXISTS `v2_leave_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_leave_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(155) NOT NULL COMMENT '留言人名称',
  `phone` char(11) NOT NULL COMMENT '留言人手机号',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `seller_code` varchar(32) NOT NULL COMMENT '所属商户',
  `add_time` int(10) NOT NULL COMMENT '留言时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '留言是否已读 1 未读 2 已读',
  `update_time` datetime DEFAULT NULL COMMENT '已读处理时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_leave_msg`
--

LOCK TABLES `v2_leave_msg` WRITE;
/*!40000 ALTER TABLE `v2_leave_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `v2_leave_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_login_log`
--

DROP TABLE IF EXISTS `v2_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_login_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `login_user` varchar(55) NOT NULL COMMENT '登录用户',
  `login_ip` varchar(15) NOT NULL COMMENT '登录ip',
  `login_area` varchar(55) DEFAULT NULL COMMENT '登录地区',
  `login_user_agent` varchar(155) DEFAULT NULL COMMENT '登录设备头',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `login_status` tinyint(1) DEFAULT '1' COMMENT '登录状态 1 成功 2 失败',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_login_log`
--

LOCK TABLES `v2_login_log` WRITE;
/*!40000 ALTER TABLE `v2_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `v2_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_now_service`
--

DROP TABLE IF EXISTS `v2_now_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_now_service` (
  `service_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kefu_code` varchar(32) NOT NULL COMMENT '客服标识',
  `customer_id` varchar(32) NOT NULL COMMENT '访客id',
  `client_id` varchar(32) NOT NULL COMMENT '访客的客户端id',
  `create_time` int(10) NOT NULL COMMENT '记录添加时间',
  `service_log_id` int(11) DEFAULT '0' COMMENT '当前服务的日志id',
  PRIMARY KEY (`service_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_now_service`
--

LOCK TABLES `v2_now_service` WRITE;
/*!40000 ALTER TABLE `v2_now_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `v2_now_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_operate_log`
--

DROP TABLE IF EXISTS `v2_operate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_operate_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '操作日志id',
  `operator` varchar(55) NOT NULL COMMENT '操作用户',
  `operator_ip` varchar(15) NOT NULL COMMENT '操作者ip',
  `operate_method` varchar(100) NOT NULL COMMENT '操作方法',
  `operate_title` varchar(55) NOT NULL COMMENT '操作简述',
  `operate_desc` varchar(255) DEFAULT NULL COMMENT '操作描述',
  `operate_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_operate_log`
--

LOCK TABLES `v2_operate_log` WRITE;
/*!40000 ALTER TABLE `v2_operate_log` DISABLE KEYS */;
INSERT INTO `v2_operate_log` VALUES (1,'admin','113.119.69.172','seller/editSeller','编辑商户','编辑商户： 测试商户 , 商户状态改为： 1 , ','2021-09-01 18:11:08');
/*!40000 ALTER TABLE `v2_operate_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_praise`
--

DROP TABLE IF EXISTS `v2_praise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_praise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(32) NOT NULL COMMENT '访客标识',
  `kefu_code` varchar(32) NOT NULL COMMENT '客服标识',
  `seller_code` varchar(32) NOT NULL COMMENT '商户的标识',
  `service_log_id` varchar(20) NOT NULL COMMENT '本次会话标识',
  `star` int(2) NOT NULL DEFAULT '0' COMMENT '分数',
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `seller` (`seller_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_praise`
--

LOCK TABLES `v2_praise` WRITE;
/*!40000 ALTER TABLE `v2_praise` DISABLE KEYS */;
/*!40000 ALTER TABLE `v2_praise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_question`
--

DROP TABLE IF EXISTS `v2_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_code` varchar(32) NOT NULL COMMENT '所属商户的标识',
  `question` varchar(55) NOT NULL COMMENT '常见问题',
  `answer` varchar(255) NOT NULL COMMENT '答案',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_question`
--

LOCK TABLES `v2_question` WRITE;
/*!40000 ALTER TABLE `v2_question` DISABLE KEYS */;
INSERT INTO `v2_question` VALUES (2,'5c6cbcb7d55ca','接入渠道','全渠道覆盖\n接待响应一站式\n桌面网站\nApp\n微信\n短信\n移动网站\n邮件\n微博','2021-08-31 19:12:10');
/*!40000 ALTER TABLE `v2_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_question_conf`
--

DROP TABLE IF EXISTS `v2_question_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_question_conf` (
  `question_conf_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '常见问题设置id',
  `question_title` varchar(55) NOT NULL DEFAULT '猜您想问：' COMMENT '常见问题标题',
  `seller_code` varchar(32) NOT NULL COMMENT '所属商户标识',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 启动 0 禁用',
  PRIMARY KEY (`question_conf_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_question_conf`
--

LOCK TABLES `v2_question_conf` WRITE;
/*!40000 ALTER TABLE `v2_question_conf` DISABLE KEYS */;
INSERT INTO `v2_question_conf` VALUES (1,'猜你想问：','5c6cbcb7d55ca',0);
/*!40000 ALTER TABLE `v2_question_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_seller`
--

DROP TABLE IF EXISTS `v2_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_seller` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商户id',
  `seller_code` varchar(32) NOT NULL COMMENT '商户唯一标识',
  `seller_name` varchar(55) NOT NULL COMMENT '商户名',
  `seller_password` varchar(32) NOT NULL COMMENT '商户登录密码',
  `seller_avatar` varchar(55) DEFAULT NULL COMMENT '商户头像',
  `seller_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '商户状态 0 禁用 1 激活',
  `access_url` text NOT NULL COMMENT '接入域名',
  `valid_time` datetime DEFAULT NULL COMMENT '有效期',
  `max_kefu_num` int(5) DEFAULT '1' COMMENT '最大客服数',
  `max_group_num` int(5) DEFAULT '1' COMMENT '最大分组数',
  `create_index_flag` tinyint(1) DEFAULT '1' COMMENT '是否创建了 es索引 1:未创建 2:已创建',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`seller_id`) USING BTREE,
  UNIQUE KEY `seller_code` (`seller_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_seller`
--

LOCK TABLES `v2_seller` WRITE;
/*!40000 ALTER TABLE `v2_seller` DISABLE KEYS */;
INSERT INTO `v2_seller` VALUES (1,'5c6cbcb7d55ca','测试商户','ec38580424ab588fb99e46a6422fd032','',1,'http://kf.121008.xyz','2022-07-15 14:39:18',5,3,2,'2019-02-20 10:35:58','2021-09-01 18:11:08'),(2,'612f39421f022','jay_chou','ec38580424ab588fb99e46a6422fd032','',1,'http://www.baidu.com','2021-09-04 16:26:42',1,1,1,'2021-09-01 16:26:42','2021-09-01 16:26:42'),(3,'61303d4fc17d9','13800139000','ec38580424ab588fb99e46a6422fd032','',1,'http://www.baidu.com','2021-09-05 10:56:15',1,1,1,'2021-09-02 10:56:15','2021-09-02 10:56:15');
/*!40000 ALTER TABLE `v2_seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_seller_box_style`
--

DROP TABLE IF EXISTS `v2_seller_box_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_seller_box_style` (
  `box_style_id` int(11) NOT NULL AUTO_INCREMENT,
  `style_type` tinyint(1) DEFAULT '1' COMMENT '按钮样式 1 底部 2 侧边',
  `box_color` varchar(55) DEFAULT NULL COMMENT '弹层和按钮的颜色',
  `box_icon` int(3) DEFAULT '1' COMMENT '按钮图标',
  `box_title` varchar(155) DEFAULT NULL COMMENT '按钮显示咨询字样',
  `box_margin` int(4) DEFAULT NULL COMMENT '按钮边距',
  `seller_id` int(11) DEFAULT NULL COMMENT '关联的商户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建 时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`box_style_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_seller_box_style`
--

LOCK TABLES `v2_seller_box_style` WRITE;
/*!40000 ALTER TABLE `v2_seller_box_style` DISABLE KEYS */;
INSERT INTO `v2_seller_box_style` VALUES (1,2,'#13c9cb',1,'咨询客服',30,1,'2020-07-22 21:47:27','2021-08-31 19:18:03'),(2,1,'#1e9fff',1,'咨询客服',20,2,'2021-09-01 16:32:43',NULL);
/*!40000 ALTER TABLE `v2_seller_box_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_system`
--

DROP TABLE IF EXISTS `v2_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_system` (
  `sys_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统设置id',
  `hello_word` text NOT NULL COMMENT '欢迎语',
  `seller_id` int(11) NOT NULL COMMENT '所属商家',
  `seller_code` varchar(32) NOT NULL COMMENT '商户标识',
  `hello_status` tinyint(1) NOT NULL COMMENT '是否启用欢迎语 0 不启用 1 启用',
  `relink_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否转接 0 不启用 1 启用',
  `auto_link` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否自动接待 0 否 1 是',
  `auto_link_time` int(5) NOT NULL DEFAULT '30' COMMENT '自动接待间隔 单位s',
  `robot_open` tinyint(1) DEFAULT '0' COMMENT '是否开启机器人 0:关闭  1:开启',
  `pre_input` tinyint(1) DEFAULT '0' COMMENT '咨询前输入个人信息 0:否 1:是',
  `auto_remark` tinyint(1) DEFAULT '1' COMMENT '自动备注 0 关闭 1 打开',
  PRIMARY KEY (`sys_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_system`
--

LOCK TABLES `v2_system` WRITE;
/*!40000 ALTER TABLE `v2_system` DISABLE KEYS */;
INSERT INTO `v2_system` VALUES (1,'<p>AI智服您身边的智能客服系统，以在线人工客服和智能机器人两大系统为基础，融合ACD（Automatic Call Distribution）技术和大数据分析，为各行业企业提供云端和系统自建的应用产品，以及整体在线营销与服务解决方案。</p><p><span style=\"font-size: 14px; color: rgb(127, 127, 127);\">AI智服不得用于任何违法犯罪目的，包括非法言论、网络黄赌毒和诈骗等违法行为，一旦发现将采取关停账号并移交相关司法机构等措施！</span></p>',1,'5c6cbcb7d55ca',1,1,1,5,1,0,0),(2,'您好，客服为您服务',2,'612f39421f022',1,1,0,30,0,0,1),(3,'您好，客服为您服务',3,'61303d4fc17d9',1,1,0,30,0,0,1);
/*!40000 ALTER TABLE `v2_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_unknown_question`
--

DROP TABLE IF EXISTS `v2_unknown_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_unknown_question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '位置问题id',
  `seller_id` int(11) NOT NULL COMMENT '关联的商户id',
  `question` varchar(255) NOT NULL COMMENT '未知问题',
  `customer_name` varchar(155) NOT NULL COMMENT '提问的访客',
  `create_time` datetime NOT NULL COMMENT '提问时间',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_unknown_question`
--

LOCK TABLES `v2_unknown_question` WRITE;
/*!40000 ALTER TABLE `v2_unknown_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `v2_unknown_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_word`
--

DROP TABLE IF EXISTS `v2_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_word` (
  `word_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(155) NOT NULL COMMENT '简略标题',
  `word` text NOT NULL COMMENT '常用语内容',
  `seller_code` varchar(32) NOT NULL COMMENT '所属商户的标识',
  `cate_id` int(11) NOT NULL COMMENT '所属分类id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`word_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_word`
--

LOCK TABLES `v2_word` WRITE;
/*!40000 ALTER TABLE `v2_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `v2_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v2_word_cate`
--

DROP TABLE IF EXISTS `v2_word_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v2_word_cate` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题分类id',
  `cate_name` varchar(55) NOT NULL COMMENT '问题分类名称',
  `seller_id` int(11) NOT NULL COMMENT '所属商户id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 启用 2 禁用',
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v2_word_cate`
--

LOCK TABLES `v2_word_cate` WRITE;
/*!40000 ALTER TABLE `v2_word_cate` DISABLE KEYS */;
INSERT INTO `v2_word_cate` VALUES (1,'咨询问题',1,1),(2,'付费问题',1,1);
/*!40000 ALTER TABLE `v2_word_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'kf_taobyh_cn'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-04 22:54:33
