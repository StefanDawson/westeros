/*
Navicat MySQL Data Transfer

Source Server         : FirstTime
Source Server Version : 50511
Source Host           : localhost:3306
Source Database       : db_stulnfo

Target Server Type    : MYSQL
Target Server Version : 50511
File Encoding         : 65001

Date: 2018-08-01 09:24:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_account`
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `nom` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account
-- ----------------------------
INSERT INTO `t_account` VALUES ('1', 'admin', '1234', '111111', '1');
INSERT INTO `t_account` VALUES ('2', 'NedStark', '1234', '110001', '2');
INSERT INTO `t_account` VALUES ('3', 'RobertBaratheon', '1234', '110002', '2');
INSERT INTO `t_account` VALUES ('4', 'OlennaRedwyne', '1234', '110003', '2');
INSERT INTO `t_account` VALUES ('5', 'BenjenStark', '1234', '220001', '3');
INSERT INTO `t_account` VALUES ('6', 'JeorMormont', '1234', '220002', '3');
INSERT INTO `t_account` VALUES ('7', 'EuronGreyjoy', '1234', '220003', '3');
INSERT INTO `t_account` VALUES ('8', 'CerseiLannister', '1234', '220004', '3');
INSERT INTO `t_account` VALUES ('9', 'PetyrBaelish', '1234', '220005', '3');
INSERT INTO `t_account` VALUES ('10', 'JhonSnow', '123456', '330101', '4');
INSERT INTO `t_account` VALUES ('11', 'RobbStark', '1234', '330201', '4');
INSERT INTO `t_account` VALUES ('12', 'SansaStark', '1234', '330102', '4');
INSERT INTO `t_account` VALUES ('13', 'AryaStark', '1234', '330103', '4');
INSERT INTO `t_account` VALUES ('14', 'BranStark', '1234', '330202', '4');
INSERT INTO `t_account` VALUES ('15', 'RickonStark', '1234', '330203', '4');
INSERT INTO `t_account` VALUES ('16', 'AegonTargaryen', '1234', '330401', '4');
INSERT INTO `t_account` VALUES ('17', 'RhaegarTargaryen', '1234', '330301', '4');
INSERT INTO `t_account` VALUES ('18', 'DaenerysTargaryen', '1234', '330402', '4');
INSERT INTO `t_account` VALUES ('19', 'TyrionLannister', '1234', '330403', '4');
INSERT INTO `t_account` VALUES ('20', 'JaimeLannister', '1234', '330302', '4');
INSERT INTO `t_account` VALUES ('21', 'MargaeryTyrell', '1234', '330303', '4');
INSERT INTO `t_account` VALUES ('22', 'LorasTyrell', '1234', '330501', '4');
INSERT INTO `t_account` VALUES ('23', 'LyannaMormont', '1234', '330502', '4');
INSERT INTO `t_account` VALUES ('24', 'JorahMormont', '1234', '330503', '4');
INSERT INTO `t_account` VALUES ('29', '阿红', '1234', '330104', '4');

-- ----------------------------
-- Table structure for `t_college`
-- ----------------------------
DROP TABLE IF EXISTS `t_college`;
CREATE TABLE `t_college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_college
-- ----------------------------
INSERT INTO `t_college` VALUES ('1', 'Winterfell', 'Winter is coming');
INSERT INTO `t_college` VALUES ('2', 'King\'sLanding', 'Gold and Blood');
INSERT INTO `t_college` VALUES ('3', 'Highgarden', 'Growing Strong');

-- ----------------------------
-- Table structure for `t_course`
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  `isRequired` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('1', 'Riding', '1', 'ride', 'yes');
INSERT INTO `t_course` VALUES ('2', 'Shooting', '1', 'shoot', 'yes');
INSERT INTO `t_course` VALUES ('3', 'FenceSkill', '2', 'skill', 'yes');
INSERT INTO `t_course` VALUES ('4', 'Stamina', '2', 'power', 'yes');
INSERT INTO `t_course` VALUES ('5', 'Swimming', '3', 'swim', 'yes');
INSERT INTO `t_course` VALUES ('6', 'Voyage', '3', 'voyage', 'yes');
INSERT INTO `t_course` VALUES ('7', 'WesterosHistory', '4', 'history', 'yes');
INSERT INTO `t_course` VALUES ('8', 'SocialContact', '5', 'Communication', 'yes');
INSERT INTO `t_course` VALUES ('9', 'WesterosLangurage', '5', 'langurage', 'yes');
INSERT INTO `t_course` VALUES ('10', 'Bachelor', '0', 'learning', 'no');
INSERT INTO `t_course` VALUES ('11', 'Ranger', '0', 'ride', 'no');
INSERT INTO `t_course` VALUES ('12', 'Conspiracy', '0', 'theory', 'no');
INSERT INTO `t_course` VALUES ('13', 'Speeching', '0', 'speak', 'no');
INSERT INTO `t_course` VALUES ('14', 'Cmputer', '0', 'Computer', 'no');

-- ----------------------------
-- Table structure for `t_grade`
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `teac_id` int(11) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `college_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES ('1', 'Horseback-Class', '4', '1', '1');
INSERT INTO `t_grade` VALUES ('2', 'Fencing-Class', '5', '2', '1');
INSERT INTO `t_grade` VALUES ('3', 'Navigation-Class', '6', '3', '2');
INSERT INTO `t_grade` VALUES ('4', 'Politics-Class', '7', '4', '2');
INSERT INTO `t_grade` VALUES ('5', 'InternationalRelations-Class', '8', '5', '3');
INSERT INTO `t_grade` VALUES ('6', '计科一班', '4', '1', '1');
INSERT INTO `t_grade` VALUES ('14', '光通信', '8', '5', '3');
INSERT INTO `t_grade` VALUES ('16', '光通信111', '5', '1', '1');

-- ----------------------------
-- Table structure for `t_login`
-- ----------------------------
DROP TABLE IF EXISTS `t_login`;
CREATE TABLE `t_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(200) DEFAULT NULL,
  `login` varchar(200) DEFAULT NULL,
  `logout` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_login
-- ----------------------------
INSERT INTO `t_login` VALUES ('1', 'JhonSnow', '2018-6-11 15:18:43', '2018-6-11 15:18:54');
INSERT INTO `t_login` VALUES ('2', 'JhonSnow', '2018-6-11 15:26:49', '2018-6-11 15:27:27');
INSERT INTO `t_login` VALUES ('3', 'NedStark', '2018-6-11 15:27:30', '2018-6-11 15:28:35');
INSERT INTO `t_login` VALUES ('4', 'BenjenStark', '2018-6-11 15:28:39', '2018-6-11 15:29:09');
INSERT INTO `t_login` VALUES ('5', 'admin', '2018-6-11 15:28:39', '2018-6-11 15:30:28');
INSERT INTO `t_login` VALUES ('6', 'NedStark', '2018-6-11 19:01:57', '2018-6-11 19:02:02');
INSERT INTO `t_login` VALUES ('7', 'BenjenStark', '2018-6-11 19:02:06', '2018-6-11 19:02:09');
INSERT INTO `t_login` VALUES ('8', 'CerseiLannister', '2018-6-11 19:02:17', '2018-6-11 19:02:34');
INSERT INTO `t_login` VALUES ('9', 'admin', '2018-6-11 19:02:17', '2018-6-11 19:04:01');
INSERT INTO `t_login` VALUES ('10', 'admin', '2018-6-11 19:02:17', '2018-6-11 19:05:57');
INSERT INTO `t_login` VALUES ('11', 'admin', '2018-6-11 19:02:17', '2018-6-11 19:08:10');
INSERT INTO `t_login` VALUES ('12', 'JhonSnow', '2018-6-13 14:25:03', '2018-6-13 14:25:32');
INSERT INTO `t_login` VALUES ('13', 'BenjenStark', '2018-6-13 14:28:42', '2018-6-13 14:28:47');
INSERT INTO `t_login` VALUES ('14', 'RobertBaratheon', '2018-6-13 14:33:59', '2018-6-13 14:34:03');
INSERT INTO `t_login` VALUES ('15', 'AryaStark', '2018-6-13 14:34:28', '2018-6-13 14:34:30');
INSERT INTO `t_login` VALUES ('16', 'admin', '2018-6-13 14:34:46', '2018-6-13 14:35:14');
INSERT INTO `t_login` VALUES ('17', 'OlennaRedwyne', '2018-6-14 8:59:54', '2018-6-14 9:00:05');
INSERT INTO `t_login` VALUES ('20', 'NedStark', '2018-6-14 17:41:18', '2018-6-14 17:42:45');
INSERT INTO `t_login` VALUES ('22', 'NedStark', '2018-6-14 17:43:46', '2018-6-14 17:45:51');
INSERT INTO `t_login` VALUES ('25', 'NedStark', '2018-6-14 17:51:26', '2018-6-14 17:54:44');
INSERT INTO `t_login` VALUES ('26', 'NedStark', '2018-6-14 17:54:56', '2018-6-14 17:55:11');
INSERT INTO `t_login` VALUES ('28', 'NedStark', '2018-6-14 18:02:59', '2018-6-14 18:14:12');
INSERT INTO `t_login` VALUES ('29', 'NedStark', '2018-6-14 18:11:30', '2018-6-14 18:26:12');
INSERT INTO `t_login` VALUES ('31', 'NedStark', '2018-6-14 18:42:40', '2018-6-14 18:56:12');
INSERT INTO `t_login` VALUES ('32', 'BenjenStark', '2018-6-14 19:01:54', '2018-6-14 19:14:07');
INSERT INTO `t_login` VALUES ('33', 'BenjenStark', '2018-6-14 19:29:28', '2018-6-14 19:30:18');
INSERT INTO `t_login` VALUES ('34', 'admin', '2018-6-14 19:30:54', '2018-6-14 19:37:53');
INSERT INTO `t_login` VALUES ('36', 'NedStark', '2018-6-14 20:02:36', '2018-6-14 20:06:11');
INSERT INTO `t_login` VALUES ('37', 'NedStark', '2018-6-14 20:06:15', '2018-6-14 20:07:19');
INSERT INTO `t_login` VALUES ('38', 'RobertBaratheon', '2018-6-14 20:11:02', '2018-6-14 20:12:57');
INSERT INTO `t_login` VALUES ('40', 'OlennaRedwyne', '2018-6-14 20:33:46', '2018-6-14 20:34:36');
INSERT INTO `t_login` VALUES ('41', 'NedStark', '2018-6-15 10:07:18', '2018-6-15 10:18:18');
INSERT INTO `t_login` VALUES ('42', 'AryaStark', '2018-6-15 10:22:00', '2018-6-15 10:22:50');
INSERT INTO `t_login` VALUES ('43', 'admin', '2018-6-15 10:23:10', '2018-6-15 10:23:36');
INSERT INTO `t_login` VALUES ('45', 'RobertBaratheon', '2018-6-15 10:27:49', '2018-6-15 10:28:57');
INSERT INTO `t_login` VALUES ('48', 'LyannaMormont', '2018-6-15 14:43:08', '2018-6-15 14:43:20');
INSERT INTO `t_login` VALUES ('49', 'RobbStark', '2018-6-15 14:44:33', '2018-6-15 14:44:57');
INSERT INTO `t_login` VALUES ('50', 'RobbStark', '2018-6-15 14:45:08', '2018-6-15 14:48:41');
INSERT INTO `t_login` VALUES ('51', 'AegonTargaryen', '2018-6-15 14:49:00', '2018-6-15 14:49:36');
INSERT INTO `t_login` VALUES ('52', 'JhonSnow', '2018-6-15 14:49:40', '2018-6-15 14:53:16');
INSERT INTO `t_login` VALUES ('53', 'RhaegarTargaryen', '2018-6-15 14:56:51', '2018-6-15 14:57:10');
INSERT INTO `t_login` VALUES ('54', 'JhonSnow', '2018-6-15 14:57:14', '2018-6-15 15:00:28');
INSERT INTO `t_login` VALUES ('55', 'NedStark', '2018-6-15 15:03:02', '2018-6-15 15:08:28');
INSERT INTO `t_login` VALUES ('56', 'BenjenStark', '2018-6-15 15:12:26', '2018-6-15 15:18:21');
INSERT INTO `t_login` VALUES ('57', 'BenjenStark', '2018-6-15 15:32:28', '2018-6-15 15:32:34');
INSERT INTO `t_login` VALUES ('58', 'EuronGreyjoy', '2018-6-15 15:32:43', '2018-6-15 15:35:44');
INSERT INTO `t_login` VALUES ('59', 'BenjenStark', '2018-6-15 15:35:48', '2018-6-15 15:36:41');
INSERT INTO `t_login` VALUES ('60', 'admin', '2018-6-15 15:36:50', '2018-6-15 15:38:04');
INSERT INTO `t_login` VALUES ('61', 'JhonSnow', '2018-6-15 15:49:35', '2018-6-15 15:49:58');
INSERT INTO `t_login` VALUES ('62', 'admin', '2018-6-15 15:50:04', '2018-6-15 15:51:12');
INSERT INTO `t_login` VALUES ('63', 'JhonSnow', '2018-6-15 16:11:38', '2018-6-15 16:12:58');
INSERT INTO `t_login` VALUES ('64', 'BenjenStark', '2018-6-15 16:13:10', '2018-6-15 16:15:24');
INSERT INTO `t_login` VALUES ('65', 'BenjenStark', '2018-6-15 16:15:54', '2018-6-15 16:16:02');
INSERT INTO `t_login` VALUES ('66', 'NedStark', '2018-6-15 16:17:46', '2018-6-15 16:21:24');
INSERT INTO `t_login` VALUES ('67', 'admin', '2018-6-15 16:23:17', '2018-6-15 16:27:11');
INSERT INTO `t_login` VALUES ('68', 'BenjenStark', '2018-6-15 16:28:52', '2018-6-15 16:29:30');
INSERT INTO `t_login` VALUES ('69', 'LyannaMormont', '2018-6-15 16:56:13', '2018-6-15 16:59:59');
INSERT INTO `t_login` VALUES ('70', 'BenjenStark', '2018-6-15 17:26:37', '2018-6-15 17:26:41');
INSERT INTO `t_login` VALUES ('71', '阿红', '2018-6-15 17:29:33', '2018-6-15 17:29:53');
INSERT INTO `t_login` VALUES ('72', 'RobertBaratheon', '2018-6-15 17:31:27', '2018-6-15 17:35:00');

-- ----------------------------
-- Table structure for `t_major`
-- ----------------------------
DROP TABLE IF EXISTS `t_major`;
CREATE TABLE `t_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `college_id` int(11) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_major
-- ----------------------------
INSERT INTO `t_major` VALUES ('1', 'Horseback1', '1', 'Riding and Shooting');
INSERT INTO `t_major` VALUES ('2', 'Fencing', '1', 'Fight');
INSERT INTO `t_major` VALUES ('3', 'Navigation', '2', 'Rowing and Boating');
INSERT INTO `t_major` VALUES ('4', 'Politics', '2', 'Game od Thrones');
INSERT INTO `t_major` VALUES ('5', 'InternationalRelations', '3', 'Communication and Society');
INSERT INTO `t_major` VALUES ('6', '通信工程', '1', '通信原理');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  `page` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', '管理员权限', 'adminPage');
INSERT INTO `t_role` VALUES ('2', '院长', '院长职权', 'deanPage');
INSERT INTO `t_role` VALUES ('3', '辅导员', '辅导员职权', 'teacherPage');
INSERT INTO `t_role` VALUES ('4', '学生', '学生权限', 'studentPage');

-- ----------------------------
-- Table structure for `t_score`
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score` (
  `id` int(11) NOT NULL,
  `year` int(4) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `stu_no` bigint(20) DEFAULT NULL,
  `term` enum('上学期','下学期') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES ('1', '2018', '1', '100', '330101', '上学期');
INSERT INTO `t_score` VALUES ('2', '2018', '2', '89', '330101', '下学期');
INSERT INTO `t_score` VALUES ('3', '2018', '1', '100', '330102', '上学期');
INSERT INTO `t_score` VALUES ('4', '2018', '5', '88', '330401', '下学期');

-- ----------------------------
-- Table structure for `t_stucour`
-- ----------------------------
DROP TABLE IF EXISTS `t_stucour`;
CREATE TABLE `t_stucour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_no` bigint(20) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_stucour
-- ----------------------------
INSERT INTO `t_stucour` VALUES ('1', '330101', '1');
INSERT INTO `t_stucour` VALUES ('35', '330101', '11');
INSERT INTO `t_stucour` VALUES ('36', '330101', '12');
INSERT INTO `t_stucour` VALUES ('37', '330101', '13');
INSERT INTO `t_stucour` VALUES ('38', '330101', '1');
INSERT INTO `t_stucour` VALUES ('39', '330101', '2');
INSERT INTO `t_stucour` VALUES ('40', '330103', '10');
INSERT INTO `t_stucour` VALUES ('41', '330103', '1');
INSERT INTO `t_stucour` VALUES ('42', '330103', '2');
INSERT INTO `t_stucour` VALUES ('43', '330201', '10');
INSERT INTO `t_stucour` VALUES ('44', '330201', '3');
INSERT INTO `t_stucour` VALUES ('45', '330201', '4');
INSERT INTO `t_stucour` VALUES ('46', '330201', '10');
INSERT INTO `t_stucour` VALUES ('47', '330201', '3');
INSERT INTO `t_stucour` VALUES ('48', '330201', '4');
INSERT INTO `t_stucour` VALUES ('49', '330201', '10');
INSERT INTO `t_stucour` VALUES ('50', '330201', '3');
INSERT INTO `t_stucour` VALUES ('51', '330201', '4');
INSERT INTO `t_stucour` VALUES ('52', '330401', '11');
INSERT INTO `t_stucour` VALUES ('53', '330401', '7');
INSERT INTO `t_stucour` VALUES ('54', '330301', '13');
INSERT INTO `t_stucour` VALUES ('55', '330301', '5');
INSERT INTO `t_stucour` VALUES ('56', '330301', '6');
INSERT INTO `t_stucour` VALUES ('57', '330101', '10');
INSERT INTO `t_stucour` VALUES ('58', '330101', '11');
INSERT INTO `t_stucour` VALUES ('59', '330101', '12');
INSERT INTO `t_stucour` VALUES ('60', '330101', '1');
INSERT INTO `t_stucour` VALUES ('61', '330101', '2');

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `college_id` int(11) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '330101', 'JhonSnow', '1988-12-22', '1', '1', '1');
INSERT INTO `t_student` VALUES ('2', '330201', 'RobbStark', '1987-09-12', '1', '2', '2');
INSERT INTO `t_student` VALUES ('3', '330102', 'SansaStark', '1990-07-20', '1', '1', '1');
INSERT INTO `t_student` VALUES ('4', '330103', 'AryaStark', '1991-11-06', '1', '1', '1');
INSERT INTO `t_student` VALUES ('5', '330202', 'BranStark', '1992-05-11', '1', '2', '2');
INSERT INTO `t_student` VALUES ('6', '330203', 'RickonStark', '1993-12-12', '1', '2', '2');
INSERT INTO `t_student` VALUES ('7', '330401', 'AgenTargaryen', '1985-12-12', '2', '4', '4');
INSERT INTO `t_student` VALUES ('8', '330301', 'RhaegarTargaryen', '1987-10-21', '2', '3', '3');
INSERT INTO `t_student` VALUES ('9', '330402', 'DaenerysTargaryen', '1989-05-20', '2', '4', '4');
INSERT INTO `t_student` VALUES ('10', '330403', 'TyrionLannister', '1990-03-11', '2', '4', '4');
INSERT INTO `t_student` VALUES ('11', '330302', 'JaimeLannister', '1989-12-12', '2', '3', '3');
INSERT INTO `t_student` VALUES ('12', '330303', 'JorahMormont', '1987-12-12', '2', '3', '3');
INSERT INTO `t_student` VALUES ('13', '330501', 'MargaeryTyrell', '1991-06-20', '3', '5', '5');
INSERT INTO `t_student` VALUES ('14', '330502', 'LorasTyrell', '1989-03-11', '3', '5', '5');
INSERT INTO `t_student` VALUES ('15', '330503', 'LyannaMormont', '1995-05-20', '3', '5', '5');
INSERT INTO `t_student` VALUES ('17', '330404', '霉霉', '1987-05-12', '3', '4', '4');
INSERT INTO `t_student` VALUES ('18', '330304', '抖森', '1985-12-12', '2', '3', '3');
INSERT INTO `t_student` VALUES ('20', '330104', '阿红的事发后', '1995-05-04', '1', '1', '1');

-- ----------------------------
-- Table structure for `t_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `manager` varchar(200) DEFAULT NULL,
  `collegeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('1', '110001', 'NedStark1', 'WinterfellDean', '1');
INSERT INTO `t_teacher` VALUES ('2', '110002', 'RobertBaratheon', 'king\'sLandingDean', '2');
INSERT INTO `t_teacher` VALUES ('3', '110003', 'OlennaRedwyne', 'HighgardenDean', '3');
INSERT INTO `t_teacher` VALUES ('4', '220001', 'BenjenStark', 'HorsebackTeacher', '1');
INSERT INTO `t_teacher` VALUES ('5', '220002', 'JeorMormont', 'FencingTeacher', '1');
INSERT INTO `t_teacher` VALUES ('6', '220003', 'EuronGreyjoy', 'NavigationTeacher', '2');
INSERT INTO `t_teacher` VALUES ('7', '220004', 'CerseiLannister', 'PoliticsTeacher', '2');
INSERT INTO `t_teacher` VALUES ('8', '220005', 'PetyrBaelish', 'InternationalRelationsTeacher', '3');
INSERT INTO `t_teacher` VALUES ('9', '221001', 'Alice', 'Teacher', '1');
INSERT INTO `t_teacher` VALUES ('10', '220901', '梅林珊卓', '红袍女巫', '1');
INSERT INTO `t_teacher` VALUES ('11', '220501', '啦啦', '教师', null);
