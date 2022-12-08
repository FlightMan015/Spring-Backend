﻿# Host: 10.10.12.17  (Version 5.7.34-log)
# Date: 2021-09-01 16:05:23
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "tb_object"
#

DROP TABLE IF EXISTS `tb_object`;
CREATE TABLE `tb_object` (
  `ob_id` int(11) NOT NULL AUTO_INCREMENT,
  `ob_name` varchar(255) DEFAULT NULL,
  `ob_owner` int(11) DEFAULT NULL COMMENT '负责人',
  `ob_creator` int(11) DEFAULT NULL,
  `ob_cycle` varchar(50) DEFAULT NULL COMMENT '周期  年度: 2021 第四季度:2021/4  3月: 2021-3',
  `ob_start_date` date DEFAULT NULL,
  `ob_end_date` date DEFAULT NULL,
  `ob_company_id` int(11) DEFAULT NULL COMMENT 'of tb_project.id',
  `ob_parent_object` int(11) DEFAULT NULL COMMENT '对齐目标',
  `ob_status` tinyint(1) DEFAULT '0' COMMENT '进行中(0),已结束(1),',
  `ob_progress` tinyint(3) DEFAULT '0' COMMENT '完成度',
  `ob_auto_progress` tinyint(1) DEFAULT '0' COMMENT '设置目标完成度自动更新 1:根据关键成果KR完成度自动更新, 2: 根据子目标完成度自动更新',
  `ob_visible_type` tinyint(3) DEFAULT NULL COMMENT '0:全公司, 1:仅相关成员 2:仅直接下属 3:指定范围',
  `ob_visible_range` varchar(200) DEFAULT NULL COMMENT '可见范围',
  `ob_participant` varchar(1000) DEFAULT '' COMMENT '参与人',
  `ob_attention` varchar(1000) DEFAULT '' COMMENT '关注人',
  `ob_score` float(2,1) DEFAULT NULL COMMENT 'KR评分 0,1',
  `ob_mstatus` tinyint(1) DEFAULT '0' COMMENT '0: created, 1: deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ob_id`)
) ENGINE=InnoDB AUTO_INCREMENT=967385506 DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_object"
#

INSERT INTO `tb_object` VALUES (241,'公司 OKR',NULL,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 11:23:36','2021-08-30 15:04:43'),(242,'产品研发',NULL,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 11:23:36','2021-09-01 15:46:41'),(243,'销售',NULL,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 11:23:36','2021-09-01 15:46:51'),(244,'运维',NULL,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 11:23:36','2021-09-01 15:47:07'),(245,'架构',NULL,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 11:23:37','2021-09-01 15:47:16'),(246,'数据运莒',NULL,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 11:23:37','2021-09-01 15:47:23'),(247,'商务采购',NULL,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 11:23:37','2021-09-01 15:47:37'),(248,'行政人事',NULL,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 11:23:37','2021-09-01 15:47:55'),(249,'财务',NULL,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 11:23:37','2021-09-01 15:48:07'),(250,'证券法务修改分类',NULL,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 11:23:37','2021-09-01 15:48:15'),(269,'优化成本结构，提升公司盈利',NULL,NULL,NULL,NULL,NULL,0,241,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 15:31:53','2021-08-30 15:04:43'),(270,'打造中国 B 端软件最牛的前端组件体系',NULL,NULL,NULL,NULL,NULL,0,242,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 15:31:54','2021-08-30 15:04:43'),(271,'打造一款日赚斗金的电商平台',NULL,NULL,NULL,NULL,NULL,0,243,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 15:31:54','2021-08-30 15:04:43'),(272,'大幅度提升学校的知名度，提升学校社会地位',NULL,NULL,NULL,NULL,NULL,0,244,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 15:31:54','2021-08-30 15:04:43'),(273,'打造一款企业 \\\"必须拥有 \\\"的产品，以使客户满意并扩大我们的行业用户群体',NULL,NULL,NULL,NULL,NULL,0,245,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 15:31:54','2021-08-30 15:04:43'),(274,'制定世界一流的员工入职培训计划，为了员工成功',NULL,NULL,NULL,NULL,NULL,0,246,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 15:31:54','2021-08-30 15:04:43'),(275,'增加经常性收入，以提高盈利能力',NULL,NULL,NULL,NULL,NULL,0,247,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 15:31:54','2021-08-30 15:04:43'),(276,'创立 To B 软件销售方法论',NULL,NULL,NULL,NULL,NULL,0,249,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 15:31:55','2021-08-30 15:04:43'),(277,'实现公司立足重庆，提升品牌影响力',NULL,NULL,NULL,NULL,NULL,0,241,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:02:35','2021-08-30 15:04:43'),(278,'成功进入短视频行业，为了扩大公司业务领域',NULL,NULL,NULL,NULL,NULL,0,241,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:02:35','2021-08-30 15:04:43'),(279,'建立赋能的积极企业文化',NULL,NULL,NULL,NULL,NULL,0,241,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:02:36','2021-08-30 15:04:43'),(280,'建立优秀的企业文化',NULL,NULL,NULL,NULL,NULL,0,241,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:02:36','2021-08-30 15:04:43'),(281,'上市一款受欢迎的新型空调，为了占领更大的空调市场',NULL,NULL,NULL,NULL,NULL,0,241,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:02:36','2021-08-30 15:04:43'),(282,'成为“必须有”的产品',NULL,NULL,NULL,NULL,NULL,0,241,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:02:36','2021-08-30 15:04:43'),(283,'我们要为xx产品举办一场成功的发布会',NULL,NULL,NULL,NULL,NULL,0,241,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:02:36','2021-08-30 15:04:43'),(284,'保证系统稳定性，提升客户满意度',NULL,NULL,NULL,NULL,NULL,0,242,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:03:53','2021-08-30 15:04:43'),(285,'打造个性化公共，让客户耳目一新',NULL,NULL,NULL,NULL,NULL,0,242,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:03:54','2021-08-30 15:04:43'),(286,'提高个人的 Go 语言的编程技能',NULL,NULL,NULL,NULL,NULL,0,242,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:03:54','2021-08-30 15:04:43'),(287,'持续构建个人的数据方面的技术能力',NULL,NULL,NULL,NULL,NULL,0,242,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:03:54','2021-08-30 15:04:43'),(288,'改进我们的IT和基础设施，提升效率',NULL,NULL,NULL,NULL,NULL,0,242,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:03:54','2021-08-30 15:04:43'),(289,'完成企业自动化测试转型，大幅度提升产品测试质量',NULL,NULL,NULL,NULL,NULL,0,242,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:03:55','2021-08-30 15:04:43'),(290,'产出一套完美的网页代码，让设计师们无可挑剔',NULL,NULL,NULL,NULL,NULL,0,242,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:03:55','2021-08-30 15:04:43'),(291,'打造Tita复杂组件，提高工作效率',NULL,NULL,NULL,NULL,NULL,0,242,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:03:55','2021-08-30 15:04:43'),(292,'制作一个人工智能应用程序或预测模型，为公司创造可识别的新收入',NULL,NULL,NULL,NULL,NULL,0,242,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:03:55','2021-08-30 15:04:43'),(293,'实现行业TOP10，提高市场占有率',NULL,NULL,NULL,NULL,NULL,0,243,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:04:38','2021-08-30 15:04:43'),(294,'增加品牌在各大电商平台的知名度，提高销售额',NULL,NULL,NULL,NULL,NULL,0,243,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:04:39','2021-08-30 15:04:43'),(295,'确保公司达到收入目标',NULL,NULL,NULL,NULL,NULL,0,243,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:04:39','2021-08-30 15:04:43'),(296,'大幅度提高发布新产品信息，为了提高公司知名度',NULL,NULL,NULL,NULL,NULL,0,243,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:04:39','2021-08-30 15:04:43'),(297,'了解并记录我们的客户使用路径，提高产品用户体验',NULL,NULL,NULL,NULL,NULL,0,243,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:04:39','2021-08-30 15:04:43'),(298,'实现创纪录的营销指标，来提高品牌知名度',NULL,NULL,NULL,NULL,NULL,0,243,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:04:39','2021-08-30 15:04:43'),(299,'实施电子邮件更新，大幅度提高订阅者量',NULL,NULL,NULL,NULL,NULL,0,243,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:04:40','2021-08-30 15:04:43'),(300,'提升品牌知名度，以确保转化率',NULL,NULL,NULL,NULL,NULL,0,243,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:04:40','2021-08-30 15:04:43'),(301,'加强领导者品牌，以增加每月的网站访问者',NULL,NULL,NULL,NULL,NULL,0,243,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:04:40','2021-08-30 15:04:43'),(302,'提高服务竞争力，入选北京区域教育培训机构专业排行榜的Top3',NULL,NULL,NULL,NULL,NULL,0,244,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:05:53','2021-08-30 15:04:43'),(303,'打造一流的教育口碑，提升市场占有率',NULL,NULL,NULL,NULL,NULL,0,244,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:05:53','2021-08-30 15:04:43'),(304,'加大市场宣传力度，提高招生率',NULL,NULL,NULL,NULL,NULL,0,244,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:05:54','2021-08-30 15:04:43'),(305,'推出一个非常棒的新课程',NULL,NULL,NULL,NULL,NULL,0,244,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:05:54','2021-08-30 15:04:43'),(306,'成功发布新课程',NULL,NULL,NULL,NULL,NULL,0,244,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:05:54','2021-08-30 15:04:43'),(307,'提升每位学生的学习投入度',NULL,NULL,NULL,NULL,NULL,0,244,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:05:54','2021-08-30 15:04:43'),(308,'打造精良的内部培训体系，让员工成功',NULL,NULL,NULL,NULL,NULL,0,244,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:05:54','2021-08-30 15:04:43'),(309,'打造一支高品质的培训队伍，让员工成功',NULL,NULL,NULL,NULL,NULL,0,244,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:05:55','2021-08-30 15:04:43'),(310,'打造一种新的在线培训模式，高效提升培训效率',NULL,NULL,NULL,NULL,NULL,0,244,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:05:55','2021-08-30 15:04:43'),(311,'打造一款企业 \\\"必须拥有 \\\"的产品，以使客户满意并扩大我们的行业用户群体',NULL,NULL,NULL,NULL,NULL,0,245,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:11:49','2021-08-30 15:04:43'),(312,'产品高质量升级，满足客户核心需求',NULL,NULL,NULL,NULL,NULL,0,245,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:11:49','2021-08-30 15:04:43'),(313,'做一款在行业内有足够影响力的产品',NULL,NULL,NULL,NULL,NULL,0,245,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:11:50','2021-08-30 15:04:43'),(314,'提高个人的 3D绘制技能，使产品视觉更加大气',NULL,NULL,NULL,NULL,NULL,0,245,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:11:50','2021-08-30 15:04:43'),(315,'大幅度提升核心产品的结构简单化，使用户更容易使用',NULL,NULL,NULL,NULL,NULL,0,245,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:11:50','2021-08-30 15:04:43'),(316,'建立一套完整的新员工产品设计能力体系，使公司界面设计统一',NULL,NULL,NULL,NULL,NULL,0,245,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:11:50','2021-08-30 15:04:43'),(317,'进一步提升产品设计质量，大力保障客户的产品体验满意度',NULL,NULL,NULL,NULL,NULL,0,245,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:11:51','2021-08-30 15:04:43'),(318,'提高品牌知名度',NULL,NULL,NULL,NULL,NULL,0,245,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:11:51','2021-08-30 15:04:43'),(319,'建立完整的客户目标画像指南',NULL,NULL,NULL,NULL,NULL,0,245,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:11:51','2021-08-30 15:04:43'),(320,'招募销售人才，提前为2020年扩充军队，备战Q1销售黄金期——招募',NULL,NULL,NULL,NULL,NULL,0,246,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:07','2021-08-30 15:04:43'),(321,'全速培养销售新人，为年底业绩冲刺提供战斗力',NULL,NULL,NULL,NULL,NULL,0,246,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:07','2021-08-30 15:04:43'),(322,'增加员工的职业发展机会，帮助企业培养更优秀的人才',NULL,NULL,NULL,NULL,NULL,0,246,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:08','2021-08-30 15:04:43'),(323,'提升访客的满意度，给访客留下好印象',NULL,NULL,NULL,NULL,NULL,0,246,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:08','2021-08-30 15:04:43'),(324,'变革绩效管理，提升管理能力',NULL,NULL,NULL,NULL,NULL,0,246,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:08','2021-08-30 15:04:43'),(325,'有效地扩展我们的公司运营，以便更好地为我们的客户和员工服务',NULL,NULL,NULL,NULL,NULL,0,246,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:08','2021-08-30 15:04:43'),(326,'提供一流的收入运营，来支持 GTM 团队',NULL,NULL,NULL,NULL,NULL,0,246,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:08','2021-08-30 15:04:43'),(327,'提高薪酬竞争力，吸引世界一流人才',NULL,NULL,NULL,NULL,NULL,0,246,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:09','2021-08-30 15:04:43'),(328,'转变绩效考核方式，提高员工正向积极工作能力',NULL,NULL,NULL,NULL,NULL,0,246,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:09','2021-08-30 15:04:43'),(329,'实现创纪录的收入，提高盈利能力',NULL,NULL,NULL,NULL,NULL,0,247,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:27','2021-08-30 15:04:43'),(330,'保障合作企业都是可信的，避免发生财务问题',NULL,NULL,NULL,NULL,NULL,0,247,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:27','2021-08-30 15:04:43'),(331,'为了公司融资成功做最充分的准备',NULL,NULL,NULL,NULL,NULL,0,247,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:28','2021-08-30 15:04:43'),(332,'改进公司的财务报告流程',NULL,NULL,NULL,NULL,NULL,0,247,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:28','2021-08-30 15:04:43'),(333,'成功通过外部审计，加快公司财务统计速度',NULL,NULL,NULL,NULL,NULL,0,247,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:28','2021-08-30 15:04:43'),(334,'以商业信用形式为前提，有效的营运资本管理',NULL,NULL,NULL,NULL,NULL,0,247,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:28','2021-08-30 15:04:43'),(335,'掌握利润分配的项目与顺序，将公司股利分配管理合理化',NULL,NULL,NULL,NULL,NULL,0,247,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:28','2021-08-30 15:04:43'),(336,'打造并领导世界一流的金融团队',NULL,NULL,NULL,NULL,NULL,0,247,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:28','2021-08-30 15:04:43'),(337,'提高下一轮投资金额，实现高速增长并推动业务发',NULL,NULL,NULL,NULL,NULL,0,247,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:29','2021-08-30 15:04:43'),(338,'用最小成本达成保质保量的材料采购',NULL,NULL,NULL,NULL,NULL,0,248,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:48','2021-08-30 15:04:43'),(339,'取得企业AAA级信用等级证书，确保符合国家项目招标资格',NULL,NULL,NULL,NULL,NULL,0,248,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:48','2021-08-30 15:04:43'),(340,'做业界口碑最好的装修风格，以提高公司收入',NULL,NULL,NULL,NULL,NULL,0,248,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:48','2021-08-30 15:04:43'),(341,'高品质完成三号楼交付',NULL,NULL,NULL,NULL,NULL,0,248,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:48','2021-08-30 15:04:43'),(342,'实现房屋一次性验收通过，提高客户满意度',NULL,NULL,NULL,NULL,NULL,0,248,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:49','2021-08-30 15:04:43'),(343,'确保书吧建设项目一次性通过公司总部验收',NULL,NULL,NULL,NULL,NULL,0,248,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:49','2021-08-30 15:04:43'),(344,'提高建筑工程质量，年底年终奖翻倍',NULL,NULL,NULL,NULL,NULL,0,248,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:50','2021-08-30 15:04:43'),(345,'拿下新百汇华园地皮招标，奖励全员出国游',NULL,NULL,NULL,NULL,NULL,0,248,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:50','2021-08-30 15:04:43'),(346,'完成某地区项目ABC三楼封顶，年底泰国游',NULL,NULL,NULL,NULL,NULL,0,248,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:50','2021-08-30 15:04:43'),(347,'提前交付别墅装修项目并获得甲方认可',NULL,NULL,NULL,NULL,NULL,0,248,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:12:51','2021-08-30 15:04:43'),(348,'大幅度增加获客数据，为销售额做充足后备军',NULL,NULL,NULL,NULL,NULL,0,249,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:06','2021-08-30 15:04:43'),(349,'增强员工的客户意识，换位思考提升客户成功',NULL,NULL,NULL,NULL,NULL,0,249,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:06','2021-08-30 15:04:43'),(350,'全方位提高合作客户满意度',NULL,NULL,NULL,NULL,NULL,0,249,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:06','2021-08-30 15:04:43'),(351,'大幅度增加用户群，确保增大公司营销',NULL,NULL,NULL,NULL,NULL,0,249,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:06','2021-08-30 15:04:43'),(352,'建立战略合作伙伴关系和渠道，扩展公司业务',NULL,NULL,NULL,NULL,NULL,0,249,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:06','2021-08-30 15:04:43'),(353,'提高用户满意度，为了提高产品好评率',NULL,NULL,NULL,NULL,NULL,0,249,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:06','2021-08-30 15:04:43'),(354,'打造本公司最优秀的销售团队，为了提高本季度销售业绩',NULL,NULL,NULL,NULL,NULL,0,249,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:07','2021-08-30 15:04:43'),(355,'提高用户服务体验，降低客户投诉',NULL,NULL,NULL,NULL,NULL,0,249,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:07','2021-08-30 15:04:43'),(356,'简化销售分析和报告，以提高数据可见性',NULL,NULL,NULL,NULL,NULL,0,249,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:07','2021-08-30 15:04:43'),(357,'掌握基础油画技能，为了让生活更丰富',NULL,NULL,NULL,NULL,NULL,0,250,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:25','2021-08-30 15:04:43'),(358,'举办一次成功的同学聚会',NULL,NULL,NULL,NULL,NULL,0,250,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:25','2021-08-30 15:04:43'),(359,'又有一次成功的七天旅游',NULL,NULL,NULL,NULL,NULL,0,250,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:25','2021-08-30 15:04:43'),(360,'拥有好身材，使心情更加愉快',NULL,NULL,NULL,NULL,NULL,0,250,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:25','2021-08-30 15:04:43'),(361,'做一个干净清爽的男孩子',NULL,NULL,NULL,NULL,NULL,0,250,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:26','2021-08-30 15:04:43'),(362,'提高生活质量',NULL,NULL,NULL,NULL,NULL,0,250,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:26','2021-08-30 15:04:43'),(363,'改变自身体重到140斤，远离肥胖带来的危害',NULL,NULL,NULL,NULL,NULL,0,250,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:27','2021-08-30 15:04:43'),(364,'提高环保意识，减缓环境变暖的趋势',NULL,NULL,NULL,NULL,NULL,0,250,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:27','2021-08-30 15:04:43'),(365,'写一遍让读者喜欢的白话文小说',NULL,NULL,NULL,NULL,NULL,0,250,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:27','2021-08-30 15:04:43'),(366,'出版一本书籍',NULL,NULL,NULL,NULL,NULL,0,250,1,0,NULL,NULL,NULL,'','',NULL,0,'2021-07-12 16:13:27','2021-08-30 15:04:43'),(432,'ning qe de Object (test for cm)',10780,1,'2021/3','2021-07-01','2021-09-20',1,NULL,0,40,0,3,'u10837,','373,445,10802,10928,','10882,445,10802,',0.1,0,'2021-08-02 15:48:39','2021-08-30 15:04:43'),(434,'Test Object for user name',45,45,'2021/3','2021-07-01','2021-10-30',1,NULL,1,12,0,3,'u10949,u10947,u10928,d972,d973,d1047,','55,','60,',NULL,0,'2021-08-02 19:59:57','2021-08-30 15:04:43'),(435,'Test obj for user name issue',45,45,'2021/3','2021-07-11','2021-08-30',1,NULL,1,43,0,2,'仅直接下属','50,1,','55,1,',1.0,0,'2021-08-02 22:22:36','2021-08-30 15:04:43'),(438,'first quarter object',515,515,'2021/3','2021-01-01','2021-03-31',1,NULL,1,0,0,1,'仅相关成员','','1,',NULL,1,'2021-08-04 09:23:29','2021-08-30 15:04:43'),(441,'First Test Object',45,45,'2021/3','2021-01-01','2021-03-31',1,NULL,1,25,0,3,'u95,u605,d1045,','10837,10882,10854,10985,','10965,10967,11339,',0.0,0,'2021-08-04 09:29:51','2021-08-30 15:04:43'),(442,'First OKR Test',45,45,'2021/1','2021-01-01','2021-03-31',1,NULL,1,10,0,0,'全公司','','',0.6,0,'2021-08-04 10:53:10','2021-08-30 15:04:43'),(10159647,'Test for Object~~~~~~~~~',45,45,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-11 09:08:50','2021-08-30 15:04:43'),(10864192,'test arrangement okr',1,1,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-30 19:50:45','2021-08-30 19:50:45'),(47894406,'qweqwe',1,1,'2021/3','2021-07-22','2021-08-11',1,NULL,0,26,0,0,'全公司','','',NULL,0,'2021-08-26 08:56:47','2021-08-31 01:23:03'),(59303178,'打造一款日赚斗金的电商平台',1,1,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-30 17:23:20','2021-08-30 17:23:20'),(64875178,'Final Test Object',11635,11635,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,3,'u373,u445,d1031,','','',NULL,0,'2021-08-12 22:19:28','2021-08-30 15:04:43'),(88185092,'OKR first object',60,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,23,0,3,'u373,u445,d1031,','','',1.0,0,'2021-08-05 16:54:35','2021-08-30 15:04:43'),(88387773,'all visible target',515,515,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,1,'2021-08-11 08:26:27','2021-08-30 15:04:43'),(128142457,'OKR Date Test',1,1,'2021/2','2021-04-01','2021-06-30',1,NULL,1,23,0,0,'全公司','','',1.0,0,'2021-08-06 00:37:48','2021-08-30 15:04:43'),(140263674,'OKR Eighth Object',11392,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,NULL,'','10837,10852,10882,11686,515,10971,','10837,10879,',NULL,0,'2021-08-06 09:35:40','2021-08-30 15:04:43'),(180769182,'打造一款企业 \\\"必须拥有 \\\"的产品，以使客户满意并扩大我们的行业用户群体',11635,11635,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-12 00:54:35','2021-08-30 15:04:43'),(205055211,'Second OBJasdf',1,1,'2021/1','2021-06-17','2021-07-29',1,128142457,0,17,2,3,'u1,d1031,','','',0.9,0,'2021-08-17 17:15:51','2021-08-30 15:04:43'),(266502796,'OKR Seventh Object',55,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,NULL,'','','',0.1,0,'2021-08-06 09:35:33','2021-08-30 15:04:43'),(266721229,'Test OKR For MOnth',11392,11392,'2021-5','2021-05-01','2021-05-31',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-08 23:03:53','2021-08-30 15:04:43'),(269958359,'打造中国 B 端软件最牛的前端组件体系',1,1,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-30 15:58:06','2021-08-30 15:58:06'),(272320634,'OKR Eleventh Object',11392,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,60,0,NULL,'','','',NULL,0,'2021-08-06 09:36:04','2021-08-30 15:04:43'),(276401067,'Test dfdf...',11635,11635,'2021/3','2021-07-21','2021-09-30',1,NULL,0,21,0,NULL,'','','',0.0,0,'2021-08-05 11:02:40','2021-08-30 15:04:43'),(285450400,'object for all',515,515,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','10837,10882,1,','10882,1,10837,',NULL,0,'2021-08-11 09:10:37','2021-08-30 15:04:43'),(288427475,'OKR Thirteenth Object',11392,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,0,'全公司','','',0.8,0,'2021-08-06 12:15:09','2021-08-30 15:04:43'),(297596047,'asdfasdf',11635,11635,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-12 00:39:40','2021-08-30 15:04:43'),(301061926,'test cycle month!!!!',1,1,'2021-5','2021-05-01','2021-05-31',1,128142457,0,0,0,0,'全公司','','',NULL,0,'2021-08-11 17:25:44','2021-08-30 15:04:43'),(307215052,'test target',515,515,'2021-1','2021-01-01','2021-01-31',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-08 23:03:56','2021-08-30 15:04:43'),(326435407,'test arrangement',1,1,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-30 17:22:14','2021-08-30 17:22:14'),(332209223,'OKR Fifth Object',55,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,NULL,'','','',0.9,0,'2021-08-06 09:35:16','2021-08-30 15:04:43'),(341126944,'Third OBJ',1,1,'2022/2','2022-04-01','2022-06-30',1,828250045,0,30,0,0,'全公司','','',NULL,0,'2021-08-17 17:17:38','2021-08-30 15:04:43'),(387615993,'asdfasdfasdfsafasdfasdf',11635,11635,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-12 00:39:28','2021-08-30 15:04:43'),(416587502,'Object for all',11392,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-11 08:39:46','2021-08-30 15:04:43'),(429383197,'OKR Second Object',11392,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,63,0,3,'u373,u445,d1031,','','',0.2,0,'2021-08-05 21:38:01','2021-08-30 15:04:43'),(437902355,'TEST auto progress updating ',1,1,'2021/3','2021-07-01','2021-09-30',1,432,1,60,0,3,'u1,u373,d1031,','10837,10882,','',0.4,0,'2021-08-09 15:38:01','2021-08-30 15:04:43'),(454870553,'asdfasdf',11635,11635,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,3,'u10837,u10882,','','',NULL,0,'2021-08-12 22:15:09','2021-08-30 15:04:43'),(481350680,'打造中国 B 端软件最牛的前端组件体系',1,1,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-30 10:03:49','2021-08-30 15:04:43'),(488076605,'OKR Forth Object',55,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,NULL,'','','',0.2,0,'2021-08-06 09:35:08','2021-08-30 15:04:43'),(495421975,'OKR Third Object',11392,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,NULL,'','10837,10882,11030,11349,','',0.6,0,'2021-08-06 09:35:00','2021-08-30 15:04:43'),(511965905,'test for guan yi and beijing gong si',45,1,'2021/3','2021-07-01','2021-09-30',1,205055211,0,0,2,0,'全公司','','',0.9,0,'2021-08-11 09:18:16','2021-08-30 15:04:43'),(517332405,'OKR Tenth Object',60,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,NULL,'','','',0.1,0,'2021-08-06 09:35:56','2021-08-30 15:04:43'),(527217157,'优化成本结构，提升公司盈利',515,515,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,0,'全公司','','',NULL,1,'2021-08-07 12:28:58','2021-08-30 15:04:43'),(530751395,'Object for visible show test',11392,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,3,'u373,u445,d1031,','','',NULL,0,'2021-08-11 09:50:44','2021-08-30 15:04:43'),(541842895,'优化成本结构，提升公司盈利',1,1,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-30 17:21:39','2021-08-30 17:21:39'),(559121904,'test',1,1,'2021/2','2021-02-01','2021-03-01',1,205055211,0,0,0,0,',1.2.4','','',NULL,0,'2021-08-09 08:23:07','2021-08-30 15:04:43'),(560517992,'大幅度提升学校的知名度，提升学校社会地位',1,1,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-30 17:22:41','2021-08-30 17:22:41'),(607219562,'xxxxxxxxxxxx',515,515,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,3,'全公司','','',NULL,0,'2021-08-11 09:15:37','2021-08-30 15:04:43'),(619544246,'OKR Object first ',1,1,'2021/3','2021-07-21','2021-08-19',1,NULL,0,100,0,0,'全公司','','',NULL,0,'2021-08-24 21:14:32','2021-08-30 15:04:43'),(656437413,'Final Object',45,1,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-20 22:17:16','2021-08-30 15:04:43'),(678185664,'2nd qurtar target',515,515,'2021/2','2021-04-01','2021-06-30',1,NULL,1,11,0,0,'全公司','','',0.9,0,'2021-08-05 17:40:27','2021-08-30 15:04:43'),(693749297,'Test Object Creation',65,11635,'2021/3','2021-07-01','2021-09-30',1,NULL,0,35,0,3,'u1,u10837,u10882,','95,1030,10009,10852,11492,11514,10879,11688,','',0.3,0,'2021-08-05 11:01:12','2021-08-30 15:04:43'),(710831588,'department target',515,515,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,3,'全公司','','',NULL,1,'2021-08-11 08:28:08','2021-08-30 15:04:43'),(744298454,'大幅度提升学校的知名度，提升学校社会地位',515,515,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,1,'2021-08-08 23:22:23','2021-08-30 15:04:43'),(765957168,'打造一款日赚斗金的电商平台',11635,11635,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',0.6,0,'2021-08-08 23:10:59','2021-08-30 15:04:43'),(780496308,'优化成本结构，提升公司盈利',45,1,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,0,'全公司','','',NULL,0,'2021-08-07 12:27:21','2021-08-30 15:04:43'),(782868204,'打造中国 B 端软件最牛的前端组件体系',11635,11635,'2021/3','2021-07-01','2021-09-30',1,NULL,0,32,0,0,'全公司','','',0.5,0,'2021-08-08 22:11:14','2021-08-30 15:04:43'),(785045121,'OKR Nineth Object',60,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,NULL,'','','',0.4,0,'2021-08-06 09:35:49','2021-08-30 15:04:43'),(791177249,'创立 To B 软件销售方法论',515,515,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,1,'2021-08-08 23:22:54','2021-08-30 15:04:43'),(806204842,'asdfasdf',50,11392,'2021/2','2021-04-01','2021-06-30',1,NULL,1,14,0,0,'全公司','','',0.1,0,'2021-08-05 19:02:55','2021-08-30 15:04:43'),(808723142,'OKR Sixth Object',50,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,NULL,'','','',NULL,0,'2021-08-06 09:35:23','2021-08-30 15:04:43'),(828250045,'First OBJ',1,1,'2021/3','2021-07-01','2021-09-30',1,437902355,0,30,2,0,'全公司','','',NULL,0,'2021-08-17 17:15:42','2021-08-31 00:46:36'),(830657442,'test loginnasdf',1,1,'2021/1','2021-06-18','2021-07-29',1,432,0,50,0,0,'全公司','','',NULL,0,'2021-08-09 18:00:57','2021-08-30 15:04:43'),(852390804,'打造中国 B 端软件最牛的前端组件体系',11635,11635,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-09 00:12:46','2021-08-30 15:04:43'),(863038667,'优化成本结构，提升公司盈利',1,1,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-30 15:57:51','2021-08-30 15:57:51'),(887027152,'xxxxxxxxxxxx',10882,10882,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,3,'全公司','','',NULL,0,'2021-08-11 09:18:51','2021-08-30 15:04:43'),(889931473,'test delete',1,1,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,1,'2021-08-09 15:52:44','2021-08-30 15:04:43'),(895984118,'Test Object ',11635,11635,'2021/3','2021-07-01','2021-09-30',1,NULL,1,2,0,0,'全公司','','',NULL,0,'2021-08-06 22:42:57','2021-08-30 15:04:43'),(911719257,'OKR Twelvth Object',60,11392,'2021/3','2021-07-01','2021-09-30',1,NULL,1,0,0,NULL,'','','',0.6,0,'2021-08-06 09:36:24','2021-08-30 15:04:43'),(912936462,'打造中国 B 端软件最牛的前端组件体系',45,1,'2021/3','2021-07-01','2021-09-30',1,NULL,0,0,0,0,'全公司','','',NULL,0,'2021-08-09 00:13:48','2021-08-30 15:04:43'),(936164690,'优化成本结构，提升公司盈利',11635,11635,'2021/3','2021-07-01','2021-09-30',1,NULL,0,1,0,0,'全公司','','',NULL,0,'2021-08-08 22:52:51','2021-08-30 15:04:43'),(967385505,'test',1,1,'2021/2','2021-02-01','2021-03-01',1,NULL,0,0,0,0,',1.2.4','','',NULL,0,'2021-08-07 15:56:21','2021-08-30 15:04:43');