/*
Navicat MySQL Data Transfer

Source Server         : dev
Source Server Version : 50719
Source Host           : 192.168.1.90:3306
Source Database       : data_graph

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-28 09:57:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for DataType
-- ----------------------------
DROP TABLE IF EXISTS `DataType`;
CREATE TABLE `DataType` (
  `DtpSID` varchar(8) NOT NULL COMMENT '数据类型编码',
  `DtpName` varchar(255) DEFAULT NULL COMMENT '数据类型名称',
  PRIMARY KEY (`DtpSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of DataType
-- ----------------------------

-- ----------------------------
-- Table structure for EntAttribType
-- ----------------------------
DROP TABLE IF EXISTS `EntAttribType`;
CREATE TABLE `EntAttribType` (
  `AtbSID` varchar(40) NOT NULL COMMENT '属性编码',
  `usrSID` varchar(40) DEFAULT NULL COMMENT '用户内码',
  `DtpSID` varchar(8) DEFAULT NULL COMMENT '数据类型编码',
  `AtbName` varchar(200) DEFAULT NULL COMMENT '属性名称',
  `ObjType` varchar(40) DEFAULT NULL COMMENT '宿主对象类型',
  `ObjSID` varchar(40) DEFAULT NULL COMMENT '宿主对象编号',
  `UntName` varchar(20) DEFAULT NULL COMMENT '属性计量单位',
  `EntSID` varchar(40) DEFAULT NULL COMMENT '外键',
  PRIMARY KEY (`AtbSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of EntAttribType
-- ----------------------------
INSERT INTO `EntAttribType` VALUES ('1794', '1', '', '油耗', '', '', '', '1384');
INSERT INTO `EntAttribType` VALUES ('1933', '2', '', '百公里1', '', '', '', '1384');
INSERT INTO `EntAttribType` VALUES ('2064', '2', '', '嘿嘿', '', '', '', '1384');
INSERT INTO `EntAttribType` VALUES ('2219', '1', '', '百公里', '', '', '', '1384');
INSERT INTO `EntAttribType` VALUES ('2298', '1', '', '里程', '', '', '', '1384');
INSERT INTO `EntAttribType` VALUES ('2317', '2', '', '里程', '', '', '', '1384');
INSERT INTO `EntAttribType` VALUES ('2438', '2', '', '百公里1', '', '', '', '2278');
INSERT INTO `EntAttribType` VALUES ('2458', '2', '', '里程', '', '', '', '2278');
INSERT INTO `EntAttribType` VALUES ('2477', '2', '', '嘿嘿', '', '', '', '2278');

-- ----------------------------
-- Table structure for EntityType
-- ----------------------------
DROP TABLE IF EXISTS `EntityType`;
CREATE TABLE `EntityType` (
  `ID` varchar(200) NOT NULL COMMENT '主键',
  `EntSID` varchar(40) DEFAULT NULL COMMENT '实体类型编号',
  `usrSID` varchar(40) DEFAULT NULL COMMENT '用户内码',
  `EntName` varchar(200) DEFAULT NULL COMMENT '实体类型名称',
  `EntTmpl` varchar(50) DEFAULT NULL COMMENT '实体类型模版节点ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of EntityType
-- ----------------------------
INSERT INTO `EntityType` VALUES ('18ba95641d0645ab883ed72d53776c8f', '1384', '2', '美国制造', '');
INSERT INTO `EntityType` VALUES ('5a2ef1a03d2b47c4b80d33a297949bac', '2063', '1', '中国制造', '');
INSERT INTO `EntityType` VALUES ('bdb903072b0f427ba8d6d50ad56118d5', '1384', '1', '美国制造', '');
INSERT INTO `EntityType` VALUES ('f738d71129f0468c9b8728b3dadd1d17', '2278', '2', '美国汽车', '');

-- ----------------------------
-- Table structure for EntRelType
-- ----------------------------
DROP TABLE IF EXISTS `EntRelType`;
CREATE TABLE `EntRelType` (
  `RtpSID` varchar(40) DEFAULT NULL COMMENT '关系类型编号',
  `usrSID` varchar(40) DEFAULT NULL COMMENT '用户内码',
  `RtpName` varchar(200) DEFAULT NULL COMMENT '关系类型名称',
  `EntSID` varchar(40) DEFAULT NULL COMMENT '实体外键'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of EntRelType
-- ----------------------------
INSERT INTO `EntRelType` VALUES ('458', '1', '实体类_包含_属性', '1384');
INSERT INTO `EntRelType` VALUES ('1180', '1', '属性_包含_属性', '1384');
INSERT INTO `EntRelType` VALUES ('529', '1', '实体类_包含_属性', '1384');
INSERT INTO `EntRelType` VALUES ('517', '2', '实体类_包含_属性', '1384');
INSERT INTO `EntRelType` VALUES ('1153', '2', '实体类_包含_属性', '1384');
INSERT INTO `EntRelType` VALUES ('895', '2', '属性_包含_属性', '1384');
INSERT INTO `EntRelType` VALUES ('1261', '2', '实体类_包含_属性', '2278');
INSERT INTO `EntRelType` VALUES ('1241', '2', '实体类_包含_属性', '2278');
INSERT INTO `EntRelType` VALUES ('1300', '2', '属性_包含_属性', '2278');

-- ----------------------------
-- Table structure for ObjType
-- ----------------------------
DROP TABLE IF EXISTS `ObjType`;
CREATE TABLE `ObjType` (
  `OtpSID` int(11) NOT NULL COMMENT '对象类型编码',
  `OtpName` varchar(30) DEFAULT NULL COMMENT '对象类型名称',
  PRIMARY KEY (`OtpSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ObjType
-- ----------------------------

-- ----------------------------
-- Table structure for OperLog
-- ----------------------------
DROP TABLE IF EXISTS `OperLog`;
CREATE TABLE `OperLog` (
  `logSID` varchar(40) NOT NULL COMMENT '操作序列号',
  `usrSID` varchar(40) NOT NULL COMMENT '用户内码',
  `OprSID` int(11) DEFAULT NULL COMMENT '操作命令编码',
  `logTime` datetime DEFAULT NULL COMMENT '操作时间',
  `ObjID` varchar(40) DEFAULT NULL COMMENT '操作对象id',
  `ObjName` varchar(255) DEFAULT NULL COMMENT '操作对象名称',
  `ObjOldValue` varchar(4000) DEFAULT NULL COMMENT '操作对象旧值',
  `ObjNewValue` varchar(4000) DEFAULT NULL COMMENT '操作对象新值',
  PRIMARY KEY (`logSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of OperLog
-- ----------------------------

-- ----------------------------
-- Table structure for OperType
-- ----------------------------
DROP TABLE IF EXISTS `OperType`;
CREATE TABLE `OperType` (
  `OprSID` int(11) NOT NULL COMMENT '操作命令编码',
  `OprName` varchar(30) DEFAULT NULL COMMENT '操作命令名称',
  PRIMARY KEY (`OprSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of OperType
-- ----------------------------

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `usrSID` varchar(50) NOT NULL COMMENT '主键',
  `usrName` varchar(255) NOT NULL COMMENT '用户名称',
  `usrPassword` varchar(100) NOT NULL COMMENT '用户密码',
  `usrNodeID` int(100) DEFAULT NULL COMMENT '用户节点id',
  `status` int(1) DEFAULT NULL COMMENT '1:正常 2:申请试用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `level` int(1) DEFAULT NULL COMMENT '等级',
  PRIMARY KEY (`usrSID`,`usrName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of User
-- ----------------------------
INSERT INTO `User` VALUES ('1', 'xialf', '123456', null, '1', '2018-04-02 16:57:44', '2018-04-02 16:57:48', '1');
INSERT INTO `User` VALUES ('2', 'admin', '123456', null, '1', '2018-04-26 13:34:53', '2018-04-26 13:34:58', '1');

-- ----------------------------
-- Table structure for UsrEntAttrib
-- ----------------------------
DROP TABLE IF EXISTS `UsrEntAttrib`;
CREATE TABLE `UsrEntAttrib` (
  `AtbSID` varchar(40) NOT NULL COMMENT '属性编码',
  `usrSID` varchar(40) DEFAULT NULL COMMENT '用户内码',
  `DtpSID` varchar(8) DEFAULT NULL COMMENT '数据类型编码',
  `AtbName` varchar(200) DEFAULT NULL COMMENT '属性名称',
  `ObjType` varchar(40) DEFAULT NULL COMMENT '宿主对象类型',
  `ObjSID` varchar(40) DEFAULT NULL COMMENT '宿主对象编号',
  `UntName` varchar(20) DEFAULT NULL COMMENT '属性计量单位',
  `EntSID` varchar(40) DEFAULT NULL COMMENT '外键',
  PRIMARY KEY (`AtbSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of UsrEntAttrib
-- ----------------------------
INSERT INTO `UsrEntAttrib` VALUES ('1440', '2', '', '里程', '', '', '', '2377');
INSERT INTO `UsrEntAttrib` VALUES ('1803', '2', '', '里程', '', '', '', '1959');
INSERT INTO `UsrEntAttrib` VALUES ('1898', '2', '', '百公里1', '', '', '', '1959');
INSERT INTO `UsrEntAttrib` VALUES ('2065', '1', '', '里程', '', '', '', '2337');
INSERT INTO `UsrEntAttrib` VALUES ('2220', '1', '', '百公里', '', '', '', '2337');
INSERT INTO `UsrEntAttrib` VALUES ('2277', '2', '', '百公里1', '', '', '', '2417');
INSERT INTO `UsrEntAttrib` VALUES ('2299', '2', '', '百公里1', '', '', '', '2377');
INSERT INTO `UsrEntAttrib` VALUES ('2357', '1', '', '油耗', '', '', '', '2337');
INSERT INTO `UsrEntAttrib` VALUES ('2397', '2', '', '嘿嘿', '', '', '', '2377');
INSERT INTO `UsrEntAttrib` VALUES ('2437', '2', '', '嘿嘿', '', '', '', '2417');
INSERT INTO `UsrEntAttrib` VALUES ('2457', '2', '', '里程', '', '', '', '2417');
INSERT INTO `UsrEntAttrib` VALUES ('2459', '2', '', '嘿嘿', '', '', '', '1959');

-- ----------------------------
-- Table structure for UsrEntity
-- ----------------------------
DROP TABLE IF EXISTS `UsrEntity`;
CREATE TABLE `UsrEntity` (
  `EntSID` varchar(40) DEFAULT NULL COMMENT '实体类型编号',
  `usrSID` varchar(40) DEFAULT NULL COMMENT '用户内码',
  `EntName` varchar(200) DEFAULT NULL COMMENT '实体类型名称',
  `EntTmpl` varchar(50) DEFAULT NULL COMMENT '实体类型模版节点ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of UsrEntity
-- ----------------------------
INSERT INTO `UsrEntity` VALUES ('2337', '1', '林肯', '');
INSERT INTO `UsrEntity` VALUES ('2377', '2', '卡迪拉克', '');
INSERT INTO `UsrEntity` VALUES ('2417', '2', '林肯', '');
INSERT INTO `UsrEntity` VALUES ('1959', '2', '别克', '');

-- ----------------------------
-- Table structure for UsrEntRel
-- ----------------------------
DROP TABLE IF EXISTS `UsrEntRel`;
CREATE TABLE `UsrEntRel` (
  `RtpSID` varchar(40) DEFAULT NULL COMMENT '关系类型编号',
  `usrSID` varchar(40) DEFAULT NULL COMMENT '用户内码',
  `RtpName` varchar(200) DEFAULT NULL COMMENT '关系类型名称',
  `EntSID` varchar(40) DEFAULT NULL COMMENT '外键',
  `Type` varchar(2) DEFAULT NULL COMMENT '关系类型：01-属性关系；02-实体关系'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of UsrEntRel
-- ----------------------------
INSERT INTO `UsrEntRel` VALUES ('896', '1', '实体类_包含_属性', '2337', '01');
INSERT INTO `UsrEntRel` VALUES ('1117', '1', '属性_包含_属性', '2337', '01');
INSERT INTO `UsrEntRel` VALUES ('920', '1', '实体类_包含_属性', '2337', '01');
INSERT INTO `UsrEntRel` VALUES ('1200', '2', '实体类_包含_属性', '2377', '01');
INSERT INTO `UsrEntRel` VALUES ('1220', '2', '实体类_包含_属性', '2377', '01');
INSERT INTO `UsrEntRel` VALUES ('549', '2', '属性_包含_属性', '2377', '01');
INSERT INTO `UsrEntRel` VALUES ('1240', '2', '实体类_包含_属性', '2417', '01');
INSERT INTO `UsrEntRel` VALUES ('1260', '2', '实体类_包含_属性', '2417', '01');
INSERT INTO `UsrEntRel` VALUES ('1280', '2', '属性_包含_属性', '2417', '01');
INSERT INTO `UsrEntRel` VALUES ('1320', '2', '竞争', '2377', '02');
INSERT INTO `UsrEntRel` VALUES ('961', '2', '实体类_包含_属性', '1959', '01');
INSERT INTO `UsrEntRel` VALUES ('922', '2', '实体类_包含_属性', '1959', '01');
INSERT INTO `UsrEntRel` VALUES ('812', '2', '属性_包含_属性', '1959', '01');
