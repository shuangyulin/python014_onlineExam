-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django9362q
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `django9362q`
--

/*!40000 DROP DATABASE IF EXISTS `django9362q`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django9362q` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `django9362q`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '在线考试名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '在线考试状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648182239582 DEFAULT CHARSET=utf8 COMMENT='在线考试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'2022-03-25 03:41:54','十万个为什么',60,1),(1648182239581,'2022-03-25 04:23:59','数学课程考试',60,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属在线考试id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '在线考试名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648182320622 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'2022-03-25 03:41:54',1,'十万个为什么','下面动物不属于昆虫的是（）。','[{\"text\":\"A.苍蝇\",\"code\":\"A\"},{\"text\":\"B.蜜蜂\",\"code\":\"B\"},{\"text\":\"C.蜂鸟\",\"code\":\"C\"}]',20,'C','蜂鸟',0,1),(2,'2022-03-25 03:41:54',1,'十万个为什么','油着火后可以用水扑灭。','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'B','油着火后不可以用水扑灭',2,2),(3,'2022-03-25 03:41:54',1,'十万个为什么','地球是个球体，中间是（ ）。','[]',30,'赤道','赤道',3,3),(4,'2022-03-25 03:41:54',1,'十万个为什么','下面动物中会流汗的有（ ）。','[{\"text\":\"A.马\",\"code\":\"A\"},{\"text\":\"B.猫\",\"code\":\"B\"},{\"text\":\"C.狗\",\"code\":\"C\"}]',30,'A,B','狗不会流汗',1,4),(1648182270535,'2022-03-24 20:27:27',1648182239581,'数学课程考试','第三方防守打法生','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"}]',20,'A','XXX',0,1),(1648182294844,'2022-03-24 20:27:55',1648182239581,'数学课程考试','爽肤水分公司答复','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"}]',20,'A,B','沙发撒的发生大',1,2),(1648182307927,'2022-03-24 20:28:19',1648182239581,'数学课程考试','撒的发生的观点发生过','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','房东根深蒂固',2,3),(1648182320621,'2022-03-24 20:28:31',1648182239581,'数学课程考试','官方的事故的发送给','[]',4,'电费根深蒂固','个大改速度跟得上',3,4);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '在线考试id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '在线考试名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648182377847 DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1648182355914,'2022-03-25 04:25:55',1648182199827,'张三',1648182239581,'数学课程考试',1648182270535,'第三方防守打法生','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"}]',20,'A','XXX',20,'A'),(1648182358132,'2022-03-25 04:25:58',1648182199827,'张三',1648182239581,'数学课程考试',1648182294844,'爽肤水分公司答复','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"}]',20,'A,B','沙发撒的发生大',0,'A'),(1648182361212,'2022-03-25 04:26:01',1648182199827,'张三',1648182239581,'数学课程考试',1648182307927,'撒的发生的观点发生过','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','房东根深蒂固',20,'A'),(1648182365899,'2022-03-25 04:26:05',1648182199827,'张三',1648182239581,'数学课程考试',1648182320621,'官方的事故的发送给','[]',4,'电费根深蒂固','个大改速度跟得上',0,'撒的发生发送'),(1648182371557,'2022-03-25 04:26:11',1648182199827,'张三',1,'十万个为什么',1,'下面动物不属于昆虫的是（）。','[{\"text\":\"A.苍蝇\",\"code\":\"A\"},{\"text\":\"B.蜜蜂\",\"code\":\"B\"},{\"text\":\"C.蜂鸟\",\"code\":\"C\"}]',20,'C','蜂鸟',20,'C'),(1648182373354,'2022-03-25 04:26:13',1648182199827,'张三',1,'十万个为什么',2,'油着火后可以用水扑灭。','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'B','油着火后不可以用水扑灭',20,'B'),(1648182375017,'2022-03-25 04:26:15',1648182199827,'张三',1,'十万个为什么',3,'地球是个球体，中间是（ ）。','[]',30,'赤道','赤道',0,'1'),(1648182377846,'2022-03-25 04:26:17',1648182199827,'张三',1,'十万个为什么',4,'下面动物中会流汗的有（ ）。','[{\"text\":\"A.马\",\"code\":\"A\"},{\"text\":\"B.猫\",\"code\":\"B\"},{\"text\":\"C.狗\",\"code\":\"C\"}]',30,'A,B','狗不会流汗',30,'A,B');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648182211250 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2022-03-25 03:41:54','工号1','123456','姓名1','男','职称1','13823888881'),(22,'2022-03-25 03:41:54','工号2','123456','姓名2','男','职称2','13823888882'),(23,'2022-03-25 03:41:54','工号3','123456','姓名3','男','职称3','13823888883'),(24,'2022-03-25 03:41:54','工号4','123456','姓名4','男','职称4','13823888884'),(25,'2022-03-25 03:41:54','工号5','123456','姓名5','男','职称5','13823888885'),(26,'2022-03-25 03:41:54','工号6','123456','姓名6','男','职称6','13823888886'),(1648182211249,'2022-03-25 04:23:31','222','222','李四','男','XXXX','18154541454');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-25 03:41:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648182199828 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-03-25 03:41:54','学号1','123456','姓名1','男','13823888881','年级1','班级1'),(12,'2022-03-25 03:41:54','学号2','123456','姓名2','男','13823888882','年级2','班级2'),(13,'2022-03-25 03:41:54','学号3','123456','姓名3','男','13823888883','年级3','班级3'),(14,'2022-03-25 03:41:54','学号4','123456','姓名4','男','13823888884','年级4','班级4'),(15,'2022-03-25 03:41:54','学号5','123456','姓名5','男','13823888885','年级5','班级5'),(16,'2022-03-25 03:41:54','学号6','123456','姓名6','男','13823888886','年级6','班级6'),(1648182199827,'2022-03-25 04:23:19','111','111','张三','男','18154541454','XXX','XXX');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-27 17:27:43
