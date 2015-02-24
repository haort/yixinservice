/*
MySQL Data Transfer
Source Host: localhost
Source Database: yixin
Target Host: localhost
Target Database: yixin
Date: 2015/2/24 22:03:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `createTime` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `wenti` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `wxId` varchar(50) CHARACTER SET utf8 NOT NULL,
  `xiaoqu` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `flag` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `rep` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `addr` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for dc
-- ----------------------------
DROP TABLE IF EXISTS `dc`;
CREATE TABLE `dc` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `q1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `q2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `q3` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `q4` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `q5` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `q6` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `q7` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `otherq` varchar(50) DEFAULT NULL,
  `wxId` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `createTime` varchar(50) DEFAULT NULL,
  `description` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xiaoqu` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `createUser` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productId` int(10) NOT NULL AUTO_INCREMENT,
  `productPic` varchar(50) DEFAULT NULL,
  `productName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `productScore` int(10) DEFAULT NULL,
  `productDes` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `createTime` varchar(50) DEFAULT NULL,
  `addr` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `wxId` varchar(50) CHARACTER SET utf8 NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `xiaoqu` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `auth` varchar(50) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `jf` int(10) unsigned zerofill DEFAULT NULL,
  `jfDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `contact` VALUES ('2015/01/30-13:22:30', 'ceshihahah', 'haorenting', '6', '123', 'hao', 'haha', '已解决', '非常满意', '金宁广场 小区1栋1单元1');
INSERT INTO `contact` VALUES ('2015/01/30-19:54:31', 'hahahaha', 'hehe', '7', '123123', 'hao', 'haha', '提交上级部门', '比较满意', '金宁广场 小区1栋1单元1');
INSERT INTO `contact` VALUES ('2015/01/30-20:27:44', '测试测试阿斯顿发送到发送到发送到发送到飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞飞凤飞飞', '郝仁珽', '8', '15335170573', 'hao', 'haha', '已解决', '比较满意', '1小区1栋1单元1');
INSERT INTO `contact` VALUES ('2015/01/30-20:28:58', 'asdfffffffffffffff', 'asdfasd', '9', 'asdfasdf', 'hao', 'haha', '正在处理', '未评价', '1小区1栋1单元1');
INSERT INTO `contact` VALUES ('2015/01/30-20:30:45', 'fffff', 'ffff', '10', 'ffff', 'hao', 'haha', '已解决', '比较满意', '1小区1栋1单元1');
INSERT INTO `contact` VALUES ('2015/01/30-20:33:49', 'dd', 'dd', '11', 'dd', 'hao', 'haha', '已解决', '未评价', '1小区1栋1单元1');
INSERT INTO `contact` VALUES ('2015/02/01-18:26:27', '2221323', 'haha', '12', '12312', 'haor', 'haha', '已解决', '比较满意', '金宁广场 小区1栋1单元1');
INSERT INTO `contact` VALUES ('2015/02/03-20:45:11', '哈哈哈', '郝仁珽', '13', '123', 'haort', '金宁广场 ', '未处理', '未评价', '金宁广场1栋101');
INSERT INTO `contact` VALUES ('2015/02/03-20:46:02', '123123', '郝仁珽', '14', '123', 'haort', '金宁广场 ', '未处理', '未评价', '纪念画册');
INSERT INTO `contact` VALUES ('2015/02/03-20:47:17', '123123123', '发', '15', '凤飞飞', 'haort2', '百合园', '未处理', '未评价', '1111');
INSERT INTO `dc` VALUES ('3', '非常满意', '比较满意', '比较满意', '非常满意', '非常满意', '非常满意', '非常满意', '', 'hao222');
INSERT INTO `notice` VALUES ('20141213 07:13:07', '123', '123', '1', 'haha', 'asdf');
INSERT INTO `notice` VALUES ('20141214 12:49:21', 'af', 'af', '2', 'haha', 'asdf');
INSERT INTO `notice` VALUES ('20141214 12:50:10', '123', '123', '3', 'haha', 'asdf');
INSERT INTO `notice` VALUES ('2015/01/28-20:42:25', '顶顶顶顶', 'SD', '4', 'haha', 'hao');
INSERT INTO `product` VALUES ('0', 'product_1.jpg', '小米移动电源', '500', '产品名称：MIUI/小米 10400mAh移动电...品牌: MIUI/小米型号: 10400mAh移动电源 NDY-02-AD颜色分类: 蓝色 金色 红色 银色电池容量: 10001mAh(含)-15000mAh(含)电池类型: 锂离子电池', '100');
INSERT INTO `product` VALUES ('1', 'product_2.jpg', '羊年挂历', '50', '太湖世家定制羊年挂历', '100');
INSERT INTO `user` VALUES ('2014-12-10 20:28:37', '1小区1栋1单元1', '郝仁珽', '3', '1', 'hao', '1', 'haha', '', null, '0000000004', '2015-01-28');
INSERT INTO `user` VALUES ('2015/01/24-15:35:53', '金宁广场 小区1栋1单元1', 'hao', '4', '123', 'haor', '1', 'haha', 'admin1', '2015-01-24', '0000000000', null);
INSERT INTO `user` VALUES ('2015/01/28-20:55:24', '金宁广场 小区1栋1单元1', 'hao', '5', '123456', '', '111', '金宁广场 ', null, '2015-01-28', '0000000000', null);
INSERT INTO `user` VALUES ('2015/02/03-20:31:50', '金宁广场 小区null栋null单元null', '郝仁珽', '6', '123', 'haort', null, '金宁广场 ', null, null, '0000000001', '2015-02-03');
INSERT INTO `user` VALUES ('2015/02/03-20:46:51', '1111', '发', '7', '凤飞飞', 'haort2', null, '百合园', null, null, '0000000002', '2015-02-03');
