/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : invoicing

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2015-01-09 11:12:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_action`
-- ----------------------------
DROP TABLE IF EXISTS `t_action`;
CREATE TABLE `t_action` (
  `action_id` varchar(32) NOT NULL,
  `menu_id` varchar(32) default NULL,
  `panel_id` varchar(32) default NULL,
  `action_cn_name` varchar(30) NOT NULL,
  `action_en_name` varchar(30) NOT NULL,
  `icon_cls` varchar(30) default NULL,
  `type` enum('Link','Button') default 'Button',
  `disabled` enum('disable','enable') default NULL,
  `method` varchar(100) default NULL,
  `order_num` int(10) unsigned default NULL,
  `remark` varchar(50) default NULL,
  PRIMARY KEY  (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_action
-- ----------------------------
INSERT INTO `t_action` VALUES ('00373dc94a1610aab1a50b060bb17e88', '91ca1b4b197688f21b68a72f69e09a8d', '37011217016636a0723462dbc81bf887', '分配角色', 'assign', 'icon-standard-key-go', 'Button', 'disable', 'glacier.system_mgr.user_mgr.user.roleAssign();', '4', null);
INSERT INTO `t_action` VALUES ('052f8f3a3dee3781a1f3a60bee4cfbfc', '8a2f2500fa46e49dd7ff11b688b6c740', 'ad67aaf12a02906ad088a73410fd097e', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.basicdatas_mgr.parCompanySize_mgr.parCompanySize.editparCompanySize();', '2', '');
INSERT INTO `t_action` VALUES ('08fcfc5ac69513b18eb1c67b3d108a37', '810ba3686840457556cb55bc87d8010b', '365eeace84821f6e45d59cefd702827d', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', '', '3', '');
INSERT INTO `t_action` VALUES ('099bbd95bea8b3e311ed8075f30cdbda', '8a2f2500fa46e49dd7ff11b688b6c740', 'ad67aaf12a02906ad088a73410fd097e', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.basicdatas_mgr.parCompanySize_mgr.parCompanySize.addparCompanySize();', '1', '');
INSERT INTO `t_action` VALUES ('1167b543b9db94fa1894b87b0844c949', '0feb3351253417aa18958e7353a626a5', 'b6c9a14704bc3d0029e306d026d040a6', '添加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.suppliersGrade_mgr.suppliersGrade.addSuppliersGrade();', '1', '');
INSERT INTO `t_action` VALUES ('18060139f0e736a796d5ac4bdd78eadc', 'e550884c5e6c1e94ee70cc833aa1c2b9', '83bbeed02a85549ae84cde8d98bcd8c1', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'disable', 'glacier.system_mgr.role_mgr.role.editRole();', '2', null);
INSERT INTO `t_action` VALUES ('22b38655d16fa1042893e49b1cdfc611', '82533b28131409450ad7a00229fd7333', '82385e2a3e64ac4cf4633ccb4c38c480', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.basicdatas_mgr.parContactType_mgr.parContactType.addParContactType();', '1', '');
INSERT INTO `t_action` VALUES ('252406da7cfa367b741142c71a9c89e2', '810ba3686840457556cb55bc87d8010b', '365eeace84821f6e45d59cefd702827d', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', '', '1', '');
INSERT INTO `t_action` VALUES ('289adb04b61fb737bd7da153c0750f16', '295ffaf17338b3621d532bfe8ee6c779', 'af5f8e8847920dc7fd6347e3a4e9c467', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.basicdatas_mgr.suppliersNature_mgr.parSuppliersNature.editparSuppliersNature();', '2', '');
INSERT INTO `t_action` VALUES ('293b275e09230acf37f0aa98031c83c0', '90998bf3c3173da5e8319d70cec8a7ab', 'eb65d0304dc38ac4db140a1c10fdc7d3', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', '', '3', '');
INSERT INTO `t_action` VALUES ('2b8f6d5775288ffc0889f71dfcda458e', '0feb3351253417aa18958e7353a626a5', 'b6c9a14704bc3d0029e306d026d040a6', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.suppliersGrade_mgr.suppliersGrade.delSuppliersGrade();', '3', '');
INSERT INTO `t_action` VALUES ('301ae7590f12623a1ff3aa43c77a6a26', 'd29229a817d81ed224df8c53d2f48f3d', '4284f4950bf67217bf1816260419ebbb', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.basicdatas_mgr.quotedPriceType_mgr.parQuotedPriceType.editParQuotedPriceType();', '2', '');
INSERT INTO `t_action` VALUES ('32740020a8816f83b38564a64eee4278', 'e42b98561176563f930d82c80b041ed8', 'f769a64bb571aa0c7ac269b807af4782', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.system_mgr.loginlog_mgr.loginlog.delLoginlog();', '1', null);
INSERT INTO `t_action` VALUES ('3625524f748719d4e1e6f641caa1a72a', 'be0683db6fae2b78f8feb3069adb74d6', '6feff8706bf1155077e47699ad8931d9', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', '', '2', '');
INSERT INTO `t_action` VALUES ('3ac74098128017095a49fa85b61703d8', 'dc2dcb1b303c05b27e9c01dc23dcc5f7', '21f3486dd1b51463c4979dc80ef4009b', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.purchaseType_mgr.purchaseType.editPurchaseType();', '2', '');
INSERT INTO `t_action` VALUES ('3ffad6c57a11162e013b83c4ff0c9896', 'be0683db6fae2b78f8feb3069adb74d6', '6feff8706bf1155077e47699ad8931d9', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', '', '3', '');
INSERT INTO `t_action` VALUES ('4260fbed3c951dde2e25a56ac6d7693c', '0eac3f9c7b4e4cdd5e42c56a16c85147', 'ad6926567cb16be8966308eb36583a57', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.basicdatas_mgr.parDeliverType_mgr.parDeliverType.addParDeliverType();', '1', '');
INSERT INTO `t_action` VALUES ('429f54b614db46af58598c8d9a47a36f', '54eb754157cf483a790f4eea35200118', '961d2e73b3fa93a9f125fb731e0a9529', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'disable', 'glacier.system_mgr.res_mgr.res.delPanel();', '3', null);
INSERT INTO `t_action` VALUES ('467e2099ef79c51a5ef12e93603cce5c', '00451bcfd707a2b5c3b80704f992dc21', '6659f9987cbbdf0721f8935b4a3d5a36', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', '', '2', '');
INSERT INTO `t_action` VALUES ('47825847f0e736a796d5ac4bdd78e123', 'sdsfeg4157cf483a790f4eea35ds5675', '3456eg4157cf483a790f4eea35ds5675', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.basicdatas_mgr.optgroup_mgr.optgroup.editOptgroupValue();', '2', null);
INSERT INTO `t_action` VALUES ('486ee8a95df71f04f384129d7471ff6d', 'ccec6c46d43b0e7c40ce5c1ffc0cb3e5', '0d7ed154eebe739d81a20da996d68e6b', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', '', '1', '');
INSERT INTO `t_action` VALUES ('4a4acbb584f3c5601bbd1b9ed7a6062f', '0eac3f9c7b4e4cdd5e42c56a16c85147', 'ad6926567cb16be8966308eb36583a57', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.basicdatas_mgr.parDeliverType_mgr.parDeliverType.editParDeliverType();', '2', '');
INSERT INTO `t_action` VALUES ('4a876056b394778d17d8e1f548b7c840', 'aa165bf67dadbeedeb780b3e92dcdcdb', 'eb65d0304dc38ac4db140a1c10fdc7d3', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', '', '2', '');
INSERT INTO `t_action` VALUES ('4d05ce95cb561b35788bc8d2911d8419', '0d5f941c0e815519b859afa0992eda0b', 'bbf240fc8c53886e327ff15976026945', '分配角色', 'assign', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.system_mgr.dep_mgr.dep.assignDep();', '4', '');
INSERT INTO `t_action` VALUES ('505e39ac5905e592887f526b92f51728', 'be0683db6fae2b78f8feb3069adb74d6', '6feff8706bf1155077e47699ad8931d9', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', '', '1', '');
INSERT INTO `t_action` VALUES ('54c90c0fa9cd518840bc9dbb649fb806', '295ffaf17338b3621d532bfe8ee6c779', 'af5f8e8847920dc7fd6347e3a4e9c467', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.basicdatas_mgr.suppliersNature_mgr.parSuppliersNature.delparSuppliersNature();', '3', '');
INSERT INTO `t_action` VALUES ('5652a940a901f412456efc1ecf13b634', '0d5f941c0e815519b859afa0992eda0b', 'bbf240fc8c53886e327ff15976026945', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.system_mgr.dep_mgr.dep.delDep();', '3', '');
INSERT INTO `t_action` VALUES ('5825847f0e736a796d5ac4bdd78e123', 'sdsfeg4157cf483a790f4eea35ds5675', '3456eg4157cf483a790f4eea35ds5675', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.basicdatas_mgr.optgroup_mgr.optgroup.delOptgroupValue();', '3', null);
INSERT INTO `t_action` VALUES ('58660bccb69289b1f0299d9a664931d3', '91ca1b4b197688f21b68a72f69e09a8d', '37011217016636a0723462dbc81bf887', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.system_mgr.user_mgr.user.editUser();', '2', null);
INSERT INTO `t_action` VALUES ('58c66ce489e1ee8588e881a1abe9de56', '93f0fcfa7cdff069d929723062b53211', 'e6784ccad10e3414b99b77b303a338c7', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.basicdatas_mgr.variables_mgr.variables.editVariables();', '2', null);
INSERT INTO `t_action` VALUES ('58e1ae547ab73090f5a5497ac6a2c76d', '295ffaf17338b3621d532bfe8ee6c779', 'af5f8e8847920dc7fd6347e3a4e9c467', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.basicdatas_mgr.suppliersNature_mgr.parSuppliersNature.addparparSuppliersNature();', '1', '');
INSERT INTO `t_action` VALUES ('5db796929f23e991708fd0af99b3b4bc', 'e550884c5e6c1e94ee70cc833aa1c2b9', '83bbeed02a85549ae84cde8d98bcd8c1', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.system_mgr.role_mgr.role.addRole();', '1', null);
INSERT INTO `t_action` VALUES ('6712c8b2f0852d51eb9972422d372ff3', '82533b28131409450ad7a00229fd7333', '82385e2a3e64ac4cf4633ccb4c38c480', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.basicdatas_mgr.parContactType_mgr.parContactType.editParContactType();', '2', '');
INSERT INTO `t_action` VALUES ('6838d18fa1e582d4dc28404a80445c88', '54eb754157cf483a790f4eea35200118', '5731697aea23532eb8162f5ba1818c6f', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.system_mgr.res_mgr.res.addMenu();', '1', null);
INSERT INTO `t_action` VALUES ('6b73fd176d2e32f1dee38a760e7bdb61', 'd29229a817d81ed224df8c53d2f48f3d', '4284f4950bf67217bf1816260419ebbb', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.basicdatas_mgr.quotedPriceType_mgr.parQuotedPriceType.delParQuotedPriceType();', '3', '');
INSERT INTO `t_action` VALUES ('6c0bc1e009b3742af24d7bdc94adec3c', '54eb754157cf483a790f4eea35200118', '961d2e73b3fa93a9f125fb731e0a9529', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.system_mgr.res_mgr.res.addPanel();', '1', null);
INSERT INTO `t_action` VALUES ('6e1027dd7e57195d06dd2fac811f8ebf', '54eb754157cf483a790f4eea35200118', '5731697aea23532eb8162f5ba1818c6f', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'disable', 'glacier.system_mgr.res_mgr.res.editMenu();', '2', null);
INSERT INTO `t_action` VALUES ('6ebb0c66afb41e8cf0d890ea46ab54ca', 'ac892df07f9087fb1c89ac968bb5f555', '557cf8b2740e6792f517138703afb407', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.system_mgr.operalog_mgr.operalog.delOperalog();', '1', null);
INSERT INTO `t_action` VALUES ('75c176566b9105b26c44f0b97050dcbf', '0d5f941c0e815519b859afa0992eda0b', 'bbf240fc8c53886e327ff15976026945', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.system_mgr.dep_mgr.dep.addDep();', '1', '');
INSERT INTO `t_action` VALUES ('75ef694872b72e65e08bb60c54941e21', 'ccec6c46d43b0e7c40ce5c1ffc0cb3e5', '0d7ed154eebe739d81a20da996d68e6b', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', '', '3', '');
INSERT INTO `t_action` VALUES ('7cd6206e5d6cf22c466105eef922fadd', '8fc3b6de8076d1e8c3a6514bd29c4c4b', 'c7796dffd9d50588655cfc9d6a297efc', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.basicdatas_mgr.parPaymentType_mgr.parPaymentType.editParPaymentType();', '2', '');
INSERT INTO `t_action` VALUES ('84fd30c2b03282a32dd9e0d552130442', '91ca1b4b197688f21b68a72f69e09a8d', '37011217016636a0723462dbc81bf887', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.system_mgr.user_mgr.user.addUser();', '1', null);
INSERT INTO `t_action` VALUES ('8530139f0e736a796d5ac4bdd78eadc', 'sdsfeg4157cf483a790f4eea35ds5675', '4546fgrgrh1dfhsjdfh124564sdf2sag', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.basicdatas_mgr.optgroup_mgr.optgroup.addOptgroup();', '1', null);
INSERT INTO `t_action` VALUES ('8537147f0e736a796d5ac4bdd78e123', 'sdsfeg4157cf483a790f4eea35ds5675', '4546fgrgrh1dfhsjdfh124564sdf2sag', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.basicdatas_mgr.optgroup_mgr.optgroup.delOptgroup();', '3', null);
INSERT INTO `t_action` VALUES ('8537899f0e736a796d5ac4bdd78e123', 'sdsfeg4157cf483a790f4eea35ds5675', '4546fgrgrh1dfhsjdfh124564sdf2sag', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.basicdatas_mgr.optgroup_mgr.optgroup.editOptgroup();', '2', null);
INSERT INTO `t_action` VALUES ('8eb3b50d119f05c30127c3359e4a5d2a', 'e550884c5e6c1e94ee70cc833aa1c2b9', '83bbeed02a85549ae84cde8d98bcd8c1', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'disable', 'glacier.system_mgr.role_mgr.role.delRole();', '3', null);
INSERT INTO `t_action` VALUES ('916e71e34065c3420f97915b67ed12f9', '00451bcfd707a2b5c3b80704f992dc21', '6659f9987cbbdf0721f8935b4a3d5a36', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', '', '1', '');
INSERT INTO `t_action` VALUES ('9320f5b0199abd8d53990eef7cdcd745', '54eb754157cf483a790f4eea35200118', 'eb2a84c4b7bd11632135e4992ade286e', '编辑', 'edit', 'icon-standard-pencil-go', 'Button', 'disable', 'glacier.system_mgr.res_mgr.res.editAction();', '2', null);
INSERT INTO `t_action` VALUES ('939cfbe44bddcff99deed80e7a472997', 'ebd8d76ac65eea1c8d65ac5c14da27b0', 'cef00aa1a7ab2338e5bb4e85e311af6f', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.suppliersIndustry_mgr.suppliersIndustry.delSuppliersIndustry();', '3', '');
INSERT INTO `t_action` VALUES ('96325847f0e736a796d5ac4bdd78e123', 'sdsfeg4157cf483a790f4eea35ds5675', '3456eg4157cf483a790f4eea35ds5675', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.basicdatas_mgr.optgroup_mgr.optgroup.addOptgroupValue();', '1', null);
INSERT INTO `t_action` VALUES ('9a4afcb595389b7bbf59b08e0f983b0d', '8fc3b6de8076d1e8c3a6514bd29c4c4b', 'c7796dffd9d50588655cfc9d6a297efc', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.basicdatas_mgr.parPaymentType_mgr.parPaymentType.delParPaymentType();', '3', '');
INSERT INTO `t_action` VALUES ('9b3d4e690948a1290f7ccea6327868e0', 'ebd8d76ac65eea1c8d65ac5c14da27b0', 'cef00aa1a7ab2338e5bb4e85e311af6f', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.suppliersIndustry_mgr.suppliersIndustry.addSuppliersIndustry();', '1', '');
INSERT INTO `t_action` VALUES ('9cdc7b08f06304c42f1e6c408f170fcb', '93f0fcfa7cdff069d929723062b53211', 'e6784ccad10e3414b99b77b303a338c7', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.basicdatas_mgr.variables_mgr.variables.addVariables();', '1', null);
INSERT INTO `t_action` VALUES ('9dfcdfc6becbf920be628c30a8906d80', 'dc2dcb1b303c05b27e9c01dc23dcc5f7', '21f3486dd1b51463c4979dc80ef4009b', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.purchaseType_mgr.purchaseType.delPurchaseType();', '3', '');
INSERT INTO `t_action` VALUES ('9ffc444223f48cb8f88a00c5855a6c99', 'ccec6c46d43b0e7c40ce5c1ffc0cb3e5', '0d7ed154eebe739d81a20da996d68e6b', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', '', '2', '');
INSERT INTO `t_action` VALUES ('a124a6716dfb677b0654ce2bb4d36546', '8a2f2500fa46e49dd7ff11b688b6c740', 'ad67aaf12a02906ad088a73410fd097e', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.basicdatas_mgr.parCompanySize_mgr.parCompanySize.delparCompanySize();', '3', '');
INSERT INTO `t_action` VALUES ('a55d3061c3d01adc8e1b0358c49fc4e7', 'd29229a817d81ed224df8c53d2f48f3d', '4284f4950bf67217bf1816260419ebbb', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.basicdatas_mgr.quotedPriceType_mgr.parQuotedPriceType.addParQuotedPriceType();', '1', '');
INSERT INTO `t_action` VALUES ('ae8377f4dee2f49d7ff54d8d7fcc0df6', '0eac3f9c7b4e4cdd5e42c56a16c85147', 'ad6926567cb16be8966308eb36583a57', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.basicdatas_mgr.parDeliverType_mgr.parDeliverType.delParDeliverType();', '3', '');
INSERT INTO `t_action` VALUES ('b5852fac0798a25a13b87e8532c60440', '54eb754157cf483a790f4eea35200118', '5731697aea23532eb8162f5ba1818c6f', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'disable', 'glacier.system_mgr.res_mgr.res.delMenu();', '3', null);
INSERT INTO `t_action` VALUES ('b666b551b8528b1562626fa1b4691e22', '82533b28131409450ad7a00229fd7333', '82385e2a3e64ac4cf4633ccb4c38c480', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.basicdatas_mgr.parContactType_mgr.parContactType.delParContactType();', '3', '');
INSERT INTO `t_action` VALUES ('b6a27dc1819230f61617bb0d9c25dd2f', 'dc2dcb1b303c05b27e9c01dc23dcc5f7', '21f3486dd1b51463c4979dc80ef4009b', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.purchaseType_mgr.purchaseType.addPurchaseType();', '1', '');
INSERT INTO `t_action` VALUES ('b6b2f1bc8c706bb9a1de5806e92eea04', '0feb3351253417aa18958e7353a626a5', 'b6c9a14704bc3d0029e306d026d040a6', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.suppliersGrade_mgr.suppliersGrade.editSuppliersGrade();', '2', '');
INSERT INTO `t_action` VALUES ('b7e88da8c1dec3668ca66340dabee03f', 'e550884c5e6c1e94ee70cc833aa1c2b9', '83bbeed02a85549ae84cde8d98bcd8c1', '授权', 'auth', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.system_mgr.role_mgr.role.actionAuth();', '4', null);
INSERT INTO `t_action` VALUES ('c28dc169ad75cb06b737caa36a4ffd30', '8fc3b6de8076d1e8c3a6514bd29c4c4b', 'c7796dffd9d50588655cfc9d6a297efc', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.basicdatas_mgr.parPaymentType_mgr.parPaymentType.addParPaymentType();', '1', '');
INSERT INTO `t_action` VALUES ('c443543fd454dd4ef6df28772c36eb39', '00451bcfd707a2b5c3b80704f992dc21', '6659f9987cbbdf0721f8935b4a3d5a36', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', '', '3', '');
INSERT INTO `t_action` VALUES ('cab1e5fd5d1bdd3257344d94083b6e0e', '90998bf3c3173da5e8319d70cec8a7ab', 'eb65d0304dc38ac4db140a1c10fdc7d3', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', '', '1', '');
INSERT INTO `t_action` VALUES ('d8121384c9b7ffa3e04bde9222f16b72', '90998bf3c3173da5e8319d70cec8a7ab', 'eb65d0304dc38ac4db140a1c10fdc7d3', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', '', '2', '');
INSERT INTO `t_action` VALUES ('dad8f671986722837f7eecb2b77c284b', '54eb754157cf483a790f4eea35200118', '961d2e73b3fa93a9f125fb731e0a9529', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'disable', 'glacier.system_mgr.res_mgr.res.editPanel();', '2', null);
INSERT INTO `t_action` VALUES ('e1e5268cff61dc4231932ae1484caf97', '93f0fcfa7cdff069d929723062b53211', 'e6784ccad10e3414b99b77b303a338c7', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', 'glacier.basicdatas_mgr.variables_mgr.variables.delVariables();', '3', null);
INSERT INTO `t_action` VALUES ('e550884c5e6c1e94a970cc833aa1c2b9', '54eb754157cf483a790f4eea35200118', 'eb2a84c4b7bd11632135e4992ade286e', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', 'glacier.system_mgr.res_mgr.res.addAction();', '1', null);
INSERT INTO `t_action` VALUES ('ee6f881272d3da97f893e48a6da97994', 'aa165bf67dadbeedeb780b3e92dcdcdb', 'eb65d0304dc38ac4db140a1c10fdc7d3', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'enable', '', '3', '');
INSERT INTO `t_action` VALUES ('f175302ba155cb3c5206619004b5d86b', '810ba3686840457556cb55bc87d8010b', '365eeace84821f6e45d59cefd702827d', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', '', '2', '');
INSERT INTO `t_action` VALUES ('f314d065f68f2d4be08e5b3a62507815', 'ebd8d76ac65eea1c8d65ac5c14da27b0', 'cef00aa1a7ab2338e5bb4e85e311af6f', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.suppliersIndustry_mgr.suppliersIndustry.editSuppliersIndustry();', '2', '');
INSERT INTO `t_action` VALUES ('f4065bd55bb4d1a51db0cc775f854c6e', '0d5f941c0e815519b859afa0992eda0b', 'bbf240fc8c53886e327ff15976026945', '修改', 'edit', 'icon-standard-pencil-go', 'Button', 'enable', 'glacier.system_mgr.dep_mgr.dep.editDep();', '2', '');
INSERT INTO `t_action` VALUES ('f4b5eca05e616d411f1aeef044346664', '54eb754157cf483a790f4eea35200118', 'eb2a84c4b7bd11632135e4992ade286e', '删除', 'del', 'icon-standard-pencil-delete', 'Button', 'disable', 'glacier.system_mgr.res_mgr.res.delAction();', '3', null);
INSERT INTO `t_action` VALUES ('fc4a79d7d0831e00ec3157c560ce2784', 'aa165bf67dadbeedeb780b3e92dcdcdb', 'eb65d0304dc38ac4db140a1c10fdc7d3', '增加', 'add', 'icon-standard-pencil-add', 'Button', 'enable', '', '1', '');

-- ----------------------------
-- Table structure for `t_assembly`
-- ----------------------------
DROP TABLE IF EXISTS `t_assembly`;
CREATE TABLE `t_assembly` (
  `assembly_id` varchar(32) NOT NULL,
  `assembly_code` varchar(32) default NULL,
  `warehouse_id` varchar(32) default NULL,
  `assembly_date` datetime default NULL,
  `batch` int(11) default NULL,
  `sum_indirect_costs` decimal(16,4) default NULL,
  `department` varchar(32) default NULL,
  `auditor_id` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_state` enum('authstr','failure','pass') default NULL,
  `audit_remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`assembly_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_assembly
-- ----------------------------

-- ----------------------------
-- Table structure for `t_assembly_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_assembly_detail`;
CREATE TABLE `t_assembly_detail` (
  `assembly_detail_id` varchar(32) NOT NULL,
  `assembly_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(225) default NULL,
  `goods_name` varchar(255) default NULL,
  `goods_batch` varchar(255) default NULL,
  `goods_style` varchar(255) default NULL,
  `goods_unit` varchar(32) default NULL,
  `warehouse_id` varchar(32) default NULL,
  `prime_cost` decimal(16,4) default NULL,
  `order_number` int(11) default NULL,
  `assembly_total` decimal(16,4) default NULL,
  `remark` varchar(225) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`assembly_detail_id`),
  KEY `FK_Assembly_AssemblyDetail_AssemblyId` (`assembly_id`),
  CONSTRAINT `t_assembly_detail_ibfk_1` FOREIGN KEY (`assembly_id`) REFERENCES `t_assembly` (`assembly_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_assembly_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_authority`
-- ----------------------------
DROP TABLE IF EXISTS `t_authority`;
CREATE TABLE `t_authority` (
  `role_id` varchar(32) NOT NULL,
  `menu_id` varchar(32) NOT NULL,
  `actions` varchar(21779) default NULL,
  PRIMARY KEY  (`role_id`,`menu_id`),
  KEY `FK_t_authority2` (`menu_id`),
  CONSTRAINT `FK_auth_menu_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `t_menu` (`menu_id`),
  CONSTRAINT `FK_auth_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_authority
-- ----------------------------
INSERT INTO `t_authority` VALUES ('56078492e2eed9eb33f32c3af54a8e3f', '16ac1df11de350c61722dc7b98cecca7', null);
INSERT INTO `t_authority` VALUES ('56078492e2eed9eb33f32c3af54a8e3f', '91ca1b4b197688f21b68a72f69e09a8d', null);
INSERT INTO `t_authority` VALUES ('56078492e2eed9eb33f32c3af54a8e3f', 'ac892df07f9087fb1c89ac968bb5f555', null);
INSERT INTO `t_authority` VALUES ('56078492e2eed9eb33f32c3af54a8e3f', 'e42b98561176563f930d82c80b041ed8', null);
INSERT INTO `t_authority` VALUES ('56078492e2eed9eb33f32c3af54a8e3f', 'e550884c5e6c1e94ee70cc833aa1c2b9', null);
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '00451bcfd707a2b5c3b80704f992dc21', 'ReturnedPurchaseTypeList_add,ReturnedPurchaseTypeList_edit,ReturnedPurchaseTypeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '07d7e1fd5f95ab20e7cb3090cd8ac7ba', null);
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '0d5f941c0e815519b859afa0992eda0b', 'DepList_add,DepList_edit,DepList_del,DepList_assign');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '0eac3f9c7b4e4cdd5e42c56a16c85147', 'DeliverTypeList_add,DeliverTypeList_edit,DeliverTypeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '0feb3351253417aa18958e7353a626a5', 'SuppliersGradeList_add,SuppliersGradeList_edit,SuppliersGradeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '14sdf54157cf483a790f4eea35dsf6f6', null);
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '16ac1df11de350c61722dc7b98cecca7', null);
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '1eeaef563ecc9d9224d42f458fd46cac', null);
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '23e47757685c7b53d87b114e0add3966', null);
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '295ffaf17338b3621d532bfe8ee6c779', 'SuppliersNatureList_add,SuppliersNatureList_edit,SuppliersNatureList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '42294ceb4cbc4d64cff0cb5eaafb2d2e', null);
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '54eb754157cf483a790f4eea35200118', 'ActionList_add,ActionList_edit,ActionList_del,PanelList_add,PanelList_edit,PanelList_del,MenuTree_add,MenuTree_edit,MenuTree_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '810ba3686840457556cb55bc87d8010b', 'SellTypeList_add,SellTypeList_edit,SellTypeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '82533b28131409450ad7a00229fd7333', 'ContactTypeList_add,ContactTypeList_edit,ContactTypeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '8a2f2500fa46e49dd7ff11b688b6c740', 'CompanySizeList_add,CompanySizeList_edit,CompanySizeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '8fc3b6de8076d1e8c3a6514bd29c4c4b', 'PaymentTypeList_add,PaymentTypeList_edit,PaymentTypeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '90998bf3c3173da5e8319d70cec8a7ab', 'SellReturnTypeList_add,SellReturnTypeList_edit,SellReturnTypeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '91ca1b4b197688f21b68a72f69e09a8d', 'UserList_add,UserList_edit,UserList_assign');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', '93f0fcfa7cdff069d929723062b53211', 'VariablesList_add,VariablesList_edit,VariablesList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'aa165bf67dadbeedeb780b3e92dcdcdb', 'SellReturnTypeList_add,SellReturnTypeList_edit,SellReturnTypeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'ac892df07f9087fb1c89ac968bb5f555', 'OperalogList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'be0683db6fae2b78f8feb3069adb74d6', 'PlanTypeList_add,PlanTypeList_edit,PlanTypeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'ccec6c46d43b0e7c40ce5c1ffc0cb3e5', 'ReturnReasonList_add,ReturnReasonList_edit,ReturnReasonList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'd29229a817d81ed224df8c53d2f48f3d', 'QuotedPriceTypeList_add,QuotedPriceTypeList_edit,QuotedPriceTypeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'dc2dcb1b303c05b27e9c01dc23dcc5f7', 'PurchaseTypeList_add,PurchaseTypeList_edit,PurchaseTypeList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'e42b98561176563f930d82c80b041ed8', 'LoginlogList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'e550884c5e6c1e94ee70cc833aa1c2b9', 'RoleList_add,RoleList_edit,RoleList_del,RoleList_auth');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'ebd8d76ac65eea1c8d65ac5c14da27b0', 'SuppliersIndustryList_add,SuppliersIndustryList_edit,SuppliersIndustryList_del');
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'fd696e8607c36c917f546787976f4fa8', null);
INSERT INTO `t_authority` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'sdsfeg4157cf483a790f4eea35ds5675', 'OptgroupValueList_add,OptgroupValueList_edit,OptgroupValueList_del,OptgroupTree_add,OptgroupTree_edit,OptgroupTree_del');

-- ----------------------------
-- Table structure for `t_basis_client`
-- ----------------------------
DROP TABLE IF EXISTS `t_basis_client`;
CREATE TABLE `t_basis_client` (
  `client_id` varchar(32) NOT NULL,
  `client_code` varchar(50) default NULL,
  `client_type_id` varchar(32) default NULL,
  `client_name` varchar(32) default NULL COMMENT '客户名称',
  `client_grade` varchar(32) default NULL COMMENT '客户级别',
  `client_source` varchar(32) default NULL COMMENT '客户来源',
  `province_manager` varchar(32) default NULL COMMENT '省级经理',
  `service_manager` varchar(32) default NULL COMMENT '业务经理',
  `company_scale` varchar(32) default NULL COMMENT '公司规模',
  `marketing_department` varchar(32) default NULL COMMENT '销售部门',
  `company_phone` varchar(32) default NULL,
  `company_fax` varchar(32) default NULL,
  `company_website` varchar(32) default NULL,
  `company_email` varchar(32) default NULL,
  `province` varchar(32) default NULL,
  `city` varchar(32) default NULL,
  `adress` varchar(255) default NULL,
  `zip_code` varchar(32) default NULL,
  `price_policy` enum('policy1','policy2','policy3','policy4','policy5','policy6','policy7','policy8','policy9','policy10') default NULL,
  `contact_cycle` int(4) default NULL,
  `company_nature_id` varchar(32) default NULL,
  `main_business` varchar(32) default NULL,
  `opened_year` datetime default NULL,
  `registered_capital` decimal(16,4) default NULL,
  `corporate` varchar(32) default NULL,
  `credit_level_id` varchar(32) default NULL,
  `client_integral` varchar(32) default NULL,
  `bank` varchar(32) default NULL,
  `bank_account` varchar(20) default NULL,
  `tariff` varchar(32) default NULL,
  `control_credit` enum('yes','no') default NULL,
  `limit_credit` decimal(16,4) default NULL,
  `present_credit` decimal(16,4) default NULL,
  `present_debt` decimal(16,4) default NULL,
  `advances_received` decimal(16,4) default NULL,
  `setup_person` varchar(32) default NULL,
  `setup_time` datetime default NULL,
  `client_create` datetime default NULL,
  `superior_client_id` varchar(32) default NULL,
  `accessory` varchar(255) default NULL,
  `staff_id` varchar(32) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_basis_client
-- ----------------------------

-- ----------------------------
-- Table structure for `t_basis_client_contact`
-- ----------------------------
DROP TABLE IF EXISTS `t_basis_client_contact`;
CREATE TABLE `t_basis_client_contact` (
  `client_contact_id` varchar(32) NOT NULL,
  `client_id` varchar(32) default NULL,
  `contact_type_id` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `sex` enum('man','woman') default NULL,
  `department` varchar(32) default NULL,
  `post` varchar(32) default NULL,
  `business` varchar(100) default NULL,
  `work_phone` varchar(32) default NULL,
  `mobilephone` varchar(32) default NULL,
  `fox` varchar(32) default NULL,
  `email` varchar(32) default NULL,
  `home_phone` varchar(32) default NULL,
  `adrress` varchar(100) default NULL,
  `communications` varchar(32) default NULL,
  `birthday` datetime default NULL,
  `hobby` varchar(50) default NULL,
  `number` varchar(32) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`client_contact_id`),
  KEY `FK_T_BASIS__T_BASIS_C_T_BASIS_` (`client_id`),
  CONSTRAINT `t_basis_client_contact_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `t_basis_client` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_basis_client_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `t_basis_client_contact_record`
-- ----------------------------
DROP TABLE IF EXISTS `t_basis_client_contact_record`;
CREATE TABLE `t_basis_client_contact_record` (
  `contact_record_id` varchar(32) NOT NULL,
  `next_cont_date` datetime default NULL,
  `contact_thime` varchar(50) default NULL,
  `contact_content` varchar(255) default NULL,
  `contact_date` datetime default NULL,
  `accessory` varchar(255) default NULL,
  `staff_id` varchar(32) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`contact_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_basis_client_contact_record
-- ----------------------------

-- ----------------------------
-- Table structure for `t_contact_person`
-- ----------------------------
DROP TABLE IF EXISTS `t_contact_person`;
CREATE TABLE `t_contact_person` (
  `contact_person_id` varchar(32) NOT NULL,
  `contact_type_id` varchar(32) default NULL,
  `supplier_id` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `sex` enum('boy','girl') default NULL,
  `department` varchar(32) default NULL,
  `post` varchar(32) default NULL,
  `responsible_business` varchar(32) default NULL,
  `work_phone` varchar(32) default NULL,
  `mobile_telephone` varchar(32) default NULL,
  `fax` varchar(32) default NULL,
  `postcode` varchar(32) default NULL,
  `home_phone` varchar(100) default NULL,
  `home_adress` varchar(255) default NULL,
  `msn` varchar(32) default NULL,
  `qq` varchar(32) default NULL,
  `birthday` datetime default NULL,
  `hobby` varchar(32) default NULL,
  `remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL COMMENT 'ö�٣�(����1/����0)',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY  (`contact_person_id`),
  KEY `FK_ContactPerson_ContactType_ContactTypeId` (`contact_type_id`),
  KEY `FK_ContactPerson_Suppliers_ContactPersonId` (`supplier_id`),
  CONSTRAINT `t_contact_person_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `t_suppliers` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_contact_person
-- ----------------------------

-- ----------------------------
-- Table structure for `t_dep`
-- ----------------------------
DROP TABLE IF EXISTS `t_dep`;
CREATE TABLE `t_dep` (
  `dep_id` varchar(32) NOT NULL,
  `cn_name` varchar(32) default NULL,
  `en_name` varchar(32) default NULL,
  `parent_id` varchar(32) default NULL COMMENT '上级部门',
  `order_num` int(4) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`dep_id`),
  KEY `FK_DEP_DEP` USING BTREE (`parent_id`),
  CONSTRAINT `FK_DEP_DEP` FOREIGN KEY (`parent_id`) REFERENCES `t_dep` (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dep
-- ----------------------------
INSERT INTO `t_dep` VALUES ('1ff32f3ab5bd95584a429130956fecea', '管理部', 'system', null, '1', '', 'admin', '2015-01-06 17:10:21');
INSERT INTO `t_dep` VALUES ('2fae527622659411b5cf466793cd6', '开发总部', 'develop', null, '2', '1', '2', '2015-01-05 16:50:55');
INSERT INTO `t_dep` VALUES ('5484ccad10e3414b99b77b303as62', '开发部1', 'develop1', '2fae527622659411b5cf466793cd6', '2', '2', '65', '2015-01-05 17:06:57');

-- ----------------------------
-- Table structure for `t_deplayt_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_deplayt_detail`;
CREATE TABLE `t_deplayt_detail` (
  `deploy_detai_id` varchar(32) NOT NULL,
  `deploy_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(225) default NULL,
  `goods_name` varchar(255) default NULL,
  `goods_batch` varchar(255) default NULL,
  `goods_style` varchar(255) default NULL,
  `goods_unit` varchar(32) default NULL,
  `allot_number` int(4) default NULL,
  `come_number` int(4) default NULL,
  `out_normal` int(4) default NULL,
  `last_time` datetime default NULL,
  `nature` varchar(32) default NULL,
  `remark` varchar(225) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`deploy_detai_id`),
  KEY `FK_Deploy_DeplaytDetail_DeployId` (`deploy_id`),
  CONSTRAINT `t_deplayt_detail_ibfk_1` FOREIGN KEY (`deploy_id`) REFERENCES `t_deploy` (`deploy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_deplayt_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_deploy`
-- ----------------------------
DROP TABLE IF EXISTS `t_deploy`;
CREATE TABLE `t_deploy` (
  `deploy_id` varchar(32) NOT NULL,
  `deploy_code` varchar(32) default NULL,
  `warehouse_in_id` varchar(32) default NULL,
  `warehouse_out_id` varchar(32) default NULL,
  `attn` varchar(32) default NULL,
  `attachment_url` varchar(500) default NULL,
  `latest_date` datetime default NULL,
  `auditor_id` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_state` enum('authstr','failure','pass') default NULL,
  `audit_remark` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `department` varchar(32) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`deploy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for `t_deploy_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_deploy_type`;
CREATE TABLE `t_deploy_type` (
  `deploy_type_id` varchar(32) NOT NULL COMMENT '�������ID',
  `order_num` int(4) default NULL,
  `deploy_type_state` enum('same','different') default NULL,
  `deploy_type_name` varchar(255) default NULL COMMENT '��ƷID',
  `enabled` enum('disable','enable') default NULL COMMENT '�Ƿ����� ö�٣�(����1/����0)',
  `creater` varchar(32) default NULL COMMENT 'ö�٣�(����1/����0)',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY  (`deploy_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_deploy_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_dep_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_dep_role`;
CREATE TABLE `t_dep_role` (
  `dep_id` varchar(32) NOT NULL default '',
  `role_id` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`dep_id`,`role_id`),
  KEY `FK_DEP_ROLE` USING BTREE (`dep_id`),
  KEY `FK_ROLE_DEP` USING BTREE (`role_id`),
  CONSTRAINT `FK_DEP_ROLE` FOREIGN KEY (`dep_id`) REFERENCES `t_dep` (`dep_id`),
  CONSTRAINT `FK_ROLE_DEP` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dep_role
-- ----------------------------
INSERT INTO `t_dep_role` VALUES ('1ff32f3ab5bd95584a429130956fecea', '56078492e2eed9eb33f32c3af54a8e3f');
INSERT INTO `t_dep_role` VALUES ('5484ccad10e3414b99b77b303as62', '56078492e2eed9eb33f32c3af54a8e3f');

-- ----------------------------
-- Table structure for `t_different_deploy`
-- ----------------------------
DROP TABLE IF EXISTS `t_different_deploy`;
CREATE TABLE `t_different_deploy` (
  `different_deploy_id` varchar(32) NOT NULL,
  `different_deploy_code` varchar(32) default NULL,
  `warehouse_in_id` varchar(32) default NULL,
  `warehouse_out_id` varchar(32) default NULL,
  `different_deploy_date` datetime default NULL,
  `deploy_type_id` varchar(32) default NULL,
  `same_total` decimal(16,4) default NULL,
  `department_id` varchar(32) default NULL,
  `arrival_time` datetime default NULL,
  `remark` varchar(255) default NULL,
  `attn` varchar(32) default NULL,
  `department` varchar(32) default NULL,
  `delivery_id` varchar(32) default NULL,
  `total_freight` decimal(16,4) default NULL,
  `freight_share` enum('yes','no') default NULL,
  `logistics` varchar(32) default NULL,
  `logistics_contact` varchar(32) default NULL,
  `logistics_phone` varchar(100) default NULL,
  `auditor_id` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_state` enum('authstr','failure','pass') default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  `audit_remark` varchar(255) default NULL,
  PRIMARY KEY  (`different_deploy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_different_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for `t_different_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_different_detail`;
CREATE TABLE `t_different_detail` (
  `different_detai_id` varchar(32) NOT NULL,
  `different_deploy_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(225) default NULL,
  `goods_name` varchar(255) default NULL,
  `goods_batch` varchar(255) default NULL,
  `goods_style` varchar(255) default NULL,
  `goods_unit` varchar(32) default NULL,
  `allot_number` int(11) default NULL,
  `allot_price` decimal(16,4) default NULL,
  `total_money` decimal(16,4) default NULL,
  `remark` varchar(225) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`different_detai_id`),
  KEY `FK_DifferentDeploy_DifferentDetail_DifferentDeployId` (`different_deploy_id`),
  CONSTRAINT `t_different_detail_ibfk_1` FOREIGN KEY (`different_deploy_id`) REFERENCES `t_different_deploy` (`different_deploy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_different_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_advance`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_advance`;
CREATE TABLE `t_finance_advance` (
  `finance_adv_id` varchar(32) NOT NULL,
  `payable_id` varchar(32) default NULL,
  `payment_id` varchar(32) default NULL,
  `advance_code` varchar(50) default NULL,
  `supplier_id` varchar(32) default NULL,
  `supplier_code` varchar(32) default NULL,
  `payment_type_id` varchar(32) default NULL,
  `account` varchar(32) default NULL,
  `advance_amount` decimal(16,4) default NULL,
  `advance_date` datetime default NULL,
  `auditor` varchar(32) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `operators` varchar(32) default NULL,
  `operator_dep` varchar(32) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`finance_adv_id`),
  KEY `FK_T_FINANC_FINANCE_P_T_FINANC1` (`payable_id`),
  CONSTRAINT `t_finance_advance_ibfk_1` FOREIGN KEY (`payable_id`) REFERENCES `t_finance_payable` (`payable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_advance
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_advance_rec`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_advance_rec`;
CREATE TABLE `t_finance_advance_rec` (
  `advance_rec_id` varchar(32) NOT NULL,
  `advance_rec_code` varchar(50) default NULL,
  `receipt_id` varchar(32) default NULL,
  `send_id` varchar(32) default NULL,
  `advance_rec_date` datetime default NULL,
  `client_id` varchar(32) default NULL,
  `payment_type_id` varchar(32) default NULL,
  `account` varchar(32) default NULL,
  `advance_rec_amount` decimal(16,4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(100) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`advance_rec_id`),
  KEY `FK_T_FINANC_T_FINANCE_T_FINANC1` (`receipt_id`),
  KEY `FK_T_FINANC_T_SELL_SE_T_SELL_S1` (`send_id`),
  CONSTRAINT `t_finance_advance_rec_ibfk_1` FOREIGN KEY (`send_id`) REFERENCES `t_sell_send` (`send_id`),
  CONSTRAINT `t_finance_advance_rec_ibfk_2` FOREIGN KEY (`receipt_id`) REFERENCES `t_finance_receipt` (`receipt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_advance_rec
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_payable`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_payable`;
CREATE TABLE `t_finance_payable` (
  `payable_id` varchar(32) NOT NULL,
  `payable_code` varchar(50) default NULL,
  `pur_order_id` varchar(32) default NULL,
  `pur_arrival_id` varchar(32) default NULL,
  `pur_return_id` varchar(32) default NULL,
  `payabel_date` datetime default NULL,
  `payable_type_id` varchar(32) default NULL,
  `invoice` enum('yes','no') default NULL,
  `invoice_type` enum('specialvat','generalvat','generaltax','ordinarytax','receipt') default NULL,
  `invoice_start` varchar(50) default NULL,
  `payment_type_id` varchar(100) default NULL,
  `payment_terms` datetime default NULL,
  `amount_rec` decimal(16,4) default NULL,
  `amount_paid` decimal(16,4) default NULL,
  `amount_reduce` decimal(16,4) default NULL,
  `alr_pay_amo` decimal(16,4) default NULL,
  `not_pay_amo` decimal(16,4) default NULL,
  `alr_inv_amo` decimal(16,4) default NULL,
  `not_inv_amo` decimal(16,4) default NULL,
  `collection_status` enum('nonePay','portionPay','allPay') default NULL,
  `invoice_status` enum('noneInv','portionInv','allInv') default NULL,
  `accessory` varchar(255) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `operators` varchar(32) default NULL,
  `operator_dep` varchar(32) default NULL,
  `supplier_id` varchar(32) default NULL,
  `linkman` varchar(32) default NULL,
  `telephone` varchar(32) default NULL,
  `bank_of_deposit` varchar(32) default NULL,
  `account_number` int(19) default NULL,
  `summary` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`payable_id`),
  KEY `FK_T_FINANC_PAYABLE_T_T_PAR_PA2` (`payable_type_id`),
  CONSTRAINT `t_finance_payable_ibfk_1` FOREIGN KEY (`payable_type_id`) REFERENCES `t_par_payable_type` (`payable_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_payable
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_payable_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_payable_detail`;
CREATE TABLE `t_finance_payable_detail` (
  `payable_detail_id` varchar(32) NOT NULL,
  `payable_id` varchar(32) default NULL,
  `good_id` varchar(32) default NULL,
  `goods_code` varchar(50) default NULL,
  `goods_name` varchar(50) default NULL,
  `goods_model` varchar(32) default NULL,
  `goods_unit` varchar(32) default NULL,
  `quantity` int(4) default NULL,
  `price` decimal(16,4) default NULL,
  `money` decimal(16,4) default NULL,
  `cess` decimal(16,4) default NULL,
  `open_invoices_number` int(4) default NULL,
  `open_invoices_money` decimal(16,4) default NULL,
  `not_open_number` int(4) default NULL,
  `not_open_money` decimal(16,4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`payable_detail_id`),
  KEY `FK_T_FINANC_FINANCE_P_T_FINANC3` (`payable_id`),
  CONSTRAINT `t_finance_payable_detail_ibfk_1` FOREIGN KEY (`payable_id`) REFERENCES `t_finance_payable` (`payable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_payable_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_payment`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_payment`;
CREATE TABLE `t_finance_payment` (
  `finance_pay_id` varchar(32) NOT NULL,
  `payment_code` varchar(50) default NULL,
  `payment_date` datetime default NULL,
  `supplier_id` varchar(32) default NULL,
  `linkman` varchar(32) default NULL,
  `phone` varchar(32) default NULL,
  `payment_type_id` varchar(32) default NULL,
  `account` varchar(32) default NULL,
  `advance_amount` decimal(16,4) default NULL,
  `set_amount` decimal(16,4) default NULL,
  `payment_amount` decimal(16,4) default NULL,
  `credit_amount` decimal(16,4) default NULL,
  `backwash_state` enum('backwash0','backwash1') default NULL,
  `not_back_amo` decimal(16,4) default NULL,
  `alr_back_amo` decimal(16,4) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `operators` varchar(32) default NULL,
  `operator_dep` varchar(32) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`finance_pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_payment_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_payment_detail`;
CREATE TABLE `t_finance_payment_detail` (
  `fin_pay_det_id` varchar(32) NOT NULL,
  `finance_pay_id` varchar(32) default NULL,
  `payable_id` varchar(32) default NULL,
  `set_amount` decimal(16,4) default NULL,
  `due_date` datetime default NULL,
  `credit_period` datetime default NULL,
  `pur_req_id` varchar(32) default NULL,
  `pur_arrival_id` varchar(32) default NULL,
  `pur_return_id` varchar(32) default NULL,
  `amount_payable` decimal(16,4) default NULL,
  `summary` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`fin_pay_det_id`),
  KEY `FK_T_FINANC_FINANCE_P_T_FINANC4` (`finance_pay_id`),
  CONSTRAINT `t_finance_payment_detail_ibfk_1` FOREIGN KEY (`finance_pay_id`) REFERENCES `t_finance_payment` (`finance_pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_payment_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_receipt`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_receipt`;
CREATE TABLE `t_finance_receipt` (
  `receipt_id` varchar(32) NOT NULL,
  `receipt_code` varchar(50) default NULL,
  `receipt_date` datetime default NULL,
  `client_id` varchar(32) default NULL,
  `client_contact_id` varchar(32) default NULL,
  `phone` varchar(11) default NULL,
  `receipt_type_id` varchar(32) default NULL,
  `account` varchar(32) default NULL,
  `set_amount` decimal(16,4) default NULL,
  `paid_in_amount` decimal(16,4) default NULL,
  `credit_amount` decimal(16,4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(100) default NULL,
  `handle_department` varchar(32) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`receipt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_receipt
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_receipt_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_receipt_detail`;
CREATE TABLE `t_finance_receipt_detail` (
  `receipt_detail_id` varchar(32) NOT NULL,
  `receipt_id` varchar(32) default NULL,
  `receivables_id` varchar(32) default NULL,
  `set_amount` decimal(16,4) default NULL,
  `receivable_date` datetime default NULL,
  `deadline_date` datetime default NULL,
  `summary` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`receipt_detail_id`),
  KEY `FK_T_FINANC_T_FINANCE_T_FINANC2` (`receipt_id`),
  CONSTRAINT `t_finance_receipt_detail_ibfk_1` FOREIGN KEY (`receipt_id`) REFERENCES `t_finance_receipt` (`receipt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_receipt_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_receivables`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_receivables`;
CREATE TABLE `t_finance_receivables` (
  `receivables_id` varchar(32) NOT NULL,
  `receivables_code` varchar(50) default NULL,
  `send_id` varchar(32) default NULL,
  `order_goods_code` varchar(50) default NULL,
  `delivery_goods_code` varchar(50) default NULL,
  `receivables_date` datetime default NULL,
  `receivables_type_id` varchar(32) default NULL,
  `client_id` varchar(32) default NULL,
  `client_contact_id` varchar(32) default NULL,
  `phone` varchar(15) default NULL,
  `invoice_account` varchar(32) default NULL,
  `invoice_number` varchar(20) default NULL,
  `invoice` enum('yes','no') default NULL,
  `invoice_type` enum('specialvat','generalvat','generaltax','ordinarytax','receipt') default NULL,
  `invoice_start` varchar(50) default NULL,
  `payment_type_id` varchar(32) default NULL,
  `payment_deadlines` datetime default NULL,
  `amount_receivable` decimal(16,4) default NULL,
  `amount_paid` decimal(16,4) default NULL,
  `amount_reduce` decimal(16,4) default NULL,
  `has_receivables` decimal(16,4) default NULL,
  `outstanding_amount` decimal(16,4) default NULL,
  `has_invoice_amount` decimal(16,4) default NULL,
  `not_invoice_amount` decimal(16,4) default NULL,
  `receipt_state` enum('noneReceipt','portionReceipt','allReceipt') default NULL,
  `inv_state` enum('noneInv','portionInv','allInv') default NULL,
  `accessory` varchar(255) default NULL,
  `staff_id` varchar(32) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(100) default NULL,
  `summary` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`receivables_id`),
  KEY `FK_T_FINANC_T_SELL_SE_T_SELL_S2` (`send_id`),
  CONSTRAINT `t_finance_receivables_ibfk_1` FOREIGN KEY (`send_id`) REFERENCES `t_sell_send` (`send_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_receivables
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_receivables_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_receivables_detail`;
CREATE TABLE `t_finance_receivables_detail` (
  `receivables_detail_id` varchar(32) NOT NULL,
  `receivables_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `quantity` int(4) default NULL,
  `price` decimal(16,4) default NULL,
  `goods_cess` decimal(16,4) default NULL,
  `money` decimal(16,4) default NULL,
  `not_receipt_num` int(4) default NULL,
  `alr_receipt_num` int(4) default NULL,
  `not_inv_num` int(4) default NULL,
  `alr_inv_num` int(4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`receivables_detail_id`),
  KEY `FK_T_FINANC_T_FINANCE_T_FINANC3` (`receivables_id`),
  CONSTRAINT `t_finance_receivables_detail_ibfk_1` FOREIGN KEY (`receivables_id`) REFERENCES `t_finance_receivables` (`receivables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_receivables_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_inventory_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_inventory_type`;
CREATE TABLE `t_inventory_type` (
  `in_inventory_id` varchar(32) NOT NULL COMMENT '�������ID',
  `order_num` int(4) default NULL,
  `inventory_type_name` varchar(255) default NULL COMMENT '��ƷID',
  `enabled` enum('disable','enable') default NULL COMMENT '�Ƿ����� ö�٣�(����1/����0)',
  `creater` varchar(32) default NULL COMMENT 'ö�٣�(����1/����0)',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY  (`in_inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_inventory_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_in_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_in_type`;
CREATE TABLE `t_in_type` (
  `in_type_id` varchar(32) NOT NULL COMMENT '�������ID',
  `order_num` int(4) default NULL,
  `in_type_name` varchar(255) default NULL COMMENT '��ƷID',
  `enabled` enum('disable','enable') default NULL COMMENT '�Ƿ����� ö�٣�(����1/����0)',
  `creater` varchar(32) default NULL COMMENT 'ö�٣�(����1/����0)',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY  (`in_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_in_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `t_loginlog`;
CREATE TABLE `t_loginlog` (
  `loginlog_id` varchar(32) NOT NULL,
  `user_id` varchar(32) default NULL,
  `login_user` varchar(32) default NULL,
  `login_time` datetime default NULL,
  `login_ip` varchar(50) default NULL,
  `browser_version` varchar(50) default NULL,
  `screen_size` varchar(50) default NULL,
  PRIMARY KEY  (`loginlog_id`),
  KEY `FK_loginlog_user_loginlog_id` (`user_id`),
  CONSTRAINT `FK_loginlog_user_loginlog_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_loginlog
-- ----------------------------
INSERT INTO `t_loginlog` VALUES ('01bd56495acefb3e048402f829c7093b', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 13:25:59', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('028dfaa931a6f0c14ab3b90e4b0a0205', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 17:45:21', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('0514f6c14a6e8f431defd2e570f7368b', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2014-12-31 14:46:34', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('13f4ee137c047df43c11dd81dd8cfda6', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 14:51:18', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('154b696530b09f08852114991d5ab6e3', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 13:49:38', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('16b1eb9583e67b29b97c6029ea661d23', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 13:45:52', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('178258fae16f5a548360e71b4b89c07d', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 14:54:48', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('219bce377c0016cc4f9cf85c1da35e19', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 13:15:07', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('2b2e686784675b3ad1a9828b7dfd979a', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 15:14:24', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('334eee526ff03423430a8f5ceaadd236', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 11:29:12', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('38e9fcbc1c7eda38ec1978c9285608df', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 14:46:26', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('39f8b77b43325a08d9b731766b2ba67f', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 11:20:13', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('407366205bf182d6e6be75db84ceec9a', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 14:48:32', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('43cfbd5d624714cdf5d30afe009116ea', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 08:51:50', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('49ec1cea54c9a731ed0ed7733fb81f2e', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 13:44:15', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('4d9f2f86ace37a7f1feeb07f14084caf', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 10:15:18', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('51b5fa4e6334ea4f3d8c30cc173a4bfa', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-05 16:11:43', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('6349444d0fb09f0d3e8c7ecd0a2084f1', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 14:31:59', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('6856916fea3eab0374a98d55e2bc71bb', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 14:08:48', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('6aa025257317fec715f59a3d0d8ca782', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-09 09:55:06', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('6ac31bd98883cadea2f7bccbed3d7942', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 17:55:39', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('6bed93bb4a563243903d6df0622f5d4d', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 14:19:01', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('6c5bb557e04ca0138da754db229f9d9c', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 10:37:57', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('70d419b82cb7f10667e52a32010053fa', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 11:16:37', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('7629199ef249a491192a6e22bb3d5dbb', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 16:30:51', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('763d2a91bc4d407cc32758cf118492c6', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 14:43:34', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('7a9058d6c63bd7328802f2613860d9fb', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 16:28:52', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('7df2961eb5bf26b1ee2f2abc5febe245', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 10:06:45', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('824cbe23dd2167e18402b60566407426', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 11:09:33', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('84eb6c5016d49da26473b19560966291', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 13:47:48', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('882fd6d017d1028530c8e9d284597b9c', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 15:58:51', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('8a4045a161b182af3e24e78ec8631df8', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 15:06:34', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('8c3b6ecebc28aa7ed58ddcec4603591a', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 13:40:07', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('9822ec5300e658473a993d2a299f2e8a', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 10:59:58', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('99e27dbc0525839585c1161c5c360ef5', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 10:10:20', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('a3db1d83b866957ec50c2ee09c2b3c82', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 16:11:59', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('a41a1c26f8a4b3cfe576c23d212f57ce', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 14:42:07', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('a6c681a3ff715e2c9c9342862fe48de5', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 10:18:01', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('ac326ed309ae52bf0c46e751308bc45a', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 09:23:14', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('ad347a8846939505ac8bdcbb8d174a75', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 10:54:45', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('b05843a52bb0e724fc46ee760c57e8ab', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 10:52:44', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('b375f7a3e55592f47bfd12c0d2d227a7', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 13:26:01', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('b3fb492d05bb85b29cd5edc7bb513828', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 10:47:41', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('c2ed490f06858adc7bc83e585b4007b3', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-09 10:05:54', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('c3b29d407ceadd12562c68bbd3f996a0', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-05 13:57:20', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('c6d0359f0b52eaa337c695c2699c7c75', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 13:40:54', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('c9785c4750e7a44bb6ee03ca0bdec166', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 17:40:18', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('cb03dab9ccae052e7cd48f6024705830', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 10:29:10', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('d5fa2d9ba62d372f036be8b3d42463a3', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 14:05:35', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('d6c0e886a2cc940bff41d85efc6850ed', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 15:25:02', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('d7f48df446de93aaaf831e00ec86cc71', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 17:59:32', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('e1ef8790e5c4d1508cfacd50b0cc937d', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 14:11:58', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('e5ac1dbef6e20a4fd00ed145c4fa98b7', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 14:45:32', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('ea52baa44284c7f526ba7ae467938716', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 14:30:47', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('eb2e1380ba74388dd9b0454d3a8179ed', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 14:03:08', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('edf84fa316f888425e056eb596406434', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-06 16:11:26', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('f19cff6aab4fbe300ac25e3b7df8b2a1', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-08 10:45:35', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('f1bcb035fc9a7a899a9dcb38cb9090fa', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 13:45:06', '127.0.0.1[本地]', null, null);
INSERT INTO `t_loginlog` VALUES ('fff789aacb7ce6dc52bd7bf73b2b6b7b', '8b25651c2d896297530b64e4b80ec503', '超级管理员', '2015-01-07 14:07:15', '127.0.0.1[本地]', null, null);

-- ----------------------------
-- Table structure for `t_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `menu_id` varchar(32) NOT NULL,
  `pid` varchar(32) default NULL,
  `menu_en_name` varchar(30) default NULL,
  `menu_cn_name` varchar(30) default NULL,
  `icon_cls` varchar(50) default NULL,
  `url` varchar(100) default NULL,
  `order_num` int(10) unsigned default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`menu_id`),
  KEY `FK_menu2parent1N` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('00451bcfd707a2b5c3b80704f992dc21', '07d7e1fd5f95ab20e7cb3090cd8ac7ba', 'returnedPurchaseType', '退货方式', 'icon-standard-car', '/do/', '2', '');
INSERT INTO `t_menu` VALUES ('07d7e1fd5f95ab20e7cb3090cd8ac7ba', '42294ceb4cbc4d64cff0cb5eaafb2d2e', 'purchaseManage', '采购管理', 'icon-cologne-process', '', '2', '');
INSERT INTO `t_menu` VALUES ('0d5f941c0e815519b859afa0992eda0b', '16ac1df11de350c61722dc7b98cecca7', 'dep', '部门管理', 'icon-standard-folder-user', '/do/dep/index.htm', '2', '');
INSERT INTO `t_menu` VALUES ('0eac3f9c7b4e4cdd5e42c56a16c85147', 'fd696e8607c36c917f546787976f4fa8', 'deliveryType', '交货方式', 'icon-standard-application-tile-horizontal', '/do/deliverType/index.htm', '3', '');
INSERT INTO `t_menu` VALUES ('0feb3351253417aa18958e7353a626a5', 'fd696e8607c36c917f546787976f4fa8', 'suppliersGrade', '信用等级', 'icon-hamburg-flag', '/do/suppliersGrade/index.htm', '6', '');
INSERT INTO `t_menu` VALUES ('14sdf54157cf483a790f4eea35dsf6f6', null, 'basicdatas', '参数管理', 'icon-standard-application-xp-terminal', '', '2', '');
INSERT INTO `t_menu` VALUES ('16ac1df11de350c61722dc7b98cecca7', null, 'system', '系统设置', 'icon-standard-cog', '', '1', '');
INSERT INTO `t_menu` VALUES ('1eeaef563ecc9d9224d42f458fd46cac', null, 'basis', '基础资料', 'icon-cologne-archives', '', '3', '');
INSERT INTO `t_menu` VALUES ('23e47757685c7b53d87b114e0add3966', '42294ceb4cbc4d64cff0cb5eaafb2d2e', 'sellManage', '销售管理', 'icon-cologne-future-projects', '', '3', '');
INSERT INTO `t_menu` VALUES ('295ffaf17338b3621d532bfe8ee6c779', 'fd696e8607c36c917f546787976f4fa8', 'suppliersNature', '公司性质', 'icon-cologne-bank', '/do/suppliersNature/index.htm', '5', '');
INSERT INTO `t_menu` VALUES ('42294ceb4cbc4d64cff0cb5eaafb2d2e', '1eeaef563ecc9d9224d42f458fd46cac', 'dropDown ', '下拉项维护', 'icon-standard-add', '', '1', '');
INSERT INTO `t_menu` VALUES ('54eb754157cf483a790f4eea35200118', '16ac1df11de350c61722dc7b98cecca7', 'res', '资源管理', 'icon-cologne-featured', '/do/res/index.htm', '4', '');
INSERT INTO `t_menu` VALUES ('810ba3686840457556cb55bc87d8010b', '23e47757685c7b53d87b114e0add3966', 'sellType', '销售类型', 'icon-standard-page-gear', '/do/', '1', '');
INSERT INTO `t_menu` VALUES ('82533b28131409450ad7a00229fd7333', 'fd696e8607c36c917f546787976f4fa8', 'contactType', '联系人类型', 'icon-standard-vcard', '/do/contactType/index.htm', '7', '');
INSERT INTO `t_menu` VALUES ('8a2f2500fa46e49dd7ff11b688b6c740', 'fd696e8607c36c917f546787976f4fa8', 'companySize', '公司规模', 'icon-hamburg-customers', '/do/companySize/index.htm', '2', '');
INSERT INTO `t_menu` VALUES ('8fc3b6de8076d1e8c3a6514bd29c4c4b', 'fd696e8607c36c917f546787976f4fa8', 'paymentType', '支付方式', 'icon-standard-arrow-switch', '/do/paymentType/index.htm', '4', '');
INSERT INTO `t_menu` VALUES ('90998bf3c3173da5e8319d70cec8a7ab', '23e47757685c7b53d87b114e0add3966', 'sellReturnReason', '销售退货原因', 'icon-cologne-publish', '/do/', '3', '');
INSERT INTO `t_menu` VALUES ('91ca1b4b197688f21b68a72f69e09a8d', '16ac1df11de350c61722dc7b98cecca7', 'user', '管理员设置', 'icon-hamburg-hire-me', '/do/user/index.htm', '1', '');
INSERT INTO `t_menu` VALUES ('93f0fcfa7cdff069d929723062b53211', '14sdf54157cf483a790f4eea35dsf6f6', 'variables', '系统变量', 'icon-standard-layout-content', '/do/variables/index.htm', '2', '');
INSERT INTO `t_menu` VALUES ('aa165bf67dadbeedeb780b3e92dcdcdb', '23e47757685c7b53d87b114e0add3966', 'sellReturnType', '销售退货方式', 'icon-standard-script', '/do/', '2', '');
INSERT INTO `t_menu` VALUES ('ac892df07f9087fb1c89ac968bb5f555', '16ac1df11de350c61722dc7b98cecca7', 'operalog', '操作日志', 'icon-standard-report-key', '/do/operalog/index.htm', '5', '');
INSERT INTO `t_menu` VALUES ('be0683db6fae2b78f8feb3069adb74d6', '07d7e1fd5f95ab20e7cb3090cd8ac7ba', 'planType', '计划类型', 'icon-cologne-current-work', '/do/', '5', '');
INSERT INTO `t_menu` VALUES ('ccec6c46d43b0e7c40ce5c1ffc0cb3e5', '07d7e1fd5f95ab20e7cb3090cd8ac7ba', 'returnReason', '退货原因', 'icon-cologne-order', '/do/', '3', '');
INSERT INTO `t_menu` VALUES ('d29229a817d81ed224df8c53d2f48f3d', '07d7e1fd5f95ab20e7cb3090cd8ac7ba', 'quotedPriceType', '报价类型', 'icon-cologne-invoice', '/do/quotedPriceType/index.htm', '5', '');
INSERT INTO `t_menu` VALUES ('dc2dcb1b303c05b27e9c01dc23dcc5f7', '07d7e1fd5f95ab20e7cb3090cd8ac7ba', 'purchaseType', '采购类型', 'icon-hamburg-sitemap', '/do/purchaseType/index.htm', '1', '');
INSERT INTO `t_menu` VALUES ('e42b98561176563f930d82c80b041ed8', '16ac1df11de350c61722dc7b98cecca7', 'loginlog', '登录日志', 'icon-standard-report-edit', '/do/loginlog/index.htm', '6', '');
INSERT INTO `t_menu` VALUES ('e550884c5e6c1e94ee70cc833aa1c2b9', '16ac1df11de350c61722dc7b98cecca7', 'role', '角色管理', 'icon-hamburg-customers', '/do/role/index.htm', '3', '');
INSERT INTO `t_menu` VALUES ('ebd8d76ac65eea1c8d65ac5c14da27b0', 'fd696e8607c36c917f546787976f4fa8', 'suppliersIndustry', '行业管理', 'icon-hamburg-config', '/do/suppliersIndustry/index.htm', '1', '');
INSERT INTO `t_menu` VALUES ('fd696e8607c36c917f546787976f4fa8', '42294ceb4cbc4d64cff0cb5eaafb2d2e', 'publicDropDown', '公用下拉项', 'icon-standard-add', '', '1', '');
INSERT INTO `t_menu` VALUES ('sdsfeg4157cf483a790f4eea35ds5675', '14sdf54157cf483a790f4eea35dsf6f6', 'optgroup', '下拉项管理', 'icon-hamburg-sitemap', '/do/optgroup/index.htm', '3', '');

-- ----------------------------
-- Table structure for `t_occupation`
-- ----------------------------
DROP TABLE IF EXISTS `t_occupation`;
CREATE TABLE `t_occupation` (
  `occupation_id` varchar(32) NOT NULL COMMENT '���ID',
  `occupation_code` varchar(32) default NULL COMMENT '��ⵥ��',
  `warehouse_id` varchar(32) default NULL COMMENT '�ֿ�ID',
  `occupation_date` datetime default NULL COMMENT '�������',
  `total_money` decimal(16,4) default NULL,
  `line_people` varchar(32) default NULL,
  `occupation_type_id` varchar(32) default NULL COMMENT '�������ID',
  `attn` varchar(32) default NULL COMMENT '������',
  `department` varchar(32) default NULL COMMENT '���첿��',
  `enabled` enum('disable','enable') default NULL COMMENT 'ö�٣�(����1/����0)',
  `reviewer` varchar(32) default NULL COMMENT '�����',
  `approval_date` datetime default NULL COMMENT '�������',
  `audit_state` enum('authstr','failure','pass') default NULL COMMENT '���״̬',
  `audit_remark` varchar(255) default NULL,
  `remark` varchar(225) default NULL COMMENT '��ע',
  `creater` varchar(32) default NULL COMMENT '������',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY  (`occupation_id`),
  KEY `FK_OccupationType_Occupation_OccupationTypeId` (`occupation_type_id`),
  CONSTRAINT `t_occupation_ibfk_1` FOREIGN KEY (`occupation_type_id`) REFERENCES `t_occupation_type` (`occupation_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_occupation
-- ----------------------------

-- ----------------------------
-- Table structure for `t_occupation_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_occupation_detail`;
CREATE TABLE `t_occupation_detail` (
  `occupation_detail_id` varchar(32) NOT NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(225) default NULL,
  `goods_name` varchar(255) default NULL,
  `goods_batch` varchar(255) default NULL,
  `goods_style` varchar(255) default NULL,
  `goods_unit` varchar(32) default NULL,
  `occupation_id` varchar(32) default NULL,
  `occupy_number` int(4) default NULL,
  `out_number` int(4) default NULL,
  `solve_number` int(4) default NULL,
  `remark` varchar(225) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`occupation_detail_id`),
  KEY `FK_Occupation_OccupationDetail_OccupationId` (`occupation_id`),
  CONSTRAINT `t_occupation_detail_ibfk_1` FOREIGN KEY (`occupation_id`) REFERENCES `t_occupation` (`occupation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_occupation_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_occupation_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_occupation_type`;
CREATE TABLE `t_occupation_type` (
  `occupation_type_id` varchar(32) NOT NULL COMMENT '�������ID',
  `occupation_type_name` varchar(32) default NULL COMMENT '��ƷID',
  `order_num` int(4) default NULL COMMENT '���',
  `enabled` enum('enable','disable') default NULL COMMENT '�Ƿ����� ö�٣�(����1/����0)',
  `creater` varchar(32) default NULL COMMENT 'ö�٣�(����1/����0)',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY  (`occupation_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_occupation_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_operalog`
-- ----------------------------
DROP TABLE IF EXISTS `t_operalog`;
CREATE TABLE `t_operalog` (
  `operalog_id` varchar(32) NOT NULL COMMENT '主键',
  `opera_menu` varchar(255) default NULL COMMENT '操作菜单',
  `opera_penal` varchar(255) default NULL COMMENT '操作面板',
  `opera_method` varchar(255) default NULL COMMENT '操作方法',
  `opera_result` varchar(255) default NULL COMMENT '操作结果',
  `opera_desc` varchar(1000) default NULL COMMENT '返回内容',
  `opera_class` varchar(255) default NULL COMMENT '调用类',
  `opera_md` varchar(255) default NULL COMMENT '调用方法',
  `opera_key` varchar(255) default NULL COMMENT '操作KEY',
  `operator` varchar(32) default NULL COMMENT '操作人',
  `opera_time` datetime default NULL COMMENT '操作世间',
  PRIMARY KEY  (`operalog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_operalog
-- ----------------------------
INSERT INTO `t_operalog` VALUES ('01bf832cb63e3d7018c02e0bb4642a66', '资源管理', '菜单树', '修改', '1', '[计划类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:22:49');
INSERT INTO `t_operalog` VALUES ('0251430b38ece6169ed3959f755fdb87', '资源管理', '操作列表', '编辑', '1', '[分配角色] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-05 14:03:02');
INSERT INTO `t_operalog` VALUES ('07c62789ec7c8d647afe7e59cc141851', '资源管理', '面板列表', '增加', '1', '[销售类型列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 17:27:14');
INSERT INTO `t_operalog` VALUES ('08270adf52c2c69b617aecca2b83c2f9', '部门管理', '部门列表', '修改', '1', '[3]部门信息已修改', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:15:00');
INSERT INTO `t_operalog` VALUES ('088fbf2df842a302007e0459af2fe210', '部门管理', '部门列表', '增加', '1', '[4w35]管理员信息已保存', 'com.glacier.frame.service.system.DepService', 'addDep', 'DepList_add', '超级管理员', '2015-01-07 14:19:21');
INSERT INTO `t_operalog` VALUES ('08ad659198634e4847715e6b4159fcee', '资源管理', '操作列表', '编辑', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 17:51:47');
INSERT INTO `t_operalog` VALUES ('08fed8cdbedd886444baf6ba0a789182', '资源管理', '面板列表', '增加', '0', '面板名称重复，请重新填写!', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 16:52:49');
INSERT INTO `t_operalog` VALUES ('0b34b77b05ec163eb1496bfe730be35d', '资源管理', '操作列表', '编辑', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 13:48:55');
INSERT INTO `t_operalog` VALUES ('0b8e5c48d033a0c627ba264ddb455b18', '资源管理', '菜单树', '增加', '1', '[试试试试] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 17:04:06');
INSERT INTO `t_operalog` VALUES ('0c908ad3ab16521839baa473c1f7ed2f', '资源管理', '菜单树', '增加', '1', '[销售退货方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 17:03:09');
INSERT INTO `t_operalog` VALUES ('0d6a7a04bd0a1e2c6accbd2691ecee4d', '资源管理', '操作列表', '删除', '1', '成功删除了[ 启用/禁用 ]操作!', 'com.glacier.frame.service.system.ActionService', 'delActions', 'ActionList_del', '超级管理员', '2015-01-08 16:36:56');
INSERT INTO `t_operalog` VALUES ('10016914818704b3217fe233c6837525', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:43');
INSERT INTO `t_operalog` VALUES ('111968789f065c358b0ce0d55c38b146', '资源管理', '菜单树', '增加', '1', '[采购类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 16:54:35');
INSERT INTO `t_operalog` VALUES ('11b7dc9efedf8fe3ca21548b3a360fb0', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 10:14:26');
INSERT INTO `t_operalog` VALUES ('137faea58d9ed4cbf67700c47b88eeab', '管理员设置', '管理员列表', '修改', '1', '[fffffff]管理员信息已修改', 'com.glacier.frame.service.system.UserService', 'editUser', 'UserList_edit', '超级管理员', '2015-01-07 11:21:05');
INSERT INTO `t_operalog` VALUES ('138b3b86e47b7b38fec4f05554f1fc92', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:30:05');
INSERT INTO `t_operalog` VALUES ('14752bfc87b460352623564530a5b8fd', '资源管理', '菜单树', '修改', '1', '[试试试试] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:04:14');
INSERT INTO `t_operalog` VALUES ('149d649c24570675e4732e7c99e9546e', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:32:00');
INSERT INTO `t_operalog` VALUES ('15ace030d9f86e9810aeb63f24a0c028', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:31:40');
INSERT INTO `t_operalog` VALUES ('19c8a057713e23e1b97146bf17cb2a75', '资源管理', '面板列表', '增加', '1', '[销售退货方式列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 17:29:28');
INSERT INTO `t_operalog` VALUES ('19e91b93be92c6c5a0add7c6eba9afeb', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:32:18');
INSERT INTO `t_operalog` VALUES ('1a20e7fcf9b4964029b80ca621ca6cf4', '资源管理', '菜单树', '修改', '1', '[退货原因] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:18:45');
INSERT INTO `t_operalog` VALUES ('1abda2946111d3ba62d71fa390cb1cad', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:44');
INSERT INTO `t_operalog` VALUES ('1db5b3a6a9c2bf2331460e6d2571c843', '下拉项管理', '下拉项树', '修改', '0', '禁止选择该下拉项本身以及子下拉项作为上级下拉项', 'com.glacier.frame.service.basicdatas.ParameterOptgroupService', 'editOptgroup', 'OptgroupTree_edit', '超级管理员', '2015-01-06 14:57:02');
INSERT INTO `t_operalog` VALUES ('2265cf590eca9a81238cc77300562de5', '资源管理', '菜单树', '修改', '1', '[公用下拉项] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 09:08:23');
INSERT INTO `t_operalog` VALUES ('23878acd9fb933aebc3ace565c4be330', '资源管理', '操作列表', '编辑', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 16:37:36');
INSERT INTO `t_operalog` VALUES ('25cedcecddbebf12c1c1d4ef565c4729', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 13:45:09');
INSERT INTO `t_operalog` VALUES ('25f6b5ed5dbfa4ace2788be67331e474', '管理员设置', '管理员列表', '修改', '1', '[dfdfr]管理员信息已修改', 'com.glacier.frame.service.system.UserService', 'editUser', 'UserList_edit', '超级管理员', '2015-01-07 11:21:11');
INSERT INTO `t_operalog` VALUES ('270bb4d33e012b605ee0cb2cf7b861af', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 15:05:54');
INSERT INTO `t_operalog` VALUES ('2770b421dfcd1e61f04c9a3732e755fd', '管理员设置', '管理员列表', '增加', '1', '[rrrrr]管理员信息已保存', 'com.glacier.frame.service.system.UserService', 'addUser', 'UserList_add', '超级管理员', '2015-01-07 13:15:28');
INSERT INTO `t_operalog` VALUES ('2a06411f8cf3bba31428d5f96bb5b180', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:43');
INSERT INTO `t_operalog` VALUES ('2a349baadaa13d125f71545a40bb78c8', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:42:54');
INSERT INTO `t_operalog` VALUES ('2a8cc3cac781337271430ae1e95c4897', '资源管理', '面板列表', '增加', '1', '[行业管理列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 13:38:08');
INSERT INTO `t_operalog` VALUES ('2d2598265a084ac7fedd4f6b6d9fb3a9', '资源管理', '面板列表', '增加', '1', '[销售退货原因列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 17:31:23');
INSERT INTO `t_operalog` VALUES ('2f2e3ea7972ac634bcb0f1de2c102aeb', '资源管理', '面板列表', '增加', '0', '面板名称重复，请重新填写!', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 17:13:12');
INSERT INTO `t_operalog` VALUES ('336c36e16528d9633fe29680e0af6d27', '管理员设置', '管理员列表', '修改', '1', '[fffffff]管理员信息已修改', 'com.glacier.frame.service.system.UserService', 'editUser', 'UserList_edit', '超级管理员', '2015-01-07 11:20:56');
INSERT INTO `t_operalog` VALUES ('33fb9d34a23e467e992134df9c52370c', '资源管理', '菜单树', '修改', '1', '[联系人类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:41:40');
INSERT INTO `t_operalog` VALUES ('35ac71c9d37938255f46f684914d1483', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 10:28:37');
INSERT INTO `t_operalog` VALUES ('367ff79b4af54c2b99140481cda33c83', '部门管理', '部门列表', '增加', '1', '[sdfsdf]管理员信息已保存', 'com.glacier.frame.service.system.DepService', 'addDep', 'DepList_add', '超级管理员', '2015-01-06 14:51:30');
INSERT INTO `t_operalog` VALUES ('3773f04e7cc2e6cfb33a57870aa2ab9a', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:42:32');
INSERT INTO `t_operalog` VALUES ('380fcb8f93f3960c64aa2ba650171270', '资源管理', '菜单树', '修改', '1', '[支付方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 15:02:58');
INSERT INTO `t_operalog` VALUES ('38f8fd4b9f0ceb4a01823204c9b0ce03', '报价类型', '报价类型列表', '增加', '1', '信息已保存', 'com.glacier.frame.service.basicdatas.ParQuotedPriceTypeService', 'addParQuotedPriceType', 'QuotedPriceTypeList_add', '超级管理员', '2015-01-09 10:08:37');
INSERT INTO `t_operalog` VALUES ('3923be7aacde70c0df0864d28259d35e', '公司规模', '公司规模列表', '增加', '1', '信息已保存', 'com.glacier.frame.service.basicdatas.ParCompanySizeService', 'addParCompanySize', 'CompanySizeList_add', '超级管理员', '2015-01-09 10:13:44');
INSERT INTO `t_operalog` VALUES ('39852413e607b7efb1affb6fa100b435', '资源管理', '菜单树', '修改', '1', '[公司性质] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 16:22:36');
INSERT INTO `t_operalog` VALUES ('39a86e3db8559d9b0e3b402b7c50d29d', '部门管理', '部门列表', '增加', '1', '[3]管理员信息已保存', 'com.glacier.frame.service.system.DepService', 'addDep', 'DepList_add', '超级管理员', '2015-01-06 15:14:53');
INSERT INTO `t_operalog` VALUES ('3a5b6343c0617600c43a7f894cfd85f2', '资源管理', '菜单树', '修改', '1', '[销售类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:26:58');
INSERT INTO `t_operalog` VALUES ('3ac28a65502dfb731d84426c9cd07870', '资源管理', '菜单树', '修改', '1', '[行业管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 13:41:31');
INSERT INTO `t_operalog` VALUES ('3bc4568ed648b84e2e10d4613b086b06', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 16:25:57');
INSERT INTO `t_operalog` VALUES ('3bcbb31d512657b042c81e8c32d7f26a', '资源管理', '菜单树', '修改', '1', '[交货方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 14:09:57');
INSERT INTO `t_operalog` VALUES ('3c24479ad008018aa876746bb85e8492', '报价类型', '报价类型列表', '删除', '1', '成功删除了报价类型为:[ 55 ]的信息', 'com.glacier.frame.service.basicdatas.ParQuotedPriceTypeService', 'delQuotedPriceType', 'QuotedPriceTypeList_del', '超级管理员', '2015-01-09 10:08:31');
INSERT INTO `t_operalog` VALUES ('4124769d5cbf55c51995a873d8231e13', '资源管理', '操作列表', '编辑', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 17:58:33');
INSERT INTO `t_operalog` VALUES ('4438bb061967d8964443bb74ad028173', '资源管理', '操作列表', '删除', '1', '成功删除了[ 启用/禁用 ]操作!', 'com.glacier.frame.service.system.ActionService', 'delActions', 'ActionList_del', '超级管理员', '2015-01-08 16:38:29');
INSERT INTO `t_operalog` VALUES ('448197990d2088c33ad7b8d404bca708', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:25:36');
INSERT INTO `t_operalog` VALUES ('449e876a9fab93be56c4a4e5fcac361d', '资源管理', '菜单树', '增加', '1', '[行业管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 09:00:23');
INSERT INTO `t_operalog` VALUES ('467841d62d88664bc0712d723f66e9ea', '资源管理', '面板列表', '增加', '1', '[公司规模列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 14:38:51');
INSERT INTO `t_operalog` VALUES ('46b1a6e3f7006e5082c5ee7d5d932ffe', '下拉项管理', '下拉项树', '修改', '0', '禁止选择该下拉项本身以及子下拉项作为上级下拉项', 'com.glacier.frame.service.basicdatas.ParameterOptgroupService', 'editOptgroup', 'OptgroupTree_edit', '超级管理员', '2015-01-06 14:57:04');
INSERT INTO `t_operalog` VALUES ('46e5996ff37872bcb97d2c484b360d5e', '资源管理', '菜单树', '修改', '1', '[交货方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 13:40:55');
INSERT INTO `t_operalog` VALUES ('4714cba21e3343962e5068e84e483794', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 13:43:24');
INSERT INTO `t_operalog` VALUES ('4719579fe8b25afddf7c645491630fa2', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:21:31');
INSERT INTO `t_operalog` VALUES ('486a915efedcf2749d7b57b095d9021d', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 16:25:28');
INSERT INTO `t_operalog` VALUES ('48e076ffd64b555cabdf0d2400fd06e1', '资源管理', '操作列表', '编辑', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 17:16:06');
INSERT INTO `t_operalog` VALUES ('49183527459c2a6d889f0d52e0816fa8', '资源管理', '菜单树', '修改', '1', '[信用等级] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 15:54:10');
INSERT INTO `t_operalog` VALUES ('498aff93471c27e00610c92dab7645b0', '资源管理', '面板列表', '增加', '1', '[退货方式列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 17:17:05');
INSERT INTO `t_operalog` VALUES ('4a7af59acc16804c2b3b1b3c60efeff7', '联系人类型', '联系人类型列表', '增加', '1', '[老总] 联系人类型信息已保存', 'com.glacier.frame.service.basicdatas.ParContactTypeService', 'addParContactType', 'ContactTypeList_add', '超级管理员', '2015-01-08 17:50:00');
INSERT INTO `t_operalog` VALUES ('4aafa90dedeaaf141e49520a0c4c0705', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 16:26:08');
INSERT INTO `t_operalog` VALUES ('4d2af559ca82d9f620fd430a484ba442', '资源管理', '菜单树', '修改', '1', '[行业管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 09:01:15');
INSERT INTO `t_operalog` VALUES ('4d9d67a25ac2a7af0c249f0bed84356a', '资源管理', '菜单树', '增加', '1', '[联系人类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 09:06:02');
INSERT INTO `t_operalog` VALUES ('4ddcc18a50eb46469ad638f875f951f0', '资源管理', '面板列表', '增加', '1', '[退货原因列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 17:19:05');
INSERT INTO `t_operalog` VALUES ('4f1a1a5cb513c421fde26e209a5ba770', '部门管理', '部门列表', '增加', '1', '[sdfsd]管理员信息已保存', 'com.glacier.frame.service.system.DepService', 'addDep', 'DepList_add', '超级管理员', '2015-01-06 14:51:41');
INSERT INTO `t_operalog` VALUES ('4f9d76cd92ffe1c64e2f127d8462e981', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:27:53');
INSERT INTO `t_operalog` VALUES ('4fbf937b67ed86fbf7aae1d264a43d7e', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 10:13:58');
INSERT INTO `t_operalog` VALUES ('4fc229e3cdccd179c66c988f6e98a702', '资源管理', '菜单树', '修改', '1', '[销售退货方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:29:11');
INSERT INTO `t_operalog` VALUES ('51724f6c3a3eb5a7004cc25b0155e23e', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:43');
INSERT INTO `t_operalog` VALUES ('51d3667bddbe5472d9882f9f3959fcb5', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 15:04:45');
INSERT INTO `t_operalog` VALUES ('523891f06def2a6f7e2cefddae36fecd', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 15:57:56');
INSERT INTO `t_operalog` VALUES ('52e7cfd9f310aedbdab7f32dc9334e35', '资源管理', '菜单树', '修改', '1', '[公司规模] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 14:38:19');
INSERT INTO `t_operalog` VALUES ('5509c210bc1711f4ea5f97a1d6aef182', '资源管理', '菜单树', '增加', '1', '[采购管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 16:48:27');
INSERT INTO `t_operalog` VALUES ('55c43946cfcacd9b09d0e4c24c29a3e2', '资源管理', '菜单树', '修改', '1', '[销售管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 16:59:07');
INSERT INTO `t_operalog` VALUES ('57279d70ab067d060c33e2864bac5b69', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 14:41:03');
INSERT INTO `t_operalog` VALUES ('577ee7d55f94e4f37d293fcde0f5fa15', '资源管理', '操作列表', '编辑', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 16:38:00');
INSERT INTO `t_operalog` VALUES ('58a7f9f03a36ce49c10a94f65d98254f', '资源管理', '菜单树', '增加', '1', '[退货原因] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 16:56:34');
INSERT INTO `t_operalog` VALUES ('5b21a05f097bf54e02dc49ac9b678991', '资源管理', '菜单树', '修改', '0', '菜单名称重复', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:04:32');
INSERT INTO `t_operalog` VALUES ('5c3933f162051b92ebe153f013732532', '资源管理', '菜单树', '增加', '1', '[交货方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 09:02:37');
INSERT INTO `t_operalog` VALUES ('5d8d02349a90d5af5aaf16ec553d375d', '部门管理', '部门列表', '增加', '1', '[44]管理员信息已保存', 'com.glacier.frame.service.system.DepService', 'addDep', 'DepList_add', '超级管理员', '2015-01-07 13:49:56');
INSERT INTO `t_operalog` VALUES ('636cb3f9cf477e910e2b5945ebb15a24', '公司性质', '公司性质列表', '增加', '1', '信息已保存', 'com.glacier.frame.service.basicdatas.ParSuppliersNatureService', 'addParSuppliersNature', 'SuppliersNatureList_add', '超级管理员', '2015-01-08 16:33:23');
INSERT INTO `t_operalog` VALUES ('64013fa6faa9d22881f723ac730d8741', '报价类型', '报价类型列表', '增加', '1', '信息已保存', 'com.glacier.frame.service.basicdatas.ParQuotedPriceTypeService', 'addParQuotedPriceType', 'QuotedPriceTypeList_add', '超级管理员', '2015-01-09 10:08:27');
INSERT INTO `t_operalog` VALUES ('64d32b6b6cf0abac303add824fd45edd', '资源管理', '操作列表', '增加', '1', '[添加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 13:42:41');
INSERT INTO `t_operalog` VALUES ('653952740615a97a65abec68c8f435c7', '管理员设置', '管理员列表', '增加', '1', '[fffffff]管理员信息已保存', 'com.glacier.frame.service.system.UserService', 'addUser', 'UserList_add', '超级管理员', '2015-01-07 11:20:35');
INSERT INTO `t_operalog` VALUES ('6578593860033f60b4d9afc6899b5357', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-05 14:00:47');
INSERT INTO `t_operalog` VALUES ('65f9200eb6fbbfa14b54d13d78fdc8f0', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 14:40:21');
INSERT INTO `t_operalog` VALUES ('66f9065ffd906d3f8c5acddeb7928159', '资源管理', '菜单树', '增加', '1', '[销售类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 17:00:08');
INSERT INTO `t_operalog` VALUES ('68595e1c2eaea8e4d931a163b7f40391', '部门管理', '部门列表', '修改', '1', '[开发总部]部门信息已修改', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 14:56:17');
INSERT INTO `t_operalog` VALUES ('68675a429e4afe144955476892e0570d', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 10:13:15');
INSERT INTO `t_operalog` VALUES ('69c31362494bd4486004c4678908fcb0', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-09 10:02:51');
INSERT INTO `t_operalog` VALUES ('6a9c27f58ea9b0baf0e3e4778b5f96ec', '管理员设置', '管理员列表', '增加', '1', '[dfffff]管理员信息已保存', 'com.glacier.frame.service.system.UserService', 'addUser', 'UserList_add', '超级管理员', '2015-01-07 11:22:50');
INSERT INTO `t_operalog` VALUES ('6b6d9e65a33eff0dccdafe5a36d1e5f2', '公司规模', '公司规模列表', '增加', '1', '信息已保存', 'com.glacier.frame.service.basicdatas.ParCompanySizeService', 'addParCompanySize', 'CompanySizeList_add', '超级管理员', '2015-01-09 10:13:29');
INSERT INTO `t_operalog` VALUES ('6bb9bd48956933665094302c01e29ce6', '资源管理', '菜单树', '增加', '1', '[基础资料] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 08:56:38');
INSERT INTO `t_operalog` VALUES ('6c565c9f646a869fa4586a1092e34cdc', '资源管理', '菜单树', '增加', '0', '菜单名称重复', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 17:01:29');
INSERT INTO `t_operalog` VALUES ('6dc53d9327d8d90f8567e35911519a0e', '资源管理', '面板列表', '增加', '1', '[联系人类型列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 17:42:00');
INSERT INTO `t_operalog` VALUES ('71ce8e34087e7623373ea29405d9f230', '资源管理', '菜单树', '修改', '1', '[采购类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:11:13');
INSERT INTO `t_operalog` VALUES ('721ff2c87e1163a411306fde45e012fe', '部门管理', '部门列表', '修改', '1', '[开发总部]部门信息已修改', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 14:55:17');
INSERT INTO `t_operalog` VALUES ('72d71ea6ca80c2a1ca93daa6c20b1ed8', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:23:24');
INSERT INTO `t_operalog` VALUES ('72d8a3bb0b9ef86fea4d89e852188fdb', '管理员设置', '管理员列表', '修改', '1', '[fffffff]管理员信息已修改', 'com.glacier.frame.service.system.UserService', 'editUser', 'UserList_edit', '超级管理员', '2015-01-07 11:20:42');
INSERT INTO `t_operalog` VALUES ('72fb88721d3d48a681845a4bcfa4b3ab', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:30:19');
INSERT INTO `t_operalog` VALUES ('731ad4a422d415b212cc6885f123d76a', '资源管理', '菜单树', '增加', '1', '[销售管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 16:58:52');
INSERT INTO `t_operalog` VALUES ('747ac9e690c219458639da91aa54e22d', '部门管理', '部门列表', '修改', '1', '[2]部门信息已修改', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-07 13:47:34');
INSERT INTO `t_operalog` VALUES ('74a193976c915075d7e796083b55dec2', '资源管理', '菜单树', '修改', '1', '[角色管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-05 13:58:56');
INSERT INTO `t_operalog` VALUES ('753bb8010f284bbc2c435f14fe146c8b', '资源管理', '菜单树', '修改', '1', '[报价类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-09 10:00:17');
INSERT INTO `t_operalog` VALUES ('7603f9628ceb75ca1782fc0dadf0ff0d', '部门管理', '部门列表', '增加', '1', '[管理部]管理员信息已保存', 'com.glacier.frame.service.system.DepService', 'addDep', 'DepList_add', '超级管理员', '2015-01-06 17:10:21');
INSERT INTO `t_operalog` VALUES ('766bf77abac6f1d3b61dc228e86ca484', '资源管理', '菜单树', '增加', '1', '[信用等级] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 09:05:20');
INSERT INTO `t_operalog` VALUES ('77b7884ddc945ed6a5d6a89b22b3bc58', '报价类型', '报价类型列表', '删除', '1', '成功删除了报价类型为:[ 55,33 ]的信息', 'com.glacier.frame.service.basicdatas.ParQuotedPriceTypeService', 'delQuotedPriceType', 'QuotedPriceTypeList_del', '超级管理员', '2015-01-09 10:08:41');
INSERT INTO `t_operalog` VALUES ('79024e7543756e086aff18739e000b51', '资源管理', '菜单树', '修改', '1', '[销售退货原因] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:06:20');
INSERT INTO `t_operalog` VALUES ('7aaf56b1faa67adc386191a1f890b925', '资源管理', '菜单树', '增加', '1', '[支付方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 09:03:09');
INSERT INTO `t_operalog` VALUES ('7ad4847a189b0f5c385c30ab87f67da5', '管理员设置', '管理员列表', '修改', '1', '[fffffff]管理员信息已修改', 'com.glacier.frame.service.system.UserService', 'editUser', 'UserList_edit', '超级管理员', '2015-01-07 11:20:47');
INSERT INTO `t_operalog` VALUES ('7afc282718057f033c9af4293ed7556a', '部门管理', '部门列表', '增加', '1', '[dfdsf]管理员信息已保存', 'com.glacier.frame.service.system.DepService', 'addDep', 'DepList_add', '超级管理员', '2015-01-06 14:43:47');
INSERT INTO `t_operalog` VALUES ('7be26378d46a601776a580b1268a8a85', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:42');
INSERT INTO `t_operalog` VALUES ('7c71af9175057a05cffb7f02e0af9a15', '资源管理', '菜单树', '删除', '1', '成功删除名称为：[ 联系人类型 ]菜单', 'com.glacier.frame.service.system.MenuService', 'delMenu', 'MenuTree_del', '超级管理员', '2015-01-08 16:38:45');
INSERT INTO `t_operalog` VALUES ('7c9f8f3f551050275231455fcda6a877', '资源管理', '菜单树', '修改', '1', '[交货方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 13:39:36');
INSERT INTO `t_operalog` VALUES ('7d81edbbf9c9c758cb2e784b5d9eee47', '资源管理', '菜单树', '增加', '1', '[采购类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 16:50:48');
INSERT INTO `t_operalog` VALUES ('7d868b1d91c4f582bd060e9fcaa05bc4', '管理员设置', '管理员列表', '增加', '1', '[asdfs]管理员信息已保存', 'com.glacier.frame.service.system.UserService', 'addUser', 'UserList_add', '超级管理员', '2015-01-07 13:15:44');
INSERT INTO `t_operalog` VALUES ('7f61b8705dd5876d5f90740a23cc6917', '资源管理', '菜单树', '修改', '1', '[交货方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 14:07:44');
INSERT INTO `t_operalog` VALUES ('810e4b05e289f06effc21cdf283e7926', '资源管理', '面板列表', '修改', '1', '[报价类型列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'editPanel', 'PanelList_edit', '超级管理员', '2015-01-08 17:25:03');
INSERT INTO `t_operalog` VALUES ('8235fe6e029c50dc3a70428291faf736', '资源管理', '面板列表', '增加', '1', '[公司性质列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 16:22:54');
INSERT INTO `t_operalog` VALUES ('836a120f02e97fec1993d0d1b5ef5c56', '资源管理', '面板列表', '修改', '1', '[行业管理列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'editPanel', 'PanelList_edit', '超级管理员', '2015-01-08 13:46:50');
INSERT INTO `t_operalog` VALUES ('8422befc7e60fddd28a6068993e95f88', '部门管理', '部门列表', '增加', '1', '[33]管理员信息已保存', 'com.glacier.frame.service.system.DepService', 'addDep', 'DepList_add', '超级管理员', '2015-01-07 14:10:05');
INSERT INTO `t_operalog` VALUES ('84687eb4259d2398f9fd72abbbc3fa72', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:44');
INSERT INTO `t_operalog` VALUES ('85800d5dd9acf9ef7dcaa6b376fc2626', '管理员设置', '管理员列表', '修改', '1', '[dfffff]管理员信息已修改', 'com.glacier.frame.service.system.UserService', 'editUser', 'UserList_edit', '超级管理员', '2015-01-07 13:15:55');
INSERT INTO `t_operalog` VALUES ('85eefa1220afd94872a956f179359d70', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 15:56:30');
INSERT INTO `t_operalog` VALUES ('88011da3b0a96acfcdb94216c9b8d39d', '部门管理', '部门列表', '修改', '1', '[32432]部门信息已修改', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-07 13:28:43');
INSERT INTO `t_operalog` VALUES ('887f3b59c5e198a87ac2bb1f2acdc597', '管理员设置', '管理员列表', '修改', '1', '[adminTest]管理员信息已修改', 'com.glacier.frame.service.system.UserService', 'editUser', 'UserList_edit', '超级管理员', '2015-01-07 13:16:11');
INSERT INTO `t_operalog` VALUES ('8a14edfc983a6dbe59f56ec22c7e65b0', '资源管理', '菜单树', '修改', '1', '[销售管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:00:44');
INSERT INTO `t_operalog` VALUES ('8c400821cec3632bf4a5b3717614330d', '资源管理', '菜单树', '修改', '1', '[采购管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 16:50:58');
INSERT INTO `t_operalog` VALUES ('8c66371c57798de6864f778c9be59c6d', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:42');
INSERT INTO `t_operalog` VALUES ('8de2f6b8c3c5b71562a40382a170ab17', '资源管理', '菜单树', '修改', '1', '[采购类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:14:25');
INSERT INTO `t_operalog` VALUES ('8f92162601fcc6a6803d3d6ffc5a8890', '资源管理', '面板列表', '增加', '1', '[恩恩] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 17:14:10');
INSERT INTO `t_operalog` VALUES ('91890012aceb197e353149876d69b3ed', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:42');
INSERT INTO `t_operalog` VALUES ('9278f38c6cd10424cbf47406bc657f5b', '资源管理', '面板列表', '增加', '1', '[支付方式列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 15:04:12');
INSERT INTO `t_operalog` VALUES ('954f29ddea57b9b65e47c1fb70e3c563', '资源管理', '菜单树', '修改', '1', '[退货方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:16:40');
INSERT INTO `t_operalog` VALUES ('9645519bbbc2bd6c39236dece82c8804', '部门管理', '部门列表', '修改', '1', '[33]部门信息已修改', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 14:55:01');
INSERT INTO `t_operalog` VALUES ('96d10ff8a5ce349e9c05249dd2aa267b', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:18:11');
INSERT INTO `t_operalog` VALUES ('972d6bdad29b43b4baf70c9944de3e34', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 15:05:36');
INSERT INTO `t_operalog` VALUES ('97661a3dfc77147aff40b5ba9ceff522', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 17:43:37');
INSERT INTO `t_operalog` VALUES ('97b2d0b7194ad2499e975711f3ee75c5', '部门管理', '部门列表', '修改', '1', '[开发总部]部门信息已修改', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 14:56:27');
INSERT INTO `t_operalog` VALUES ('9967d61d303c281585166b3f536b4175', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:29:46');
INSERT INTO `t_operalog` VALUES ('99c8ce9ac3dc91b802ac4cc1dd71f414', '管理员设置', '管理员列表', '修改', '1', '[rrrrr]管理员信息已修改', 'com.glacier.frame.service.system.UserService', 'editUser', 'UserList_edit', '超级管理员', '2015-01-07 13:15:48');
INSERT INTO `t_operalog` VALUES ('9b9bc5c81576fc34c708c513dff04bfb', '公司性质', '公司性质列表', '增加', '1', '信息已保存', 'com.glacier.frame.service.basicdatas.ParSuppliersNatureService', 'addParSuppliersNature', 'SuppliersNatureList_add', '超级管理员', '2015-01-08 16:35:42');
INSERT INTO `t_operalog` VALUES ('9bc2e233b2713c07fd57cca9b96d90dd', '资源管理', '菜单树', '修改', '1', '[报价类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:24:37');
INSERT INTO `t_operalog` VALUES ('9c6bd14e59abe593e8e37c2d603aa01f', '资源管理', '操作列表', '编辑', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-09 10:02:04');
INSERT INTO `t_operalog` VALUES ('9f376f3042b462673568575163f95803', '资源管理', '面板列表', '增加', '1', '[部门列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-05 13:59:42');
INSERT INTO `t_operalog` VALUES ('a27bb4a9473e3f311544aa14eff7b278', '资源管理', '面板列表', '增加', '0', '面板名称重复，请重新填写!', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 17:11:40');
INSERT INTO `t_operalog` VALUES ('a2ba571a617bd8bee0441acc99fa09c3', '资源管理', '操作列表', '编辑', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-09 10:01:11');
INSERT INTO `t_operalog` VALUES ('a326aab14958e6137e36cdafd893d857', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:43');
INSERT INTO `t_operalog` VALUES ('a3565971d9b825cec6e1428c56923cf5', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-05 14:01:36');
INSERT INTO `t_operalog` VALUES ('a3ed5d6f0c48841e5287d1c9cc7774ce', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:24:09');
INSERT INTO `t_operalog` VALUES ('a5bbe2d5f258542244e14bd6c5975f61', '资源管理', '操作列表', '增加', '1', '[分配角色] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-05 14:02:43');
INSERT INTO `t_operalog` VALUES ('a5c4b5363d23467e4231eb052f1c68c3', '资源管理', '菜单树', '修改', '1', '[销售退货方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:04:47');
INSERT INTO `t_operalog` VALUES ('a5f8687067510c800b066a8889885b62', '资源管理', '菜单树', '增加', '1', '[部门管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-05 13:58:51');
INSERT INTO `t_operalog` VALUES ('a624c5f006fa8d36dacf74a404e58a05', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 15:57:04');
INSERT INTO `t_operalog` VALUES ('a738a62cb5454a35dca5e226e5af87a8', '资源管理', '操作列表', '编辑', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 16:37:53');
INSERT INTO `t_operalog` VALUES ('a775e17b5c5a006354b60ddda5264f5b', '资源管理', '菜单树', '修改', '1', '[登录日志] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-05 13:59:13');
INSERT INTO `t_operalog` VALUES ('a884284bf10a871e12eee23808ca7231', '资源管理', '操作列表', '编辑', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 17:30:31');
INSERT INTO `t_operalog` VALUES ('a8e9ca8e8363bf316ea7ba3f53e24f6c', '资源管理', '菜单树', '修改', '1', '[行业管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 09:01:21');
INSERT INTO `t_operalog` VALUES ('a8f26a1f6bff7296444621becda65359', '资源管理', '面板列表', '增加', '1', '[采购类型列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 16:51:40');
INSERT INTO `t_operalog` VALUES ('a8fee91b9ea8742fb8abf8adbc6aac2b', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:42');
INSERT INTO `t_operalog` VALUES ('a9c0ef8cb4a97ef65f4850ec85e2a60c', '报价类型', '报价类型列表', '增加', '1', '信息已保存', 'com.glacier.frame.service.basicdatas.ParQuotedPriceTypeService', 'addParQuotedPriceType', 'QuotedPriceTypeList_add', '超级管理员', '2015-01-09 10:08:52');
INSERT INTO `t_operalog` VALUES ('a9cbba21bba93b342c72a13b7ca0c9bc', '部门管理', '部门列表', '增加', '1', '[324]管理员信息已保存', 'com.glacier.frame.service.system.DepService', 'addDep', 'DepList_add', '超级管理员', '2015-01-07 13:49:48');
INSERT INTO `t_operalog` VALUES ('ac18593ceee67323fcd9561174af9dde', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:28:16');
INSERT INTO `t_operalog` VALUES ('ad55eebb33690c5bd9a5dc36025804bf', '资源管理', '操作列表', '编辑', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 16:38:12');
INSERT INTO `t_operalog` VALUES ('adc5e852d1d9b63b2a5f9600b8d06f7b', '部门管理', '部门列表', '修改', '1', '[开发总部]部门信息已修改', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:33');
INSERT INTO `t_operalog` VALUES ('ae2060538bd7e680b53c93062a54a2a1', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:41');
INSERT INTO `t_operalog` VALUES ('afdc572956a67378be1b5dfdf0bc6318', '管理员设置', '管理员列表', '增加', '1', '[dfdfr]管理员信息已保存', 'com.glacier.frame.service.system.UserService', 'addUser', 'UserList_add', '超级管理员', '2015-01-07 11:13:42');
INSERT INTO `t_operalog` VALUES ('b1e9a5013c2b646b9cbbf207532ab60f', '资源管理', '操作列表', '编辑', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 17:58:48');
INSERT INTO `t_operalog` VALUES ('b4549c47f278968e4a6763a78815b585', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 09:07:14');
INSERT INTO `t_operalog` VALUES ('b5cc55e31ec450065c8bade7d8325d49', '部门管理', '部门列表', '修改', '1', '[开发总部]部门信息已修改', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 17:11:01');
INSERT INTO `t_operalog` VALUES ('b7280c8abfa9525cc0404fcbc08567d4', '资源管理', '操作列表', '增加', '1', '[启用/禁用] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 13:44:54');
INSERT INTO `t_operalog` VALUES ('b7f879e6145cf797076d6e777e91e41e', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-05 14:34:57');
INSERT INTO `t_operalog` VALUES ('b88cf339a31c3d721e72a5e5fb76640a', '资源管理', '面板列表', '修改', '1', '[交货方式列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'editPanel', 'PanelList_edit', '超级管理员', '2015-01-08 14:07:03');
INSERT INTO `t_operalog` VALUES ('b9bc0e93aaf8088b9ee852c4a380a885', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:15:19');
INSERT INTO `t_operalog` VALUES ('ba62bc8580c24ba620959e6305527a32', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 14:40:49');
INSERT INTO `t_operalog` VALUES ('bc8004b95ceea0f7e890baff85e277be', '资源管理', '面板列表', '增加', '1', '[信用等级列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 15:54:57');
INSERT INTO `t_operalog` VALUES ('bd6a8fd896426175aa3a8fdab1879e18', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 13:47:04');
INSERT INTO `t_operalog` VALUES ('be3fafb11c1931ed30260dae61b779b9', '资源管理', '菜单树', '增加', '1', '[联系人类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 17:41:19');
INSERT INTO `t_operalog` VALUES ('c2044b9547616a5283edb0e6c99ff41e', '资源管理', '菜单树', '修改', '1', '[资源管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-05 13:59:04');
INSERT INTO `t_operalog` VALUES ('c27874b5ab4381468a1bdfc233968f1f', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:15:42');
INSERT INTO `t_operalog` VALUES ('c575728e159e86f452977c9823d3cf71', '资源管理', '面板列表', '增加', '1', '[计划类型列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 17:23:08');
INSERT INTO `t_operalog` VALUES ('c5d4f8653fab38d7fe0907a9089000f7', '资源管理', '菜单树', '增加', '1', '[公司规模] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 09:01:58');
INSERT INTO `t_operalog` VALUES ('c8f9ac73c364d680928a5bf575723d80', '资源管理', '操作列表', '增加', '1', '[启用/禁用] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 15:57:45');
INSERT INTO `t_operalog` VALUES ('c9af7767561656bda491c8f2e56e3111', '公司规模', '公司规模列表', '新增', '1', '信息已保存', 'com.glacier.frame.service.basicdatas.ParCompanySizeService', 'addParCompanySize', 'CompanySizeList_add', '超级管理员', '2015-01-08 14:43:22');
INSERT INTO `t_operalog` VALUES ('c9d575fce3a74ddb5b1134651c27d8b8', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 17:32:54');
INSERT INTO `t_operalog` VALUES ('cc7917981696b7a2c3ff8b0eff4a9818', '资源管理', '菜单树', '删除', '1', '成功删除名称为：[ 采购类型 ]菜单', 'com.glacier.frame.service.system.MenuService', 'delMenu', 'MenuTree_del', '超级管理员', '2015-01-08 16:53:44');
INSERT INTO `t_operalog` VALUES ('ce1d3256b2743ac90d0586538965e944', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 15:05:10');
INSERT INTO `t_operalog` VALUES ('ce2d7f0c1ff77df4658c0595c444a90f', '资源管理', '操作列表', '增加', '1', '[添加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 15:55:52');
INSERT INTO `t_operalog` VALUES ('ce536d6968633c38cf48e0ba9592340a', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:21:51');
INSERT INTO `t_operalog` VALUES ('ce65e410b63bb53d35b5c8dd3c879353', '公司规模', '公司规模列表', '增加', '1', '信息已保存', 'com.glacier.frame.service.basicdatas.ParCompanySizeService', 'addParCompanySize', 'CompanySizeList_add', '超级管理员', '2015-01-09 10:13:12');
INSERT INTO `t_operalog` VALUES ('ceccec6f34aedc2e0e0cf53cb44a7586', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:21:11');
INSERT INTO `t_operalog` VALUES ('d24ece60a6b66d4a2e81a156000536aa', '部门管理', '部门列表', '增加', '1', '[2]管理员信息已保存', 'com.glacier.frame.service.system.DepService', 'addDep', 'DepList_add', '超级管理员', '2015-01-07 13:47:29');
INSERT INTO `t_operalog` VALUES ('d257e31b19d60e48fea69fa3dc44b2b2', '资源管理', '菜单树', '增加', '1', '[报价类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 16:57:57');
INSERT INTO `t_operalog` VALUES ('d3e94148dc7e38ff826a69d98f328c73', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 17:08:07');
INSERT INTO `t_operalog` VALUES ('d46232b248599d5dc6e36a1d548eb5d2', '资源管理', '菜单树', '增加', '1', '[共用下拉项] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 08:59:41');
INSERT INTO `t_operalog` VALUES ('d58b6daab6e16fcc3562558ee522b4c1', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:25:21');
INSERT INTO `t_operalog` VALUES ('d670c4cff8564c95dd58b0edff372f0f', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:25:57');
INSERT INTO `t_operalog` VALUES ('d73835daff67250d946d65efa9f92fb8', '报价类型', '报价类型列表', '增加', '1', '信息已保存', 'com.glacier.frame.service.basicdatas.ParQuotedPriceTypeService', 'addParQuotedPriceType', 'QuotedPriceTypeList_add', '超级管理员', '2015-01-09 10:07:46');
INSERT INTO `t_operalog` VALUES ('d90390e05ca89fca8c3957a242072577', '下拉项管理', '下拉项树', '增加', '1', '[大幅度] 下拉项信息已保存', 'com.glacier.frame.service.basicdatas.ParameterOptgroupService', 'addOptgroup', 'OptgroupTree_add', '超级管理员', '2015-01-06 14:48:53');
INSERT INTO `t_operalog` VALUES ('d9711c3db6f4237baa669b5b0066f845', '资源管理', '操作列表', '编辑', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 17:58:07');
INSERT INTO `t_operalog` VALUES ('d97862dfd06fb26fba6914ab12f0d544', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:43:17');
INSERT INTO `t_operalog` VALUES ('da225c3d2ea3a95fdf4a4106b5a1db9c', '资源管理', '菜单树', '修改', '1', '[行业管理] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 13:39:25');
INSERT INTO `t_operalog` VALUES ('dd2bd131a84623f7408d0841a37e3b4d', '支付方式', '支付方式列表', '增加', '1', '[现金] 支付方式信息已保存', 'com.glacier.frame.service.basicdatas.ParPaymentTypeService', 'addParPaymentType', 'PaymentTypeList_add', '超级管理员', '2015-01-08 15:07:28');
INSERT INTO `t_operalog` VALUES ('de5b754b75715e314fb3fa491c78d7aa', '部门管理', '部门列表', '增加', '1', '[32432]管理员信息已保存', 'com.glacier.frame.service.system.DepService', 'addDep', 'DepList_add', '超级管理员', '2015-01-07 13:28:39');
INSERT INTO `t_operalog` VALUES ('deed54eec5dac0b11fd8a4cc4a0a5044', '资源管理', '菜单树', '修改', '1', '[信用等级] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 15:54:33');
INSERT INTO `t_operalog` VALUES ('dfb9542f586219f39f2cc454efe395d5', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 16:24:26');
INSERT INTO `t_operalog` VALUES ('e0268b7eab46602eade52c79f4bc37f8', '公司规模', '公司规模列表', '新增', '1', '信息已保存', 'com.glacier.frame.service.basicdatas.ParCompanySizeService', 'addParCompanySize', 'CompanySizeList_add', '超级管理员', '2015-01-08 14:42:59');
INSERT INTO `t_operalog` VALUES ('e07c3d557a5eb96ca601722cc7c06116', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:27:38');
INSERT INTO `t_operalog` VALUES ('e0cd1c7b87938663bf28e8b60837fa2a', '公司性质', '公司性质列表', '删除', '1', '成功删除了公司性质为:[ 22 ]的信息', 'com.glacier.frame.service.basicdatas.ParSuppliersNatureService', 'delSuppliersNature', 'SuppliersNatureList_del', '超级管理员', '2015-01-08 16:35:28');
INSERT INTO `t_operalog` VALUES ('e1363245aa83917b33772ea3eb2a357a', '资源管理', '面板列表', '增加', '1', '[采购类型集合] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 17:13:44');
INSERT INTO `t_operalog` VALUES ('e447a555bdaf45f8971bfab892271397', '角色管理', '角色列表', '授权', '1', '权限信息已保存', 'com.glacier.frame.service.system.AuthorityService', 'saveRoleAuths', 'RoleList_auth', '超级管理员', '2015-01-08 14:08:07');
INSERT INTO `t_operalog` VALUES ('e4e83a02418607b13441b1214fc46c02', '资源管理', '菜单树', '增加', '1', '[退货方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 16:55:35');
INSERT INTO `t_operalog` VALUES ('e5135e09ffcf20b0838e91f1ee2e85b5', '资源管理', '菜单树', '增加', '0', '英文名称重复', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 09:00:52');
INSERT INTO `t_operalog` VALUES ('e637ab8ae0324e07e1b71534bdb0ee97', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:15:55');
INSERT INTO `t_operalog` VALUES ('e68d48da8af4d55fb663f219d57e9969', '公司规模', '公司规模列表', '删除', '1', '成功删除了公司规模为:[ 500-1000,100-500人 ]的信息', 'com.glacier.frame.service.basicdatas.ParCompanySizeService', 'delCarType', 'CompanySizeList_del', '超级管理员', '2015-01-09 10:12:41');
INSERT INTO `t_operalog` VALUES ('e7f2a7e6f8365bb8d1569fd38e62fab2', '管理员设置', '管理员列表', '修改', '1', '[dfffff]管理员信息已修改', 'com.glacier.frame.service.system.UserService', 'editUser', 'UserList_edit', '超级管理员', '2015-01-07 11:22:57');
INSERT INTO `t_operalog` VALUES ('e830faf9ca51e5558fe4dfd851728129', '资源管理', '操作列表', '增加', '1', '[新增] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 14:39:39');
INSERT INTO `t_operalog` VALUES ('e8d7f5bf914c2686ec13ac976cfac9ee', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:23:50');
INSERT INTO `t_operalog` VALUES ('e8eb10e001043ad06e2269df21d8bf99', '资源管理', '菜单树', '增加', '1', '[计划类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 16:57:15');
INSERT INTO `t_operalog` VALUES ('e9c4ee104ba22142ee04e0289f31d16f', '资源管理', '操作列表', '编辑', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-09 10:02:32');
INSERT INTO `t_operalog` VALUES ('ea1ed14c95e50f9fd7d20c163073506b', '资源管理', '菜单树', '增加', '1', '[下拉项维护] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 08:58:09');
INSERT INTO `t_operalog` VALUES ('ed3de2dd5e317343b29f7964a16bb93f', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-05 14:02:02');
INSERT INTO `t_operalog` VALUES ('eda07e3d6a6ca80210fef728a0805a4b', '资源管理', '菜单树', '修改', '1', '[交货方式] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 10:08:41');
INSERT INTO `t_operalog` VALUES ('eec4c18b3906d6c531fe7af4984c8082', '资源管理', '菜单树', '修改', '1', '[销售退货原因] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:31:02');
INSERT INTO `t_operalog` VALUES ('efd6c0db686bfea4b51c836e59591d60', '资源管理', '菜单树', '修改', '1', '[采购类型] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'editMenu', 'MenuTree_edit', '超级管理员', '2015-01-08 17:56:46');
INSERT INTO `t_operalog` VALUES ('f25972b41d28d8d9da837d9715da45fe', '资源管理', '面板列表', '增加', '1', '[交货方式列表] 面板信息已保存', 'com.glacier.frame.service.system.PanelService', 'addPanel', 'PanelList_add', '超级管理员', '2015-01-08 10:11:42');
INSERT INTO `t_operalog` VALUES ('f5b7ecf0e835080cebb4bd747f1d5e9a', '资源管理', '操作列表', '增加', '1', '[增加] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:17:22');
INSERT INTO `t_operalog` VALUES ('f93f048befd022515331aa1bce6cd164', '资源管理', '操作列表', '编辑', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'editAction', 'ActionList_edit', '超级管理员', '2015-01-08 13:44:15');
INSERT INTO `t_operalog` VALUES ('f957608d147175684b913447eefa8843', '资源管理', '菜单树', '增加', '1', '[公司性质] 菜单信息已保存', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 09:04:13');
INSERT INTO `t_operalog` VALUES ('f96e7c1ae87e73e34a483ead879f3716', '资源管理', '操作列表', '增加', '1', '[删除] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 13:44:05');
INSERT INTO `t_operalog` VALUES ('faf4d9bf76d07f0a6bfed5332b95a720', '资源管理', '操作列表', '增加', '1', '[修改] 操作信息已保存', 'com.glacier.frame.service.system.ActionService', 'addAction', 'ActionList_add', '超级管理员', '2015-01-08 17:17:51');
INSERT INTO `t_operalog` VALUES ('fc5ad0bd098ee3f05d5da41e5030559e', '部门管理', '部门列表', '修改', '0', '禁止选择该部门本身以及子部门作为上级部门', 'com.glacier.frame.service.system.DepService', 'editDep', 'DepList_edit', '超级管理员', '2015-01-06 15:14:43');
INSERT INTO `t_operalog` VALUES ('fec77e5363eaece5b525da52bb628a8f', '资源管理', '菜单树', '增加', '0', '菜单名称重复', 'com.glacier.frame.service.system.MenuService', 'addMenu', 'MenuTree_add', '超级管理员', '2015-01-08 17:02:44');

-- ----------------------------
-- Table structure for `t_out_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_out_type`;
CREATE TABLE `t_out_type` (
  `out_type_id` varchar(32) NOT NULL COMMENT '�������ID',
  `order_num` int(4) default NULL COMMENT '���',
  `out_type_name` varchar(100) default NULL COMMENT '��ƷID',
  `enabled` enum('enable','disable') default NULL COMMENT '�Ƿ����� ö�٣�(����1/����0)',
  `creater` varchar(32) default NULL COMMENT 'ö�٣�(����1/����0)',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY  (`out_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_out_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_panel`
-- ----------------------------
DROP TABLE IF EXISTS `t_panel`;
CREATE TABLE `t_panel` (
  `panel_id` varchar(32) NOT NULL,
  `menu_id` varchar(32) default NULL,
  `panel_cn_name` varchar(50) default NULL,
  `panel_en_name` varchar(50) default NULL,
  `order_num` int(11) default NULL,
  PRIMARY KEY  (`panel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_panel
-- ----------------------------
INSERT INTO `t_panel` VALUES ('0d7ed154eebe739d81a20da996d68e6b', 'ccec6c46d43b0e7c40ce5c1ffc0cb3e5', '退货原因列表', 'ReturnReasonList', '1');
INSERT INTO `t_panel` VALUES ('21f3486dd1b51463c4979dc80ef4009b', 'dc2dcb1b303c05b27e9c01dc23dcc5f7', '采购类型集合', 'PurchaseTypeList', '1');
INSERT INTO `t_panel` VALUES ('3456eg4157cf483a790f4eea35ds5675', 'sdsfeg4157cf483a790f4eea35ds5675', '下拉列表', 'OptgroupValueList', '1');
INSERT INTO `t_panel` VALUES ('365eeace84821f6e45d59cefd702827d', '810ba3686840457556cb55bc87d8010b', '销售类型列表', 'SellTypeList', '1');
INSERT INTO `t_panel` VALUES ('37011217016636a0723462dbc81bf887', '91ca1b4b197688f21b68a72f69e09a8d', '管理员列表', 'UserList', '1');
INSERT INTO `t_panel` VALUES ('3fae5276226498a6cb1b5cf466793cd6', '14sdf54157cf483a790f4eea35dsf6f6', '信用类别', 'creditType', '27');
INSERT INTO `t_panel` VALUES ('4284f4950bf67217bf1816260419ebbb', 'd29229a817d81ed224df8c53d2f48f3d', '报价类型列表', 'QuotedPriceTypeList', '1');
INSERT INTO `t_panel` VALUES ('4546fgrgrh1dfhsjdfh124564sdf2sag', 'sdsfeg4157cf483a790f4eea35ds5675', '下拉项树', 'OptgroupTree', '2');
INSERT INTO `t_panel` VALUES ('557cf8b2740e6792f517138703afb407', 'ac892df07f9087fb1c89ac968bb5f555', '操作日志列表', 'OperalogList', '1');
INSERT INTO `t_panel` VALUES ('5731697aea23532eb8162f5ba1818c6f', '54eb754157cf483a790f4eea35200118', '菜单树', 'MenuTree', '1');
INSERT INTO `t_panel` VALUES ('60ef5b40e8753bdc2909a2413a379091', '14sdf54157cf483a790f4eea35dsf6f6', 'asdf', 'adf', '1');
INSERT INTO `t_panel` VALUES ('6659f9987cbbdf0721f8935b4a3d5a36', '00451bcfd707a2b5c3b80704f992dc21', '退货方式列表', 'ReturnedPurchaseTypeList', '1');
INSERT INTO `t_panel` VALUES ('6feff8706bf1155077e47699ad8931d9', 'be0683db6fae2b78f8feb3069adb74d6', '计划类型列表', 'PlanTypeList', '1');
INSERT INTO `t_panel` VALUES ('82385e2a3e64ac4cf4633ccb4c38c480', '82533b28131409450ad7a00229fd7333', '联系人类型列表', 'ContactTypeList', '1');
INSERT INTO `t_panel` VALUES ('83bbeed02a85549ae84cde8d98bcd8c1', 'e550884c5e6c1e94ee70cc833aa1c2b9', '角色列表', 'RoleList', '1');
INSERT INTO `t_panel` VALUES ('961d2e73b3fa93a9f125fb731e0a9529', '54eb754157cf483a790f4eea35200118', '面板列表', 'PanelList', '2');
INSERT INTO `t_panel` VALUES ('ad67aaf12a02906ad088a73410fd097e', '8a2f2500fa46e49dd7ff11b688b6c740', '公司规模列表', 'CompanySizeList', '1');
INSERT INTO `t_panel` VALUES ('ad6926567cb16be8966308eb36583a57', '0eac3f9c7b4e4cdd5e42c56a16c85147', '交货方式列表', 'DeliverTypeList', '1');
INSERT INTO `t_panel` VALUES ('af5f8e8847920dc7fd6347e3a4e9c467', '295ffaf17338b3621d532bfe8ee6c779', '公司性质列表', 'SuppliersNatureList', '1');
INSERT INTO `t_panel` VALUES ('b6c9a14704bc3d0029e306d026d040a6', '0feb3351253417aa18958e7353a626a5', '信用等级列表', 'SuppliersGradeList', '1');
INSERT INTO `t_panel` VALUES ('bbf240fc8c53886e327ff15976026945', '0d5f941c0e815519b859afa0992eda0b', '部门列表', 'DepList', '1');
INSERT INTO `t_panel` VALUES ('c7796dffd9d50588655cfc9d6a297efc', '8fc3b6de8076d1e8c3a6514bd29c4c4b', '支付方式列表', 'PaymentTypeList', '1');
INSERT INTO `t_panel` VALUES ('cef00aa1a7ab2338e5bb4e85e311af6f', 'ebd8d76ac65eea1c8d65ac5c14da27b0', '行业管理列表', 'SuppliersIndustryList', '1');
INSERT INTO `t_panel` VALUES ('db267d978539cb0f87dc55a9dc1a25f7', '97373f4ec8138e3a74a8a73f90e285f4', '采购类型列表', 'PurchaseType_List', '1');
INSERT INTO `t_panel` VALUES ('e6784ccad10e3414b99b77b303a338c7', '93f0fcfa7cdff069d929723062b53211', '变量列表', 'VariablesList', '1');
INSERT INTO `t_panel` VALUES ('eb2a84c4b7bd11632135e4992ade286e', '54eb754157cf483a790f4eea35200118', '操作列表', 'ActionList', '3');
INSERT INTO `t_panel` VALUES ('eb65d0304dc38ac4db140a1c10fdc7d3', 'aa165bf67dadbeedeb780b3e92dcdcdb', '销售退货方式列表', 'SellReturnTypeList', '1');
INSERT INTO `t_panel` VALUES ('f664c6028d8cab504f2771fa78d56312', '90998bf3c3173da5e8319d70cec8a7ab', '销售退货原因列表', 'SellReturnReasonList', '1');
INSERT INTO `t_panel` VALUES ('f769a64bb571aa0c7ac269b807af4782', 'e42b98561176563f930d82c80b041ed8', '登录日志列表', 'LoginlogList', '1');

-- ----------------------------
-- Table structure for `t_parameter_optgroup`
-- ----------------------------
DROP TABLE IF EXISTS `t_parameter_optgroup`;
CREATE TABLE `t_parameter_optgroup` (
  `optgroup_id` varchar(32) NOT NULL,
  `optgroup_pid` varchar(32) default NULL,
  `optgroup_code` varchar(50) default NULL,
  `optgroup_name` varchar(50) default NULL,
  `optgroup_icon` varchar(50) default NULL,
  `optgroup_url` varchar(50) default NULL,
  `optgroup_num` int(11) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`optgroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数设置的基础资料下的下拉项管理设置。';

-- ----------------------------
-- Records of t_parameter_optgroup
-- ----------------------------
INSERT INTO `t_parameter_optgroup` VALUES ('0b6919d96ff46e91471d9714bd1d205f', '113afb2ecac88fe851ad501c53b7d82b', 'auditState', '审核状态', null, null, '4', '', '8b25651c2d896297530b64e4b80ec503', '2014-04-02 15:15:43', '8b25651c2d896297530b64e4b80ec503', '2014-06-23 10:04:04');
INSERT INTO `t_parameter_optgroup` VALUES ('113afb2ecac88fe851ad501c53b7d82b', null, 'common', '公用下拉项', null, null, '7', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-15 16:29:29', '8b25651c2d896297530b64e4b80ec503', '2014-06-23 09:40:24');
INSERT INTO `t_parameter_optgroup` VALUES ('12bba62fdc3bf021c0de78e6ffdabf3f', null, 'dsd', '大幅度', null, null, '3', '3', '8b25651c2d896297530b64e4b80ec503', '2015-01-06 14:48:53', '8b25651c2d896297530b64e4b80ec503', '2015-01-06 14:48:53');
INSERT INTO `t_parameter_optgroup` VALUES ('1bf27bce9c73b22e9822fb85380ac347', '113afb2ecac88fe851ad501c53b7d82b', 'status', '状态', null, null, '1', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-15 16:34:53', '8b25651c2d896297530b64e4b80ec503', '2014-02-15 16:37:23');
INSERT INTO `t_parameter_optgroup` VALUES ('2rtfdg1rgrh1dfhsjdfh124564sdf21d', null, 'system', '系统设置', null, null, '1', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-15 16:34:53', '8b25651c2d896297530b64e4b80ec503', '2014-06-23 10:12:31');
INSERT INTO `t_parameter_optgroup` VALUES ('3de467b04ce8984ae48ba243eb25ffb2', null, 'basicdatas', '参数管理', null, null, '2', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 16:15:47', '8b25651c2d896297530b64e4b80ec503', '2014-06-23 10:12:47');
INSERT INTO `t_parameter_optgroup` VALUES ('7114c42efa5349f4c8874787fde91633', 'bd88aee43efe41a6ebd10b263fa29ed1', 'formType', '表单类型', null, null, '1', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 16:19:08', '8b25651c2d896297530b64e4b80ec503', '2014-06-23 10:04:35');
INSERT INTO `t_parameter_optgroup` VALUES ('87e805fcf0c779b8f57fde22d819e2db', '113afb2ecac88fe851ad501c53b7d82b', 'sex', '性别', null, null, '2', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-13 16:11:51', '8b25651c2d896297530b64e4b80ec503', '2014-02-21 10:52:39');
INSERT INTO `t_parameter_optgroup` VALUES ('bd88aee43efe41a6ebd10b263fa29ed1', '3de467b04ce8984ae48ba243eb25ffb2', 'variables', '系统变量', null, null, '1', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 16:18:18', '8b25651c2d896297530b64e4b80ec503', '2014-06-23 10:04:28');
INSERT INTO `t_parameter_optgroup` VALUES ('fdf78bcc980b29a21a65131eab1c1b38', '113afb2ecac88fe851ad501c53b7d82b', 'builtin', '内置', null, null, '3', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-15 16:34:53', '8b25651c2d896297530b64e4b80ec503', '2014-06-23 10:04:12');
INSERT INTO `t_parameter_optgroup` VALUES ('ss34g1rgrh1dfhsjdfh124564sdf21d', '2rtfdg1rgrh1dfhsjdfh124564sdf21d', 'user', '用户设置', null, null, '1', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-15 16:34:53', '8b25651c2d896297530b64e4b80ec503', '2014-02-13 16:11:25');

-- ----------------------------
-- Table structure for `t_parameter_optgroup_value`
-- ----------------------------
DROP TABLE IF EXISTS `t_parameter_optgroup_value`;
CREATE TABLE `t_parameter_optgroup_value` (
  `optgroup_value_id` varchar(32) NOT NULL,
  `optgroup_id` varchar(32) default NULL,
  `optgroup_value_code` varchar(50) default NULL,
  `optgroup_value_name` varchar(50) default NULL,
  `status` enum('enable','disable') default NULL,
  `optgroup_value_num` int(11) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`optgroup_value_id`),
  KEY `FK_t_optvalue_t_parameter_optgroup_optgroup_id` (`optgroup_id`),
  CONSTRAINT `FK_t_optvalue_t_parameter_optgroup_optgroup_id` FOREIGN KEY (`optgroup_id`) REFERENCES `t_parameter_optgroup` (`optgroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数设置的基础资料下的下拉项值设置。';

-- ----------------------------
-- Records of t_parameter_optgroup_value
-- ----------------------------
INSERT INTO `t_parameter_optgroup_value` VALUES ('02df4e5c07bb38221b41c9c74448fd8f', '87e805fcf0c779b8f57fde22d819e2db', 'secret', '保密', 'enable', '3', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-21 10:55:17', '8b25651c2d896297530b64e4b80ec503', '2014-02-21 10:55:17');
INSERT INTO `t_parameter_optgroup_value` VALUES ('1ed2d672131c69ea00a61b0edd2d5358', 'fdf78bcc980b29a21a65131eab1c1b38', 'builtin', '内置', 'enable', '2', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-15 16:31:13', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 10:42:00');
INSERT INTO `t_parameter_optgroup_value` VALUES ('239294f5e95b8d95911c4227eb2473e4', 'fdf78bcc980b29a21a65131eab1c1b38', 'custom', '自定义', 'enable', '3', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-15 16:31:32', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 10:42:04');
INSERT INTO `t_parameter_optgroup_value` VALUES ('2c663921507de7b121d37b460d65b5c4', 'fdf78bcc980b29a21a65131eab1c1b38', 'admin', '管理员', 'enable', '1', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 10:15:11', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 10:41:48');
INSERT INTO `t_parameter_optgroup_value` VALUES ('3sfsaf1231452112121525as5fsdf454', '1bf27bce9c73b22e9822fb85380ac347', 'enable', '启用', 'enable', '1', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 10:15:11', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 14:42:47');
INSERT INTO `t_parameter_optgroup_value` VALUES ('41ad6336a2e35dd9d67ed0ece74ad155', '7114c42efa5349f4c8874787fde91633', 'input', '输入框', 'enable', '1', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 16:53:45', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 10:15:11');
INSERT INTO `t_parameter_optgroup_value` VALUES ('4346c17adc9f4b126baa6e593dfb1219', '87e805fcf0c779b8f57fde22d819e2db', 'man', '男', 'enable', '1', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-21 10:54:45', '8b25651c2d896297530b64e4b80ec503', '2014-02-21 10:54:45');
INSERT INTO `t_parameter_optgroup_value` VALUES ('5dfs2d1f32sd1f2sd1f2sd1f256565sd', '1bf27bce9c73b22e9822fb85380ac347', 'disable', '禁用', 'enable', '2', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 10:15:11', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 14:42:50');
INSERT INTO `t_parameter_optgroup_value` VALUES ('85db75ec028f7cbbb412331e8c035470', '7114c42efa5349f4c8874787fde91633', 'textarea', '文本框', 'enable', '2', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 16:54:06', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 10:15:11');
INSERT INTO `t_parameter_optgroup_value` VALUES ('adf5a85fc6937d07f65484014cc2ce76', '0b6919d96ff46e91471d9714bd1d205f', 'failure', '审核失败', 'enable', '3', '', '8b25651c2d896297530b64e4b80ec503', '2014-04-02 15:17:11', '8b25651c2d896297530b64e4b80ec503', '2014-05-06 10:52:23');
INSERT INTO `t_parameter_optgroup_value` VALUES ('e60a0f1adebf1b828640fbb338316eb8', '0b6919d96ff46e91471d9714bd1d205f', 'authstr', '审核中', 'enable', '1', '', '8b25651c2d896297530b64e4b80ec503', '2014-04-02 15:16:10', '8b25651c2d896297530b64e4b80ec503', '2014-04-02 15:16:10');
INSERT INTO `t_parameter_optgroup_value` VALUES ('f081962b0b8f3b28b727c60b821dbee2', '87e805fcf0c779b8f57fde22d819e2db', 'woman', '女', 'enable', '2', '', '8b25651c2d896297530b64e4b80ec503', '2014-02-21 10:55:01', '8b25651c2d896297530b64e4b80ec503', '2014-02-21 10:55:01');
INSERT INTO `t_parameter_optgroup_value` VALUES ('f1498ee9de5b4e78fe4654ae3b3175bb', '0b6919d96ff46e91471d9714bd1d205f', 'pass', '审核通过', 'enable', '2', '', '8b25651c2d896297530b64e4b80ec503', '2014-04-02 15:16:43', '8b25651c2d896297530b64e4b80ec503', '2014-05-06 10:52:17');

-- ----------------------------
-- Table structure for `t_parameter_system_variables`
-- ----------------------------
DROP TABLE IF EXISTS `t_parameter_system_variables`;
CREATE TABLE `t_parameter_system_variables` (
  `variables_id` varchar(32) NOT NULL COMMENT '系统变量Id',
  `specification` varchar(50) default NULL COMMENT '参数说明',
  `input_tip` varchar(50) default NULL COMMENT '输入提示',
  `parameter_values` varchar(50) default NULL COMMENT '参数值',
  `variable_name` varchar(50) default NULL COMMENT '变量名',
  `form_type` enum('input','textarea') default NULL COMMENT '表单类型',
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`variables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数设置的系统变量';

-- ----------------------------
-- Records of t_parameter_system_variables
-- ----------------------------
INSERT INTO `t_parameter_system_variables` VALUES ('4css921507de7b121d37b460d65b5g', '参数说明', '输入提示', '1.00', '变量名', 'input', '测试数据', '8b25651c2d896297530b64e4b80ec503', '2014-02-17 15:22:26', '8b25651c2d896297530b64e4b80ec503', '2014-08-18 17:36:01');

-- ----------------------------
-- Table structure for `t_par_client_level`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_client_level`;
CREATE TABLE `t_par_client_level` (
  `client_level_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `client_level_name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`client_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_client_level
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_client_source`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_client_source`;
CREATE TABLE `t_par_client_source` (
  `client_source_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `client_source_name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`client_source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_client_source
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_company_size`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_company_size`;
CREATE TABLE `t_par_company_size` (
  `company_size_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `company_size_name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`company_size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_company_size
-- ----------------------------
INSERT INTO `t_par_company_size` VALUES ('54f4d9894d824464d2fb4e54e851fa95', null, '100-200人', '3', 'enable', '超级管理员', '2015-01-09 10:13:44', '超级管理员', '2015-01-09 10:13:44');
INSERT INTO `t_par_company_size` VALUES ('c1e2b3f9e0f5499300a4fc9cc05b42e3', null, '1-50人', '1', 'enable', '超级管理员', '2015-01-09 10:13:12', '超级管理员', '2015-01-09 10:13:12');
INSERT INTO `t_par_company_size` VALUES ('d841c8aba55b21d0e1284525b83b8895', null, '50-100人', '2', 'enable', '超级管理员', '2015-01-09 10:13:29', '超级管理员', '2015-01-09 10:13:29');

-- ----------------------------
-- Table structure for `t_par_contact_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_contact_type`;
CREATE TABLE `t_par_contact_type` (
  `contact_type_id` varchar(32) NOT NULL COMMENT '�������ID',
  `contact_type_name` varchar(32) default NULL COMMENT '��ƷID',
  `enabled` enum('enable','disable') default NULL COMMENT '�Ƿ����� ö�٣�(����1/����0)',
  `creater` varchar(32) default NULL COMMENT 'ö�٣�(����1/����0)',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  `code` int(4) default NULL,
  `sequenced` int(4) default NULL,
  PRIMARY KEY  (`contact_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_contact_type
-- ----------------------------
INSERT INTO `t_par_contact_type` VALUES ('6a77849f97c648181e98a8cf3fcd10b9', '老总', 'enable', '超级管理员', '2015-01-08 17:50:00', '超级管理员', '2015-01-08 17:50:00', null, '1');

-- ----------------------------
-- Table structure for `t_par_cost_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_cost_type`;
CREATE TABLE `t_par_cost_type` (
  `cost_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`cost_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_cost_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_credit_grade`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_credit_grade`;
CREATE TABLE `t_par_credit_grade` (
  `credit_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `credit_name` varchar(32) default NULL,
  `credit_begin_integral` int(4) default NULL,
  `credit_end_integral` int(4) default NULL,
  `credit_photo` varchar(255) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`credit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_credit_grade
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_deliver_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_deliver_type`;
CREATE TABLE `t_par_deliver_type` (
  `deliver_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `deliver_type_name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`deliver_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_deliver_type
-- ----------------------------
INSERT INTO `t_par_deliver_type` VALUES ('e4cc3992709b20cd061e221d6575d183', null, '走你交货', '2', 'enable', '超级管理员', '2015-01-08 11:16:56', '超级管理员', '2015-01-08 11:16:56');

-- ----------------------------
-- Table structure for `t_par_industry`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_industry`;
CREATE TABLE `t_par_industry` (
  `industry_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `industry_name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`industry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_industry
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_payable_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_payable_type`;
CREATE TABLE `t_par_payable_type` (
  `payable_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`payable_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_payable_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_payment_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_payment_type`;
CREATE TABLE `t_par_payment_type` (
  `payment_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `payment_type_name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`payment_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_payment_type
-- ----------------------------
INSERT INTO `t_par_payment_type` VALUES ('a623c991ee3df66df30de79ce8745c33', null, '现金', '1', 'enable', '超级管理员', '2015-01-08 15:07:28', '超级管理员', '2015-01-08 15:07:28');

-- ----------------------------
-- Table structure for `t_par_plan_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_plan_type`;
CREATE TABLE `t_par_plan_type` (
  `plan_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`plan_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_plan_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_purchase_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_purchase_type`;
CREATE TABLE `t_par_purchase_type` (
  `purchase_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`purchase_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_purchase_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_quoted_price_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_quoted_price_type`;
CREATE TABLE `t_par_quoted_price_type` (
  `quoted_price_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`quoted_price_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_quoted_price_type
-- ----------------------------
INSERT INTO `t_par_quoted_price_type` VALUES ('f10739fca5d57a4dc3229fafb8b9f398', null, '55', '5', 'enable', '超级管理员', '2015-01-09 10:08:52', '超级管理员', '2015-01-09 10:08:52');

-- ----------------------------
-- Table structure for `t_par_receivables_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_receivables_type`;
CREATE TABLE `t_par_receivables_type` (
  `receivables_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `receivables_type_name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`receivables_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_receivables_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_receivable_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_receivable_type`;
CREATE TABLE `t_par_receivable_type` (
  `receivable_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`receivable_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_receivable_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_returned_purchase_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_returned_purchase_type`;
CREATE TABLE `t_par_returned_purchase_type` (
  `returned_purchase_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`returned_purchase_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_returned_purchase_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_return_reason`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_return_reason`;
CREATE TABLE `t_par_return_reason` (
  `return_reason_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`return_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_return_reason
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_sell_return_reason_id`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_sell_return_reason_id`;
CREATE TABLE `t_par_sell_return_reason_id` (
  `return_reason_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `return_reason_name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`return_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_sell_return_reason_id
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_sell_return_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_sell_return_type`;
CREATE TABLE `t_par_sell_return_type` (
  `return_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `return_type_name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`return_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_sell_return_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_sell_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_sell_type`;
CREATE TABLE `t_par_sell_type` (
  `sell_type_id` varchar(32) NOT NULL,
  `code` varchar(32) default NULL,
  `sell_type_name` varchar(32) default NULL,
  `sequenced` int(4) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`sell_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_sell_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_suppliers_grade`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_suppliers_grade`;
CREATE TABLE `t_par_suppliers_grade` (
  `grade_id` varchar(32) NOT NULL,
  `grade_name` varchar(32) default NULL,
  `grade_code` varchar(32) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_suppliers_grade
-- ----------------------------
INSERT INTO `t_par_suppliers_grade` VALUES ('3b9af2f164cc3616ee06d75b97ac254d', '第一等级', null, 'enable', '', '超级管理员', '2015-01-08 15:59:29', '超级管理员', '2015-01-08 15:59:29');

-- ----------------------------
-- Table structure for `t_par_suppliers_industry`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_suppliers_industry`;
CREATE TABLE `t_par_suppliers_industry` (
  `industry_id` varchar(32) NOT NULL,
  `industry_name` varchar(32) default NULL,
  `industy_code` varchar(32) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`industry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_suppliers_industry
-- ----------------------------
INSERT INTO `t_par_suppliers_industry` VALUES ('8f1eee160288d36fbbe9ebe385199904', '服装', null, 'enable', '', '超级管理员', '2015-01-08 13:49:29', '超级管理员', '2015-01-08 13:49:29');

-- ----------------------------
-- Table structure for `t_par_suppliers_nature`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_suppliers_nature`;
CREATE TABLE `t_par_suppliers_nature` (
  `nature_id` varchar(32) NOT NULL,
  `nature_name` varchar(32) default NULL,
  `nature_code` varchar(32) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`nature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_suppliers_nature
-- ----------------------------
INSERT INTO `t_par_suppliers_nature` VALUES ('e4f769f7918f1f3b9007e0e12f015e73', '私营', '1', 'enable', null, '超级管理员', '2015-01-08 16:35:42', '超级管理员', '2015-01-08 16:35:42');

-- ----------------------------
-- Table structure for `t_par_suppliers_size`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_suppliers_size`;
CREATE TABLE `t_par_suppliers_size` (
  `size_id` varchar(32) NOT NULL,
  `size_name` varchar(32) default NULL,
  `size_code` varchar(32) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_suppliers_size
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_suppliers_source`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_suppliers_source`;
CREATE TABLE `t_par_suppliers_source` (
  `source_id` varchar(32) NOT NULL,
  `source_name` varchar(100) default NULL,
  `source_code` varchar(32) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_suppliers_source
-- ----------------------------

-- ----------------------------
-- Table structure for `t_par_suppliers_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_par_suppliers_type`;
CREATE TABLE `t_par_suppliers_type` (
  `type_id` varchar(32) NOT NULL,
  `type_name` varchar(32) default NULL,
  `type_code` varchar(32) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_par_suppliers_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_arrival`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_arrival`;
CREATE TABLE `t_purchase_arrival` (
  `pur_arrival_id` varchar(32) NOT NULL,
  `purchase_type_id` varchar(32) default NULL,
  `arrival_code` varchar(50) default NULL,
  `arrival_date` datetime default NULL,
  `storage` varchar(32) default NULL,
  `supplier_id` varchar(32) default NULL,
  `contract_code` varchar(50) default NULL,
  `supplier_add` varchar(100) default NULL,
  `phone` varchar(15) default NULL,
  `linkman` varchar(32) default NULL,
  `fax` varchar(15) default NULL,
  `delivery_type` varchar(32) default NULL,
  `delivery_dead` datetime default NULL,
  `delivery_add` varchar(32) default NULL,
  `acceptor` varchar(32) default NULL,
  `invoice` enum('yes','no') default NULL,
  `invoice_type_id` enum('specialvat','generalvat','generaltax','ordinarytax','receipt') default NULL,
  `payment_type_id` varchar(32) default NULL,
  `log_settlement_id` enum('ourcommitment','notcommitment','generationpad','selfpay') default NULL,
  `log_code` varchar(50) default NULL,
  `log_total_tmount` decimal(16,4) default NULL,
  `log_company` varchar(32) default NULL,
  `log_linkman` varchar(32) default NULL,
  `log_phone` varchar(15) default NULL,
  `total_amount` decimal(16,4) default NULL,
  `payment_agr_id` varchar(32) default NULL,
  `accessory` varchar(255) default NULL,
  `return_state` enum('noneCancel','portionCancel','allCancel') default NULL,
  `not_return_amo` decimal(16,4) default NULL,
  `alr_return_amo` decimal(16,4) default NULL,
  `pay_state` enum('nonePay','portionPay','allPay') default NULL,
  `not_pay_amo` decimal(16,4) default NULL,
  `alr_pay_amo` decimal(16,4) default NULL,
  `inv_state` enum('noneInv','portionInv','allInv') default NULL,
  `not_inv_amo` decimal(16,4) default NULL,
  `alr_inv_amo` decimal(16,4) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `operators` varchar(32) default NULL,
  `operator_dep` varchar(32) default NULL,
  `confirmor` varchar(32) default NULL,
  `confirmor_department` varchar(32) default NULL,
  `confirmor_time` datetime default NULL,
  `derate_money` decimal(16,4) default NULL,
  `tail_after_status` enum('storage','nostorage') default NULL,
  `summary` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`pur_arrival_id`),
  KEY `FK_T_PURCHA_REFERENCE_T_PAR_PU5` (`purchase_type_id`),
  CONSTRAINT `t_purchase_arrival_ibfk_1` FOREIGN KEY (`purchase_type_id`) REFERENCES `t_par_purchase_type` (`purchase_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_arrival
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_arrival_affirm`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_arrival_affirm`;
CREATE TABLE `t_purchase_arrival_affirm` (
  `pur_arr_aff_id` varchar(32) NOT NULL,
  `pur_arrival_id` varchar(32) default NULL,
  `sign_date` datetime default NULL,
  `sign_person` varchar(32) default NULL,
  `affirm_date` datetime default NULL,
  `affirm_person` varchar(32) default NULL,
  `affirm_dep` varchar(32) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`pur_arr_aff_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PURCHA6` (`pur_arrival_id`),
  CONSTRAINT `t_purchase_arrival_affirm_ibfk_1` FOREIGN KEY (`pur_arrival_id`) REFERENCES `t_purchase_arrival` (`pur_arrival_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_arrival_affirm
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_arrival_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_arrival_detail`;
CREATE TABLE `t_purchase_arrival_detail` (
  `pur_arrival_det_id` varchar(32) NOT NULL,
  `pur_arrival_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(50) default NULL,
  `goods_name` varchar(32) default NULL,
  `goods_model` varchar(32) default NULL,
  `goods_unit` varchar(32) default NULL,
  `quantity` int(4) default NULL,
  `price` decimal(16,4) default NULL,
  `goods_money` decimal(16,4) default NULL,
  `deadline` datetime default NULL,
  `not_return_num` int(4) default NULL,
  `alr_return_num` int(4) default NULL,
  `not_pay_num` int(4) default NULL,
  `alr_pay_num` int(4) default NULL,
  `not_inv_num` int(4) default NULL,
  `alr_inv_num` int(4) default NULL,
  `brand` varchar(32) default NULL,
  `place_of_origin` varchar(50) default NULL,
  `batch_information` varchar(32) default NULL,
  `arrival` int(4) default NULL,
  `delivery` int(4) default NULL,
  `rejection` int(4) default NULL,
  `original_cost` decimal(16,4) default NULL,
  `deposit_rate` decimal(16,4) default NULL,
  `putstorage` int(4) default NULL,
  `takestorage` int(4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`pur_arrival_det_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PURCHA7` (`pur_arrival_id`),
  CONSTRAINT `t_purchase_arrival_detail_ibfk_1` FOREIGN KEY (`pur_arrival_id`) REFERENCES `t_purchase_arrival` (`pur_arrival_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_arrival_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_invoice`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_invoice`;
CREATE TABLE `t_purchase_invoice` (
  `pur_inv_id` varchar(32) NOT NULL,
  `invoice_code` varchar(50) default NULL,
  `payable_id` varchar(32) default NULL,
  `invoice_date` datetime default NULL,
  `invoice_type_id` varchar(32) default NULL,
  `invoice_start` varchar(32) default NULL,
  `tariff` varchar(50) default NULL,
  `supplier_id` varchar(32) default NULL,
  `linkman` varchar(32) default NULL,
  `telephone` varchar(32) default NULL,
  `bank_of_deposit` varchar(32) default NULL,
  `account_number` int(19) default NULL,
  `period_of_validity` datetime default NULL,
  `invoice_amount` decimal(16,4) default NULL,
  `backwash_state` enum('backwash1','backwash0') default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `operators` varchar(32) default NULL,
  `operator_dep` varchar(32) default NULL,
  `summary` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`pur_inv_id`),
  KEY `FK_T_PURCHA_FINANCE_P_T_FINANC8` (`payable_id`),
  CONSTRAINT `t_purchase_invoice_ibfk_1` FOREIGN KEY (`payable_id`) REFERENCES `t_finance_payable` (`payable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_invoice_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_invoice_detail`;
CREATE TABLE `t_purchase_invoice_detail` (
  `pur_inv_det_id` varchar(32) NOT NULL,
  `pur_inv_id` varchar(32) default NULL,
  `good_id` varchar(32) default NULL,
  `goods_code` varchar(50) default NULL,
  `goods_name` varchar(32) default NULL,
  `goods_model` varchar(32) default NULL,
  `goods_unit` varchar(32) default NULL,
  `quantity` int(4) default NULL,
  `price` decimal(16,4) default NULL,
  `money` decimal(16,4) default NULL,
  `cess` decimal(16,4) default NULL,
  `no_tax_price` decimal(16,4) default NULL,
  `no_tax_amount` decimal(16,4) default NULL,
  `not_back_num` int(4) default NULL,
  `alr_back_num` int(4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`pur_inv_det_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PURCHA9` (`pur_inv_id`),
  CONSTRAINT `t_purchase_invoice_detail_ibfk_1` FOREIGN KEY (`pur_inv_id`) REFERENCES `t_purchase_invoice` (`pur_inv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_invoice_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_order`;
CREATE TABLE `t_purchase_order` (
  `pur_order_id` varchar(32) NOT NULL,
  `order_code` varchar(50) default NULL,
  `order_date` datetime default NULL,
  `purchase_type_id` varchar(32) default NULL,
  `storage` varchar(32) default NULL,
  `supplier_id` varchar(32) default NULL,
  `supplier_code` varchar(32) default NULL,
  `contract_code` varchar(50) default NULL,
  `supplier_add` varchar(100) default NULL,
  `phone` varchar(15) default NULL,
  `linkman` varchar(32) default NULL,
  `fax` varchar(19) default NULL,
  `delivery_type` varchar(32) default NULL,
  `delivery_dadlines` datetime default NULL,
  `delivery_add` varchar(100) default NULL,
  `contract_terms` text,
  `payment_type_id` varchar(32) default NULL,
  `invoice` enum('yes','no') default NULL,
  `invoice_type_id` enum('specialvat','generalvat','generaltax','ordinarytax','receipt') default NULL,
  `total_amount` decimal(16,4) default NULL,
  `payment_agr_id` varchar(32) default NULL,
  `accessory` varchar(255) default NULL,
  `shared_people_id` varchar(32) default NULL,
  `arr_state` enum('noneArr','portionArr','allArr') default NULL,
  `not_arr_amo` decimal(16,4) default NULL,
  `alr_arr_amo` decimal(16,4) default NULL,
  `pay_state` enum('nonePay','portionPay','allPay') default NULL,
  `not_pay_amo` decimal(16,4) default NULL,
  `alr_pay_amo` decimal(16,4) default NULL,
  `inv_state` enum('noneInv','portionInv','allInv') default NULL,
  `not_inv_amo` decimal(16,4) default NULL,
  `alr_inv_amo` decimal(16,4) default NULL,
  `order_state` enum('noneExe','exeIng','termination','closed','affirm') default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `operators` varchar(32) default NULL,
  `operator_dep` varchar(32) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`pur_order_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PAR_PU10` (`purchase_type_id`),
  CONSTRAINT `t_purchase_order_ibfk_1` FOREIGN KEY (`purchase_type_id`) REFERENCES `t_par_purchase_type` (`purchase_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_order
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_order_closed`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_order_closed`;
CREATE TABLE `t_purchase_order_closed` (
  `pur_order_col_id` varchar(32) NOT NULL,
  `pur_order_id` varchar(32) default NULL,
  `order_clo_code` varchar(50) default NULL,
  `content` varchar(255) default NULL,
  `operator_dep` varchar(32) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`pur_order_col_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PURCHA11` (`pur_order_id`),
  CONSTRAINT `t_purchase_order_closed_ibfk_1` FOREIGN KEY (`pur_order_id`) REFERENCES `t_purchase_order` (`pur_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_order_closed
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_order_detail`;
CREATE TABLE `t_purchase_order_detail` (
  `pur_order_det_id` varchar(32) NOT NULL,
  `pur_order_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(50) default NULL,
  `goods_name` varchar(32) default NULL,
  `goods_model` varchar(32) default NULL,
  `goods_unit` varchar(32) default NULL,
  `quantity` int(4) default NULL,
  `price` decimal(16,4) default NULL,
  `money` decimal(16,4) default NULL,
  `deadline` datetime default NULL,
  `not_arr_num` int(4) default NULL,
  `alr_arr_num` int(4) default NULL,
  `not_pay_num` int(4) default NULL,
  `alr_pay_num` int(4) default NULL,
  `not_inv_num` int(4) default NULL,
  `alr_inv_num` int(4) default NULL,
  `not_ter_num` int(4) default NULL,
  `alr_ter_num` int(4) default NULL,
  `brand` varchar(32) default NULL,
  `place_of_origin` varchar(32) default NULL,
  `prime_cost` decimal(16,4) default NULL,
  `discount` decimal(16,4) default NULL,
  `cess` decimal(16,4) default NULL,
  `not_ter_money` decimal(16,4) default NULL,
  `alr_ter_money` decimal(16,4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`pur_order_det_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PURCHA12` (`pur_order_id`),
  CONSTRAINT `t_purchase_order_detail_ibfk_1` FOREIGN KEY (`pur_order_id`) REFERENCES `t_purchase_order` (`pur_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_order_termination`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_order_termination`;
CREATE TABLE `t_purchase_order_termination` (
  `pur_order_ter_id` varchar(32) NOT NULL,
  `pur_order_id` varchar(32) default NULL,
  `termination_code` varchar(50) default NULL,
  `content` varchar(255) default NULL,
  `accessory` varchar(225) default NULL,
  `amount` decimal(16,4) default NULL,
  `operator_dep` varchar(32) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`pur_order_ter_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PURCHA13` (`pur_order_id`),
  CONSTRAINT `t_purchase_order_termination_ibfk_1` FOREIGN KEY (`pur_order_id`) REFERENCES `t_purchase_order` (`pur_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_order_termination
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_order_track`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_order_track`;
CREATE TABLE `t_purchase_order_track` (
  `pur_order_tra_id` varchar(32) NOT NULL,
  `pur_order_id` varchar(32) default NULL,
  `order_track_code` varchar(50) default NULL,
  `track_theme` varchar(50) default NULL,
  `supplier_id` varchar(32) default NULL,
  `track_content` varchar(255) default NULL,
  `linkman` varchar(32) default NULL,
  `phone` varchar(15) default NULL,
  `accessory` varchar(225) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`pur_order_tra_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PURCHA14` (`pur_order_id`),
  CONSTRAINT `t_purchase_order_track_ibfk_1` FOREIGN KEY (`pur_order_id`) REFERENCES `t_purchase_order` (`pur_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_order_track
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_requisition`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_requisition`;
CREATE TABLE `t_purchase_requisition` (
  `pur_req_id` varchar(32) NOT NULL,
  `req_code` varchar(50) default NULL,
  `req_date` datetime default NULL,
  `purchase_type_id` varchar(32) default NULL,
  `storage` varchar(32) default NULL,
  `accessory` varchar(255) default NULL,
  `order_state` enum('noneOrder','portionOrder','allOrder') default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(255) default NULL,
  `enabled` varchar(100) default NULL,
  `operators` varchar(32) default NULL,
  `operator_dep` varchar(32) default NULL,
  `total` decimal(16,4) default NULL,
  `summary` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`pur_req_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PAR_PU15` (`purchase_type_id`),
  CONSTRAINT `t_purchase_requisition_ibfk_1` FOREIGN KEY (`purchase_type_id`) REFERENCES `t_par_purchase_type` (`purchase_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_requisition
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_requisition_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_requisition_detail`;
CREATE TABLE `t_purchase_requisition_detail` (
  `pur_req_det_id` varchar(32) NOT NULL,
  `pur_req_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(50) default NULL,
  `goods_name` varchar(32) default NULL,
  `goods_model` varchar(32) default NULL,
  `goods_unit` varchar(32) default NULL,
  `brand` varchar(32) default NULL,
  `place_of_origin` varchar(32) default NULL,
  `inquiry` enum('yes','no') default NULL,
  `quantity` int(4) default NULL,
  `price` decimal(16,4) default NULL,
  `money` decimal(16,4) default NULL,
  `deadline` datetime default NULL,
  `not_order_num` int(4) default NULL,
  `alr_order_num` int(4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`pur_req_det_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PURCHA16` (`pur_req_id`),
  CONSTRAINT `t_purchase_requisition_detail_ibfk_1` FOREIGN KEY (`pur_req_id`) REFERENCES `t_purchase_requisition` (`pur_req_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_requisition_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_return`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_return`;
CREATE TABLE `t_purchase_return` (
  `pur_return_id` varchar(32) NOT NULL,
  `return_code` varchar(50) default NULL,
  `return_date` datetime default NULL,
  `purchase_type` varchar(32) default NULL,
  `storage` varchar(32) default NULL,
  `supplier_id` varchar(32) default NULL,
  `pro_came` varchar(32) default NULL,
  `supplier_add` varchar(100) default NULL,
  `phone` varchar(15) default NULL,
  `linkman` varchar(32) default NULL,
  `fax` varchar(19) default NULL,
  `returned_purchase_type_id` varchar(32) default NULL,
  `return_deadlines` datetime default NULL,
  `return_reason_id` varchar(32) default NULL,
  `return_policy` varchar(50) default NULL,
  `refund_deadlines` datetime default NULL,
  `payment_type_id` varchar(32) default NULL,
  `log_settlement` enum('ourcommitment','notcommitment','generationpad','selfpay') default NULL,
  `log_code` varchar(50) default NULL,
  `log_total_amount` decimal(16,4) default NULL,
  `log_company` varchar(32) default NULL,
  `log_linkman` varchar(32) default NULL,
  `log_phone` varchar(15) default NULL,
  `accessory` varchar(255) default NULL,
  `payment_state` enum('nonePay','portionPay','allPay') default NULL,
  `not_pay_amo` decimal(16,4) default NULL,
  `alr_pay_amo` decimal(16,4) default NULL,
  `inv_state` enum('noneInv','portionInv','allInv') default NULL,
  `not_inv_amo` decimal(16,4) default NULL,
  `alr_inv_amo` decimal(16,4) default NULL,
  `refund_total` decimal(16,4) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `operators` varchar(32) default NULL,
  `operator_dep` varchar(32) default NULL,
  `summary` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`pur_return_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PAR_RE17` (`return_reason_id`),
  KEY `FK_T_PURCHA_RETURNED__T_PAR_RE18` (`returned_purchase_type_id`),
  CONSTRAINT `t_purchase_return_ibfk_1` FOREIGN KEY (`returned_purchase_type_id`) REFERENCES `t_par_returned_purchase_type` (`returned_purchase_type_id`),
  CONSTRAINT `t_purchase_return_ibfk_2` FOREIGN KEY (`return_reason_id`) REFERENCES `t_par_return_reason` (`return_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_return
-- ----------------------------

-- ----------------------------
-- Table structure for `t_purchase_return_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_return_detail`;
CREATE TABLE `t_purchase_return_detail` (
  `pur_return_det_id` varchar(32) NOT NULL,
  `pur_return_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(50) default NULL,
  `goods_name` varchar(32) default NULL,
  `goods_model` varchar(32) default NULL,
  `goods_unit` varchar(32) default NULL,
  `quantity` int(4) default NULL,
  `price` decimal(16,4) default NULL,
  `money` decimal(16,4) default NULL,
  `deadline` datetime default NULL,
  `not_pay_num` int(4) default NULL,
  `alr_pay_num` int(4) default NULL,
  `not_inv_num` int(4) default NULL,
  `alr_inv_num` int(4) default NULL,
  `brand` varchar(32) default NULL,
  `place_of_origin` varchar(32) default NULL,
  `batch_information` varchar(32) default NULL,
  `pur_money` decimal(16,4) default NULL,
  `cess` decimal(16,4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`pur_return_det_id`),
  KEY `FK_T_PURCHA_PURCHASE__T_PURCHA19` (`pur_return_id`),
  CONSTRAINT `t_purchase_return_detail_ibfk_1` FOREIGN KEY (`pur_return_id`) REFERENCES `t_purchase_return` (`pur_return_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_return_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `role_id` varchar(32) NOT NULL,
  `role_en_name` varchar(25) NOT NULL,
  `role_cn_name` varchar(25) default NULL,
  `builtin` varchar(10) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('56078492e2eed9eb33f32c3af54a8e3f', 'TEST', '测试角色', 'custom', '测试角色', '8b25651c2d896297530b64e4b80ec503', '2014-07-08 00:00:00');
INSERT INTO `t_role` VALUES ('c87dd7161dbf8777c41b8cbfaa985db4', 'ADMIN', '超级管理员', 'admin', null, '8b25651c2d896297530b64e4b80ec503', '2014-01-16 02:58:58');

-- ----------------------------
-- Table structure for `t_same_deploy`
-- ----------------------------
DROP TABLE IF EXISTS `t_same_deploy`;
CREATE TABLE `t_same_deploy` (
  `same_deploy_id` varchar(32) NOT NULL,
  `same_deploy_code` varchar(32) default NULL,
  `warehouse_in_id` varchar(32) default NULL,
  `warehouse_out_id` varchar(32) default NULL,
  `same_deploy_date` datetime default NULL,
  `deploy_type_id` varchar(32) default NULL,
  `same_total` decimal(16,4) default NULL,
  `department_id` varchar(32) default NULL,
  `arrival_time` datetime default NULL,
  `attn` varchar(32) default NULL,
  `department` varchar(32) default NULL,
  `auditor_id` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_state` enum('authstr','failure','pass') default NULL,
  `audit_remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`same_deploy_id`),
  KEY `FK_DeployType_SameDeploy_deployTypeId` (`deploy_type_id`),
  CONSTRAINT `t_same_deploy_ibfk_1` FOREIGN KEY (`deploy_type_id`) REFERENCES `t_deploy_type` (`deploy_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_same_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for `t_same_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_same_detail`;
CREATE TABLE `t_same_detail` (
  `same_detai_id` varchar(32) NOT NULL,
  `same_deploy_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(225) default NULL,
  `goods_name` varchar(255) default NULL,
  `goods_batch` varchar(255) default NULL,
  `goods_style` varchar(255) default NULL,
  `goods_unit` varchar(32) default NULL,
  `allot_number` int(4) default NULL,
  `allot_price` decimal(16,4) default NULL,
  `total_money` decimal(16,4) default NULL,
  `remark` varchar(225) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`same_detai_id`),
  KEY `FK_SameDeploy_SameDetail_SameDeployId` (`same_deploy_id`),
  CONSTRAINT `t_same_detail_ibfk_1` FOREIGN KEY (`same_deploy_id`) REFERENCES `t_same_deploy` (`same_deploy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_same_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_confirmationreceipt`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_confirmationreceipt`;
CREATE TABLE `t_sell_confirmationreceipt` (
  `confirmation_receipt_id` varchar(32) NOT NULL,
  `send_id` varchar(32) default NULL,
  `client_contact_id` varchar(32) default NULL,
  `confirmation_date` datetime default NULL,
  `sign_date` datetime default NULL,
  `confirmation_person` varchar(32) default NULL,
  `confirm_department` varchar(32) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`confirmation_receipt_id`),
  KEY `FK_T_SELL_C_T_SELL_SE_T_SELL_S` (`send_id`),
  CONSTRAINT `t_sell_confirmationreceipt_ibfk_1` FOREIGN KEY (`send_id`) REFERENCES `t_sell_send` (`send_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_confirmationreceipt
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_giveaway_samples`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_giveaway_samples`;
CREATE TABLE `t_sell_giveaway_samples` (
  `giveaway_samples_id` varchar(32) NOT NULL,
  `giveaway_samples_code` varchar(50) default NULL,
  `give_date` datetime default NULL,
  `type` varchar(32) default NULL,
  `warehouse_id` varchar(32) default NULL,
  `client_id` varchar(32) default NULL,
  `client_contact_id` varchar(32) default NULL,
  `phone` varchar(15) default NULL,
  `client_address` varchar(255) default NULL,
  `delivery_deadlines` date default NULL,
  `contract_number` varchar(50) default NULL,
  `accessory` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `summary` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(100) default NULL,
  `handle_person` varchar(32) default NULL,
  `handle_department` varchar(32) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  PRIMARY KEY  (`giveaway_samples_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_giveaway_samples
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_giveaway_samples_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_giveaway_samples_detail`;
CREATE TABLE `t_sell_giveaway_samples_detail` (
  `giveaway_samples_detail_id` varchar(32) NOT NULL,
  `giveaway_samples_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `batch_id` varchar(32) default NULL,
  `quantity` int(4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`giveaway_samples_detail_id`),
  KEY `FK_T_SELL_G_T_SELL_GI_T_SELL_G` (`giveaway_samples_id`),
  CONSTRAINT `t_sell_giveaway_samples_detail_ibfk_1` FOREIGN KEY (`giveaway_samples_id`) REFERENCES `t_sell_giveaway_samples` (`giveaway_samples_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_giveaway_samples_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_invoice`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_invoice`;
CREATE TABLE `t_sell_invoice` (
  `invoice_id` varchar(32) NOT NULL,
  `invoice_code` varchar(50) default NULL,
  `receivale_id` varchar(32) default NULL,
  `client_id` varchar(32) default NULL,
  `client_contact_id` varchar(32) default NULL,
  `phone` varchar(15) default NULL,
  `client_address` varchar(255) default NULL,
  `invoice_account` varchar(32) default NULL,
  `invoice_number` varchar(20) default NULL,
  `invoice_date` datetime default NULL,
  `invoice_type_id` enum('specialvat','generalvat','generaltax','ordinarytax','receipt') default NULL,
  `Invoice_start` varchar(50) default NULL,
  `tariff` varchar(50) default NULL,
  `unbilled_amount` decimal(16,4) default NULL,
  `invoice_amount` decimal(16,4) default NULL,
  `deduction_date` decimal(16,4) default NULL,
  `ticket_date` decimal(16,4) default NULL,
  `invoice_collector` varchar(32) default NULL,
  `backwash_state` enum('backwash0','backwash1') default NULL,
  `enabled` enum('enable','disable') default NULL,
  `summary` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(100) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_invoice_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_invoice_detail`;
CREATE TABLE `t_sell_invoice_detail` (
  `invoice_detail_id` varchar(32) NOT NULL,
  `invoice_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `quantity` int(4) default NULL,
  `price` decimal(16,4) default NULL,
  `goods_cess` decimal(16,4) default NULL,
  `notax_price` decimal(16,4) default NULL,
  `notax_money` decimal(16,4) default NULL,
  `tax` decimal(16,4) default NULL,
  `money` decimal(16,4) default NULL,
  `not_back_num` int(4) default NULL,
  `alr_back_num` int(4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`invoice_detail_id`),
  KEY `FK_T_SELL_I_T_SELL_IN_T_SELL_I` (`invoice_id`),
  CONSTRAINT `t_sell_invoice_detail_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `t_sell_invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_invoice_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_order_contract`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_order_contract`;
CREATE TABLE `t_sell_order_contract` (
  `order_contract_id` varchar(32) NOT NULL,
  `order_contract_code` varchar(50) default NULL,
  `requisition_date` datetime default NULL,
  `sell_type_id` varchar(32) default NULL,
  `client_id` varchar(32) default NULL,
  `client_contact_id` varchar(32) default NULL,
  `client_fax` varchar(32) default NULL,
  `client_phone` varchar(15) default NULL,
  `contract_number` varchar(50) default NULL,
  `deliver_type_id` varchar(32) default NULL,
  `policy` varchar(32) default NULL,
  `delivery_deadlines` datetime default NULL,
  `contract_terms` varchar(255) default NULL,
  `invoice` enum('yes','no') default NULL,
  `invoice_type` enum('specialvat','generalvat','generaltax','ordinarytax','receipt') default NULL,
  `invoice_start` varchar(50) default NULL,
  `payment_type_id` varchar(32) default NULL,
  `freight_balance` enum('ourcommitment','notcommitment','generationpad','selfpay') default NULL,
  `freight_total` decimal(16,4) default NULL,
  `payment_agr_id` varchar(32) default NULL,
  `total_amount` decimal(16,4) default NULL,
  `send_state` enum('noneSendr','portionSend','allSendr') default NULL,
  `not_send_amo` decimal(16,4) default NULL,
  `alr_send_amo` decimal(16,4) default NULL,
  `receipt_state` enum('noneReceipt','portionReceipt','allReceipt') default NULL,
  `goods_state` enum('noneExe','transit','termination','affirm') default NULL,
  `not_receipt_amo` decimal(16,4) default NULL,
  `alr_receipt_amo` decimal(16,4) default NULL,
  `inv_state` enum('noneInv','portionInv','allInv') default NULL,
  `not_inv_amo` decimal(16,4) default NULL,
  `alr_inv_amo` decimal(16,4) default NULL,
  `not_return_amo` decimal(16,4) default NULL,
  `alr_return_amo` decimal(16,4) default NULL,
  `order_contract_state` enum('noneExe','exeIng','termination','closed','affirm') default NULL,
  `staff_id` varchar(32) default NULL,
  `accessory` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `department_id` varchar(32) default NULL,
  `exemption_amount` decimal(16,4) default NULL,
  `remark` varchar(255) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(100) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`order_contract_id`),
  KEY `FK_T_SELL_O_T_PAR_DEL_T_PAR_DE` (`deliver_type_id`),
  CONSTRAINT `t_sell_order_contract_ibfk_1` FOREIGN KEY (`deliver_type_id`) REFERENCES `t_par_deliver_type` (`deliver_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_order_contract
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_order_contract_closed`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_order_contract_closed`;
CREATE TABLE `t_sell_order_contract_closed` (
  `order_con_col_id` varchar(32) NOT NULL,
  `order_contract_id` varchar(32) default NULL,
  `order_con_clo_code` varchar(50) default NULL,
  `termination_date` datetime default NULL,
  `content` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`order_con_col_id`),
  KEY `FK_T_SELL_O_T_SELL_OR_T_SELL_O1` (`order_contract_id`),
  CONSTRAINT `t_sell_order_contract_closed_ibfk_1` FOREIGN KEY (`order_contract_id`) REFERENCES `t_sell_order_contract` (`order_contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_order_contract_closed
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_order_contract_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_order_contract_detail`;
CREATE TABLE `t_sell_order_contract_detail` (
  `order_contract_detail_id` varchar(32) NOT NULL,
  `order_contract_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `brand` varchar(32) default NULL,
  `place_of_origin` varchar(32) default NULL,
  `cess` decimal(16,4) default NULL,
  `quantity` int(4) default NULL,
  `price` decimal(16,4) default NULL,
  `discount_rate` decimal(16,4) default NULL,
  `money` decimal(16,4) default NULL,
  `delivery_deadlines` datetime default NULL,
  `not_send_num` int(4) default NULL,
  `alr_send_num` int(4) default NULL,
  `not_receipt_num` int(4) default NULL,
  `alr_receipt_num` int(4) default NULL,
  `not_inv_num` int(4) default NULL,
  `alr_inv_num` int(4) default NULL,
  `not_ter_num` int(4) default NULL,
  `alr_ter_num` int(4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`order_contract_detail_id`),
  KEY `FK_T_SELL_O_T_SELL_OR_T_SELL_O2` (`order_contract_id`),
  CONSTRAINT `t_sell_order_contract_detail_ibfk_1` FOREIGN KEY (`order_contract_id`) REFERENCES `t_sell_order_contract` (`order_contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_order_contract_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_order_contract_termination`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_order_contract_termination`;
CREATE TABLE `t_sell_order_contract_termination` (
  `order_con_ter_id` varchar(32) NOT NULL,
  `order_contract_id` varchar(32) default NULL,
  `termination_code` varchar(32) default NULL,
  `end_monney` decimal(16,4) default NULL,
  `termination_date` datetime default NULL,
  `termination_content` varchar(255) default NULL,
  `termination_person` varchar(32) default NULL,
  `end_department` varchar(32) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`order_con_ter_id`),
  KEY `FK_T_SELL_O_T_SELL_OR_T_SELL_O3` (`order_contract_id`),
  CONSTRAINT `t_sell_order_contract_termination_ibfk_1` FOREIGN KEY (`order_contract_id`) REFERENCES `t_sell_order_contract` (`order_contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_order_contract_termination
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_order_contract_track`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_order_contract_track`;
CREATE TABLE `t_sell_order_contract_track` (
  `order_con_tra_id` varchar(32) NOT NULL,
  `order_contract_id` varchar(32) default NULL,
  `order_track_code` varchar(50) default NULL,
  `track_theme` varchar(50) default NULL,
  `track_content` varchar(255) default NULL,
  `accessory` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`order_con_tra_id`),
  KEY `FK_T_SELL_O_T_SELL_OR_T_SELL_O4` (`order_contract_id`),
  CONSTRAINT `t_sell_order_contract_track_ibfk_1` FOREIGN KEY (`order_contract_id`) REFERENCES `t_sell_order_contract` (`order_contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_order_contract_track
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_payment_agreement`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_payment_agreement`;
CREATE TABLE `t_sell_payment_agreement` (
  `payment_agr_id` varchar(32) NOT NULL,
  `order_contract_id` varchar(32) default NULL,
  `send_id` varchar(32) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`payment_agr_id`),
  KEY `FK_T_SELL_P_T_SELL_OR_T_SELL_O` (`order_contract_id`),
  KEY `FK_T_SELL_P_T_SELL_SE_T_SELL_S` (`send_id`),
  CONSTRAINT `t_sell_payment_agreement_ibfk_1` FOREIGN KEY (`send_id`) REFERENCES `t_sell_send` (`send_id`),
  CONSTRAINT `t_sell_payment_agreement_ibfk_2` FOREIGN KEY (`order_contract_id`) REFERENCES `t_sell_order_contract` (`order_contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_payment_agreement
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_payment_items`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_payment_items`;
CREATE TABLE `t_sell_payment_items` (
  `payment_items_id` varchar(32) NOT NULL,
  `payment_agr_id` varchar(32) default NULL,
  `percentage` decimal(16,4) default NULL,
  `payment` decimal(16,4) default NULL,
  `payment_deadlines` datetime default NULL,
  `explanation` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`payment_items_id`),
  KEY `FK_T_SELL_P_T_SELL_PA_T_SELL_P` (`payment_agr_id`),
  CONSTRAINT `t_sell_payment_items_ibfk_1` FOREIGN KEY (`payment_agr_id`) REFERENCES `t_sell_payment_agreement` (`payment_agr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_payment_items
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_return`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_return`;
CREATE TABLE `t_sell_return` (
  `return_id` varchar(32) NOT NULL,
  `return_code` varchar(50) default NULL,
  `send_id` varchar(32) default NULL,
  `return_date` datetime default NULL,
  `sell_type_id` varchar(32) default NULL,
  `warehouse_id` varchar(32) default NULL,
  `client_id` varchar(32) default NULL,
  `client_contact_id` varchar(32) default NULL,
  `phone` varchar(15) default NULL,
  `client_fax` varchar(32) default NULL,
  `return_type_id` varchar(32) default NULL,
  `return_reason` varchar(32) default NULL,
  `return_explanation` varchar(255) default NULL,
  `supplier_id` varchar(32) default NULL,
  `supplier_verifier` varchar(32) default NULL,
  `supplier_phone` varchar(15) default NULL,
  `invoice` enum('yes','no') default NULL,
  `mitigate` decimal(16,4) default NULL,
  `payment_type_id` varchar(32) default NULL,
  `refund_deadline` datetime default NULL,
  `freight_balance` enum('ourcommitment','notcommitment','generationpad','selfpay') default NULL,
  `freight_code` varchar(32) default NULL,
  `freight_total` decimal(16,4) default NULL,
  `freight_date` datetime default NULL,
  `freight_department` varchar(32) default NULL,
  `freight_verifier` varchar(32) default NULL,
  `other_costs` decimal(16,4) default NULL,
  `accessory` varchar(255) default NULL,
  `receipt_state` enum('noneReceipt','portionReceipt','allReceipt') default NULL,
  `not_receipt_amo` decimal(16,4) default NULL,
  `alr_receipt_amo` decimal(16,4) default NULL,
  `inv_state` enum('noneInv','portionInv','allInv') default NULL,
  `not_inv_amo` decimal(16,4) default NULL,
  `alr_inv_amo` decimal(16,4) default NULL,
  `staff_id` varchar(32) default NULL,
  `order_contract_state` enum('noneExe','exeIng','termination','closed','affirm') default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audti_remark` varchar(100) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`return_id`),
  KEY `FK_T_SELL_R_SELL_SEND_T_SELL_S` (`send_id`),
  CONSTRAINT `t_sell_return_ibfk_1` FOREIGN KEY (`send_id`) REFERENCES `t_sell_send` (`send_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_return
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_return_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_return_detail`;
CREATE TABLE `t_sell_return_detail` (
  `send_detail_id` varchar(32) NOT NULL,
  `return_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `batch_id` varchar(32) default NULL,
  `quantity` int(4) default NULL,
  `price` decimal(16,4) default NULL,
  `money` decimal(16,4) default NULL,
  `not_receipt_num` int(4) default NULL,
  `alr_receipt_num` int(4) default NULL,
  `not_inv_num` int(4) default NULL,
  `alr_inv_num` int(4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`send_detail_id`),
  KEY `FK_T_SELL_R_T_SELL_RE_T_SELL_R` (`return_id`),
  CONSTRAINT `t_sell_return_detail_ibfk_1` FOREIGN KEY (`return_id`) REFERENCES `t_sell_return` (`return_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_return_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_send`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_send`;
CREATE TABLE `t_sell_send` (
  `send_id` varchar(32) NOT NULL,
  `send_code` varchar(50) default NULL,
  `order_contract_id` varchar(32) default NULL,
  `send_date` datetime default NULL,
  `sell_type_id` varchar(32) default NULL,
  `warehouse_id` varchar(32) default NULL,
  `client_id` varchar(32) default NULL,
  `client_contact_id` varchar(32) default NULL,
  `phone` varchar(15) default NULL,
  `client_fax` varchar(32) default NULL,
  `contract_number` varchar(50) default NULL,
  `deliver_type_id` varchar(32) default NULL,
  `policy` varchar(32) default NULL,
  `delivery_deadlines` datetime default NULL,
  `supplier_id` varchar(32) default NULL,
  `supplier_verifier` varchar(32) default NULL,
  `supplier_phone` varchar(15) default NULL,
  `payment_agr_id` varchar(32) default NULL,
  `invoice` enum('yes','no') default NULL,
  `invoice_type` enum('specialvat','generalvat','generaltax','ordinarytax','receipt') default NULL,
  `invoice_start` varchar(50) default NULL,
  `payment_type_id` varchar(32) default NULL,
  `freight_balance` enum('ourcommitment','notcommitment','generationpad','selfpay') default NULL,
  `freight_code` varchar(30) default NULL,
  `freight_total` decimal(16,4) default NULL,
  `freight_date` datetime default NULL,
  `freight_department` varchar(32) default NULL,
  `freight_verifier` varchar(32) default NULL,
  `other_costs` decimal(16,4) default NULL,
  `accessory` varchar(255) default NULL,
  `return_state` enum('noneReturn','portionReturn','allReturn') default NULL,
  `goods_state` enum('noneExe','transit','termination','affirm') default NULL,
  `not_return_amo` decimal(16,4) default NULL,
  `alr_return_amo` decimal(16,4) default NULL,
  `receipt_state` enum('noneReceipt','portionReceipt','allReceipt') default NULL,
  `not_receipt_amo` decimal(16,4) default NULL,
  `alr_receipt_amo` decimal(16,4) default NULL,
  `inv_state` enum('noneInv','portionInv','allInv') default NULL,
  `not_inv_amo` decimal(16,4) default NULL,
  `alr_inv_amo` decimal(16,4) default NULL,
  `staff_id` varchar(32) default NULL,
  `order_contract_state` enum('noneExe','exeIng','termination','closed','affirm') default NULL,
  `enabled` enum('enable','disable') default NULL,
  `summary` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `audit_state` enum('authstr','pass','failure') default NULL,
  `auditor` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_remark` varchar(100) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`send_id`),
  KEY `FK_T_SELL_S_T_PAR_DEL_T_PAR_DE` (`deliver_type_id`),
  CONSTRAINT `t_sell_send_ibfk_1` FOREIGN KEY (`deliver_type_id`) REFERENCES `t_par_deliver_type` (`deliver_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_send
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_send_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_send_detail`;
CREATE TABLE `t_sell_send_detail` (
  `send_detail_id` varchar(32) NOT NULL,
  `send_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `batch_id` varchar(32) default NULL,
  `quantity` int(4) default NULL,
  `price` decimal(16,4) default NULL,
  `discount_rate` decimal(16,4) default NULL,
  `money` decimal(16,4) default NULL,
  `not_return_num` int(4) default NULL,
  `alr_return_num` int(4) default NULL,
  `not_receipt_num` int(4) default NULL,
  `alr_receipt_num` int(4) default NULL,
  `not_inv_num` int(4) default NULL,
  `alr_inv_num` int(4) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`send_detail_id`),
  KEY `FK_T_SELL_S_T_SELL_SE_T_SELL_S` (`send_id`),
  CONSTRAINT `t_sell_send_detail_ibfk_1` FOREIGN KEY (`send_id`) REFERENCES `t_sell_send` (`send_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_send_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sell_share_person`
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_share_person`;
CREATE TABLE `t_sell_share_person` (
  `shared_person_id` varchar(32) NOT NULL,
  `order_contract_id` varchar(32) default NULL,
  `client_id` varchar(32) default NULL,
  `logistics_id` varchar(32) default NULL,
  `staff_id` varchar(32) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`shared_person_id`),
  KEY `FK_T_SELL_S_T_SELL_OR_T_SELL_O` (`order_contract_id`),
  CONSTRAINT `t_sell_share_person_ibfk_1` FOREIGN KEY (`order_contract_id`) REFERENCES `t_sell_order_contract` (`order_contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_share_person
-- ----------------------------

-- ----------------------------
-- Table structure for `t_split`
-- ----------------------------
DROP TABLE IF EXISTS `t_split`;
CREATE TABLE `t_split` (
  `split_id` varchar(32) NOT NULL,
  `split_code` varchar(32) default NULL,
  `warehouse_id` varchar(32) default NULL,
  `split_date` datetime default NULL,
  `batch` int(11) default NULL,
  `sum_indirect_costs` decimal(16,4) default NULL,
  `department` varchar(32) default NULL,
  `auditor_id` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_state` enum('authstr','failure','pass') default NULL,
  `audit_remark` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`split_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_split
-- ----------------------------

-- ----------------------------
-- Table structure for `t_split_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_split_detail`;
CREATE TABLE `t_split_detail` (
  `split_detail_id` varchar(32) NOT NULL,
  `split_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(225) default NULL,
  `goods_name` varchar(255) default NULL,
  `goods_batch` varchar(255) default NULL,
  `goods_style` varchar(255) default NULL,
  `goods_unit` varchar(32) default NULL,
  `warehouse_id` varchar(32) default NULL,
  `prime_cost` decimal(16,4) default NULL,
  `order_number` int(11) default NULL,
  `remark` varchar(225) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  `assembly_total` decimal(16,4) default NULL,
  PRIMARY KEY  (`split_detail_id`),
  KEY `FK_Split_SplitDetail_SplitId` (`split_id`),
  CONSTRAINT `t_split_detail_ibfk_1` FOREIGN KEY (`split_id`) REFERENCES `t_split` (`split_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_split_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_suppliers`
-- ----------------------------
DROP TABLE IF EXISTS `t_suppliers`;
CREATE TABLE `t_suppliers` (
  `supplier_id` varchar(32) NOT NULL,
  `supplier_number` varchar(32) default NULL COMMENT '供应商编号',
  `supplier_province` varchar(32) default NULL COMMENT '供应商省份',
  `prepaid_balance` decimal(16,4) default NULL COMMENT '预付款余额',
  `suppliers_name` varchar(32) default NULL,
  `type_id` varchar(32) default NULL,
  `company_phone` varchar(32) default NULL,
  `company_fax` varchar(32) default NULL,
  `company_urls` varchar(32) default NULL,
  `company_email` varchar(32) default NULL,
  `city` varchar(255) default NULL,
  `adress` varchar(255) default NULL,
  `postcode` varchar(255) default NULL,
  `supplier_level` enum('normal','illegal') default NULL,
  `source_id` varchar(32) default NULL,
  `nature_id` varchar(32) default NULL,
  `industry_id` varchar(32) default NULL,
  `main_business` varchar(255) default NULL,
  `size_id` varchar(32) default NULL,
  `opened_year` datetime default NULL,
  `registered_capital` decimal(16,4) default NULL,
  `company_legal` varchar(50) default NULL,
  `grade_id` varchar(32) default NULL,
  `bank` varchar(255) default NULL,
  `bank_account` varchar(255) default NULL,
  `tax_id` varchar(255) default NULL,
  `supplier_date` datetime default NULL,
  `supplier_type` varchar(255) default NULL,
  `enabled` enum('enable','disable') default NULL,
  `auditor_id` varchar(32) default NULL COMMENT '�����',
  `auditor_date` datetime default NULL COMMENT '�������',
  `audit_state` enum('authstr','failure','pass') default NULL COMMENT '���״̬',
  `audit_remark` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL COMMENT '������',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY  (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_suppliers
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` varchar(32) NOT NULL,
  `username` varchar(20) NOT NULL,
  `user_cn_name` varchar(50) default NULL,
  `password` varchar(64) NOT NULL,
  `dep_id` varchar(32) default NULL,
  `salt` varchar(50) default NULL,
  `status` enum('disable','enable') NOT NULL,
  `builtin` enum('custom','builtin','admin') NOT NULL,
  `email` varchar(50) default NULL,
  `user_image` varchar(50) default NULL,
  `remark` varchar(255) default NULL,
  `last_login_time` datetime default NULL,
  `last_login_ip_address` varchar(150) default NULL,
  `login_count` int(10) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`user_id`),
  KEY `FK_USER_DEP` USING BTREE (`dep_id`),
  CONSTRAINT `FK_USER_DEP` FOREIGN KEY (`dep_id`) REFERENCES `t_dep` (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('8b25651c2d896297530b64e4b80ec503', 'admin', '超级管理员', '5dc10e7826e648ec6f136974c38f81d0e5e1d0ae', '1ff32f3ab5bd95584a429130956fecea', 'e03b1b95ceff4db6', 'enable', 'admin', 'admin@glacier.cn', null, null, '2015-01-09 10:05:54', '127.0.0.1[本地]', '999', '8b25651c2d896297530b64e4b80ec503', '2014-02-27 02:58:02');
INSERT INTO `t_user` VALUES ('d31a15b0c9abe32744dc16203b9547d8', 'administrators', '客户管理员', 'f418eabf12e35e6112d8783ef6751c0da68782b5', '1ff32f3ab5bd95584a429130956fecea', 'd5a18894f8d85631', 'enable', 'custom', 'administrators@qq.com', null, '后台管理员', null, null, '0', '8b25651c2d896297530b64e4b80ec503', '2014-07-28 16:30:17');
INSERT INTO `t_user` VALUES ('d6dc13121742a3b331dcb6f93d4f4bce', 'adminTest', '客户管理员', 'd7d62bc0a343ffea509247f1a7c92120e762771d', null, 'baaa252597ec918e', 'enable', 'custom', 'adminTest@163.com', null, '客户、测试使用账号', '2014-08-04 17:53:34', '127.0.0.1[本地]', '4', '8b25651c2d896297530b64e4b80ec503', '2014-07-14 13:40:42');

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `user_id` varchar(32) NOT NULL COMMENT '用户id',
  `role_id` varchar(32) NOT NULL COMMENT '角色Id',
  PRIMARY KEY  (`user_id`,`role_id`),
  KEY `FK_t_user_role2` (`role_id`),
  CONSTRAINT `FK_t_user_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`),
  CONSTRAINT `FK_t_user_role_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('8b25651c2d896297530b64e4b80ec503', '56078492e2eed9eb33f32c3af54a8e3f');
INSERT INTO `t_user_role` VALUES ('d31a15b0c9abe32744dc16203b9547d8', '56078492e2eed9eb33f32c3af54a8e3f');
INSERT INTO `t_user_role` VALUES ('d6dc13121742a3b331dcb6f93d4f4bce', '56078492e2eed9eb33f32c3af54a8e3f');
INSERT INTO `t_user_role` VALUES ('8b25651c2d896297530b64e4b80ec503', 'c87dd7161dbf8777c41b8cbfaa985db4');

-- ----------------------------
-- Table structure for `t_user_setting`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_setting`;
CREATE TABLE `t_user_setting` (
  `user_id` varchar(32) NOT NULL,
  `set_key` varchar(50) default NULL,
  `set_name` varchar(50) default NULL,
  `set_value` varchar(255) default NULL,
  `set_description` varchar(255) default NULL,
  PRIMARY KEY  (`user_id`),
  CONSTRAINT `FK_user_user_setting_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `t_warehouse`
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse`;
CREATE TABLE `t_warehouse` (
  `warehouse_id` varchar(32) NOT NULL,
  `order_num` int(4) default NULL,
  `warehouse_code` varchar(32) default NULL,
  `warehouse_name` varchar(32) default NULL,
  `department_id` varchar(32) default NULL,
  `warehouse_manager` varchar(32) default NULL,
  `retail_libraries` enum('yes','no') default NULL COMMENT 'ö�٣���Y��/N��',
  `phone` varchar(32) default NULL,
  `address` varchar(32) default NULL,
  `head` varchar(32) default NULL,
  `remark` varchar(225) default NULL,
  `enabled` enum('disable','enable') default NULL COMMENT 'ö�٣�(����1/����0)',
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warehouse
-- ----------------------------

-- ----------------------------
-- Table structure for `t_warehouse_classify`
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse_classify`;
CREATE TABLE `t_warehouse_classify` (
  `warehouse_classify_id` varchar(32) NOT NULL,
  `warehouse_id` varchar(32) default NULL,
  `warehouse_type_id` varchar(32) default NULL,
  PRIMARY KEY  (`warehouse_classify_id`),
  KEY `FK_WarehouseTtype_WarehouseClassify_WarehouseTypeId` (`warehouse_type_id`),
  KEY `FK_Warehouse_WarehouseClassify_WarehouseId` (`warehouse_id`),
  CONSTRAINT `t_warehouse_classify_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `t_warehouse` (`warehouse_id`),
  CONSTRAINT `t_warehouse_classify_ibfk_2` FOREIGN KEY (`warehouse_type_id`) REFERENCES `t_warehouse_type` (`warehouse_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warehouse_classify
-- ----------------------------

-- ----------------------------
-- Table structure for `t_warehouse_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse_detail`;
CREATE TABLE `t_warehouse_detail` (
  `detail_id` varchar(32) NOT NULL,
  `detail_code` varchar(100) default NULL,
  `detail_date` date default NULL,
  `detail_type` varchar(100) default NULL,
  `detail_kind` varchar(100) default NULL,
  `warehouse_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `detail_good_code` varchar(100) default NULL,
  `detail_good_name` varchar(100) default NULL,
  `detail_good_way` varchar(100) default NULL,
  `detail_good_depart` varchar(100) default NULL,
  `detail_good_batch` varchar(100) default NULL,
  `detail_good_in` int(4) default NULL,
  `detail_in_price` decimal(16,4) default NULL,
  `detail_in_total` decimal(16,4) default NULL,
  `detail_good_out` int(4) default NULL,
  `detail_out_price` decimal(16,4) default NULL,
  `detail_out_total` decimal(16,4) default NULL,
  `detail_remain_number` int(4) default NULL,
  `detail_remain_price` decimal(16,4) default NULL,
  `detail_remain_total` decimal(16,4) default NULL,
  `detail_good_stream` varchar(100) default NULL,
  `remark` varchar(255) default NULL,
  `batch` varchar(100) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `updater_time` datetime default NULL,
  PRIMARY KEY  (`detail_id`),
  KEY `FK_Warehouse_WarehouseDetail_WarehouseId` (`warehouse_id`),
  CONSTRAINT `t_warehouse_detail_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `t_warehouse` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warehouse_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_warehouse_in`
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse_in`;
CREATE TABLE `t_warehouse_in` (
  `warehouse_in_id` varchar(32) NOT NULL COMMENT '���ID',
  `warehouse_in_code` varchar(32) default NULL COMMENT '��ⵥ��',
  `warehouse_id` varchar(32) default NULL COMMENT '�ֿ�ID',
  `warehouse_in_date` datetime default NULL COMMENT '�������',
  `in_type_id` varchar(32) default NULL COMMENT '�������ID',
  `supplier_id` varchar(32) default NULL COMMENT '��Ӧ��ID',
  `total_money` decimal(16,4) default NULL,
  `line_people` varchar(32) default NULL,
  `phone` varchar(32) default NULL COMMENT '��ϵ�绰',
  `department` varchar(32) default NULL COMMENT '���첿��',
  `enabled` enum('enable','disable') default NULL,
  `auditor_id` varchar(32) default NULL COMMENT '�����',
  `auditor_date` datetime default NULL COMMENT '�������',
  `audit_state` enum('authstr','failure','pass') default NULL COMMENT '���״̬',
  `audit_remark` varchar(255) default NULL,
  `remark` varchar(225) default NULL COMMENT '��ע',
  `creater` varchar(32) default NULL COMMENT '������',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY  (`warehouse_in_id`),
  KEY `FK_InType_WarehouseIn_InTypeId` (`in_type_id`),
  CONSTRAINT `t_warehouse_in_ibfk_1` FOREIGN KEY (`in_type_id`) REFERENCES `t_in_type` (`in_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warehouse_in
-- ----------------------------

-- ----------------------------
-- Table structure for `t_warehouse_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse_inventory`;
CREATE TABLE `t_warehouse_inventory` (
  `inventory_id` varchar(32) NOT NULL COMMENT '���ID',
  `in_inventory_id` varchar(32) default NULL COMMENT '�������ID',
  `inventory_code` varchar(32) default NULL COMMENT '��ⵥ��',
  `warehouse_id` varchar(32) default NULL COMMENT '�ֿ�ID',
  `inventory_date` datetime default NULL COMMENT '�������',
  `inventory_type` varchar(100) default NULL COMMENT 'ö�٣�(����overflow/����loss)',
  `attn` varchar(32) default NULL COMMENT '������',
  `department` varchar(32) default NULL COMMENT '���첿��',
  `enabled` enum('enable','disable') default NULL,
  `auditor_id` varchar(32) default NULL COMMENT '�����',
  `auditor_date` datetime default NULL COMMENT '�������',
  `audit_state` enum('authstr','failure','pass') default NULL COMMENT '���״̬',
  `audit_remark` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `creater` varchar(32) default NULL COMMENT '������',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY  (`inventory_id`),
  KEY `FK_InventoryType_WarehouseInventory_InventoryType` (`in_inventory_id`),
  CONSTRAINT `t_warehouse_inventory_ibfk_1` FOREIGN KEY (`in_inventory_id`) REFERENCES `t_inventory_type` (`in_inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warehouse_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for `t_warehouse_inventory_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse_inventory_detail`;
CREATE TABLE `t_warehouse_inventory_detail` (
  `inventory_detai_id` varchar(32) NOT NULL,
  `inventory_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(225) default NULL,
  `goods_name` varchar(255) default NULL,
  `goods_batch` varchar(255) default NULL,
  `goods_style` varchar(255) default NULL,
  `goods_unit` varchar(32) default NULL,
  `inventory_number` int(4) default NULL,
  `normal_number` int(4) default NULL,
  `damage_normal` int(4) default NULL,
  `remark` varchar(225) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`inventory_detai_id`),
  KEY `FK_WarehouseInventory_warehouseInventoryDetail_InventoryId` (`inventory_id`),
  CONSTRAINT `t_warehouse_inventory_detail_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `t_warehouse_inventory` (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warehouse_inventory_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_warehouse_in_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse_in_detail`;
CREATE TABLE `t_warehouse_in_detail` (
  `in_detai_id` varchar(32) NOT NULL,
  `in_code` varchar(100) default NULL,
  `warehouse_in_id` varchar(32) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(225) default NULL,
  `goods_name` varchar(255) default NULL,
  `goods_batch` varchar(255) default NULL,
  `goods_style` varchar(255) default NULL,
  `goods_unit` varchar(32) default NULL,
  `in_type_price` decimal(16,4) default NULL,
  `in_number` int(4) default NULL,
  `in_total` decimal(16,4) default NULL,
  `remark` varchar(225) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`in_detai_id`),
  KEY `FK_WarehouseIn_WarehouseInDetail_WarehouseInId` (`warehouse_in_id`),
  CONSTRAINT `t_warehouse_in_detail_ibfk_1` FOREIGN KEY (`warehouse_in_id`) REFERENCES `t_warehouse_in` (`warehouse_in_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warehouse_in_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_warehouse_out`
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse_out`;
CREATE TABLE `t_warehouse_out` (
  `warehouse_out_id` varchar(32) NOT NULL COMMENT '���ID',
  `warehouse_out_code` varchar(32) default NULL COMMENT '��ⵥ��',
  `warehouse_id` varchar(32) default NULL COMMENT '�ֿ�ID',
  `warehouse_out_date` datetime default NULL COMMENT '�������',
  `out_type_id` varchar(32) default NULL COMMENT '�������ID',
  `client_id` varchar(32) default NULL COMMENT '��Ӧ��ID',
  `total_money` decimal(16,4) default NULL,
  `line_people` varchar(32) default NULL,
  `phone` varchar(32) default NULL COMMENT '��ϵ�绰',
  `auditor_id` varchar(32) default NULL,
  `audit_date` datetime default NULL,
  `audit_state` enum('authstr','failure','pass') default NULL,
  `audit_remark` varchar(255) default NULL,
  `remark` varchar(225) default NULL COMMENT '��ע',
  `attn` varchar(32) default NULL COMMENT '������',
  `department` varchar(32) default NULL COMMENT '���첿��',
  `enabled` enum('enable','disable') default NULL COMMENT 'ö�٣�(����1/����0)',
  `creater` varchar(32) default NULL COMMENT '������',
  `create_time` datetime default NULL COMMENT '¼��ʱ��',
  `updater` varchar(32) default NULL COMMENT '����޸���',
  `update_time` datetime default NULL COMMENT '����޸�ʱ��',
  PRIMARY KEY  (`warehouse_out_id`),
  KEY `FK_OutType_WarehouseOut_OutTypeId` (`out_type_id`),
  CONSTRAINT `t_warehouse_out_ibfk_1` FOREIGN KEY (`out_type_id`) REFERENCES `t_out_type` (`out_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warehouse_out
-- ----------------------------

-- ----------------------------
-- Table structure for `t_warehouse_out_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse_out_detail`;
CREATE TABLE `t_warehouse_out_detail` (
  `out_detai_id` varchar(32) NOT NULL,
  `warehouse_out_id` varchar(32) default NULL,
  `out_code` varchar(100) default NULL,
  `goods_id` varchar(32) default NULL,
  `goods_code` varchar(225) default NULL,
  `goods_name` varchar(255) default NULL,
  `goods_batch` varchar(255) default NULL,
  `goods_style` varchar(255) default NULL,
  `goods_unit` varchar(32) default NULL,
  `warehouse_id` varchar(32) default NULL,
  `out_type_price` decimal(16,4) default NULL,
  `out_number` int(4) default NULL,
  `out_price_total` decimal(16,4) default NULL,
  `remark` varchar(225) default NULL,
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`out_detai_id`),
  KEY `FK_WarehouseOut_WarehouseOutDetail_WarehouseOuId` (`warehouse_out_id`),
  CONSTRAINT `t_warehouse_out_detail_ibfk_1` FOREIGN KEY (`warehouse_out_id`) REFERENCES `t_warehouse_out` (`warehouse_out_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warehouse_out_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_warehouse_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse_type`;
CREATE TABLE `t_warehouse_type` (
  `warehouse_type_id` varchar(32) NOT NULL,
  `order_num` int(4) default NULL,
  `warehouse_type_name` varchar(32) default NULL,
  `enabled` enum('enable','disable') default NULL COMMENT 'ö�٣�(����1/����0)',
  `creater` varchar(32) default NULL,
  `create_time` datetime default NULL,
  `updater` varchar(32) default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`warehouse_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warehouse_type
-- ----------------------------
