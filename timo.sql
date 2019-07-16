/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 192.168.85.132:3306
 Source Schema         : timo

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 13/07/2019 18:14:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_access_record
-- ----------------------------
DROP TABLE IF EXISTS `crm_access_record`;
CREATE TABLE `crm_access_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `celled_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '号码',
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户名称',
  `lab` int(11) NULL DEFAULT NULL COMMENT '标签',
  `record` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回访记录',
  `result` int(10) NULL DEFAULT NULL COMMENT '回访结果',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务员',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '状态（未启用字段）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_access_record
-- ----------------------------
INSERT INTO `crm_access_record` VALUES (44, '13862556465', '明进荣', 5, '通话中', 3, '', 1, 'xuen', '2019-07-12 04:38:29', 0);
INSERT INTO `crm_access_record` VALUES (45, '13669844460', '罗庆', 5, '未接', 1, '', 1, 'xuen', '2019-07-12 04:38:29', 0);
INSERT INTO `crm_access_record` VALUES (46, '13957442539', '金平', 7, '打错了', 2, '', 1, 'xuen', '2019-07-12 04:38:29', 0);
INSERT INTO `crm_access_record` VALUES (47, '13736057606', '金平', 7, '不需要', 0, '', 1, 'xuen', '2019-07-12 04:38:29', 0);
INSERT INTO `crm_access_record` VALUES (48, '13534294984', '许德芳', 5, '未接', 0, '', 1, 'xuen', '2019-07-12 04:38:29', 0);
INSERT INTO `crm_access_record` VALUES (49, '13790400271', '罗清菜', 5, '未接', 0, '', 1, 'xuen', '2019-07-12 04:38:29', 0);
INSERT INTO `crm_access_record` VALUES (50, '13771896186', '吴常根', 5, '通话中', 0, '', 1, 'xuen', '2019-07-12 04:38:29', 0);
INSERT INTO `crm_access_record` VALUES (51, '13666737011', '姜运林', 7, '厂家 不需要', 0, '', 1, 'xuen', '2019-07-12 04:38:29', 0);
INSERT INTO `crm_access_record` VALUES (52, '13776070368', '彭建华', 5, '未接', 0, '', 1, 'xuen', '2019-07-12 04:38:29', 0);
INSERT INTO `crm_access_record` VALUES (53, '18653202116', '崔荀', 5, '未接', 0, '', 1, 'xuen', '2019-07-12 04:38:29', 0);
INSERT INTO `crm_access_record` VALUES (54, '13862131479', '赵燕红', 7, '不是相关行业', 0, '', 1, 'xuen', '2019-07-12 04:38:29', 0);
INSERT INTO `crm_access_record` VALUES (55, '13559765052', '吴志博', 5, '通话中', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (56, '13040804188', '李军', 7, '不需要', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (57, '13814812185', '张金元', 7, '不需要', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (58, '13412286754', '肖荣', 5, '通话中', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (59, '15916705588', '范名升', 7, '不需要', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (60, '13771800444', '宫传艳', 7, '不需要', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (61, '13636566667', '黄清芬', 7, '不需要', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (62, '13580834257', '付先艳', 5, '未接', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (63, '13968200659', '严金冲', 3, '先加微信后期有需要再联系', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (64, '13771877729', '杨华', 5, '通话中', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (65, '15727003863', '陈思', 5, '未接', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (66, '13776011504', '温志洋', 7, '不需要', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (67, '13823256878', '陈方', 5, '通话中', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (68, '18915409914', '王伟', 5, '通话中', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (69, '13735457337', '陈绍红', 7, '不需要', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (70, '18912798015', '陈培宇', 7, '不需要', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (71, '13957817791', '郑海', 8, '厂家 可以先了解一下', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (72, '18950128501', '帅俊', 5, '未接', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (73, '13962663767', '王书纲', 7, '不是相关行业', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (74, '15888851917', '高扬', 7, '不是相关行业', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (75, '13063756658', '程果', 3, '加微信', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (76, '13430990701', '张宏斌', 5, '通话中', 0, '', 1, 'xuen', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (77, '13606133888', '汤方平', 5, '未接', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (78, '13818548107', '游竣鸿', 5, '挂断', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (79, '13860145785', '邓女士', 5, '通话中', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (80, '13370302167', '马洪良', 7, '不需要', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (81, '15333051538', '郝东转', 5, '未接', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (82, '13928846861', '邱日安', 5, '未接', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (83, '13920325220', '宁志高', 5, '停机', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (84, '18876593206', '洪小玲', 7, '空号', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (85, '13303585242', '闫高旺', 5, '未接', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (86, '13501573913', '邱伟才', 7, '不需要', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (87, '13858164990', '陈忠', 7, '不需要', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (88, '13906744533', '徐佰盈', 5, '通话中', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (89, '18261456652', '周小芳', 5, '未接', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (90, '13395061903', '尹龙告', 7, '不需要', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (91, '18559527670', '李建成', 7, '不需要', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (92, '13862096520', '彭维成', 5, '通话中', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (93, '13913192800', '殷颖', 5, '未接', 0, '', 1, 'wj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (94, '13024661962', '曾同春', 5, '未接', 0, '', 1, 'wj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (95, '13402502192', '顾运松', 7, '空号', 0, '', 1, 'wj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (96, '13584985723', '张微', 7, '不需要', 0, '', 1, 'wj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (97, '13806108938', '王国兴', 7, '不需要', 0, '', 1, 'wj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (98, '18602424722', '赵荣志', 5, '停机', 0, '', 1, 'wj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (99, '18922939247', '刘云山', 5, '关机', 0, '', 1, 'wj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (100, '13402502191', '顾运松', 7, '不需要', 0, '', 1, 'wj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (101, '18950066138', '黄荣聪', 7, '不需要', 0, '', 1, 'wj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (102, '13950097727', '岳建清', 7, '不需要', 0, '', 1, 'wj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (103, '13860458721', '李先生', 5, '无法接通', 0, '', 1, 'wj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (104, '18789900630', '查中栋', 7, '不需要', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (105, '13417832614', '徐贤哲', 5, '关机', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (106, '13906017417', '苏文彬', 7, '空号', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (107, '13862078457', '胡兰', 5, '未接', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (108, '13912639672', '高建青', 7, '不需要', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (109, '13951118669', '杨刚', 5, '未接', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (110, '18915529979', '季节', 7, '不需要', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (111, '13824522342', '廖健财', 5, '关机', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (112, '13326833090', '彭辉娟', 5, '未接', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (113, '13593822799', '付强', 7, '不需要', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (114, '13779913520', '陈美琴', 7, '不需要', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (115, '15995783317', '沈鑫玲', 7, '空号', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (116, '13424303577', '李兴', 5, '未接', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (117, '18913155618', '沈大男', 5, '关机', 0, '', 1, 'dxf', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (118, '13832786529', '杨新财', 5, '未接', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (119, '13606052975', '陈贵清', 7, '不需要', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (120, '18959627981', '朱海滨', 7, '空号', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (121, '13925863756', '李立云', 7, '不需要', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (122, '13715346994', '鲁先生', 5, '通话中', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (123, '18302261072', '崔丽娜', 7, '空号', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (124, '15720873772', '邵根方', 7, '空号', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (125, '13829211906', '张民刚', 7, '不需要', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (126, '18916559929', '董明乐', 5, '未接', 0, '', 1, 'admin', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (127, '13861767528', '崔经理', 7, '不需要', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (128, '13806138475', '蒋军', 7, '不需要', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (129, '15201195491', '陈键', 7, '空号', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (130, '13915554139', '李先生', 5, '未接', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (131, '13420919252', '黄炳煌', 7, '不需要', 0, '', 1, 'shenyj', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (132, '13502216100', '王志伟', 7, '不需要', 0, '', 1, 'yao', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (133, '13760926150', '梁兆敏', 5, '关机', 0, '', 1, 'yao', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (134, '18259461902', '业务', 5, '未接', 0, '', 1, 'yao', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (135, '13918082876', '金学哲', 5, '未接', 0, '', 1, 'yao', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (136, '13480672361', '林立', 7, '不需要', 0, '', 1, 'yao', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (137, '18026751055', '张汉方', 7, '不需要', 0, '', 1, 'yao', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (138, '13306201658', '顾铮波', 5, '未接', 0, '', 1, 'yao', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (139, '15985858122', '黄新福', 5, '通话中', 0, '', 1, 'yao', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (140, '13714355068', '杨伟均', 5, '关机', 0, '', 1, 'yao', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (141, '13520493362', '宁星', 5, '未接', 0, '', 1, 'yao', '2019-07-12 04:38:30', 0);
INSERT INTO `crm_access_record` VALUES (142, '13714355068', '杨伟均', 5, '关机', 0, '', 1, 'yao', '2019-07-12 04:38:30', 0);

-- ----------------------------
-- Table structure for crm_called_allot
-- ----------------------------
DROP TABLE IF EXISTS `crm_called_allot`;
CREATE TABLE `crm_called_allot`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `allot_time` datetime(0) NULL DEFAULT NULL COMMENT '分配时间',
  `allot_user` bigint(20) NULL DEFAULT NULL COMMENT '分配人',
  `customer_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户名称',
  `called_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '被叫号码',
  `company_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `calls_num` int(11) NOT NULL DEFAULT 0 COMMENT '呼叫次数',
  `input_time` datetime(0) NULL DEFAULT NULL COMMENT '导入时间',
  `input_user` bigint(20) NULL DEFAULT NULL COMMENT '导入人',
  `is_register` tinyint(4) NULL DEFAULT NULL COMMENT '是否在紧商网注册',
  `registerr_time` datetime(0) NULL DEFAULT NULL COMMENT '紧商网注册时间',
  `remake` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务员',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `called_num_unique`(`called_num`) USING BTREE COMMENT '号码唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 269 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_called_allot
-- ----------------------------
INSERT INTO `crm_called_allot` VALUES (171, NULL, NULL, '明进荣', '13862556465', '苏州工业园区唯亭镇御匠五金制品厂', '经理', 1, '2019-07-12 04:38:29', 1, 1, '2019-07-13 04:19:48', '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (172, NULL, NULL, '罗庆', '13669844460', '东莞市尚坤工业五金有限公司', '客服主管', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (173, NULL, NULL, '金平', '13957442539', '九江市精诚工业五金有限公司', '销售经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (174, NULL, NULL, '金平', '13736057606', '宁波市鄞州邱隘精诚工业五金厂', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (175, NULL, NULL, '许德芳', '13534294984', '深圳市宝安区沙井富丽盈工业五金厂', '助理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (176, NULL, NULL, '罗清菜', '13790400271', '东莞市镁洲五金工业有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (177, NULL, NULL, '吴常根', '13771896186', '苏州工业园区泓达塑料五金制品有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (178, NULL, NULL, '姜运林', '13666737011', '嘉善威特兰五金工业有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (179, NULL, NULL, '彭建华', '13776070368', '苏州亿昌五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (180, NULL, NULL, '崔荀', '18653202116', '青岛高科技工业园隆达洁具五金有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (181, NULL, NULL, '赵燕红', '13862131479', '苏州工业园区唯亭镇亭兴五金机电商贸行', '主管', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (182, NULL, NULL, '吴志博', '13559765052', '东莞市标一五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (183, NULL, NULL, '李军', '13040804188', '深圳固索科工业五金有限公司', '营销经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (184, NULL, NULL, '张金元', '13814812185', '苏州工业园区车坊五金厂', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (185, NULL, NULL, '肖荣', '13412286754', '东莞市浩沃工业五金有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (186, NULL, NULL, '范名升', '15916705588', '东莞市环固五金工业设备有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (187, NULL, NULL, '宫传艳', '13771800444', '苏州锦森国晟五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (188, NULL, NULL, '黄清芬', '13636566667', '同源（厦门）五金工业有限公司', '系长', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (189, NULL, NULL, '付先艳', '13580834257', '东莞金兆顺五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (190, NULL, NULL, '严金冲', '13968200659', '慈溪市顺涛五金工业有限公司', '职员', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (191, NULL, NULL, '杨华', '13771877729', '苏州工业园区华旭五金工具厂', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (192, NULL, NULL, '陈思', '15727003863', '尚坤工业五金有限公司武汉办事处', '市场部业务员', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (193, NULL, NULL, '温志洋', '13776011504', '苏州工业园区爱燕五金制造有限公司', '市场部经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (194, NULL, NULL, '陈方', '13823256878', '深圳市恒信达五金工业设备有限公司', '销售经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (195, NULL, NULL, '王伟', '18915409914', '苏州工业园区永达五金电器厂', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (196, NULL, NULL, '陈绍红', '13735457337', '浙江省工业品市场文辉五金机电商行', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (197, NULL, NULL, '陈培宇', '18912798015', '苏州工业园区众友精密五金有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (198, NULL, NULL, '郑海', '13957817791', '宁波智博工业五金厂', '销售', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (199, NULL, NULL, '帅俊', '18950128501', '厦门标远精密五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (200, NULL, NULL, '王书纲', '13962663767', '苏州工业园区新星五金名版有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (201, NULL, NULL, '高扬', '15888851917', '浙江省工业品市场熙航五金丝网商行', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (202, NULL, NULL, '程果', '13063756658', '苏州工业园区瑞特精密五金有限公司', '销售部经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (203, NULL, NULL, '张宏斌', '13430990701', '深圳市龙华新区金九工业柜锁五金厂', '主管', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'xuen', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (204, NULL, NULL, '汤方平', '13606133888', '苏州三易五金工业有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 1, '2019-07-11 15:38:29', '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (205, NULL, NULL, '游竣鸿', '13818548107', '上海龙雨五金工业有限公司', '业务', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (206, NULL, NULL, '邓女士', '13860145785', '厦门林达斯五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (207, NULL, NULL, '马洪良', '13370302167', '爱姆卡（天津）工业五金有限公司沈阳办事处', '销售经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (208, NULL, NULL, '郝东转', '15333051538', '山西海锐五金工业有限责任公司', '销售经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (209, NULL, NULL, '邱日安', '13928846861', '嘉允五金工业有限公司(总经理办公室）', '管理代表', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (210, NULL, NULL, '宁志高', '13920325220', '爱姆卡（天津）工业五金有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (211, NULL, NULL, '洪小玲', '18876593206', '福建省丹鹰五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (212, NULL, NULL, '闫高旺', '13303585242', '交城天昌五金工业有限公司', '销售', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (213, NULL, NULL, '邱伟才', '13501573913', '深圳市华迪工业电器五金机电商行', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (214, NULL, NULL, '陈忠', '13858164990', '浙江省工业品市场东顺五金机电商行', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (215, NULL, NULL, '徐佰盈', '13906744533', '宁波明圆五金工业有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (216, NULL, NULL, '周小芳', '18261456652', '苏州工业园区创益五金有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (217, NULL, NULL, '尹龙告', '13395061903', '南安市利达五金工业有限公司', '副总', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (218, NULL, NULL, '李建成', '18559527670', '晋江市五里工业区成顺五金机械有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (219, NULL, NULL, '彭维成', '13862096520', '苏州工业园区鑫旺五金工具商行', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (220, NULL, NULL, '殷颖', '13913192800', '苏州工业园区欣欣五金刀锯有限公司', '总经理助理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'wj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (221, NULL, NULL, '曾同春', '13024661962', '湖南省邵东黄陂桥工业小区金星五金工具厂', '业务经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'wj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (222, NULL, NULL, '顾运松', '13402502192', '中国（苏州）中锐五金精密技术工业公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'wj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (223, NULL, NULL, '张微', '13584985723', '昆山尚坤工业五金有限公司', '销售工程师', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'wj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (224, NULL, NULL, '王国兴', '13806108938', '江苏丹阳市工业电炉厂五金分厂', '厂长', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'wj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (225, NULL, NULL, '赵荣志', '18602424722', '上海尊信五金工业有限公司沈阳分公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'wj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (226, NULL, NULL, '刘云山', '18922939247', '东莞博鑫五金工业设备有限公司', '销售经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'wj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (227, NULL, NULL, '顾运松', '13402502191', '苏州中锐五金精密技术工业公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'wj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (228, NULL, NULL, '黄荣聪', '18950066138', '厦门荣鑫五金电气工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'wj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (229, NULL, NULL, '岳建清', '13950097727', '厦门迈瑞五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'wj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (230, NULL, NULL, '李先生', '13860458721', '厦门晋顺五金工业有限公司', '销售经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'wj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (231, NULL, NULL, '查中栋', '18789900630', '海南垚舜五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (232, NULL, NULL, '徐贤哲', '13417832614', '珠海市旭登五金工业有限公司销售部门', '业务总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (233, NULL, NULL, '苏文彬', '13906017417', '厦门力晟橡塑五金工业有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (234, NULL, NULL, '胡兰', '13862078457', '苏州工业园区康尼斯机电五金有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (235, NULL, NULL, '高建青', '13912639672', '苏州工业园区惠镒五金机械有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (236, NULL, NULL, '杨刚', '13951118669', '苏州工业园区涵捷五金机械有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (237, NULL, NULL, '季节', '18915529979', '苏州工业园区永义祥五金机电有限公司', '销售经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (238, NULL, NULL, '廖健财', '13824522342', '广东省顺德区得财五金塑胶工业贸易有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (239, NULL, NULL, '彭辉娟', '13326833090', '江门联丰爱橡胶五金工业有限公司', '业务', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (240, NULL, NULL, '付强', '13593822799', '荆州市江汉工业五金销售有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (241, NULL, NULL, '陈美琴', '13779913520', '耀辉五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (242, NULL, NULL, '沈鑫玲', '15995783317', '苏州工业园区鑫晶盛五金塑胶制品有限公司', '主管', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (243, NULL, NULL, '李兴', '13424303577', '华南国际工业原料城(五金化工塑料)', '营销代表', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (244, NULL, NULL, '沈大男', '18913155618', '苏州工业园区娄葑镇斜塘星顺塑料五金厂', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (245, NULL, NULL, '杨新财', '13832786529', '河北省泊头市工业开发区鑫瑞五金厂', '--', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (246, NULL, NULL, '陈贵清', '13606052975', '厦门市豪雅美五金卫浴工业有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (247, NULL, NULL, '朱海滨', '18959627981', '漳州鑫辉五金工业有限公司', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (248, NULL, NULL, '李立云', '13925863756', '东莞市源群五金工业设备有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (249, NULL, NULL, '鲁先生', '13715346994', '深圳市东泰精密工业五金制品有限公司', '市场开发部经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (250, NULL, NULL, '崔丽娜', '18302261072', '沃施莱格工业五金国际贸易有限公司', '区域销售', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (251, NULL, NULL, '邵根方', '15720873772', '苏州工业园区路易吉五金机电有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (252, NULL, NULL, '张民刚', '13829211906', '隆禧五金工业制品有限公司', '总经里', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (253, NULL, NULL, '董明乐', '18916559929', '上海沪吉五金工业有限公司', '销售 经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'admin', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (254, NULL, NULL, '崔经理', '13861767528', '无锡科固工业五金有限公司', '--', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (255, NULL, NULL, '蒋军', '13806138475', '苏州工业园区兴武五金厂', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (256, '2019-07-12 20:42:34', 1, '陈键', '15201195491', '苏州工业园区中创五金有限公司', '业务', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'dxf', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (257, NULL, NULL, '李先生', '13915554139', '苏州工业园区良益五金制品有限公司', '业务主管', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (258, NULL, NULL, '黄炳煌', '13420919252', '深圳市图强精密五金工业有限公司', '市场部经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'shenyj', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (259, NULL, NULL, '王志伟', '13502216100', '惠州市兴辉五金工业有限公司', '销售主管', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'yao', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (260, NULL, NULL, '梁兆敏', '13760926150', '广东省佛山市南海区里水镇白岗工业区东壬五金厂', '业务经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'yao', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (261, NULL, NULL, '业务', '18259461902', '厦门精鸿鑫精密五金工业有限公司', '业务', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'yao', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (262, NULL, NULL, '金学哲', '13918082876', '苏州工业园区鼎泰电子五金商行', '总经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'yao', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (263, NULL, NULL, '林立', '13480672361', '科铭五金电子工业制品有限公司(中扬五金电子)', '业务部', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'yao', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (264, NULL, NULL, '张汉方', '18026751055', '江门市五金工业厂', '业务', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'yao', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (265, NULL, NULL, '顾铮波', '13306201658', '苏州工业园区华阳五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'yao', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (266, NULL, NULL, '黄新福', '15985858122', '漳州市长泰县长禾五金工业有限公司', '经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'yao', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (267, NULL, NULL, '杨伟均', '13714355068', '深圳市同新工业五金制品厂', '经理', 2, '2019-07-12 04:38:29', 1, 0, NULL, '', 'yao', 1, '2019-07-12 04:38:29');
INSERT INTO `crm_called_allot` VALUES (268, NULL, NULL, '宁星', '13520493362', '爱姆卡（天津）工业五金有限公司北京办事处', '华北区销售经理', 1, '2019-07-12 04:38:29', 1, 0, NULL, '', 'yao', 1, '2019-07-12 04:38:29');

-- ----------------------------
-- Table structure for sys_action_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_action_log`;
CREATE TABLE `sys_action_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志名称',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '日志类型',
  `ipaddr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作IP地址',
  `clazz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产生日志的类',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产生日志的方法',
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产生日志的表',
  `record_id` bigint(20) NULL DEFAULT NULL COMMENT '产生日志的数据id',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志消息',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '记录时间',
  `oper_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产生日志的用户昵称',
  `oper_by` bigint(20) NULL DEFAULT NULL COMMENT '产生日志的用户',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK32gm4dja0jetx58r9dc2uljiu`(`oper_by`) USING BTREE,
  CONSTRAINT `FK32gm4dja0jetx58r9dc2uljiu` FOREIGN KEY (`oper_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1245 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_action_log
-- ----------------------------
INSERT INTO `sys_action_log` VALUES (1232, '用户管理', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.UserController', 'save', 'sys_user', 7, '更新用户成功：dxf', '2019-07-12 20:37:22', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1233, '角色授权', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.RoleController', 'auth', 'sys_role', 17, '角色授权成功：业务经理', '2019-07-13 04:55:54', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1234, '角色授权', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.RoleController', 'auth', 'sys_role', 16, '角色授权成功：业务员', '2019-07-13 04:56:13', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1235, '角色分配', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.UserController', 'auth', 'sys_user', 50, '角色分配成功：zhaoyq', '2019-07-13 04:56:52', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1236, '角色分配', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.UserController', 'auth', 'sys_user', 31, '角色分配成功：yyb', '2019-07-13 04:57:19', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1237, '角色分配', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.UserController', 'auth', 'sys_user', 36, '角色分配成功：loulg', '2019-07-13 04:57:27', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1238, '角色分配', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.UserController', 'auth', 'sys_user', 49, '角色分配成功：liull', '2019-07-13 04:57:34', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1239, '角色分配', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.UserController', 'auth', 'sys_user', 51, '角色分配成功：xzf', '2019-07-13 04:57:52', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1240, '角色分配', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.UserController', 'auth', 'sys_user', 7, '角色分配成功：dxf', '2019-07-13 04:57:58', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1241, '角色分配', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.UserController', 'auth', 'sys_user', 52, '角色分配成功：shenyj', '2019-07-13 04:58:12', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1242, '角色分配', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.UserController', 'auth', 'sys_user', 63, '角色分配成功：gld', '2019-07-13 04:58:19', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1243, '角色分配', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.UserController', 'auth', 'sys_user', 69, '角色分配成功：shixf', '2019-07-13 04:58:24', '超级管理员', 1);
INSERT INTO `sys_action_log` VALUES (1244, '角色分配', 1, '0:0:0:0:0:0:0:1', 'com.crm.admin.system.controller.UserController', 'auth', 'sys_user', 88, '角色分配成功：shunhy', '2019-07-13 04:59:09', '超级管理员', 1);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父级ID',
  `pids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所有父级编号',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKifwd1h4ciusl3nnxrpfpv316u`(`create_by`) USING BTREE,
  INDEX `FK83g45s1cjqqfpifhulqhv807m`(`update_by`) USING BTREE,
  CONSTRAINT `FK83g45s1cjqqfpifhulqhv807m` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKifwd1h4ciusl3nnxrpfpv316u` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, '总公司', 0, '[0]', 1, '', '2018-12-02 17:41:23', '2019-02-23 02:41:28', 1, 7, 1);
INSERT INTO `sys_dept` VALUES (2, '技术部门', 1, '[0],[1]', 1, '', '2018-12-02 17:51:04', '2019-04-27 13:12:46', 1, 7, 1);
INSERT INTO `sys_dept` VALUES (3, '销售中心', 1, '[0],[1]', 2, '', '2018-12-02 17:51:42', '2019-07-04 02:22:30', 1, 7, 1);
INSERT INTO `sys_dept` VALUES (6, '运营部', 1, '[0],[1]', 3, '', '2019-07-05 01:39:01', '2019-07-05 01:39:01', 1, 1, 1);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典名称',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典键名',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '字典类型',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '字典键值',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKag4shuprf2tjot9i1mhh37kk6`(`create_by`) USING BTREE,
  INDEX `FKoyng5jlifhsme0gc1lwiub0lr`(`update_by`) USING BTREE,
  CONSTRAINT `FKag4shuprf2tjot9i1mhh37kk6` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKoyng5jlifhsme0gc1lwiub0lr` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '数据状态', 'DATA_STATUS', 2, '1:正常,2:冻结,3:删除', '', '2018-10-05 16:03:11', '2018-10-05 16:11:41', 1, 1, 1);
INSERT INTO `sys_dict` VALUES (2, '字典类型', 'DICT_TYPE', 2, '2:键值对', '', '2018-10-05 20:08:55', '2019-01-17 23:39:23', 1, 1, 1);
INSERT INTO `sys_dict` VALUES (3, '用户性别', 'USER_SEX', 2, '1:男,2:女', '', '2018-10-05 20:12:32', '2018-10-05 20:12:32', 1, 1, 1);
INSERT INTO `sys_dict` VALUES (4, '菜单类型', 'MENU_TYPE', 2, '1:一级菜单,2:子级菜单,3:不是菜单', '', '2018-10-05 20:24:57', '2018-10-13 13:56:05', 1, 1, 1);
INSERT INTO `sys_dict` VALUES (5, '搜索栏状态', 'SEARCH_STATUS', 2, '1:正常,2:冻结', '', '2018-10-05 20:25:45', '2019-02-26 00:34:34', 1, 1, 1);
INSERT INTO `sys_dict` VALUES (6, '日志类型', 'LOG_TYPE', 2, '1:业务,2:登录,3:系统', '', '2018-10-05 20:28:47', '2019-02-26 00:31:43', 1, 1, 1);
INSERT INTO `sys_dict` VALUES (11, '紧商网注册标识', 'REGISTER_STATUS', 2, '0:未注册,1:已注册', '', '2019-07-04 02:16:42', '2019-07-04 02:16:42', 1, 1, 1);

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `mime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'MIME文件类型',
  `size` bigint(20) NULL DEFAULT NULL COMMENT '文件大小',
  `md5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'MD5值',
  `sha1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SHA1值',
  `create_by` bigint(20) NULL DEFAULT NULL COMMENT '上传者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKkkles8yp0a156p4247cc22ovn`(`create_by`) USING BTREE,
  CONSTRAINT `FKkkles8yp0a156p4247cc22ovn` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (2, '6151fb27762c424b9321d9ea19715cd1.jpg', '/upload/picture/20190710/6151fb27762c424b9321d9ea19715cd1.jpg', 'image/jpeg', 27088, '65bc1f6c6b1ad02d536722283fb54e49', '296825935fe45e5a481e769ce3f3c08a5f4f4c72', 1, '2019-07-10 05:05:04');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父级编号',
  `pids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所有父级编号',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'URL地址',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '类型（1:一级菜单,2:子级菜单,3:不是菜单）',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKoxg2hi96yr9pf2m0stjomr3we`(`create_by`) USING BTREE,
  INDEX `FKsiko0qcr8ddamvrxf1tk4opgc`(`update_by`) USING BTREE,
  CONSTRAINT `FKoxg2hi96yr9pf2m0stjomr3we` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsiko0qcr8ddamvrxf1tk4opgc` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 187 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '菜单管理', 2, '[0],[2]', '/system/menu/index', 'system:menu:index', '', 2, 3, '', '2018-09-29 00:02:10', '2019-02-24 16:10:40', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (2, '系统管理', 0, '[0]', '#', '#', 'fa fa-cog', 1, 4, '', '2018-09-29 00:05:50', '2019-07-11 03:27:52', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (3, '添加', 1, '[0],[2],[1]', '/system/menu/add', 'system:menu:add', '', 3, 1, '', '2018-09-29 00:06:57', '2019-02-24 16:12:59', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (4, '角色管理', 2, '[0],[2]', '/system/role/index', 'system:role:index', '', 2, 2, '', '2018-09-29 00:08:14', '2019-02-24 16:10:34', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (5, '添加', 4, '[0],[2],[4]', '/system/role/add', 'system:role:add', '', 3, 1, '', '2018-09-29 00:09:04', '2019-02-24 16:12:04', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (6, '主页', 0, '[0]', '/index', 'index', 'layui-icon layui-icon-home', 1, 1, '', '2018-09-29 00:09:56', '2019-02-27 21:34:56', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (7, '用户管理', 2, '[0],[2]', '/system/user/index', 'system:user:index', '', 2, 1, '', '2018-09-29 00:43:50', '2019-04-05 17:43:25', 1, 2, 1);
INSERT INTO `sys_menu` VALUES (8, '编辑', 1, '[0],[2],[1]', '/system/menu/edit', 'system:menu:edit', '', 3, 2, '', '2018-09-29 00:57:33', '2019-02-24 16:13:05', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (9, '详细', 1, '[0],[2],[1]', '/system/menu/detail', 'system:menu:detail', '', 3, 3, '', '2018-09-29 01:03:00', '2019-02-24 16:13:12', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (10, '修改状态', 1, '[0],[2],[1]', '/system/menu/status', 'system:menu:status', '', 3, 4, '', '2018-09-29 01:03:43', '2019-02-24 16:13:21', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (11, '编辑', 4, '[0],[2],[4]', '/system/role/edit', 'system:role:edit', '', 3, 2, '', '2018-09-29 01:06:13', '2019-02-24 16:12:10', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (12, '授权', 4, '[0],[2],[4]', '/system/role/auth', 'system:role:auth', '', 3, 3, '', '2018-09-29 01:06:57', '2019-02-24 16:12:17', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (13, '详细', 4, '[0],[2],[4]', '/system/role/detail', 'system:role:detail', '', 3, 4, '', '2018-09-29 01:08:00', '2019-02-24 16:12:24', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (14, '修改状态', 4, '[0],[2],[4]', '/system/role/status', 'system:role:status', '', 3, 5, '', '2018-09-29 01:08:22', '2019-02-24 16:12:43', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (15, '编辑', 7, '[0],[2],[7]', '/system/user/edit', 'system:user:edit', '', 3, 2, '', '2018-09-29 21:17:17', '2019-02-24 16:11:03', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (16, '添加', 7, '[0],[2],[7]', '/system/user/add', 'system:user:add', '', 3, 1, '', '2018-09-29 21:17:58', '2019-02-24 16:10:28', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (17, '修改密码', 7, '[0],[2],[7]', '/system/user/pwd', 'system:user:pwd', '', 3, 3, '', '2018-09-29 21:19:40', '2019-02-24 16:11:11', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (18, '权限分配', 7, '[0],[2],[7]', '/system/user/role', 'system:user:role', '', 3, 4, '', '2018-09-29 21:20:35', '2019-02-24 16:11:18', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (19, '详细', 7, '[0],[2],[7]', '/system/user/detail', 'system:user:detail', '', 3, 5, '', '2018-09-29 21:21:00', '2019-02-24 16:11:26', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (20, '修改状态', 7, '[0],[2],[7]', '/system/user/status', 'system:user:status', '', 3, 6, '', '2018-09-29 21:21:18', '2019-02-24 16:11:35', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (21, '字典管理', 2, '[0],[2]', '/system/dict/index', 'system:dict:index', '', 2, 5, '', '2018-10-05 00:55:52', '2019-02-24 16:14:24', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (22, '字典添加', 21, '[0],[2],[21]', '/system/dict/add', 'system:dict:add', '', 3, 1, '', '2018-10-05 00:56:26', '2019-02-24 16:14:10', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (23, '字典编辑', 21, '[0],[2],[21]', '/system/dict/edit', 'system:dict:edit', '', 3, 2, '', '2018-10-05 00:57:08', '2019-02-24 16:14:34', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (24, '字典详细', 21, '[0],[2],[21]', '/system/dict/detail', 'system:dict:detail', '', 3, 3, '', '2018-10-05 00:57:42', '2019-02-24 16:14:41', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (25, '修改状态', 21, '[0],[2],[21]', '/system/dict/status', 'system:dict:status', '', 3, 4, '', '2018-10-05 00:58:27', '2019-02-24 16:14:49', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (26, '行为日志', 2, '[0],[2]', '/system/actionLog/index', 'system:actionLog:index', '', 2, 6, '', '2018-10-14 16:52:01', '2019-02-27 21:34:15', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (27, '日志详细', 26, '[0],[2],[26]', '/system/actionLog/detail', 'system:actionLog:detail', '', 3, 1, '', '2018-10-14 21:07:11', '2019-02-27 21:34:15', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (28, '日志删除', 26, '[0],[2],[26]', '/system/actionLog/delete', 'system:actionLog:delete', '', 3, 2, '', '2018-10-14 21:08:17', '2019-02-27 21:34:15', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (30, '开发中心', 0, '[0]', '#', '#', 'fa fa-gavel', 1, 5, '', '2018-10-19 16:38:23', '2019-07-11 03:27:52', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (31, '代码生成', 30, '[0],[30]', '/dev/code', '#', '', 2, 1, '', '2018-10-19 16:39:04', '2019-03-13 17:43:58', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (125, '表单构建', 30, '[0],[30]', '/dev/build', '#', '', 2, 2, '', '2018-11-25 16:12:23', '2019-02-24 16:16:40', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (136, '部门管理', 2, '[0],[2]', '/system/dept/index', 'system:dept:index', '', 2, 4, '', '2018-12-02 16:33:23', '2019-02-24 16:10:50', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (137, '添加', 136, '[0],[2],[136]', '/system/dept/add', 'system:dept:add', '', 3, 1, '', '2018-12-02 16:33:23', '2019-02-24 16:13:34', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (138, '编辑', 136, '[0],[2],[136]', '/system/dept/edit', 'system:dept:edit', '', 3, 2, '', '2018-12-02 16:33:23', '2019-02-24 16:13:42', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (139, '详细', 136, '[0],[2],[136]', '/system/dept/detail', 'system:dept:detail', '', 3, 3, '', '2018-12-02 16:33:23', '2019-02-24 16:13:49', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (140, '改变状态', 136, '[0],[2],[136]', '/system/dept/status', 'system:dept:status', '', 3, 4, '', '2018-12-02 16:33:23', '2019-02-24 16:13:57', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (146, '数据接口', 30, '[0],[30]', '/dev/swagger', '#', '', 2, 3, '', '2018-12-09 21:11:11', '2019-02-24 23:38:18', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (159, '用户角色', 2, '[0],[2]', '/user_role/userRole/index', 'user_role:userRole:index', NULL, 2, 7, NULL, '2019-07-03 20:19:45', '2019-07-03 20:28:36', 1, 1, 3);
INSERT INTO `sys_menu` VALUES (160, '添加', 159, '[0],[2],[159]', '/user_role/userRole/add', 'user_role:userRole:add', NULL, 3, 1, NULL, '2019-07-03 20:19:45', '2019-07-03 20:28:36', 1, 1, 3);
INSERT INTO `sys_menu` VALUES (161, '编辑', 159, '[0],[2],[159]', '/user_role/userRole/edit', 'user_role:userRole:edit', NULL, 3, 1, NULL, '2019-07-03 20:19:45', '2019-07-03 20:28:36', 1, 1, 3);
INSERT INTO `sys_menu` VALUES (162, '详细', 159, '[0],[2],[159]', '/user_role/userRole/detail', 'user_role:userRole:detail', NULL, 3, 1, NULL, '2019-07-03 20:19:45', '2019-07-03 20:28:36', 1, 1, 3);
INSERT INTO `sys_menu` VALUES (163, '修改状态', 159, '[0],[2],[159]', '/user_role/userRole/status', 'user_role:userRole:status', NULL, 3, 1, NULL, '2019-07-03 20:19:45', '2019-07-03 20:28:36', 1, 1, 3);
INSERT INTO `sys_menu` VALUES (164, '公共号码源管理', 0, '[0]', '#', 'crm', 'fa fa-address-book ', 1, 2, '', '2019-07-03 20:24:46', '2019-07-03 20:25:30', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (170, '修改状态', 166, '[0],[166]', '/crm/cellNumLib/status', 'crm:cellNumLib:status', NULL, 3, 1, NULL, '2019-07-03 20:44:02', '2019-07-03 22:16:09', 1, 1, 3);
INSERT INTO `sys_menu` VALUES (171, '号码分配', 164, '[0]', '/calledallot/calledAllot/index', 'calledallot:calledAllot:index', '', 2, 1, '', '2019-07-03 22:08:55', '2019-07-03 22:16:33', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (172, '添加', 171, '[0],[171]', '/calledallot/calledAllot/add', 'calledallot:calledAllot:add', NULL, 3, 1, NULL, '2019-07-03 22:08:55', '2019-07-03 22:08:55', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (173, '编辑', 171, '[0],[171]', '/calledallot/calledAllot/edit', 'calledallot:calledAllot:edit', NULL, 3, 1, NULL, '2019-07-03 22:08:55', '2019-07-03 22:08:55', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (174, '详细', 171, '[0],[171]', '/calledallot/calledAllot/detail', 'calledallot:calledAllot:detail', NULL, 3, 1, NULL, '2019-07-03 22:08:55', '2019-07-03 22:08:55', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (175, '修改状态', 171, '[0],[171]', '/calledallot/calledAllot/status', 'calledallot:calledAllot:status', NULL, 3, 1, NULL, '2019-07-03 22:08:55', '2019-07-03 22:08:55', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (176, '分配号码', 171, '[0[],171]', '/calledallot/calledAllot/allot', 'calledallot:calledAllot:allot', NULL, 3, 2, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO `sys_menu` VALUES (177, '客户管理', 164, '[0],[164]', '/customer/index', 'customer:index', '', 2, 2, '', '2019-07-05 22:00:51', '2019-07-06 00:43:23', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (178, '编辑', 177, '[0],[164],[177]', 'customer:edit', 'customer:edit', '', 3, 1, '', '2019-07-07 22:50:32', '2019-07-07 22:51:52', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (179, '详情', 177, '[0],[164],[177]', 'customer/detail', 'ustomer:detail', '', 3, 2, '', '2019-07-07 22:51:38', '2019-07-07 22:51:38', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (180, '回访记录', 164, '[0],[164]', '/record/index', 'record:index', NULL, 2, 3, NULL, '2019-07-08 00:54:13', '2019-07-08 00:54:13', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (181, '添加', 180, '[0],[164],[180]', '/record/add', 'record:add', NULL, 3, 1, NULL, '2019-07-08 00:54:13', '2019-07-08 00:54:13', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (182, '编辑', 180, '[0],[164],[180]', '/record/edit', 'record:edit', NULL, 3, 1, NULL, '2019-07-08 00:54:13', '2019-07-08 00:54:13', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (183, '详细', 180, '[0],[164],[180]', '/record/detail', 'record:detail', NULL, 3, 1, NULL, '2019-07-08 00:54:13', '2019-07-08 00:54:13', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (184, '修改状态', 180, '[0],[164],[180]', '/record/status', 'record:status', NULL, 3, 1, NULL, '2019-07-08 00:54:13', '2019-07-08 00:54:13', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (185, '消息管理', 0, '[0]', '#', 'message', 'fa fa-comments ', 1, 3, '', '2019-07-11 03:27:52', '2019-07-11 03:27:52', 1, 1, 1);
INSERT INTO `sys_menu` VALUES (186, '消息中心', 185, '[0],[185]', '/message/index', 'message:index', '', 2, 1, '', '2019-07-11 03:28:43', '2019-07-11 03:28:43', 1, 1, 1);

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '消息头',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '消息内容',
  `recipient` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '信息接受者',
  `recipient_type` int(3) NULL DEFAULT NULL COMMENT '信息接受者类型：0=所有人，1=部门，2=个人',
  `is_read` int(1) NULL DEFAULT NULL COMMENT '是否已读：0未读，1已读',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '消息创建时间',
  `read_time` timestamp(0) NULL DEFAULT NULL COMMENT '消息阅读时间',
  `exigency` int(2) NULL DEFAULT NULL COMMENT '消息紧急情况：0不紧急，1一般，2紧急',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_message
-- ----------------------------
INSERT INTO `sys_message` VALUES (1, '消息头1', '消息头内容', 'admin', 2, 1, '2019-07-11 14:03:48', NULL, 1);
INSERT INTO `sys_message` VALUES (2, '消息头2', '消息头内容2', 'admin', 2, 1, '2019-07-11 14:03:48', NULL, 1);
INSERT INTO `sys_message` VALUES (3, '消息头3', '消息头内容3', 'yyb', 2, 0, '2019-07-11 14:03:48', NULL, 1);
INSERT INTO `sys_message` VALUES (4, '消息头4', '消息头内容4', 'admin', 2, 1, '2019-07-11 14:03:48', NULL, 1);
INSERT INTO `sys_message` VALUES (5, '消息头5', '消息头内容5', 'admin', 2, 1, '2019-07-11 14:03:48', NULL, 1);
INSERT INTO `sys_message` VALUES (6, '消息头6', '消息头内容6', 'admin', 2, 1, '2019-07-11 14:03:48', NULL, 1);
INSERT INTO `sys_message` VALUES (7, '消息头7', '消息头内容7', 'admin', 2, 1, '2019-07-11 14:03:48', NULL, 1);
INSERT INTO `sys_message` VALUES (8, '消息头8', '消息头内容8', 'admin', 2, 1, '2019-07-11 14:03:48', NULL, 1);
INSERT INTO `sys_message` VALUES (9, '消息头9', '消息头内容9', 'admin', 2, 1, '2019-07-11 14:03:48', NULL, 1);
INSERT INTO `sys_message` VALUES (10, '消息头10', '消息头内容10', 'admin', 2, 1, '2019-07-11 14:03:48', NULL, 1);
INSERT INTO `sys_message` VALUES (11, '消息头11', '消息头内容11', 'admin', 2, 1, '2019-07-11 14:03:48', NULL, 1);
INSERT INTO `sys_message` VALUES (12, '紧商网有新的用户注册{13606133888}，请到紧商网绑定', '分配给你的用户{13606133888}于在紧商网注册，请到紧商网进行绑定', 'admin', 2, 1, '2019-07-13 04:27:34', NULL, 1);
INSERT INTO `sys_message` VALUES (13, '紧商网有新的用户注册:13606133888，请到紧商网绑定', '分配给你的用户:13606133888 于2019-07-13 04:40:03在紧商网注册，请到紧商网进行绑定', 'admin', 2, 1, '2019-07-13 04:40:03', NULL, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称（中文名）',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标识名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKdkwvv0rm6j3d5l6hwsy2dplol`(`create_by`) USING BTREE,
  INDEX `FKrouqqi3f2bgc5o83wdstlh6q4`(`update_by`) USING BTREE,
  CONSTRAINT `FKdkwvv0rm6j3d5l6hwsy2dplol` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrouqqi3f2bgc5o83wdstlh6q4` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', '', '2018-09-29 00:12:40', '2019-07-05 02:16:04', 1, 1, 1);
INSERT INTO `sys_role` VALUES (2, '开发组', 'group', '', '2018-09-30 16:04:32', '2019-04-28 00:10:00', 1, 1, 3);
INSERT INTO `sys_role` VALUES (3, '用户组', 'group1', '', '2018-09-30 16:24:20', '2019-04-28 00:11:09', 1, 1, 3);
INSERT INTO `sys_role` VALUES (16, '业务员', 'salesman', '', '2019-07-03 20:22:10', '2019-07-13 04:56:12', 1, 1, 1);
INSERT INTO `sys_role` VALUES (17, '业务经理', 'salesmanage', '', '2019-07-04 02:23:39', '2019-07-13 04:55:54', 1, 1, 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE,
  INDEX `FKf3mud4qoc7ayew8nml4plkevo`(`menu_id`) USING BTREE,
  CONSTRAINT `FKf3mud4qoc7ayew8nml4plkevo` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKkeitxsgxwayackgqllio4ohn5` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (16, 6);
INSERT INTO `sys_role_menu` VALUES (17, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 17);
INSERT INTO `sys_role_menu` VALUES (1, 18);
INSERT INTO `sys_role_menu` VALUES (1, 19);
INSERT INTO `sys_role_menu` VALUES (1, 20);
INSERT INTO `sys_role_menu` VALUES (1, 21);
INSERT INTO `sys_role_menu` VALUES (1, 22);
INSERT INTO `sys_role_menu` VALUES (1, 23);
INSERT INTO `sys_role_menu` VALUES (1, 24);
INSERT INTO `sys_role_menu` VALUES (1, 25);
INSERT INTO `sys_role_menu` VALUES (1, 26);
INSERT INTO `sys_role_menu` VALUES (1, 27);
INSERT INTO `sys_role_menu` VALUES (1, 28);
INSERT INTO `sys_role_menu` VALUES (1, 30);
INSERT INTO `sys_role_menu` VALUES (1, 31);
INSERT INTO `sys_role_menu` VALUES (1, 125);
INSERT INTO `sys_role_menu` VALUES (1, 136);
INSERT INTO `sys_role_menu` VALUES (1, 137);
INSERT INTO `sys_role_menu` VALUES (1, 138);
INSERT INTO `sys_role_menu` VALUES (1, 139);
INSERT INTO `sys_role_menu` VALUES (1, 140);
INSERT INTO `sys_role_menu` VALUES (1, 146);
INSERT INTO `sys_role_menu` VALUES (16, 164);
INSERT INTO `sys_role_menu` VALUES (17, 164);
INSERT INTO `sys_role_menu` VALUES (1, 171);
INSERT INTO `sys_role_menu` VALUES (17, 171);
INSERT INTO `sys_role_menu` VALUES (1, 172);
INSERT INTO `sys_role_menu` VALUES (17, 172);
INSERT INTO `sys_role_menu` VALUES (1, 173);
INSERT INTO `sys_role_menu` VALUES (17, 173);
INSERT INTO `sys_role_menu` VALUES (1, 174);
INSERT INTO `sys_role_menu` VALUES (17, 174);
INSERT INTO `sys_role_menu` VALUES (1, 175);
INSERT INTO `sys_role_menu` VALUES (17, 175);
INSERT INTO `sys_role_menu` VALUES (17, 176);
INSERT INTO `sys_role_menu` VALUES (16, 177);
INSERT INTO `sys_role_menu` VALUES (17, 177);
INSERT INTO `sys_role_menu` VALUES (16, 178);
INSERT INTO `sys_role_menu` VALUES (17, 178);
INSERT INTO `sys_role_menu` VALUES (16, 179);
INSERT INTO `sys_role_menu` VALUES (17, 179);
INSERT INTO `sys_role_menu` VALUES (1, 180);
INSERT INTO `sys_role_menu` VALUES (16, 180);
INSERT INTO `sys_role_menu` VALUES (17, 180);
INSERT INTO `sys_role_menu` VALUES (1, 181);
INSERT INTO `sys_role_menu` VALUES (16, 181);
INSERT INTO `sys_role_menu` VALUES (17, 181);
INSERT INTO `sys_role_menu` VALUES (1, 182);
INSERT INTO `sys_role_menu` VALUES (16, 182);
INSERT INTO `sys_role_menu` VALUES (17, 182);
INSERT INTO `sys_role_menu` VALUES (1, 183);
INSERT INTO `sys_role_menu` VALUES (16, 183);
INSERT INTO `sys_role_menu` VALUES (17, 183);
INSERT INTO `sys_role_menu` VALUES (1, 184);
INSERT INTO `sys_role_menu` VALUES (16, 184);
INSERT INTO `sys_role_menu` VALUES (17, 184);
INSERT INTO `sys_role_menu` VALUES (16, 185);
INSERT INTO `sys_role_menu` VALUES (17, 185);
INSERT INTO `sys_role_menu` VALUES (16, 186);
INSERT INTO `sys_role_menu` VALUES (17, 186);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码盐',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别（1:男,2:女）',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKb3pkx0wbo6o8i8lj0gxr37v1n`(`dept_id`) USING BTREE,
  CONSTRAINT `FKb3pkx0wbo6o8i8lj0gxr37v1n` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '超级管理员', '5a627cd1b4eb696ba7f19634e4476082a33da9263e224d6c40ff67b77fd8bb39', 'PeZXkB', 2, '/upload/picture/20190710/6151fb27762c424b9321d9ea19715cd1.jpg', '1', '10086@163.com', '10086', '', '2019-07-05 00:00:00', '2019-07-10 05:05:08', 1);
INSERT INTO `sys_user` VALUES (2, 'linln', '小懒虫', 'f061ad891b99463f49e79b80fda22a2c2d320a248d485c6d8f188fb79be72a9b', '5f444i', 2, NULL, '2', '1008612@qq.com', '1008612', '', '2019-07-05 00:00:00', '2019-04-28 00:07:47', 3);
INSERT INTO `sys_user` VALUES (7, 'dxf', '段祥府', '40cd5d937d633e883c7065c1d107fab924833f5b2a1a7191a64df6fa10d273a0', 'rohUh7', 6, NULL, '1', '', '', '', '2019-07-05 00:00:00', '2019-07-13 04:57:58', 1);
INSERT INTO `sys_user` VALUES (31, 'yyb', '刘晓东', '561afa96d10799415a06b8910f03fb4cba714ca7e01024b5cc6e06293252b3eb', '3izuS3', 6, NULL, '1', '', '18357171730', '', '2019-07-05 00:00:00', '2019-07-13 04:57:19', 1);
INSERT INTO `sys_user` VALUES (36, 'loulg', '漏林刚', '0d305a020cadd5bac55ddd0eb9649484db5144037cc25c680fe61078621de098', '56B12t', 6, NULL, NULL, NULL, '18867107206', NULL, '2019-07-05 00:00:00', '2019-07-13 04:57:27', 1);
INSERT INTO `sys_user` VALUES (49, 'liull', '刘玲玲', 'bb3fcb1a3e5bc9f9c785a7a8870a06f595a8751c522bf3ae3d12d58566c9d535', 'EO2vW5', 6, NULL, NULL, NULL, '15990178609', NULL, '2019-07-05 00:00:00', '2019-07-13 04:57:34', 1);
INSERT INTO `sys_user` VALUES (50, 'zhaoyq', '赵亚琴', '79922238b08d2f86d29e75babf31a7519078e8826cb087758212cd27808aade0', 'Hqyi5Q', 6, NULL, NULL, NULL, '18805810597', NULL, '2019-07-05 00:00:00', '2019-07-13 04:56:52', 1);
INSERT INTO `sys_user` VALUES (51, 'xzf', '谢泽锋', 'd5077d9c7da7a1921693f54bbe4b0cc6efab2f43f2544041d8f51aac0c0973a5', 'YU3hTX', 6, NULL, NULL, NULL, '15558036612', NULL, '2019-07-05 00:00:00', '2019-07-13 04:57:52', 1);
INSERT INTO `sys_user` VALUES (52, 'shenyj', '123456', 'b8de53a8d283884fb66ef3e0b4a1b3fae7472aeb06ef51f5c783b361f75a89cd', '7VbiSt', 6, NULL, NULL, NULL, '18867107255', NULL, '2019-07-05 00:00:00', '2019-07-13 04:58:12', 1);
INSERT INTO `sys_user` VALUES (63, 'gld', '顾卢丹', '01a6488752dbec85eb420cd6e18abf93da65497f820026f1b6da921656c638c3', 'jXYP1i', 6, NULL, NULL, NULL, '1886882146', NULL, '2019-07-05 00:00:00', '2019-07-13 04:58:19', 1);
INSERT INTO `sys_user` VALUES (69, 'shixf', '史小锋', '08efe749861f599921c4a07fb694ec1f2b6c3f4dab2e162a79b06a792fa0e79f', 'gCU0T9', 6, NULL, NULL, NULL, '1800026658', NULL, '2019-07-05 00:00:00', '2019-07-13 04:58:24', 1);
INSERT INTO `sys_user` VALUES (71, 'qaw', '钱爱文', '4370b437a1c5309bc3a2feb9170d708626dfd0aa9c88df9451451fa8e9ca3f77', 'MiZ040', 6, NULL, NULL, NULL, '18805810676', NULL, '2019-07-05 00:00:00', '2019-07-07 20:07:04', 1);
INSERT INTO `sys_user` VALUES (72, 'gdl', '高道亮', '5d6fc25ec2e0c361c8a7ea618955225832e4c8f8f1afd4717569203a9e663eea', 'ESoMVq', 6, NULL, NULL, NULL, '1886710769', NULL, '2019-07-05 00:00:00', '2019-07-07 20:08:09', 1);
INSERT INTO `sys_user` VALUES (73, 'wj', '王洁', '904163a8114fcea8799153965cd45adf6c274b7c8222a57f7a0624ce7cbf31c5', 'z7hvZ6', 6, NULL, NULL, NULL, '18805810585', NULL, '2019-07-05 00:00:00', '2019-07-07 20:07:11', 1);
INSERT INTO `sys_user` VALUES (74, 'xiafeng', '夏峰', '2f0e861e18aad5056062039292071021098c01381240c5b4372a617c795ef6de', '2vRGab', 6, NULL, NULL, NULL, '15988462044', NULL, '2019-07-05 00:00:00', '2019-07-07 20:07:20', 1);
INSERT INTO `sys_user` VALUES (76, 'hzm', '黄智敏', 'e496276d71ec4ae2fb2c51fb0c311c7a47988f6a37a54cb652e86d06c9969150', 'dBMNtJ', 6, NULL, NULL, NULL, '15356623683', NULL, '2019-07-05 00:00:00', '2019-07-07 20:07:30', 1);
INSERT INTO `sys_user` VALUES (77, 'yao', '姚冠东', 'b9df9cf0e087d4ea65b7adcbf42ca6af74a8340b841a5e173b3e1a920551b058', 'DFYeTl', 6, NULL, NULL, NULL, '13567192579', NULL, '2019-07-05 00:00:00', '2019-07-07 20:07:37', 1);
INSERT INTO `sys_user` VALUES (88, 'shunhy', '孙海亚', 'abd8b4dac55eeedb0484864b203e344236e0562ebee8da7ae25ab1a739af619a', '66y6rc', 6, NULL, NULL, NULL, '15988434096', NULL, '2019-07-05 00:00:00', '2019-07-13 04:59:09', 1);
INSERT INTO `sys_user` VALUES (91, 'xuen', '薛宁', 'bca0cb7900cfcba76c2f46cf7fc9143c142bc28fc5f89a93864845061c9a50a5', 'MuY64Y', 6, NULL, NULL, NULL, '13819497655', NULL, '2019-07-05 00:00:00', '2019-07-05 02:11:02', 1);
INSERT INTO `sys_user` VALUES (92, 'longqq', '龙倩倩', 'de43f538390bdde1c4bcfc9e12970f2140e0ae96ea7d40a585d1e12d3a9dd780', 'mbs6rA', 6, NULL, NULL, NULL, '18867107210', NULL, '2019-07-05 00:00:00', '2019-07-05 02:11:02', 1);
INSERT INTO `sys_user` VALUES (93, 'Lings', '林果升', '5b341d34e770c065a01e965585d44694dca44b62be9c4ed1bd3a5c63f3ad425a', 'HDXUaN', 6, NULL, NULL, NULL, '13777570621', NULL, '2019-07-05 00:00:00', '2019-07-05 02:11:02', 1);
INSERT INTO `sys_user` VALUES (94, 'moyc', '莫业超', '403fbfe694c8e51b72e6d6d1b40da479017314d1efa92dda001085a65394614d', 'i6olFW', 6, NULL, NULL, NULL, '164754645', NULL, '2019-07-05 00:00:00', '2019-07-05 02:11:02', 1);
INSERT INTO `sys_user` VALUES (100, 'shijw', '施佳维', '4e326c088df7406511bb0b504a633118d40d12d31dbde9e5dda40017c7be38e8', '63h97t', 6, NULL, NULL, NULL, '13634141491', NULL, '2019-07-05 00:00:00', '2019-07-05 02:11:02', 1);
INSERT INTO `sys_user` VALUES (101, 'wangyq', '汪雨晴', 'c8638ca2b632aeddd326e2e6af9889038b384615da4c7375e0ae676f22105ee8', 'moMBY6', 6, NULL, NULL, NULL, '18867107279', NULL, '2019-07-05 00:00:00', '2019-07-05 02:11:02', 1);
INSERT INTO `sys_user` VALUES (102, 'yangb', '杨彬', '94cab851a81dd5a2c6817f09b3e6030744ab2d2d1a0d86142b5dd7c40244d0d4', 'CVI8Ex', 6, NULL, NULL, NULL, '18146711060', NULL, '2019-07-05 00:00:00', '2019-07-05 02:11:02', 1);
INSERT INTO `sys_user` VALUES (110, 'wangyj', '王云杰', 'f61870683c2b1d688ff0e591428f3ce2217989d2b9d734b6c1f985a1d439e3a5', '7uT4d5', 6, NULL, NULL, NULL, '17600570941', NULL, '2019-07-05 00:00:00', '2019-07-05 02:11:02', 1);
INSERT INTO `sys_user` VALUES (115, 'xuyh', '徐艳红', 'a9e889ba13b51c55e45310168e9619d4e0eda90763b14f548a4bfb1216e0cc8b', 'REcVIY', 6, NULL, NULL, NULL, '13800000000', NULL, '2019-07-05 00:00:00', '2019-07-05 02:11:02', 1);
INSERT INTO `sys_user` VALUES (117, 'jxy', '姬翔宇', '18539d4c2409887e3b6669ba0cf22aa06f39150683b5354b6d0b3a04b9a41215', '3OchRd', 6, NULL, NULL, NULL, '123456789', NULL, '2019-07-05 00:00:00', '2019-07-05 02:11:02', 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FKhh52n8vd4ny9ff4x9fb8v65qx`(`role_id`) USING BTREE,
  CONSTRAINT `FKb40xxfch70f5qnyfw8yme1n1s` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhh52n8vd4ny9ff4x9fb8v65qx` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (7, 16);
INSERT INTO `sys_user_role` VALUES (36, 16);
INSERT INTO `sys_user_role` VALUES (49, 16);
INSERT INTO `sys_user_role` VALUES (50, 16);
INSERT INTO `sys_user_role` VALUES (51, 16);
INSERT INTO `sys_user_role` VALUES (52, 16);
INSERT INTO `sys_user_role` VALUES (63, 16);
INSERT INTO `sys_user_role` VALUES (69, 16);
INSERT INTO `sys_user_role` VALUES (71, 16);
INSERT INTO `sys_user_role` VALUES (72, 16);
INSERT INTO `sys_user_role` VALUES (73, 16);
INSERT INTO `sys_user_role` VALUES (74, 16);
INSERT INTO `sys_user_role` VALUES (76, 16);
INSERT INTO `sys_user_role` VALUES (77, 16);
INSERT INTO `sys_user_role` VALUES (88, 16);
INSERT INTO `sys_user_role` VALUES (31, 17);
INSERT INTO `sys_user_role` VALUES (91, 17);
INSERT INTO `sys_user_role` VALUES (92, 17);
INSERT INTO `sys_user_role` VALUES (93, 17);
INSERT INTO `sys_user_role` VALUES (94, 17);
INSERT INTO `sys_user_role` VALUES (100, 17);
INSERT INTO `sys_user_role` VALUES (101, 17);
INSERT INTO `sys_user_role` VALUES (102, 17);
INSERT INTO `sys_user_role` VALUES (110, 17);
INSERT INTO `sys_user_role` VALUES (115, 17);
INSERT INTO `sys_user_role` VALUES (117, 17);

SET FOREIGN_KEY_CHECKS = 1;
