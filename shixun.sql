/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : shixun

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-04-16 15:59:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tb_class`
-- ----------------------------
DROP TABLE IF EXISTS `tb_class`;
CREATE TABLE `tb_class` (
  `classid` bigint(20) NOT NULL AUTO_INCREMENT,
  `classname` varchar(20) NOT NULL,
  `specid` char(3) DEFAULT NULL,
  `enrolyear` char(4) DEFAULT NULL,
  `gradyear` char(4) DEFAULT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `operatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`classid`),
  KEY `specid` (`specid`),
  CONSTRAINT `tb_class_ibfk_1` FOREIGN KEY (`specid`) REFERENCES `tb_speciality` (`specid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_class
-- ----------------------------
INSERT INTO `tb_class` VALUES ('8', '计科101', '001', '2010', '2014', null, null);
INSERT INTO `tb_class` VALUES ('9', '计科102', '001', '2010', '2014', null, null);
INSERT INTO `tb_class` VALUES ('10', '计科103', '001', '2010', '2014', null, null);
INSERT INTO `tb_class` VALUES ('11', '网络101', '002', '2010', '2014', null, null);
INSERT INTO `tb_class` VALUES ('12', '网络102', '002', '2010', '2014', null, null);
INSERT INTO `tb_class` VALUES ('13', '软件101', '003', '2010', '2014', null, null);
INSERT INTO `tb_class` VALUES ('14', '软件102', '003', '2010', '2014', null, null);

-- ----------------------------
-- Table structure for `tb_speciality`
-- ----------------------------
DROP TABLE IF EXISTS `tb_speciality`;
CREATE TABLE `tb_speciality` (
  `specid` char(3) NOT NULL,
  `specname` varchar(30) NOT NULL,
  `specmagtid` char(6) DEFAULT NULL COMMENT '专业负责人id，暂不用',
  `operator` varchar(20) DEFAULT NULL,
  `operatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`specid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_speciality
-- ----------------------------
INSERT INTO `tb_speciality` VALUES ('001', '计算机科学与技术', '000002', null, null);
INSERT INTO `tb_speciality` VALUES ('002', '网络工程', '000003', null, null);
INSERT INTO `tb_speciality` VALUES ('003', '软件工程', '000003', null, null);

-- ----------------------------
-- Table structure for `tb_student`
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `stuid` char(10) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `ssex` char(2) DEFAULT NULL,
  `classname` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telphone` varchar(20) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `operatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`stuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('2009111078', '邹德鹏', '1', '计科102', '313296513@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2009111185', '宋建伟', '1', '网络101', 'song_jw36@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2009111190', '王秉坤', '', '网络101', '183251415@qq.cofm', '11111111111', '', null, null);
INSERT INTO `tb_student` VALUES ('2009111234', '刘汉川', '1', '网络101', '674342878@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111006', '孟岳', '1', '计科101', 'ushihamy@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111008', '李永波', '1', '计科101', '18765862453@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111009', '杜传照', '1', '计科101', 'du8687668@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111010', '张曜珲', '1', '计科101', '1145709847@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111011', '曹桂鹏', '1', '计科101', '1031021384@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111013', '赵玉杰', '1', '计科101', 'jackyu651@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111014', '刘成成', '1', '计科101', 'sdjzjsjlcc@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111015', '王海豹', '1', '计科101', 'sealking@sohu.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111016', '王世兴', '1', '计科101', '18906413325@189.cn', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111017', '曹桂铭', '1', '计科101', '403459122@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111018', '陈隆旭', '1', '计科101', 'chengoubuzhan@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111019', '杜广宇', '1', '计科101', '306230824@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111020', '林建宝', '1', '计科101', '1247907312@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111021', '黄祖勇', '1', '计科101', 'fangziyuan2012@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111022', '李晗阳', '1', '计科101', '935034326@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111023', '于皋', '1', '计科101', 'qqwer_yg2013@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111024', '石斌', '1', '计科101', '545497048@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111025', '刘扣帜', '1', '计科101', '805793157@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111026', '陈奎超', '1', '计科101', '1006970890@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111027', '王灵杰', '1', '计科101', 'jack331441@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111029', '田忠阳', '1', '计科101', '332985617@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111030', '田亮', '1', '计科101', '497015711@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111032', '邵福顺', '1', '计科101', '821519542@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111034', '代飞飞', '2', '计科102', '332694227@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111035', '刘艺', '', '计科102', '815673809@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111036', '王柳', '2', '计科102', '865096832@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111037', '丁希颖', '2', '计科102', '447310143@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111038', '李佳佳', '2', '计科102', '1398769194@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111039', '艾阳', '2', '计科102', 'ay573028995@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111040', '张现垒', '1', '计科102', '939994389@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111041', '姜帅', '1', '计科102', '670859779@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111042', '苏浩', '1', '计科102', '1053280208@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111043', '孟灿', '1', '计科102', '513406673@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111044', '邵长辉', '1', '计科102', '534997796@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111045', '李振', '1', '计科102', '875913719@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111047', '张鹏程', '1', '计科102', 'zpclhzyno@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111048', '张朋波', '', '计科102', '476286788@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111049', '赵广辉', '1', '计科102', '1113252751@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111050', '谢鹏程', '1', '计科102', '1056778388@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111051', '郇正洪', '1', '计科102', 'huan199202@126.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111052', '苗东昌', '', '计科102', '928802813@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111053', '王华洋', '1', '计科102', '314874554@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111054', '张立国', '1', '计科102', '1510112880@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111056', '赵立坤', '1', '计科102', '773762498@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111057', '王殿荣', '1', '计科102', 'w_123www@126.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111058', '李兴超', '1', '计科102', '263848185@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111059', '黎银银', '1', '计科102', '1392005448@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111060', '叶浩', '1', '计科102', '519177730@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111062', '张裕韬', '1', '计科102', 'wangshujinggg@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111063', '李彬', '1', '计科102', '644802121@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111064', '李天煜', '1', '计科102', '340344740@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111065', '肖鹏', '1', '计科102', '1554300832@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111066', '宫连海', '1', '计科102', 'gonglianhai@foxmail.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111067', '冯晓磊', '2', '计科103', '980818885@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111068', '唐春梅', '2', '计科103', '1182141096@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111069', '李晓凤', '2', '计科103', '1551278933@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111070', '商新伟', '2', '计科103', '1610728558@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111071', '陈颖', '2', '计科103', '1059113267@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111072', '庞萍萍', '2', '计科103', '1582669044@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111074', '孙文璞', '1', '计科103', '1449509019@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111075', '李小龙', '1', '计科103', '65653916@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111076', '王晨光', '1', '计科103', 'wcg19920213@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111077', '张晓刚', '1', '计科103', '366167407@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111078', '魏明亮', '1', '计科103', '441462821@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111079', '刘警伟', '1', '计科103', '1397676520@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111080', '王云龙', '1', '计科103', 'wang_yunlong@dahuatech.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111081', '仇成举', '1', '计科103', '284673875@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111082', '王青峰', '1', '计科103', '1013819864@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111084', '姜坤', '1', '计科103', '809967956@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111085', '张孝奇', '1', '计科103', 'zhangxiaoqi@ieslab.cn', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111086', '吕树华', '1', '计科103', '27918751@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111087', '杜子龙', '1', '计科103', '943740835@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111089', '牛天加', '1', '计科103', '1171612168@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111090', '赵强', '1', '计科103', 'zhaoqiangchn@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111091', '孙海洋', '1', '计科103', '1376213449@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111092', '卢鹏', '1', '计科103', '1216162643@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111093', '苗凯', '1', '计科103', '583242941@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111094', '魏喆', '1', '计科103', '85889290@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111095', '王玉钊', '1', '计科103', '554695059@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111096', '王贻琛', '1', '计科103', '2236973491@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111098', '杨红文', '1', '计科103', '1065289216@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111099', '宋厚纬', '1', '计科103', '1198883688@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111104', '褚航航', '2', '软件101', '504458175@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111105', '李晓丹', '2', '软件101', '597149225@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111106', '姜可松', '1', '软件101', 'ijiangkesong192@126.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111107', '吕立国', '1', '软件101', 'lvliguo1990@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111108', '韩绍超', '1', '软件101', 'bmynanm@126.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111109', '谢良哲', '1', '软件101', 'liangzhexie@gmail.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111110', '李浩本', '1', '软件101', '1066771677@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111111', '李东泽', '', '软件101', '541424340@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111112', '陈振阳', '1', '软件101', 'czy_1@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111113', '李德丰', '', '软件101', '1635566780@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111114', '郝利法', '1', '软件101', 'haolifaada@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111115', '尹晓超', '1', '软件101', '807989839@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111116', '赵兴临', '1', '软件101', '554243955@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111117', '师冬', '1', '软件101', '397904119@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111118', '彭阳', '1', '软件101', 'pengyanglog@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111119', '王延达', '1', '软件101', 'wangyandabin@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111120', '刘欢', '1', '软件101', 'lh_lancer@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111121', '王春雨', '1', '软件101', '420849391@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111122', '尹中川', '1', '软件101', '834146036@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111123', '王科', '1', '软件101', '1874256554@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111124', '梁洪义', '1', '软件101', '843320092@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111125', '孙梦园', '1', '软件101', '1154128610@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111126', '王中江', '1', '软件101', '905872355@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111128', '曹洪羽', '1', '软件101', '397986921@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111129', '刘辉', '1', '软件101', '573017016@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111130', '杨震宇', '1', '软件101', '674908976@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111131', '袁英', '1', '软件101', '962207171@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111132', '章文华', '1', '软件101', '1029773463@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111133', '董金文', '1', '软件101', '1550020822@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111134', '黄光明', '1', '软件101', '864966132@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111135', '杨露', '1', '软件101', '317012924@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111137', '张亚平', '2', '软件102', '1539521422@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111138', '邵彦霞', '2', '软件102', 'shaoyanxia504@126.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111140', '曲珊', '2', '软件102', '1608087086@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111141', '楚瑞琪', '2', '软件102', '617542283@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111142', '朱丽静', '2', '软件102', 'zhulijing7@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111144', '田成龙', '1', '软件102', '1126236495@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111145', '姜强', '1', '软件102', '462317101@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111146', '王冠', '1', '软件102', '757074650@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111147', '怀达', '1', '软件102', '1554417228@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111148', '陈永凯', '1', '软件102', '446555269@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111149', '姬兴成', '1', '软件102', '1213562478@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111150', '钟帅帅', '', '软件102', '1044354182@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111152', '刘志鹏', '1', '软件102', '1217492792@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111154', '李敬宇', '1', '软件102', '1304751326@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111155', '徐坤坤', '1', '软件102', '414294494@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111156', '管青琳', '1', '软件102', '526216176@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111157', '秦晓强', '1', '软件102', '18766111424@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111158', '王春来', '1', '软件102', '1127651885@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111159', '梁浩', '1', '软件102', '4475445@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111160', '陈士荣', '1', '软件102', '524334831@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111161', '逯翔宇', '1', '软件102', '1025533565@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111162', '许誉超', '1', '软件102', '907753584@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111163', '江天际', '1', '软件102', '516457968@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111164', '王良', '1', '软件102', '1142262641@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111166', '阎轶群', '1', '软件102', '287979495@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111167', '干剑伟', '1', '软件102', '616955679@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111169', '王开安', '1', '软件102', '645552964@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111170', '郑季雨', '1', '软件102', '1332206656@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111171', '杨大鑫', '1', '软件102', '1074156299@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111172', '陈青毅', '1', '软件102', 'chenqingyigo123@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111173', '常小美', '2', '网络101', '1498841697@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111175', '杨惠娟', '2', '网络101', 'yanghuijuan1029@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111176', '张金凤', '2', '网络101', '562063131@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111177', '毛毛雨', '2', '网络101', '540524902@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111178', '张静', '2', '网络101', 'zj1510968477@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111179', '孟小全', '1', '网络101', '1148327568@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111180', '谷传杭', '1', '网络101', 'guchuanhang@126.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111181', '包华东', '', '网络101', '971687266@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111182', '孙文伟', '1', '网络101', '447161239@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111183', '徐国强', '1', '网络101', '643777466@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111184', '曲维佳', '1', '网络101', '563888460@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111185', '毕见暄', '', '网络101', '463336745@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111187', '王寒冰', '1', '网络101', 'iicetone@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111188', '王中旗', '1', '网络101', '504617557@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111189', '王士菠', '1', '网络101', '921121798@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111191', '马翊博', '1', '网络101', 'mayibohunan@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111192', '张鹏', '1', '网络101', '837529342@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111194', '吴玉忠', '1', '网络101', '1424386683@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111195', '董超', '1', '网络101', '470894524@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111196', '张杰', '1', '网络101', '1161515909@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111198', '常东亮', '1', '网络101', '845245456@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111199', '张洪川', '1', '网络101', '821789254@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111200', '王天未', '1', '网络101', '464231692@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111202', '程志强', '1', '网络101', '619960982@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111204', '刘斌', '1', '网络101', 'fox@vvfox.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111205', '刘凤丽', '2', '网络102', '1094067328@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111206', '侯玲玲', '2', '网络102', '1573503984@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111207', '赵宗慧', '2', '网络102', '1530546750@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111208', '杨圆圆', '2', '网络102', '1243297430@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111209', '巩瑞芳', '2', '网络102', '15066681772@139.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111210', '李丹', '2', '网络102', '625173892@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111212', '孟庆丰', '1', '网络102', '1096095497@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111213', '郑俊波', '1', '网络102', '846511181@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111214', '刘岩', '1', '网络102', '514589576@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111215', '王旭', '1', '网络102', '741579855@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111216', '王绍晓', '', '网络102', 'guzhuofeng@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111217', '王宇', '1', '网络102', 'liaohuozhiri@msn.cn', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111218', '徐兵', '1', '网络102', 'bingbest@vip.qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111219', '常东东', '1', '网络102', '709439447@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111220', '孔德强', '1', '网络102', 'kdq0539@163.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111221', '邓立芝', '1', '网络102', '824261723@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111222', '华方圆', '1', '网络102', '1535271642@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111223', '牛冲', '', '网络102', '42941581@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111224', '赵赫', '1', '网络102', '302946808@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111225', '孙启文', '1', '网络102', '97327286@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111226', '吕柯静', '1', '网络102', '522561130@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111227', '李晨', '1', '网络102', '631768192@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111228', '钱京辉', '1', '网络102', '272398015@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111230', '张鑫', '1', '网络102', '1162493210@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111231', '陈曦', '1', '网络102', '449027109@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111232', '李成荣', '1', '网络102', '521061690@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111233', '田茂青', '1', '网络102', '1120935795@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111234', '田祥彪', '1', '网络102', '243325523@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111235', '金民', '1', '网络102', '602103810@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111236', '赵冲', '1', '网络102', '429682095@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('2010111237', '杨州', '1', '网络102', '492544658@qq.com', '11111111111', null, null, null);
INSERT INTO `tb_student` VALUES ('21', 'de', null, '计科103', '231', '21', null, null, null);
INSERT INTO `tb_student` VALUES ('2222', 'dsf', null, '计科103', '12', '12', null, null, null);

-- ----------------------------
-- Table structure for `tb_sysargu`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sysargu`;
CREATE TABLE `tb_sysargu` (
  `arguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `arguname` varchar(20) NOT NULL,
  `argutype` varchar(20) NOT NULL,
  `arguvalue` varchar(50) NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `operatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`arguid`),
  UNIQUE KEY `arguname` (`arguname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sysargu
-- ----------------------------
INSERT INTO `tb_sysargu` VALUES ('1', 'zdsbkts', '数值', '10', '教师最多申报课题数', 'admin', '2010-11-21 22:13:19');
INSERT INTO `tb_sysargu` VALUES ('2', 'kxkts', '数值', '5', '学生可选课题数', 'admin', '2010-11-21 22:15:00');
INSERT INTO `tb_sysargu` VALUES ('3', 'commonfilepath', '字符串', 'D://graduate2014/', '上传文档路径（取绝对路径）', 'admin', '2011-11-17 18:38:39');
INSERT INTO `tb_sysargu` VALUES ('4', 'applysubbeginflag', '字符', '0', '申报课题开始1结束0', null, null);
INSERT INTO `tb_sysargu` VALUES ('5', 'stupicksubflag', '字符', '1', '学生选题开始1结束0', null, null);
INSERT INTO `tb_sysargu` VALUES ('6', 'graduateweeknum', '数值', '12', '毕业设计周数', 'admin', '2013-11-06 07:56:29');
INSERT INTO `tb_sysargu` VALUES ('7', 'modifytaskbookflag', '数值', '1', '修改任务书标记0不允许1允许', 'admin', '2013-11-20 14:41:19');
INSERT INTO `tb_sysargu` VALUES ('8', 'startdate', '字符', '8888-88', '毕业设计开始日期(yyyy-mm-dd)', null, null);
INSERT INTO `tb_sysargu` VALUES ('9', 'modifiedweekorders', '字符', '11,12', '可修改的周总结周数。0为只修改当前周，若为多值，则用逗号隔开', 'admin', '2014-02-04 11:33:47');

-- ----------------------------
-- Table structure for `tb_syscode`
-- ----------------------------
DROP TABLE IF EXISTS `tb_syscode`;
CREATE TABLE `tb_syscode` (
  `codeid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `codeno` varchar(20) NOT NULL COMMENT '代码编号',
  `codename` varchar(30) NOT NULL COMMENT '代码名称',
  `codevalue` varchar(3) NOT NULL COMMENT '代码值',
  `codecontent` varchar(30) NOT NULL COMMENT '代码内容',
  `operator` varchar(20) DEFAULT NULL,
  `operatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`codeid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_syscode
-- ----------------------------
INSERT INTO `tb_syscode` VALUES ('1', 'ktlx', '课题类型', '1', '软件开发', 'admin', '2010-11-21 21:48:22');
INSERT INTO `tb_syscode` VALUES ('2', 'ktlx', '课题类型', '2', '理论研究', 'admin', '2010-11-21 21:51:08');
INSERT INTO `tb_syscode` VALUES ('3', 'ktlx', '课题类型', '3', '工程设计', 'admin', '2010-11-21 21:51:59');
INSERT INTO `tb_syscode` VALUES ('4', 'ktxz', '课题性质', '1', '真实（真题真做）', 'admin', '2010-11-21 21:52:53');
INSERT INTO `tb_syscode` VALUES ('5', 'ktxz', '课题性质', '2', '模拟（真题假做）', 'admin', '2010-11-21 21:53:22');
INSERT INTO `tb_syscode` VALUES ('6', 'ktly', '课题来源', '1', '纵向', 'admin', '2010-11-21 21:54:05');
INSERT INTO `tb_syscode` VALUES ('7', 'ktly', '课题来源', '2', '横向', 'admin', '2010-11-21 21:54:41');
INSERT INTO `tb_syscode` VALUES ('8', 'ktly', '课题来源', '3', '教学', 'admin', '2010-11-21 21:55:20');
INSERT INTO `tb_syscode` VALUES ('9', 'jxdw', '教学单位', '1', '计算机科学教研室', 'admin', '2010-11-21 22:07:00');
INSERT INTO `tb_syscode` VALUES ('10', 'jxdw', '教学单位', '2', '网络工程教研室', 'admin', '2010-11-21 22:06:57');
INSERT INTO `tb_syscode` VALUES ('11', 'jxdw', '教学单位', '3', '软件工程教研室', 'admin', '2010-11-21 22:06:55');
INSERT INTO `tb_syscode` VALUES ('12', 'jxdw', '教学单位', '4', '信息技术教研室', 'admin', '2010-11-21 22:06:52');
INSERT INTO `tb_syscode` VALUES ('13', 'jxdw', '教学单位', '5', '学院实验室', 'admin', '2010-11-21 22:06:49');
INSERT INTO `tb_syscode` VALUES ('14', 'xb', '性别', '1', '男', 'admin', '2010-11-21 22:08:20');
INSERT INTO `tb_syscode` VALUES ('15', 'xb', '性别', '2', '女', 'admin', '2010-11-21 22:08:38');
INSERT INTO `tb_syscode` VALUES ('16', 'yhlb', '用户类别', '2', '教师', 'admin', '2010-11-22 16:18:00');
INSERT INTO `tb_syscode` VALUES ('17', 'yhlb', '用户类别', '3', '学生', 'admin', '2010-11-22 16:18:31');
INSERT INTO `tb_syscode` VALUES ('18', 'yhlb', '用户类别', '1', '管理员', 'admin', '2010-11-22 16:18:56');
INSERT INTO `tb_syscode` VALUES ('19', 'tzlx', '通知类型', '1', '全体', 'admin', '2010-11-25 22:39:15');
INSERT INTO `tb_syscode` VALUES ('20', 'tzlx', '通知类型', '2', '教师', 'admin', '2010-11-25 22:39:50');
INSERT INTO `tb_syscode` VALUES ('21', 'tzlx', '通知类型', '3', '学生', 'admin', '2010-11-25 22:40:21');
INSERT INTO `tb_syscode` VALUES ('22', 'tzlx', '通知类型', '4', '个人', 'admin', '2010-11-25 22:40:56');
INSERT INTO `tb_syscode` VALUES ('23', 'zhch', '职称', '1', '教授', null, null);
INSERT INTO `tb_syscode` VALUES ('24', 'zhch', '职称', '2', '副教授', null, null);
INSERT INTO `tb_syscode` VALUES ('25', 'zhch', '职称', '3', '讲师', null, null);
INSERT INTO `tb_syscode` VALUES ('26', 'zhch', '职称', '4', '助教', null, null);
INSERT INTO `tb_syscode` VALUES ('27', 'xw', '学位', '1', '博士', null, null);
INSERT INTO `tb_syscode` VALUES ('28', 'xw', '学位', '2', '硕士', null, null);
INSERT INTO `tb_syscode` VALUES ('29', 'xw', '学位', '3', '学士', null, null);
INSERT INTO `tb_syscode` VALUES ('30', 'ktzht', '课题状态', '1', '未提交', null, null);
INSERT INTO `tb_syscode` VALUES ('31', 'ktzht', '课题状态', '2', '已提交-等待审核', null, null);
INSERT INTO `tb_syscode` VALUES ('32', 'ktzht', '课题状态', '3', '审核没通过', null, null);
INSERT INTO `tb_syscode` VALUES ('33', 'ktzht', '课题状态', '4', '审核通过-等待发布', null, null);
INSERT INTO `tb_syscode` VALUES ('34', 'ktzht', '课题状态', '5', '已发布-等待选题', null, null);
INSERT INTO `tb_syscode` VALUES ('35', 'ktzht', '课题状态', '6', '已初选', null, null);
INSERT INTO `tb_syscode` VALUES ('36', 'ktzht', '课题状态', '7', '已选', null, null);
INSERT INTO `tb_syscode` VALUES ('37', 'xshzht的', '学生状态', '1', '未选', null, null);
INSERT INTO `tb_syscode` VALUES ('38', 'xshzht', '学生状态', '2', '已初选', null, null);
INSERT INTO `tb_syscode` VALUES ('39', 'xshzht', '学生状态', '3', '已选', null, null);
INSERT INTO `tb_syscode` VALUES ('40', 'xshzht', '学生状态', '4', '需指派', null, null);
INSERT INTO `tb_syscode` VALUES ('41', 'xshzht', '学生状态', '5', '落选-需指派', null, null);
INSERT INTO `tb_syscode` VALUES ('42', 'xshzht', '学生状态', '6', '落选-需重选', null, null);
INSERT INTO `tb_syscode` VALUES ('43', 'jxdw', '教学单位', '6', '行政', null, null);
INSERT INTO `tb_syscode` VALUES ('44', 'zhch', '职称', '5', '工程师', null, null);
INSERT INTO `tb_syscode` VALUES ('45', 'zhch', '职称', '6', '高级工程师', null, null);
INSERT INTO `tb_syscode` VALUES ('46', 'jxdw', '教学单位', '7', '团总支', null, null);
INSERT INTO `tb_syscode` VALUES ('47', 'zhch', '职称', '7', '实验师', null, null);
INSERT INTO `tb_syscode` VALUES ('48', 'zhch', '职称', '8', '高级实验师', null, null);
INSERT INTO `tb_syscode` VALUES ('49', 'ktfx', '课题方向', '1', '软件', null, null);
INSERT INTO `tb_syscode` VALUES ('50', 'ktfx', '课题方向', '2', '网络', null, null);
INSERT INTO `tb_syscode` VALUES ('51', 'ktfx', '课题方向', '3', '硬件', null, null);
INSERT INTO `tb_syscode` VALUES ('52', 'ktlb', '课题类别', '1', '设计', null, null);
INSERT INTO `tb_syscode` VALUES ('53', 'ktlb', '课题类别', '2', '论文', null, null);
INSERT INTO `tb_syscode` VALUES ('54', 'ktlx', '课题类型', '4', '应用研究', null, null);
INSERT INTO `tb_syscode` VALUES ('55', 'ktlx', '课题类型', '5', '实验研究', null, null);
INSERT INTO `tb_syscode` VALUES ('56', 'ktxz', '课题性质', '3', '虚拟（假题假做）', null, null);
INSERT INTO `tb_syscode` VALUES ('57', 'ktly', '课题来源', '4', '生产', null, null);
INSERT INTO `tb_syscode` VALUES ('58', 'ktly', '课题来源', '5', '其他', null, null);

-- ----------------------------
-- Table structure for `tb_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `tid` char(6) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `tsex` char(2) DEFAULT NULL,
  `specid` char(3) DEFAULT NULL,
  `tdept` char(3) DEFAULT NULL,
  `tpost` char(3) DEFAULT NULL,
  `tdegree` char(3) DEFAULT NULL COMMENT '学位',
  `studydirect` varchar(40) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telphone` varchar(20) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `operatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES ('000001', '崔巍', '2', null, '2', '1', '1', '', '', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000002', '杜向华s', '2', null, '1', '2', '3', '协同计算', 'duxianghua@sdjzu.edu.cn', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000003', '郭庆', '', null, '3', '3', '2', '软件工程 Web编程 数据库', 'guoqing654321@126.com', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000004', '李璟', '2', null, '3', '2', '2', '软件复用', '2008sjyx@163.com', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000005', '李盛恩', null, null, '1', '1', '1', null, null, '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000006', '李晓峰', '1', null, '1', '1', '1', '数字媒体', 'lixf@sdjzu.edu.cn', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000007', '李学东', null, null, '2', '', '', null, null, '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000008', '刘刚', '1', null, '1', '2', '2', '计算机应用、操作系统', 'liugang@sdjzu.edu.cn', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000009', '马宏伟', null, null, '3', '5', '3', null, null, '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000010', '马晓娜', '2', null, '3', '3', '2', '知识库与知识工程', 'maxn@sdjzu.edu.cn', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000011', '牛小飞', '2', null, '1', '2', '1', '信息检索、数据挖掘、机器学期', 'xiaofein@sdjzu.edu.cn', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000012', '戚文静', '2', null, '2', '2', '1', '网络安全，计算机视觉', 'qiwj@sdjzu.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000013', '秦松', '1', null, '2', '2', '2', '网络及其应用', 'qs_0531@126.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000014', '秦英林', '1', null, '1', '3', '1', '', '', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000015', '宋玲', '2', null, '1', '2', '1', '信息检索、知识管理、自然语言理解', 'song_ling@sina.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000016', '苏静', '2', null, '1', '3', '2', '满意控制，算法语言，人工智能，机器人控制，云计算', 'sjing16@163.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000017', '孙鹏', null, null, '2', '', '', null, null, '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000018', '汤晓兵', '1', null, '1', '2', '2', '网络', 'xbtang@sdzju.edu.cn', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000019', '汪美霞', '2', null, '1', '3', '2', '', 'wangmeixia@sdjzu.edu.cn', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000020', '王琳', '2', null, '1', '3', '2', '嵌入式系统', 'wanglin8875@163.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000021', '夏传良', '1', null, '1', '1', '1', '', '', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000022', '徐俊丽', '', null, '3', '3', '2', '', '', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000023', '杨磊', '1', null, '1', '2', '2', '虚拟现实技术；建筑信息化', '', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000024', '尤宝山', '1', null, '1', '3', '2', '嵌入式应用', 'youbaoshan@163.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000025', '岳斌', '1', null, '1', '2', '3', '计算机系统结构、嵌入式系统    (毕业设计题目:1人 / 1题 )', 'yuebin_sd@163.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000026', '张冬梅', '2', null, '1', '2', '1', '信息检索 数据挖掘', 'zhangdongmei@sdjzu.edu.cn', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000027', '张建', '', null, '3', '1', '1', '', '', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000028', '张绍兰', '2', null, '1', '2', '1', '信息安全、计算机应用', 'zslzsl@sdjzu.edu.cn', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000029', '张振宝', null, null, '1', '2', '2', null, null, '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000030', '张志军', '1', null, '2', '2', '2', 'Web检索，数据挖掘，社会化推荐', 'zhangzj@sdjzu.edu.cn', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000031', '赵秀梅', '2', null, '2', '2', '2', '', '', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000032', '申斌', '1', null, '1', '3', '2', '计算机应用技术', 'binshen@163.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000033', '伊静', '', null, '1', '3', '2', '', 'yjzyj2006@163.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000034', '徐功文', '1', null, '2', '3', '2', '计算机网络、网络安全、计算机仿真  QQ:172270580', 'xugongwen@163.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000035', '孙玮', '2', null, '1', '3', '2', '', 'sdjzusunwei@163.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000036', '柳楠', '2', null, '2', '3', '1', '计算机网络、算法、计算生物学', 'belovedmilk@126.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000037', '邢国波', '1', null, '3', '2', '2', '', '', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000038', '袁卫华', '2', null, '2', '3', '2', '', '', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000039', '李跃军', '1', null, '3', '3', '2', '信息检索 web 服务', '273253612@qq.com', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000040', '杨朝晖', '', null, '3', '3', '2', '', '', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000041', '许丽娜', null, null, '2', '', '', null, null, '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000042', '徐遵义', '1', null, '3', '2', '1', '', 'zunyixu@sdjzu.edu.cn', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000043', '赵洪銮', '', null, '1', '2', '1', '', '', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000044', '徐晓静', '2', null, '1', '2', '1', '', '', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000045', '孙倩', '2', null, '3', '3', '2', '', 'sunqian2457@hotmail.com', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000046', '李国文', '1', null, '2', '3', '1', '网络信息安全', 'liguowen@sdjzu.edu.cn', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000047', '刘毅', '1', null, '3', '3', '2', '', 'java@sdjzu.edu.cn', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000048', '刘振栋', '', null, '3', '2', '2', '', '', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000049', '王忠', '1', null, '1', '3', '2', '基于单片机、ARM平台的嵌入式系统开发', 'doctorlyly@163.com', '', null, null, null);
INSERT INTO `tb_teacher` VALUES ('000050', '杨东强', '1', null, '3', '2', '1', '自然语言处理，计算语言学', 'ydq@sdjzu.edu.cn', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000051', '高田', '1', null, '3', '3', '1', '', '', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000052', '王宜贵', '', null, '3', '1', '2', '', '', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000053', '王向辉', '', null, '3', '2', '2', '', '', '', '', null, null);
INSERT INTO `tb_teacher` VALUES ('000456', '不不不', null, null, '1', '2', '1', null, null, null, null, null, null);
INSERT INTO `tb_teacher` VALUES ('111222', '说说', null, null, '5', '8', '2', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `usertype` varchar(20) DEFAULT NULL,
  `userid` varchar(20) NOT NULL COMMENT '用户名',
  `username` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `userpwd` varchar(32) DEFAULT NULL COMMENT '密码',
  `operator` varchar(20) DEFAULT NULL,
  `operatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('教师', '000456', '不不不', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user` VALUES ('教师', '111222', '说说', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user` VALUES ('学生', '21', 'de', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user` VALUES ('学生', '2222', 'dsf', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user` VALUES ('管理员', 'admin', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2010-12-24 16:10:09');
INSERT INTO `tb_user` VALUES ('管理员', 'wang', 'wang', 'c6103dfe7b286696260039fe8f014c11', null, null);

-- ----------------------------
-- Table structure for `tb_userrole`
-- ----------------------------
DROP TABLE IF EXISTS `tb_userrole`;
CREATE TABLE `tb_userrole` (
  `userid` varchar(20) NOT NULL,
  `roleid` bigint(20) NOT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `operatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_userrole
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_user_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_copy`;
CREATE TABLE `tb_user_copy` (
  `usertype` varchar(20) DEFAULT NULL,
  `userid` varchar(20) NOT NULL COMMENT '用户名',
  `username` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `userpwd` varchar(32) DEFAULT NULL COMMENT '密码',
  `operator` varchar(20) DEFAULT NULL,
  `operatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_copy
-- ----------------------------
INSERT INTO `tb_user_copy` VALUES ('教师', '000456', '不不不', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user_copy` VALUES ('教师', '111222', '说说', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user_copy` VALUES ('学生', '21', 'de', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user_copy` VALUES ('学生', '2222', 'dsf', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user_copy` VALUES ('管理员', 'admin', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2010-12-24 16:10:09');
INSERT INTO `tb_user_copy` VALUES ('管理员', 'wang', 'wang', 'c6103dfe7b286696260039fe8f014c11', null, null);

-- ----------------------------
-- Table structure for `tb_user_copy1`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_copy1`;
CREATE TABLE `tb_user_copy1` (
  `usertype` varchar(20) DEFAULT NULL,
  `userid` varchar(20) NOT NULL COMMENT '用户名',
  `username` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `userpwd` varchar(32) DEFAULT NULL COMMENT '密码',
  `operator` varchar(20) DEFAULT NULL,
  `operatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_copy1
-- ----------------------------
INSERT INTO `tb_user_copy1` VALUES ('教师', '000456', '不不不', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user_copy1` VALUES ('教师', '111222', '说说', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user_copy1` VALUES ('学生', '21', 'de', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user_copy1` VALUES ('学生', '2222', 'dsf', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `tb_user_copy1` VALUES ('管理员', 'admin', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2010-12-24 16:10:09');
INSERT INTO `tb_user_copy1` VALUES ('管理员', 'wang', 'wang', 'c6103dfe7b286696260039fe8f014c11', null, null);

-- ----------------------------
-- Procedure structure for `proc4`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc4`;
DELIMITER ;;
CREATE DEFINER=`byxxxt`@`localhost` PROCEDURE `proc4`()
BEGIN
  declare var int;  
  set var=10;  
  -- 闇€瑕佸畾涔夋帴鏀舵父鏍囨暟鎹殑鍙橀噺 
  -- declare vtid char(6);
 
  -- 鍏抽棴娓告爣
 -- CLOSE cur; 
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `proctest`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proctest`;
DELIMITER ;;
CREATE DEFINER=`byxxxt`@`localhost` PROCEDURE `proctest`()
BEGIN
  declare var int;  
declare vtid char(6);
  set var=10; 
  
  set vtid='000000';
 
  -- 鍏抽棴娓告爣
 -- CLOSE cur; 
END
;;
DELIMITER ;
