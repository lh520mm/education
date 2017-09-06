/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-07-05 18:57:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ci`
-- ----------------------------
DROP TABLE IF EXISTS `ci`;
CREATE TABLE `ci` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ci
-- ----------------------------
INSERT INTO `ci` VALUES ('1', 'a');
INSERT INTO `ci` VALUES ('2', 'ab');
INSERT INTO `ci` VALUES ('3', 'c');
INSERT INTO `ci` VALUES ('4', 'abc');
INSERT INTO `ci` VALUES ('5', 'ad');
INSERT INTO `ci` VALUES ('6', 'b');
INSERT INTO `ci` VALUES ('7', 'd');

-- ----------------------------
-- Table structure for `cj`
-- ----------------------------
DROP TABLE IF EXISTS `cj`;
CREATE TABLE `cj` (
  `stu_id` int(10) DEFAULT NULL,
  `sub_id` int(10) DEFAULT NULL,
  `score` double(10,2) DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cj
-- ----------------------------
INSERT INTO `cj` VALUES ('15', '7', '60.00', '40');
INSERT INTO `cj` VALUES ('15', '3', '0.00', '41');
INSERT INTO `cj` VALUES ('14', '2', '80.00', '43');
INSERT INTO `cj` VALUES ('15', '8', '80.00', '44');
INSERT INTO `cj` VALUES ('5', '8', '0.00', '45');
INSERT INTO `cj` VALUES ('14', '7', '80.00', '46');
INSERT INTO `cj` VALUES ('14', '3', '0.00', '47');
INSERT INTO `cj` VALUES ('15', '2', '70.00', '48');
INSERT INTO `cj` VALUES ('14', '8', '89.00', '49');
INSERT INTO `cj` VALUES ('19', '1', '100.00', '50');
INSERT INTO `cj` VALUES ('38', '7', '80.00', '51');
INSERT INTO `cj` VALUES ('34', '7', '80.00', '52');
INSERT INTO `cj` VALUES ('34', '1', '80.00', '53');
INSERT INTO `cj` VALUES ('34', '9', '85.50', '54');
INSERT INTO `cj` VALUES ('29', '1', '60.00', '55');
INSERT INTO `cj` VALUES ('33', '8', '95.00', '56');
INSERT INTO `cj` VALUES ('37', '1', '85.00', '57');
INSERT INTO `cj` VALUES ('1', '1', '95.00', '78');
INSERT INTO `cj` VALUES ('36', '1', '75.00', '79');
INSERT INTO `cj` VALUES ('19', '2', '85.00', '80');
INSERT INTO `cj` VALUES ('36', '2', '65.00', '81');
INSERT INTO `cj` VALUES ('1', '8', '56.00', '82');
INSERT INTO `cj` VALUES ('1', '3', '89.00', '83');
INSERT INTO `cj` VALUES ('39', '3', '56.00', '84');
INSERT INTO `cj` VALUES ('36', '3', '45.00', '85');
INSERT INTO `cj` VALUES ('37', '3', '56.00', '86');
INSERT INTO `cj` VALUES ('36', '7', '85.00', '87');
INSERT INTO `cj` VALUES ('33', '7', '89.00', '88');

-- ----------------------------
-- Table structure for `class_id`
-- ----------------------------
DROP TABLE IF EXISTS `class_id`;
CREATE TABLE `class_id` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_id
-- ----------------------------
INSERT INTO `class_id` VALUES ('1', '通信一班');
INSERT INTO `class_id` VALUES ('2', '通信二班');
INSERT INTO `class_id` VALUES ('3', '电信一班');
INSERT INTO `class_id` VALUES ('4', '电信二班');
INSERT INTO `class_id` VALUES ('5', '计科一班');
INSERT INTO `class_id` VALUES ('6', '计科二班');
INSERT INTO `class_id` VALUES ('8', '软件一班');
INSERT INTO `class_id` VALUES ('10', '软件二班');
INSERT INTO `class_id` VALUES ('12', '数媒一班');
INSERT INTO `class_id` VALUES ('13', '网络一班');
INSERT INTO `class_id` VALUES ('15', '物联网一班');
INSERT INTO `class_id` VALUES ('16', '临床医学');

-- ----------------------------
-- Table structure for `m_sub_c`
-- ----------------------------
DROP TABLE IF EXISTS `m_sub_c`;
CREATE TABLE `m_sub_c` (
  `s_id` int(11) NOT NULL DEFAULT '0',
  `c_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`s_id`,`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_sub_c
-- ----------------------------
INSERT INTO `m_sub_c` VALUES ('1', '2');
INSERT INTO `m_sub_c` VALUES ('1', '3');
INSERT INTO `m_sub_c` VALUES ('1', '5');
INSERT INTO `m_sub_c` VALUES ('1', '6');
INSERT INTO `m_sub_c` VALUES ('1', '8');
INSERT INTO `m_sub_c` VALUES ('1', '10');
INSERT INTO `m_sub_c` VALUES ('1', '12');
INSERT INTO `m_sub_c` VALUES ('1', '13');
INSERT INTO `m_sub_c` VALUES ('1', '15');
INSERT INTO `m_sub_c` VALUES ('1', '16');
INSERT INTO `m_sub_c` VALUES ('2', '1');
INSERT INTO `m_sub_c` VALUES ('2', '3');
INSERT INTO `m_sub_c` VALUES ('2', '5');
INSERT INTO `m_sub_c` VALUES ('2', '6');
INSERT INTO `m_sub_c` VALUES ('2', '8');
INSERT INTO `m_sub_c` VALUES ('2', '15');
INSERT INTO `m_sub_c` VALUES ('3', '2');
INSERT INTO `m_sub_c` VALUES ('3', '4');
INSERT INTO `m_sub_c` VALUES ('3', '5');
INSERT INTO `m_sub_c` VALUES ('3', '10');
INSERT INTO `m_sub_c` VALUES ('3', '15');
INSERT INTO `m_sub_c` VALUES ('7', '1');
INSERT INTO `m_sub_c` VALUES ('7', '4');
INSERT INTO `m_sub_c` VALUES ('7', '12');
INSERT INTO `m_sub_c` VALUES ('7', '13');
INSERT INTO `m_sub_c` VALUES ('7', '15');
INSERT INTO `m_sub_c` VALUES ('8', '1');
INSERT INTO `m_sub_c` VALUES ('8', '2');
INSERT INTO `m_sub_c` VALUES ('8', '13');
INSERT INTO `m_sub_c` VALUES ('9', '12');
INSERT INTO `m_sub_c` VALUES ('10', '8');
INSERT INTO `m_sub_c` VALUES ('10', '10');
INSERT INTO `m_sub_c` VALUES ('11', '5');
INSERT INTO `m_sub_c` VALUES ('11', '6');

-- ----------------------------
-- Table structure for `stu`
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `bj` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu
-- ----------------------------
INSERT INTO `stu` VALUES ('1', '小琴', '男', '21', '2');
INSERT INTO `stu` VALUES ('14', '刘豪', '男', '23', '1');
INSERT INTO `stu` VALUES ('15', '校花', '女', '21', '1');
INSERT INTO `stu` VALUES ('19', '小毛', '女', '21', '3');
INSERT INTO `stu` VALUES ('29', '等等', '男', '20', '3');
INSERT INTO `stu` VALUES ('33', '花神', '女', '18', '13');
INSERT INTO `stu` VALUES ('34', '小夕', '女', '20', '12');
INSERT INTO `stu` VALUES ('36', '小南', '男', '19', '15');
INSERT INTO `stu` VALUES ('37', '小七', '女', '23', '10');
INSERT INTO `stu` VALUES ('38', '遗忘年', '男', '21', '13');
INSERT INTO `stu` VALUES ('39', '荷花', '女', '19', '15');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `age` int(8) DEFAULT NULL,
  `bj` varchar(10) DEFAULT NULL,
  `num` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '王一', '男', '21', '一班', '5101');
INSERT INTO `student` VALUES ('2', '王二', '男', '20', '一班', '5102');
INSERT INTO `student` VALUES ('3', '李笑笑', '女', '22', '一班', '5103');
INSERT INTO `student` VALUES ('4', '张三', '男', '20', '二班', '5104');
INSERT INTO `student` VALUES ('5', '李四', '男', '23', '一班', '5105');
INSERT INTO `student` VALUES ('6', '6', '6', '6', '6', '6');
INSERT INTO `student` VALUES ('7', '7', '7', '7', '7', '7');
INSERT INTO `student` VALUES ('8', '8', '8', '8', '8', '8');
INSERT INTO `student` VALUES ('9', '9', '9', '9', '9', '9');
INSERT INTO `student` VALUES ('10', '10', '10', '10', '10', '10');
INSERT INTO `student` VALUES ('11', '11', '11', '11', '11', '11');
INSERT INTO `student` VALUES ('12', '12', '12', '12', '12', '12');
INSERT INTO `student` VALUES ('13', '13', '13', '13', '13', '13');
INSERT INTO `student` VALUES ('14', '14', '14', '14', '14', '14');
INSERT INTO `student` VALUES ('15', '15', '15', '15', '15', '15');
INSERT INTO `student` VALUES ('16', '16', '16', '16', '16', '16');
INSERT INTO `student` VALUES ('17', '17', '17', '17', '17', '17');
INSERT INTO `student` VALUES ('18', '18', '18', '18', '18', '18');
INSERT INTO `student` VALUES ('19', '妈卖批', '女', '24', '19', '19');
INSERT INTO `student` VALUES ('21', '妈卖批', '女', '24', null, null);

-- ----------------------------
-- Table structure for `sub`
-- ----------------------------
DROP TABLE IF EXISTS `sub`;
CREATE TABLE `sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sub
-- ----------------------------
INSERT INTO `sub` VALUES ('1', 'c');
INSERT INTO `sub` VALUES ('2', 'java');
INSERT INTO `sub` VALUES ('3', '数据结构');
INSERT INTO `sub` VALUES ('7', '高等数学');
INSERT INTO `sub` VALUES ('8', '计算机网络');
INSERT INTO `sub` VALUES ('9', 'PS');
INSERT INTO `sub` VALUES ('10', '软件工程');
INSERT INTO `sub` VALUES ('11', '微机原理');
INSERT INTO `sub` VALUES ('13', '大学英语');

-- ----------------------------
-- Table structure for `us`
-- ----------------------------
DROP TABLE IF EXISTS `us`;
CREATE TABLE `us` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us
-- ----------------------------
INSERT INTO `us` VALUES ('1', 'abc', '123456');
INSERT INTO `us` VALUES ('2', 'hh', '123');
INSERT INTO `us` VALUES ('3', '刘豪', '45414');

-- ----------------------------
-- Procedure structure for `p_snum`
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_snum`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_snum`()
BEGIN

DECLARE tid int;
DECLARE tnum int;

DECLARE isLoop int default 1;


DECLARE cur CURSOR for select class_id.id ,COUNT(stu.id) from stu 
INNER JOIN class_id on stu.class_id=class_id.id
GROUP BY class_id.id;

DECLARE CONTINUE HANDLER FOR NOT found set isLoop=0;

OPEN cur;

FETCH cur into tid ,tnum;

while isLoop>0 DO
UPDATE class_id set num =tnum where id=tid;
FETCH cur into tid ,tnum;
END while;
close cur;
END
;;
DELIMITER ;
