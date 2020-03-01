/*
Navicat PGSQL Data Transfer

Source Server         : locallhost
Source Server Version : 90500
Source Host           : localhost:5432
Source Database       : it_news
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90500
File Encoding         : 65001

Date: 2017-06-02 16:17:36
*/


-- ----------------------------
-- Sequence structure for category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "category_id_seq";
CREATE SEQUENCE "category_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."category_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for comments_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "comments_id_seq";
CREATE SEQUENCE "comments_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1912
 CACHE 1;
SELECT setval('"public"."comments_id_seq"', 1912, true);

-- ----------------------------
-- Sequence structure for news_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "news_id_seq";
CREATE SEQUENCE "news_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 466
 CACHE 1;
SELECT setval('"public"."news_id_seq"', 466, true);

-- ----------------------------
-- Sequence structure for tags_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "tags_id_seq";
CREATE SEQUENCE "tags_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 220
 CACHE 1;
SELECT setval('"public"."tags_id_seq"', 220, true);

-- ----------------------------
-- Sequence structure for user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "user_id_seq";
CREATE SEQUENCE "user_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS "category";
CREATE TABLE "category" (
"id" int4 DEFAULT nextval('category_id_seq'::regclass) NOT NULL,
"category" varchar(255) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO "category" VALUES ('1', 'Technology');
INSERT INTO "category" VALUES ('2', 'Mobile');
INSERT INTO "category" VALUES ('3', 'Development');
INSERT INTO "category" VALUES ('4', 'OS');
INSERT INTO "category" VALUES ('5', 'Security');
COMMIT;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS "comments";
CREATE TABLE "comments" (
"id" int4 DEFAULT nextval('comments_id_seq'::regclass) NOT NULL,
"text" text COLLATE "default" NOT NULL,
"id_news" int4 NOT NULL
)
WITH (OIDS=FALSE)

;


-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS "tags";
CREATE TABLE "tags" (
"id" int4 DEFAULT nextval('tags_id_seq'::regclass) NOT NULL,
"tag" varchar(255) COLLATE "default" NOT NULL,
"id_category" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tags
-- ----------------------------
BEGIN;
INSERT INTO "tags" VALUES ('2', 'Java', '3');
INSERT INTO "tags" VALUES ('3', 'Application Development', '3');
INSERT INTO "tags" VALUES ('4', 'Microsoft', '1');
INSERT INTO "tags" VALUES ('5', 'Servers', '1');
INSERT INTO "tags" VALUES ('6', 'Pcs', '1');
INSERT INTO "tags" VALUES ('7', 'Datacenter', '1');
INSERT INTO "tags" VALUES ('8', 'Hardware', '1');
INSERT INTO "tags" VALUES ('9', 'Malware', '5');
INSERT INTO "tags" VALUES ('10', 'Cyber Crime', '5');
INSERT INTO "tags" VALUES ('11', 'Security', '5');
INSERT INTO "tags" VALUES ('12', 'Microsoft Windows', '4');
INSERT INTO "tags" VALUES ('13', 'Hacking', '5');
INSERT INTO "tags" VALUES ('14', 'Email', '1');
INSERT INTO "tags" VALUES ('15', 'Training', null);
INSERT INTO "tags" VALUES ('16', 'Jobs', null);
INSERT INTO "tags" VALUES ('17', 'Careers', null);
INSERT INTO "tags" VALUES ('18', 'Networking', '5');
INSERT INTO "tags" VALUES ('19', 'Patch Management', '1');
INSERT INTO "tags" VALUES ('20', 'Android', '2');
INSERT INTO "tags" VALUES ('21', 'Web Applications', '1');
INSERT INTO "tags" VALUES ('22', 'Machine Learning', '1');
INSERT INTO "tags" VALUES ('23', 'Google', '1');
INSERT INTO "tags" VALUES ('24', 'M&A;', '1');
INSERT INTO "tags" VALUES ('25', 'Technology Industry', '1');
INSERT INTO "tags" VALUES ('26', 'Storage', '1');
INSERT INTO "tags" VALUES ('27', 'Linux', '4');
INSERT INTO "tags" VALUES ('28', 'Open Source', '1');
INSERT INTO "tags" VALUES ('29', 'Mobile', '2');
INSERT INTO "tags" VALUES ('30', 'Google I/O 2017', '2');
INSERT INTO "tags" VALUES ('31', 'Artificial Intelligence', '1');
INSERT INTO "tags" VALUES ('32', 'Cloud Computing', '1');
INSERT INTO "tags" VALUES ('33', 'Analytics', '1');
INSERT INTO "tags" VALUES ('34', 'Business Intelligence (Bi)', '1');
INSERT INTO "tags" VALUES ('35', 'Software', '1');
INSERT INTO "tags" VALUES ('36', 'Daily Briefing', '1');
INSERT INTO "tags" VALUES ('37', 'Internet Of Things', '1');
INSERT INTO "tags" VALUES ('38', 'Amazon.Com', '1');
INSERT INTO "tags" VALUES ('39', 'Social Networking', '1');
INSERT INTO "tags" VALUES ('40', 'Internet', '1');
INSERT INTO "tags" VALUES ('41', 'Nasa', '1');
INSERT INTO "tags" VALUES ('42', 'Nuclear', '1');
INSERT INTO "tags" VALUES ('43', 'Hp', '1');
INSERT INTO "tags" VALUES ('44', 'Vulnerability', '1');
INSERT INTO "tags" VALUES ('45', 'Bluetooth', '1');
INSERT INTO "tags" VALUES ('46', 'Usb', '1');
INSERT INTO "tags" VALUES ('47', 'Fcc', '1');
INSERT INTO "tags" VALUES ('48', 'Net Neutrality', '1');
INSERT INTO "tags" VALUES ('49', 'Ajit Pai', '1');
INSERT INTO "tags" VALUES ('50', 'Dmca', '1');
INSERT INTO "tags" VALUES ('51', 'Intellectual Property', '1');
INSERT INTO "tags" VALUES ('52', 'Copyright', '1');
INSERT INTO "tags" VALUES ('53', 'Apple', '2');
INSERT INTO "tags" VALUES ('54', 'Qualcomm', '1');
INSERT INTO "tags" VALUES ('55', 'Cybercrime', '5');
INSERT INTO "tags" VALUES ('56', 'Ransomware', '1');
INSERT INTO "tags" VALUES ('57', 'Samsung', '2');
INSERT INTO "tags" VALUES ('58', 'Galaxy', '2');
INSERT INTO "tags" VALUES ('59', 'Server', '1');
INSERT INTO "tags" VALUES ('60', 'Agile', '1');
INSERT INTO "tags" VALUES ('61', 'Data Center', '1');
INSERT INTO "tags" VALUES ('62', 'Trademark', '1');
INSERT INTO "tags" VALUES ('63', 'Facebook', '1');
INSERT INTO "tags" VALUES ('64', 'Cnil', '1');
INSERT INTO "tags" VALUES ('65', 'France', null);
INSERT INTO "tags" VALUES ('66', 'Data Privacy', '5');
INSERT INTO "tags" VALUES ('67', 'Windows', '4');
INSERT INTO "tags" VALUES ('68', 'Development', '3');
INSERT INTO "tags" VALUES ('69', 'Cryptocurrency', '1');
INSERT INTO "tags" VALUES ('70', 'Vodafone', '2');
INSERT INTO "tags" VALUES ('71', 'Htc', '2');
INSERT INTO "tags" VALUES ('72', 'Smartphones', '2');
INSERT INTO "tags" VALUES ('73', 'Mitt Romney', null);
INSERT INTO "tags" VALUES ('74', 'United Airlines', null);
INSERT INTO "tags" VALUES ('75', 'Hpe', null);
INSERT INTO "tags" VALUES ('76', 'Emc', null);
INSERT INTO "tags" VALUES ('77', 'Pure Storage', null);
INSERT INTO "tags" VALUES ('78', 'Infinidat', null);
INSERT INTO "tags" VALUES ('79', 'Nvidia', '1');
INSERT INTO "tags" VALUES ('80', 'Gpu', '1');
INSERT INTO "tags" VALUES ('81', 'Self-Driving Cars', null);
INSERT INTO "tags" VALUES ('82', 'Congress', null);
INSERT INTO "tags" VALUES ('83', 'Nhs', null);
INSERT INTO "tags" VALUES ('84', 'Nsa', null);
INSERT INTO "tags" VALUES ('85', 'Smb', null);
INSERT INTO "tags" VALUES ('86', 'Uber', '1');
INSERT INTO "tags" VALUES ('87', 'Watch', null);
INSERT INTO "tags" VALUES ('88', 'Fitbit', null);
INSERT INTO "tags" VALUES ('89', 'Youtube', '1');
INSERT INTO "tags" VALUES ('90', 'Bbc', null);
INSERT INTO "tags" VALUES ('91', 'Outsourcing', null);
INSERT INTO "tags" VALUES ('92', 'Atos', null);
INSERT INTO "tags" VALUES ('93', 'Russia', null);
INSERT INTO "tags" VALUES ('94', 'Mobile Networks', '2');
INSERT INTO "tags" VALUES ('95', 'Ukraine', null);
INSERT INTO "tags" VALUES ('96', 'Virtualisation', '1');
INSERT INTO "tags" VALUES ('97', 'Intel', '1');
INSERT INTO "tags" VALUES ('98', 'Patent', null);
INSERT INTO "tags" VALUES ('99', 'Passwords', null);
INSERT INTO "tags" VALUES ('100', 'Cisco', '1');
INSERT INTO "tags" VALUES ('101', 'Layoffs', null);
INSERT INTO "tags" VALUES ('102', 'Data Breach', null);
INSERT INTO "tags" VALUES ('103', 'Developer', '3');
INSERT INTO "tags" VALUES ('104', 'Fasthosts', null);
INSERT INTO "tags" VALUES ('105', 'Backup', '1');
INSERT INTO "tags" VALUES ('106', 'Cloud', '1');
INSERT INTO "tags" VALUES ('107', 'Amd', '1');
INSERT INTO "tags" VALUES ('108', 'Xeon', '1');
INSERT INTO "tags" VALUES ('109', 'Ibm', '1');
INSERT INTO "tags" VALUES ('110', 'Toshiba', '1');
INSERT INTO "tags" VALUES ('111', 'Primary Data', null);
INSERT INTO "tags" VALUES ('112', 'Aerospace', null);
INSERT INTO "tags" VALUES ('113', 'Drone', null);
INSERT INTO "tags" VALUES ('114', 'Darpa', null);
INSERT INTO "tags" VALUES ('115', 'Robot', null);
INSERT INTO "tags" VALUES ('116', 'Automation', '1');
INSERT INTO "tags" VALUES ('117', 'Aviation', null);
INSERT INTO "tags" VALUES ('118', 'Porn', null);
INSERT INTO "tags" VALUES ('119', 'Supercomputer', '1');
INSERT INTO "tags" VALUES ('120', 'Cray', null);
INSERT INTO "tags" VALUES ('121', 'Sexism', null);
INSERT INTO "tags" VALUES ('122', 'Tech Jobs', null);
INSERT INTO "tags" VALUES ('123', 'Facial Recognition', null);
INSERT INTO "tags" VALUES ('124', 'Technology', '1');
INSERT INTO "tags" VALUES ('125', 'Privacy', '5');
INSERT INTO "tags" VALUES ('126', 'Airline', null);
INSERT INTO "tags" VALUES ('127', 'Oculus', '1');
INSERT INTO "tags" VALUES ('128', 'Cybersecurity', '5');
INSERT INTO "tags" VALUES ('129', 'Government', null);
INSERT INTO "tags" VALUES ('130', 'Policy', null);
INSERT INTO "tags" VALUES ('131', 'North Korea', null);
INSERT INTO "tags" VALUES ('132', 'Aws', null);
INSERT INTO "tags" VALUES ('133', 'Windows Xp', '4');
INSERT INTO "tags" VALUES ('134', 'Arm', '1');
INSERT INTO "tags" VALUES ('135', 'Dell Emc', null);
INSERT INTO "tags" VALUES ('136', 'Javascript', '3');
INSERT INTO "tags" VALUES ('137', 'Apt', null);
INSERT INTO "tags" VALUES ('138', 'Shadow Brokers', null);
INSERT INTO "tags" VALUES ('139', 'Chatbot', null);
INSERT INTO "tags" VALUES ('140', 'Python', '3');
INSERT INTO "tags" VALUES ('141', 'Ireland', null);
INSERT INTO "tags" VALUES ('142', 'Revenge Porn', null);
INSERT INTO "tags" VALUES ('143', 'Data Protection', '5');
INSERT INTO "tags" VALUES ('144', 'Deepmind', null);
INSERT INTO "tags" VALUES ('145', 'Germany', null);
INSERT INTO "tags" VALUES ('146', 'Pc World', null);
INSERT INTO "tags" VALUES ('147', 'Customer Service', null);
INSERT INTO "tags" VALUES ('148', 'Iphone', '2');
INSERT INTO "tags" VALUES ('149', 'Safari', '1');
INSERT INTO "tags" VALUES ('150', 'Power', null);
INSERT INTO "tags" VALUES ('151', 'Nutanix', null);
INSERT INTO "tags" VALUES ('152', 'Hyperconvergence', null);
INSERT INTO "tags" VALUES ('153', 'Patents', null);
INSERT INTO "tags" VALUES ('154', 'Trade Secrets', null);
INSERT INTO "tags" VALUES ('155', 'Volvo', null);
INSERT INTO "tags" VALUES ('156', 'Connected Car', null);
INSERT INTO "tags" VALUES ('157', 'Surveillance', null);
INSERT INTO "tags" VALUES ('158', 'Containers', null);
INSERT INTO "tags" VALUES ('159', 'Conference', null);
INSERT INTO "tags" VALUES ('160', 'Devops', '3');
INSERT INTO "tags" VALUES ('161', 'Azure', '1');
INSERT INTO "tags" VALUES ('162', 'Orion', null);
INSERT INTO "tags" VALUES ('163', 'Donald Trump', null);
INSERT INTO "tags" VALUES ('164', 'Moon', null);
INSERT INTO "tags" VALUES ('165', 'Bug', null);
INSERT INTO "tags" VALUES ('166', 'Tizen', '2');
INSERT INTO "tags" VALUES ('167', 'Nexsan', null);
INSERT INTO "tags" VALUES ('168', 'Mimecast', null);
INSERT INTO "tags" VALUES ('169', 'Gnu', null);
INSERT INTO "tags" VALUES ('170', 'Gpl ', null);
INSERT INTO "tags" VALUES ('171', 'Exoplanet', null);
INSERT INTO "tags" VALUES ('172', 'Amazon', '1');
INSERT INTO "tags" VALUES ('173', 'Alexa', '1');
INSERT INTO "tags" VALUES ('174', 'Zuckerberg', null);
INSERT INTO "tags" VALUES ('175', 'Open Compute', null);
INSERT INTO "tags" VALUES ('176', 'Piracy', null);
INSERT INTO "tags" VALUES ('177', 'Bittorrent', null);
INSERT INTO "tags" VALUES ('178', 'Legal', null);
INSERT INTO "tags" VALUES ('179', 'Infrastructure', null);
INSERT INTO "tags" VALUES ('180', 'Code', '3');
INSERT INTO "tags" VALUES ('181', 'Royal Navy', null);
INSERT INTO "tags" VALUES ('182', 'O2', null);
INSERT INTO "tags" VALUES ('183', '4G', '2');
INSERT INTO "tags" VALUES ('184', 'Western Digital', null);
INSERT INTO "tags" VALUES ('185', 'On-Call', null);
INSERT INTO "tags" VALUES ('186', 'Zero-Day', null);
INSERT INTO "tags" VALUES ('187', 'Api', null);
INSERT INTO "tags" VALUES ('188', 'Php', '3');
INSERT INTO "tags" VALUES ('189', 'Windows 10', '4');
INSERT INTO "tags" VALUES ('190', 'Quantum', '1');
INSERT INTO "tags" VALUES ('191', 'Dxi', null);
INSERT INTO "tags" VALUES ('192', 'Stornext', null);
INSERT INTO "tags" VALUES ('193', '911', null);
INSERT INTO "tags" VALUES ('194', 'T-Mobile', '2');
INSERT INTO "tags" VALUES ('195', 'Texas', null);
INSERT INTO "tags" VALUES ('196', 'Web Development', '3');
INSERT INTO "tags" VALUES ('197', 'Development Tools', '3');
INSERT INTO "tags" VALUES ('198', 'Github', '3');
INSERT INTO "tags" VALUES ('199', 'Paas', null);
INSERT INTO "tags" VALUES ('200', 'Data Science', '1');
INSERT INTO "tags" VALUES ('201', 'Mobile Development', '3');
INSERT INTO "tags" VALUES ('202', 'Microservices', '1');
INSERT INTO "tags" VALUES ('203', 'Kubernetes', '1');
INSERT INTO "tags" VALUES ('204', 'Sony', '1');
INSERT INTO "tags" VALUES ('205', 'Mobile Management', '2');
INSERT INTO "tags" VALUES ('206', 'Firefox', '1');
INSERT INTO "tags" VALUES ('207', 'Backup And Recovery', '1');
INSERT INTO "tags" VALUES ('208', 'Disaster Recovery', null);
INSERT INTO "tags" VALUES ('209', 'Android Wear', '2');
INSERT INTO "tags" VALUES ('210', 'Motorola', '2');
INSERT INTO "tags" VALUES ('211', 'Huawei', '2');
INSERT INTO "tags" VALUES ('212', 'Verizon', null);
INSERT INTO "tags" VALUES ('213', 'Asus', '1');
INSERT INTO "tags" VALUES ('214', 'Technewsworld', null);
INSERT INTO "tags" VALUES ('215', 'Technology ', null);
INSERT INTO "tags" VALUES ('216', 'Emerging Tech ', null);
INSERT INTO "tags" VALUES ('217', 'Virtual Reality ', null);
INSERT INTO "tags" VALUES ('218', 'Mobile Tech ', null);
INSERT INTO "tags" VALUES ('219', 'Smartphones ', null);
INSERT INTO "tags" VALUES ('220', 'Tech Buzz ', null);
COMMIT;

-- ----------------------------
-- Table structure for tags_news
-- ----------------------------
DROP TABLE IF EXISTS "tags_news";
CREATE TABLE "tags_news" (
"id_tags" int4 NOT NULL,
"id_news" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tags_news
-- ----------------------------
BEGIN;
INSERT INTO "tags_news" VALUES ('2', '2');
INSERT INTO "tags_news" VALUES ('2', '79');
INSERT INTO "tags_news" VALUES ('2', '140');
INSERT INTO "tags_news" VALUES ('2', '189');
INSERT INTO "tags_news" VALUES ('2', '195');
INSERT INTO "tags_news" VALUES ('2', '196');
INSERT INTO "tags_news" VALUES ('2', '204');
INSERT INTO "tags_news" VALUES ('2', '211');
INSERT INTO "tags_news" VALUES ('2', '228');
INSERT INTO "tags_news" VALUES ('2', '235');
INSERT INTO "tags_news" VALUES ('2', '241');
INSERT INTO "tags_news" VALUES ('2', '248');
INSERT INTO "tags_news" VALUES ('2', '254');
INSERT INTO "tags_news" VALUES ('2', '262');
INSERT INTO "tags_news" VALUES ('2', '269');
INSERT INTO "tags_news" VALUES ('2', '272');
INSERT INTO "tags_news" VALUES ('2', '280');
INSERT INTO "tags_news" VALUES ('3', '3');
INSERT INTO "tags_news" VALUES ('3', '10');
INSERT INTO "tags_news" VALUES ('3', '189');
INSERT INTO "tags_news" VALUES ('3', '190');
INSERT INTO "tags_news" VALUES ('3', '192');
INSERT INTO "tags_news" VALUES ('3', '194');
INSERT INTO "tags_news" VALUES ('3', '195');
INSERT INTO "tags_news" VALUES ('3', '196');
INSERT INTO "tags_news" VALUES ('3', '197');
INSERT INTO "tags_news" VALUES ('3', '199');
INSERT INTO "tags_news" VALUES ('3', '200');
INSERT INTO "tags_news" VALUES ('3', '202');
INSERT INTO "tags_news" VALUES ('3', '203');
INSERT INTO "tags_news" VALUES ('3', '204');
INSERT INTO "tags_news" VALUES ('3', '206');
INSERT INTO "tags_news" VALUES ('3', '209');
INSERT INTO "tags_news" VALUES ('3', '227');
INSERT INTO "tags_news" VALUES ('3', '228');
INSERT INTO "tags_news" VALUES ('3', '229');
INSERT INTO "tags_news" VALUES ('3', '231');
INSERT INTO "tags_news" VALUES ('3', '232');
INSERT INTO "tags_news" VALUES ('3', '234');
INSERT INTO "tags_news" VALUES ('3', '235');
INSERT INTO "tags_news" VALUES ('3', '238');
INSERT INTO "tags_news" VALUES ('3', '240');
INSERT INTO "tags_news" VALUES ('3', '241');
INSERT INTO "tags_news" VALUES ('3', '242');
INSERT INTO "tags_news" VALUES ('3', '244');
INSERT INTO "tags_news" VALUES ('3', '245');
INSERT INTO "tags_news" VALUES ('3', '247');
INSERT INTO "tags_news" VALUES ('3', '248');
INSERT INTO "tags_news" VALUES ('3', '251');
INSERT INTO "tags_news" VALUES ('3', '253');
INSERT INTO "tags_news" VALUES ('3', '254');
INSERT INTO "tags_news" VALUES ('3', '255');
INSERT INTO "tags_news" VALUES ('3', '257');
INSERT INTO "tags_news" VALUES ('3', '258');
INSERT INTO "tags_news" VALUES ('3', '260');
INSERT INTO "tags_news" VALUES ('3', '261');
INSERT INTO "tags_news" VALUES ('3', '262');
INSERT INTO "tags_news" VALUES ('3', '263');
INSERT INTO "tags_news" VALUES ('3', '265');
INSERT INTO "tags_news" VALUES ('3', '266');
INSERT INTO "tags_news" VALUES ('3', '268');
INSERT INTO "tags_news" VALUES ('3', '269');
INSERT INTO "tags_news" VALUES ('3', '271');
INSERT INTO "tags_news" VALUES ('3', '272');
INSERT INTO "tags_news" VALUES ('3', '273');
INSERT INTO "tags_news" VALUES ('3', '275');
INSERT INTO "tags_news" VALUES ('3', '276');
INSERT INTO "tags_news" VALUES ('3', '278');
INSERT INTO "tags_news" VALUES ('3', '279');
INSERT INTO "tags_news" VALUES ('3', '280');
INSERT INTO "tags_news" VALUES ('3', '282');
INSERT INTO "tags_news" VALUES ('3', '285');
INSERT INTO "tags_news" VALUES ('4', '3');
INSERT INTO "tags_news" VALUES ('4', '23');
INSERT INTO "tags_news" VALUES ('4', '48');
INSERT INTO "tags_news" VALUES ('4', '59');
INSERT INTO "tags_news" VALUES ('4', '64');
INSERT INTO "tags_news" VALUES ('4', '108');
INSERT INTO "tags_news" VALUES ('4', '109');
INSERT INTO "tags_news" VALUES ('4', '114');
INSERT INTO "tags_news" VALUES ('4', '137');
INSERT INTO "tags_news" VALUES ('4', '165');
INSERT INTO "tags_news" VALUES ('4', '192');
INSERT INTO "tags_news" VALUES ('4', '194');
INSERT INTO "tags_news" VALUES ('4', '199');
INSERT INTO "tags_news" VALUES ('4', '202');
INSERT INTO "tags_news" VALUES ('4', '225');
INSERT INTO "tags_news" VALUES ('4', '231');
INSERT INTO "tags_news" VALUES ('4', '234');
INSERT INTO "tags_news" VALUES ('4', '244');
INSERT INTO "tags_news" VALUES ('4', '247');
INSERT INTO "tags_news" VALUES ('4', '257');
INSERT INTO "tags_news" VALUES ('4', '260');
INSERT INTO "tags_news" VALUES ('4', '265');
INSERT INTO "tags_news" VALUES ('4', '268');
INSERT INTO "tags_news" VALUES ('4', '275');
INSERT INTO "tags_news" VALUES ('4', '278');
INSERT INTO "tags_news" VALUES ('4', '287');
INSERT INTO "tags_news" VALUES ('4', '300');
INSERT INTO "tags_news" VALUES ('5', '4');
INSERT INTO "tags_news" VALUES ('6', '4');
INSERT INTO "tags_news" VALUES ('7', '4');
INSERT INTO "tags_news" VALUES ('7', '151');
INSERT INTO "tags_news" VALUES ('8', '4');
INSERT INTO "tags_news" VALUES ('8', '12');
INSERT INTO "tags_news" VALUES ('8', '19');
INSERT INTO "tags_news" VALUES ('8', '193');
INSERT INTO "tags_news" VALUES ('8', '201');
INSERT INTO "tags_news" VALUES ('8', '205');
INSERT INTO "tags_news" VALUES ('8', '233');
INSERT INTO "tags_news" VALUES ('8', '246');
INSERT INTO "tags_news" VALUES ('8', '259');
INSERT INTO "tags_news" VALUES ('8', '267');
INSERT INTO "tags_news" VALUES ('8', '277');
INSERT INTO "tags_news" VALUES ('8', '281');
INSERT INTO "tags_news" VALUES ('9', '5');
INSERT INTO "tags_news" VALUES ('9', '9');
INSERT INTO "tags_news" VALUES ('9', '13');
INSERT INTO "tags_news" VALUES ('9', '14');
INSERT INTO "tags_news" VALUES ('9', '41');
INSERT INTO "tags_news" VALUES ('9', '188');
INSERT INTO "tags_news" VALUES ('10', '5');
INSERT INTO "tags_news" VALUES ('10', '7');
INSERT INTO "tags_news" VALUES ('10', '14');
INSERT INTO "tags_news" VALUES ('11', '5');
INSERT INTO "tags_news" VALUES ('11', '6');
INSERT INTO "tags_news" VALUES ('11', '7');
INSERT INTO "tags_news" VALUES ('11', '9');
INSERT INTO "tags_news" VALUES ('11', '14');
INSERT INTO "tags_news" VALUES ('11', '24');
INSERT INTO "tags_news" VALUES ('11', '215');
INSERT INTO "tags_news" VALUES ('11', '226');
INSERT INTO "tags_news" VALUES ('11', '290');
INSERT INTO "tags_news" VALUES ('12', '5');
INSERT INTO "tags_news" VALUES ('12', '9');
INSERT INTO "tags_news" VALUES ('12', '13');
INSERT INTO "tags_news" VALUES ('12', '14');
INSERT INTO "tags_news" VALUES ('13', '6');
INSERT INTO "tags_news" VALUES ('14', '6');
INSERT INTO "tags_news" VALUES ('15', '8');
INSERT INTO "tags_news" VALUES ('16', '8');
INSERT INTO "tags_news" VALUES ('17', '8');
INSERT INTO "tags_news" VALUES ('18', '9');
INSERT INTO "tags_news" VALUES ('18', '200');
INSERT INTO "tags_news" VALUES ('18', '232');
INSERT INTO "tags_news" VALUES ('18', '245');
INSERT INTO "tags_news" VALUES ('18', '258');
INSERT INTO "tags_news" VALUES ('18', '266');
INSERT INTO "tags_news" VALUES ('18', '276');
INSERT INTO "tags_news" VALUES ('19', '9');
INSERT INTO "tags_news" VALUES ('19', '13');
INSERT INTO "tags_news" VALUES ('19', '109');
INSERT INTO "tags_news" VALUES ('19', '114');
INSERT INTO "tags_news" VALUES ('19', '125');
INSERT INTO "tags_news" VALUES ('19', '126');
INSERT INTO "tags_news" VALUES ('19', '143');
INSERT INTO "tags_news" VALUES ('19', '154');
INSERT INTO "tags_news" VALUES ('20', '10');
INSERT INTO "tags_news" VALUES ('20', '79');
INSERT INTO "tags_news" VALUES ('20', '133');
INSERT INTO "tags_news" VALUES ('20', '140');
INSERT INTO "tags_news" VALUES ('20', '142');
INSERT INTO "tags_news" VALUES ('20', '209');
INSERT INTO "tags_news" VALUES ('20', '217');
INSERT INTO "tags_news" VALUES ('20', '224');
INSERT INTO "tags_news" VALUES ('20', '238');
INSERT INTO "tags_news" VALUES ('20', '251');
INSERT INTO "tags_news" VALUES ('20', '285');
INSERT INTO "tags_news" VALUES ('20', '292');
INSERT INTO "tags_news" VALUES ('20', '299');
INSERT INTO "tags_news" VALUES ('21', '10');
INSERT INTO "tags_news" VALUES ('22', '10');
INSERT INTO "tags_news" VALUES ('22', '12');
INSERT INTO "tags_news" VALUES ('22', '160');
INSERT INTO "tags_news" VALUES ('22', '193');
INSERT INTO "tags_news" VALUES ('22', '194');
INSERT INTO "tags_news" VALUES ('22', '201');
INSERT INTO "tags_news" VALUES ('22', '202');
INSERT INTO "tags_news" VALUES ('22', '205');
INSERT INTO "tags_news" VALUES ('22', '207');
INSERT INTO "tags_news" VALUES ('22', '208');
INSERT INTO "tags_news" VALUES ('22', '210');
INSERT INTO "tags_news" VALUES ('22', '233');
INSERT INTO "tags_news" VALUES ('22', '234');
INSERT INTO "tags_news" VALUES ('22', '236');
INSERT INTO "tags_news" VALUES ('22', '237');
INSERT INTO "tags_news" VALUES ('22', '239');
INSERT INTO "tags_news" VALUES ('22', '246');
INSERT INTO "tags_news" VALUES ('22', '247');
INSERT INTO "tags_news" VALUES ('22', '249');
INSERT INTO "tags_news" VALUES ('22', '250');
INSERT INTO "tags_news" VALUES ('22', '252');
INSERT INTO "tags_news" VALUES ('22', '259');
INSERT INTO "tags_news" VALUES ('22', '260');
INSERT INTO "tags_news" VALUES ('22', '267');
INSERT INTO "tags_news" VALUES ('22', '268');
INSERT INTO "tags_news" VALUES ('22', '270');
INSERT INTO "tags_news" VALUES ('22', '277');
INSERT INTO "tags_news" VALUES ('22', '278');
INSERT INTO "tags_news" VALUES ('22', '281');
INSERT INTO "tags_news" VALUES ('22', '283');
INSERT INTO "tags_news" VALUES ('22', '284');
INSERT INTO "tags_news" VALUES ('22', '286');
INSERT INTO "tags_news" VALUES ('23', '10');
INSERT INTO "tags_news" VALUES ('23', '15');
INSERT INTO "tags_news" VALUES ('23', '16');
INSERT INTO "tags_news" VALUES ('23', '21');
INSERT INTO "tags_news" VALUES ('23', '46');
INSERT INTO "tags_news" VALUES ('23', '69');
INSERT INTO "tags_news" VALUES ('23', '79');
INSERT INTO "tags_news" VALUES ('23', '82');
INSERT INTO "tags_news" VALUES ('23', '108');
INSERT INTO "tags_news" VALUES ('23', '120');
INSERT INTO "tags_news" VALUES ('23', '133');
INSERT INTO "tags_news" VALUES ('23', '160');
INSERT INTO "tags_news" VALUES ('23', '164');
INSERT INTO "tags_news" VALUES ('23', '205');
INSERT INTO "tags_news" VALUES ('23', '208');
INSERT INTO "tags_news" VALUES ('23', '210');
INSERT INTO "tags_news" VALUES ('23', '237');
INSERT INTO "tags_news" VALUES ('23', '239');
INSERT INTO "tags_news" VALUES ('23', '250');
INSERT INTO "tags_news" VALUES ('23', '252');
INSERT INTO "tags_news" VALUES ('23', '281');
INSERT INTO "tags_news" VALUES ('23', '284');
INSERT INTO "tags_news" VALUES ('23', '286');
INSERT INTO "tags_news" VALUES ('23', '287');
INSERT INTO "tags_news" VALUES ('24', '11');
INSERT INTO "tags_news" VALUES ('25', '11');
INSERT INTO "tags_news" VALUES ('25', '223');
INSERT INTO "tags_news" VALUES ('25', '298');
INSERT INTO "tags_news" VALUES ('26', '11');
INSERT INTO "tags_news" VALUES ('26', '220');
INSERT INTO "tags_news" VALUES ('26', '295');
INSERT INTO "tags_news" VALUES ('27', '12');
INSERT INTO "tags_news" VALUES ('27', '200');
INSERT INTO "tags_news" VALUES ('27', '232');
INSERT INTO "tags_news" VALUES ('27', '245');
INSERT INTO "tags_news" VALUES ('27', '258');
INSERT INTO "tags_news" VALUES ('27', '266');
INSERT INTO "tags_news" VALUES ('27', '276');
INSERT INTO "tags_news" VALUES ('28', '12');
INSERT INTO "tags_news" VALUES ('28', '191');
INSERT INTO "tags_news" VALUES ('28', '192');
INSERT INTO "tags_news" VALUES ('28', '193');
INSERT INTO "tags_news" VALUES ('28', '194');
INSERT INTO "tags_news" VALUES ('28', '198');
INSERT INTO "tags_news" VALUES ('28', '199');
INSERT INTO "tags_news" VALUES ('28', '200');
INSERT INTO "tags_news" VALUES ('28', '201');
INSERT INTO "tags_news" VALUES ('28', '202');
INSERT INTO "tags_news" VALUES ('28', '207');
INSERT INTO "tags_news" VALUES ('28', '214');
INSERT INTO "tags_news" VALUES ('28', '227');
INSERT INTO "tags_news" VALUES ('28', '230');
INSERT INTO "tags_news" VALUES ('28', '231');
INSERT INTO "tags_news" VALUES ('28', '232');
INSERT INTO "tags_news" VALUES ('28', '233');
INSERT INTO "tags_news" VALUES ('28', '234');
INSERT INTO "tags_news" VALUES ('28', '236');
INSERT INTO "tags_news" VALUES ('28', '240');
INSERT INTO "tags_news" VALUES ('28', '243');
INSERT INTO "tags_news" VALUES ('28', '244');
INSERT INTO "tags_news" VALUES ('28', '245');
INSERT INTO "tags_news" VALUES ('28', '246');
INSERT INTO "tags_news" VALUES ('28', '247');
INSERT INTO "tags_news" VALUES ('28', '249');
INSERT INTO "tags_news" VALUES ('28', '253');
INSERT INTO "tags_news" VALUES ('28', '256');
INSERT INTO "tags_news" VALUES ('28', '257');
INSERT INTO "tags_news" VALUES ('28', '258');
INSERT INTO "tags_news" VALUES ('28', '259');
INSERT INTO "tags_news" VALUES ('28', '260');
INSERT INTO "tags_news" VALUES ('28', '261');
INSERT INTO "tags_news" VALUES ('28', '264');
INSERT INTO "tags_news" VALUES ('28', '265');
INSERT INTO "tags_news" VALUES ('28', '266');
INSERT INTO "tags_news" VALUES ('28', '267');
INSERT INTO "tags_news" VALUES ('28', '268');
INSERT INTO "tags_news" VALUES ('28', '270');
INSERT INTO "tags_news" VALUES ('28', '271');
INSERT INTO "tags_news" VALUES ('28', '274');
INSERT INTO "tags_news" VALUES ('28', '275');
INSERT INTO "tags_news" VALUES ('28', '276');
INSERT INTO "tags_news" VALUES ('28', '277');
INSERT INTO "tags_news" VALUES ('28', '278');
INSERT INTO "tags_news" VALUES ('28', '283');
INSERT INTO "tags_news" VALUES ('29', '15');
INSERT INTO "tags_news" VALUES ('29', '25');
INSERT INTO "tags_news" VALUES ('29', '48');
INSERT INTO "tags_news" VALUES ('29', '208');
INSERT INTO "tags_news" VALUES ('29', '212');
INSERT INTO "tags_news" VALUES ('29', '218');
INSERT INTO "tags_news" VALUES ('29', '237');
INSERT INTO "tags_news" VALUES ('29', '250');
INSERT INTO "tags_news" VALUES ('29', '284');
INSERT INTO "tags_news" VALUES ('29', '288');
INSERT INTO "tags_news" VALUES ('29', '293');
INSERT INTO "tags_news" VALUES ('30', '15');
INSERT INTO "tags_news" VALUES ('30', '16');
INSERT INTO "tags_news" VALUES ('31', '16');
INSERT INTO "tags_news" VALUES ('31', '18');
INSERT INTO "tags_news" VALUES ('31', '20');
INSERT INTO "tags_news" VALUES ('32', '16');
INSERT INTO "tags_news" VALUES ('32', '17');
INSERT INTO "tags_news" VALUES ('32', '18');
INSERT INTO "tags_news" VALUES ('32', '20');
INSERT INTO "tags_news" VALUES ('32', '21');
INSERT INTO "tags_news" VALUES ('32', '22');
INSERT INTO "tags_news" VALUES ('32', '23');
INSERT INTO "tags_news" VALUES ('32', '26');
INSERT INTO "tags_news" VALUES ('32', '194');
INSERT INTO "tags_news" VALUES ('32', '200');
INSERT INTO "tags_news" VALUES ('32', '202');
INSERT INTO "tags_news" VALUES ('32', '203');
INSERT INTO "tags_news" VALUES ('32', '205');
INSERT INTO "tags_news" VALUES ('32', '210');
INSERT INTO "tags_news" VALUES ('32', '220');
INSERT INTO "tags_news" VALUES ('32', '232');
INSERT INTO "tags_news" VALUES ('32', '234');
INSERT INTO "tags_news" VALUES ('32', '239');
INSERT INTO "tags_news" VALUES ('32', '245');
INSERT INTO "tags_news" VALUES ('32', '247');
INSERT INTO "tags_news" VALUES ('32', '252');
INSERT INTO "tags_news" VALUES ('32', '258');
INSERT INTO "tags_news" VALUES ('32', '260');
INSERT INTO "tags_news" VALUES ('32', '266');
INSERT INTO "tags_news" VALUES ('32', '268');
INSERT INTO "tags_news" VALUES ('32', '276');
INSERT INTO "tags_news" VALUES ('32', '278');
INSERT INTO "tags_news" VALUES ('32', '279');
INSERT INTO "tags_news" VALUES ('32', '281');
INSERT INTO "tags_news" VALUES ('32', '286');
INSERT INTO "tags_news" VALUES ('32', '295');
INSERT INTO "tags_news" VALUES ('33', '17');
INSERT INTO "tags_news" VALUES ('33', '18');
INSERT INTO "tags_news" VALUES ('33', '20');
INSERT INTO "tags_news" VALUES ('33', '207');
INSERT INTO "tags_news" VALUES ('33', '236');
INSERT INTO "tags_news" VALUES ('33', '249');
INSERT INTO "tags_news" VALUES ('33', '270');
INSERT INTO "tags_news" VALUES ('33', '283');
INSERT INTO "tags_news" VALUES ('34', '17');
INSERT INTO "tags_news" VALUES ('34', '20');
INSERT INTO "tags_news" VALUES ('35', '17');
INSERT INTO "tags_news" VALUES ('35', '25');
INSERT INTO "tags_news" VALUES ('35', '82');
INSERT INTO "tags_news" VALUES ('35', '140');
INSERT INTO "tags_news" VALUES ('36', '19');
INSERT INTO "tags_news" VALUES ('36', '21');
INSERT INTO "tags_news" VALUES ('37', '21');
INSERT INTO "tags_news" VALUES ('37', '22');
INSERT INTO "tags_news" VALUES ('37', '216');
INSERT INTO "tags_news" VALUES ('37', '221');
INSERT INTO "tags_news" VALUES ('37', '291');
INSERT INTO "tags_news" VALUES ('37', '296');
INSERT INTO "tags_news" VALUES ('38', '23');
INSERT INTO "tags_news" VALUES ('39', '26');
INSERT INTO "tags_news" VALUES ('40', '26');
INSERT INTO "tags_news" VALUES ('40', '212');
INSERT INTO "tags_news" VALUES ('40', '219');
INSERT INTO "tags_news" VALUES ('40', '225');
INSERT INTO "tags_news" VALUES ('40', '287');
INSERT INTO "tags_news" VALUES ('40', '288');
INSERT INTO "tags_news" VALUES ('40', '294');
INSERT INTO "tags_news" VALUES ('40', '300');
INSERT INTO "tags_news" VALUES ('41', '35');
INSERT INTO "tags_news" VALUES ('41', '139');
INSERT INTO "tags_news" VALUES ('42', '35');
INSERT INTO "tags_news" VALUES ('43', '36');
INSERT INTO "tags_news" VALUES ('44', '36');
INSERT INTO "tags_news" VALUES ('44', '88');
INSERT INTO "tags_news" VALUES ('44', '162');
INSERT INTO "tags_news" VALUES ('44', '164');
INSERT INTO "tags_news" VALUES ('45', '36');
INSERT INTO "tags_news" VALUES ('46', '36');
INSERT INTO "tags_news" VALUES ('47', '37');
INSERT INTO "tags_news" VALUES ('48', '37');
INSERT INTO "tags_news" VALUES ('49', '37');
INSERT INTO "tags_news" VALUES ('50', '38');
INSERT INTO "tags_news" VALUES ('51', '38');
INSERT INTO "tags_news" VALUES ('51', '46');
INSERT INTO "tags_news" VALUES ('51', '69');
INSERT INTO "tags_news" VALUES ('52', '38');
INSERT INTO "tags_news" VALUES ('52', '69');
INSERT INTO "tags_news" VALUES ('52', '152');
INSERT INTO "tags_news" VALUES ('53', '40');
INSERT INTO "tags_news" VALUES ('53', '67');
INSERT INTO "tags_news" VALUES ('53', '126');
INSERT INTO "tags_news" VALUES ('54', '40');
INSERT INTO "tags_news" VALUES ('54', '128');
INSERT INTO "tags_news" VALUES ('55', '41');
INSERT INTO "tags_news" VALUES ('55', '106');
INSERT INTO "tags_news" VALUES ('56', '41');
INSERT INTO "tags_news" VALUES ('56', '83');
INSERT INTO "tags_news" VALUES ('56', '88');
INSERT INTO "tags_news" VALUES ('56', '98');
INSERT INTO "tags_news" VALUES ('56', '106');
INSERT INTO "tags_news" VALUES ('56', '131');
INSERT INTO "tags_news" VALUES ('56', '143');
INSERT INTO "tags_news" VALUES ('56', '154');
INSERT INTO "tags_news" VALUES ('56', '188');
INSERT INTO "tags_news" VALUES ('57', '42');
INSERT INTO "tags_news" VALUES ('57', '59');
INSERT INTO "tags_news" VALUES ('57', '103');
INSERT INTO "tags_news" VALUES ('57', '128');
INSERT INTO "tags_news" VALUES ('57', '142');
INSERT INTO "tags_news" VALUES ('58', '42');
INSERT INTO "tags_news" VALUES ('59', '44');
INSERT INTO "tags_news" VALUES ('60', '44');
INSERT INTO "tags_news" VALUES ('61', '44');
INSERT INTO "tags_news" VALUES ('61', '220');
INSERT INTO "tags_news" VALUES ('61', '222');
INSERT INTO "tags_news" VALUES ('61', '295');
INSERT INTO "tags_news" VALUES ('61', '297');
INSERT INTO "tags_news" VALUES ('62', '46');
INSERT INTO "tags_news" VALUES ('63', '47');
INSERT INTO "tags_news" VALUES ('63', '118');
INSERT INTO "tags_news" VALUES ('63', '151');
INSERT INTO "tags_news" VALUES ('64', '47');
INSERT INTO "tags_news" VALUES ('65', '47');
INSERT INTO "tags_news" VALUES ('66', '47');
INSERT INTO "tags_news" VALUES ('67', '48');
INSERT INTO "tags_news" VALUES ('67', '225');
INSERT INTO "tags_news" VALUES ('67', '300');
INSERT INTO "tags_news" VALUES ('68', '48');
INSERT INTO "tags_news" VALUES ('68', '213');
INSERT INTO "tags_news" VALUES ('68', '214');
INSERT INTO "tags_news" VALUES ('68', '289');
INSERT INTO "tags_news" VALUES ('69', '50');
INSERT INTO "tags_news" VALUES ('70', '51');
INSERT INTO "tags_news" VALUES ('71', '53');
INSERT INTO "tags_news" VALUES ('72', '53');
INSERT INTO "tags_news" VALUES ('72', '59');
INSERT INTO "tags_news" VALUES ('72', '208');
INSERT INTO "tags_news" VALUES ('72', '237');
INSERT INTO "tags_news" VALUES ('72', '250');
INSERT INTO "tags_news" VALUES ('72', '284');
INSERT INTO "tags_news" VALUES ('73', '55');
INSERT INTO "tags_news" VALUES ('74', '56');
INSERT INTO "tags_news" VALUES ('75', '59');
INSERT INTO "tags_news" VALUES ('75', '111');
INSERT INTO "tags_news" VALUES ('76', '60');
INSERT INTO "tags_news" VALUES ('77', '60');
INSERT INTO "tags_news" VALUES ('78', '60');
INSERT INTO "tags_news" VALUES ('79', '61');
INSERT INTO "tags_news" VALUES ('80', '61');
INSERT INTO "tags_news" VALUES ('81', '61');
INSERT INTO "tags_news" VALUES ('81', '66');
INSERT INTO "tags_news" VALUES ('81', '130');
INSERT INTO "tags_news" VALUES ('82', '63');
INSERT INTO "tags_news" VALUES ('83', '64');
INSERT INTO "tags_news" VALUES ('83', '114');
INSERT INTO "tags_news" VALUES ('83', '120');
INSERT INTO "tags_news" VALUES ('83', '154');
INSERT INTO "tags_news" VALUES ('83', '188');
INSERT INTO "tags_news" VALUES ('84', '64');
INSERT INTO "tags_news" VALUES ('85', '64');
INSERT INTO "tags_news" VALUES ('86', '66');
INSERT INTO "tags_news" VALUES ('86', '130');
INSERT INTO "tags_news" VALUES ('87', '67');
INSERT INTO "tags_news" VALUES ('88', '67');
INSERT INTO "tags_news" VALUES ('89', '69');
INSERT INTO "tags_news" VALUES ('90', '71');
INSERT INTO "tags_news" VALUES ('91', '71');
INSERT INTO "tags_news" VALUES ('92', '71');
INSERT INTO "tags_news" VALUES ('93', '72');
INSERT INTO "tags_news" VALUES ('94', '72');
INSERT INTO "tags_news" VALUES ('94', '157');
INSERT INTO "tags_news" VALUES ('95', '72');
INSERT INTO "tags_news" VALUES ('96', '73');
INSERT INTO "tags_news" VALUES ('97', '75');
INSERT INTO "tags_news" VALUES ('97', '128');
INSERT INTO "tags_news" VALUES ('98', '75');
INSERT INTO "tags_news" VALUES ('99', '76');
INSERT INTO "tags_news" VALUES ('100', '78');
INSERT INTO "tags_news" VALUES ('100', '98');
INSERT INTO "tags_news" VALUES ('100', '157');
INSERT INTO "tags_news" VALUES ('101', '78');
INSERT INTO "tags_news" VALUES ('102', '80');
INSERT INTO "tags_news" VALUES ('103', '82');
INSERT INTO "tags_news" VALUES ('104', '83');
INSERT INTO "tags_news" VALUES ('105', '83');
INSERT INTO "tags_news" VALUES ('106', '83');
INSERT INTO "tags_news" VALUES ('106', '108');
INSERT INTO "tags_news" VALUES ('106', '137');
INSERT INTO "tags_news" VALUES ('107', '84');
INSERT INTO "tags_news" VALUES ('108', '84');
INSERT INTO "tags_news" VALUES ('109', '86');
INSERT INTO "tags_news" VALUES ('109', '116');
INSERT INTO "tags_news" VALUES ('109', '127');
INSERT INTO "tags_news" VALUES ('110', '89');
INSERT INTO "tags_news" VALUES ('110', '158');
INSERT INTO "tags_news" VALUES ('111', '91');
INSERT INTO "tags_news" VALUES ('112', '92');
INSERT INTO "tags_news" VALUES ('113', '92');
INSERT INTO "tags_news" VALUES ('113', '156');
INSERT INTO "tags_news" VALUES ('114', '94');
INSERT INTO "tags_news" VALUES ('115', '94');
INSERT INTO "tags_news" VALUES ('115', '99');
INSERT INTO "tags_news" VALUES ('116', '94');
INSERT INTO "tags_news" VALUES ('117', '94');
INSERT INTO "tags_news" VALUES ('118', '95');
INSERT INTO "tags_news" VALUES ('119', '97');
INSERT INTO "tags_news" VALUES ('120', '97');
INSERT INTO "tags_news" VALUES ('121', '101');
INSERT INTO "tags_news" VALUES ('122', '101');
INSERT INTO "tags_news" VALUES ('123', '102');
INSERT INTO "tags_news" VALUES ('124', '102');
INSERT INTO "tags_news" VALUES ('125', '102');
INSERT INTO "tags_news" VALUES ('125', '121');
INSERT INTO "tags_news" VALUES ('125', '149');
INSERT INTO "tags_news" VALUES ('126', '102');
INSERT INTO "tags_news" VALUES ('127', '103');
INSERT INTO "tags_news" VALUES ('128', '104');
INSERT INTO "tags_news" VALUES ('128', '169');
INSERT INTO "tags_news" VALUES ('129', '104');
INSERT INTO "tags_news" VALUES ('130', '104');
INSERT INTO "tags_news" VALUES ('131', '106');
INSERT INTO "tags_news" VALUES ('132', '108');
INSERT INTO "tags_news" VALUES ('133', '109');
INSERT INTO "tags_news" VALUES ('133', '114');
INSERT INTO "tags_news" VALUES ('133', '125');
INSERT INTO "tags_news" VALUES ('134', '111');
INSERT INTO "tags_news" VALUES ('134', '165');
INSERT INTO "tags_news" VALUES ('135', '111');
INSERT INTO "tags_news" VALUES ('135', '137');
INSERT INTO "tags_news" VALUES ('136', '112');
INSERT INTO "tags_news" VALUES ('136', '190');
INSERT INTO "tags_news" VALUES ('136', '197');
INSERT INTO "tags_news" VALUES ('136', '203');
INSERT INTO "tags_news" VALUES ('136', '206');
INSERT INTO "tags_news" VALUES ('136', '229');
INSERT INTO "tags_news" VALUES ('136', '242');
INSERT INTO "tags_news" VALUES ('136', '255');
INSERT INTO "tags_news" VALUES ('136', '263');
INSERT INTO "tags_news" VALUES ('136', '273');
INSERT INTO "tags_news" VALUES ('136', '279');
INSERT INTO "tags_news" VALUES ('136', '282');
INSERT INTO "tags_news" VALUES ('137', '115');
INSERT INTO "tags_news" VALUES ('138', '115');
INSERT INTO "tags_news" VALUES ('139', '118');
INSERT INTO "tags_news" VALUES ('139', '149');
INSERT INTO "tags_news" VALUES ('140', '118');
INSERT INTO "tags_news" VALUES ('140', '207');
INSERT INTO "tags_news" VALUES ('140', '236');
INSERT INTO "tags_news" VALUES ('140', '249');
INSERT INTO "tags_news" VALUES ('140', '270');
INSERT INTO "tags_news" VALUES ('140', '283');
INSERT INTO "tags_news" VALUES ('141', '119');
INSERT INTO "tags_news" VALUES ('142', '119');
INSERT INTO "tags_news" VALUES ('143', '120');
INSERT INTO "tags_news" VALUES ('143', '215');
INSERT INTO "tags_news" VALUES ('143', '290');
INSERT INTO "tags_news" VALUES ('144', '120');
INSERT INTO "tags_news" VALUES ('145', '121');
INSERT INTO "tags_news" VALUES ('146', '123');
INSERT INTO "tags_news" VALUES ('147', '123');
INSERT INTO "tags_news" VALUES ('148', '126');
INSERT INTO "tags_news" VALUES ('149', '126');
INSERT INTO "tags_news" VALUES ('150', '127');
INSERT INTO "tags_news" VALUES ('151', '127');
INSERT INTO "tags_news" VALUES ('152', '127');
INSERT INTO "tags_news" VALUES ('153', '128');
INSERT INTO "tags_news" VALUES ('154', '130');
INSERT INTO "tags_news" VALUES ('155', '133');
INSERT INTO "tags_news" VALUES ('156', '133');
INSERT INTO "tags_news" VALUES ('157', '134');
INSERT INTO "tags_news" VALUES ('158', '135');
INSERT INTO "tags_news" VALUES ('159', '135');
INSERT INTO "tags_news" VALUES ('160', '135');
INSERT INTO "tags_news" VALUES ('160', '153');
INSERT INTO "tags_news" VALUES ('160', '227');
INSERT INTO "tags_news" VALUES ('160', '240');
INSERT INTO "tags_news" VALUES ('160', '253');
INSERT INTO "tags_news" VALUES ('160', '261');
INSERT INTO "tags_news" VALUES ('160', '271');
INSERT INTO "tags_news" VALUES ('161', '137');
INSERT INTO "tags_news" VALUES ('162', '139');
INSERT INTO "tags_news" VALUES ('163', '139');
INSERT INTO "tags_news" VALUES ('163', '169');
INSERT INTO "tags_news" VALUES ('164', '139');
INSERT INTO "tags_news" VALUES ('165', '140');
INSERT INTO "tags_news" VALUES ('166', '142');
INSERT INTO "tags_news" VALUES ('167', '145');
INSERT INTO "tags_news" VALUES ('168', '145');
INSERT INTO "tags_news" VALUES ('169', '147');
INSERT INTO "tags_news" VALUES ('170', '147');
INSERT INTO "tags_news" VALUES ('171', '148');
INSERT INTO "tags_news" VALUES ('172', '149');
INSERT INTO "tags_news" VALUES ('173', '149');
INSERT INTO "tags_news" VALUES ('174', '151');
INSERT INTO "tags_news" VALUES ('175', '151');
INSERT INTO "tags_news" VALUES ('176', '152');
INSERT INTO "tags_news" VALUES ('177', '152');
INSERT INTO "tags_news" VALUES ('178', '152');
INSERT INTO "tags_news" VALUES ('179', '153');
INSERT INTO "tags_news" VALUES ('180', '153');
INSERT INTO "tags_news" VALUES ('181', '156');
INSERT INTO "tags_news" VALUES ('182', '157');
INSERT INTO "tags_news" VALUES ('183', '157');
INSERT INTO "tags_news" VALUES ('184', '158');
INSERT INTO "tags_news" VALUES ('185', '161');
INSERT INTO "tags_news" VALUES ('186', '162');
INSERT INTO "tags_news" VALUES ('187', '164');
INSERT INTO "tags_news" VALUES ('188', '164');
INSERT INTO "tags_news" VALUES ('189', '165');
INSERT INTO "tags_news" VALUES ('190', '166');
INSERT INTO "tags_news" VALUES ('191', '166');
INSERT INTO "tags_news" VALUES ('192', '166');
INSERT INTO "tags_news" VALUES ('193', '168');
INSERT INTO "tags_news" VALUES ('194', '168');
INSERT INTO "tags_news" VALUES ('195', '168');
INSERT INTO "tags_news" VALUES ('196', '191');
INSERT INTO "tags_news" VALUES ('196', '198');
INSERT INTO "tags_news" VALUES ('196', '206');
INSERT INTO "tags_news" VALUES ('196', '230');
INSERT INTO "tags_news" VALUES ('196', '243');
INSERT INTO "tags_news" VALUES ('196', '256');
INSERT INTO "tags_news" VALUES ('196', '264');
INSERT INTO "tags_news" VALUES ('196', '274');
INSERT INTO "tags_news" VALUES ('196', '282');
INSERT INTO "tags_news" VALUES ('197', '192');
INSERT INTO "tags_news" VALUES ('197', '199');
INSERT INTO "tags_news" VALUES ('197', '231');
INSERT INTO "tags_news" VALUES ('197', '244');
INSERT INTO "tags_news" VALUES ('197', '257');
INSERT INTO "tags_news" VALUES ('197', '265');
INSERT INTO "tags_news" VALUES ('197', '275');
INSERT INTO "tags_news" VALUES ('198', '192');
INSERT INTO "tags_news" VALUES ('198', '199');
INSERT INTO "tags_news" VALUES ('198', '231');
INSERT INTO "tags_news" VALUES ('198', '244');
INSERT INTO "tags_news" VALUES ('198', '257');
INSERT INTO "tags_news" VALUES ('198', '265');
INSERT INTO "tags_news" VALUES ('198', '275');
INSERT INTO "tags_news" VALUES ('199', '203');
INSERT INTO "tags_news" VALUES ('199', '279');
INSERT INTO "tags_news" VALUES ('200', '207');
INSERT INTO "tags_news" VALUES ('200', '236');
INSERT INTO "tags_news" VALUES ('200', '249');
INSERT INTO "tags_news" VALUES ('200', '270');
INSERT INTO "tags_news" VALUES ('200', '283');
INSERT INTO "tags_news" VALUES ('201', '209');
INSERT INTO "tags_news" VALUES ('201', '238');
INSERT INTO "tags_news" VALUES ('201', '251');
INSERT INTO "tags_news" VALUES ('201', '285');
INSERT INTO "tags_news" VALUES ('202', '214');
INSERT INTO "tags_news" VALUES ('202', '227');
INSERT INTO "tags_news" VALUES ('202', '240');
INSERT INTO "tags_news" VALUES ('202', '253');
INSERT INTO "tags_news" VALUES ('202', '261');
INSERT INTO "tags_news" VALUES ('202', '271');
INSERT INTO "tags_news" VALUES ('203', '214');
INSERT INTO "tags_news" VALUES ('203', '227');
INSERT INTO "tags_news" VALUES ('203', '240');
INSERT INTO "tags_news" VALUES ('203', '253');
INSERT INTO "tags_news" VALUES ('203', '261');
INSERT INTO "tags_news" VALUES ('203', '271');
INSERT INTO "tags_news" VALUES ('204', '217');
INSERT INTO "tags_news" VALUES ('204', '292');
INSERT INTO "tags_news" VALUES ('205', '218');
INSERT INTO "tags_news" VALUES ('205', '293');
INSERT INTO "tags_news" VALUES ('206', '219');
INSERT INTO "tags_news" VALUES ('206', '294');
INSERT INTO "tags_news" VALUES ('207', '222');
INSERT INTO "tags_news" VALUES ('207', '297');
INSERT INTO "tags_news" VALUES ('208', '222');
INSERT INTO "tags_news" VALUES ('208', '297');
INSERT INTO "tags_news" VALUES ('209', '224');
INSERT INTO "tags_news" VALUES ('209', '299');
INSERT INTO "tags_news" VALUES ('210', '224');
INSERT INTO "tags_news" VALUES ('210', '299');
INSERT INTO "tags_news" VALUES ('211', '224');
INSERT INTO "tags_news" VALUES ('211', '299');
INSERT INTO "tags_news" VALUES ('212', '224');
INSERT INTO "tags_news" VALUES ('212', '299');
INSERT INTO "tags_news" VALUES ('213', '224');
INSERT INTO "tags_news" VALUES ('213', '299');
INSERT INTO "tags_news" VALUES ('214', '464');
INSERT INTO "tags_news" VALUES ('214', '465');
INSERT INTO "tags_news" VALUES ('214', '466');
INSERT INTO "tags_news" VALUES ('215', '464');
INSERT INTO "tags_news" VALUES ('216', '464');
INSERT INTO "tags_news" VALUES ('217', '464');
INSERT INTO "tags_news" VALUES ('218', '465');
INSERT INTO "tags_news" VALUES ('219', '465');
INSERT INTO "tags_news" VALUES ('220', '466');
COMMIT;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "category_id_seq" OWNED BY "category"."id";
ALTER SEQUENCE "comments_id_seq" OWNED BY "comments"."id";
ALTER SEQUENCE "news_id_seq" OWNED BY "news"."id";
ALTER SEQUENCE "tags_id_seq" OWNED BY "tags"."id";
ALTER SEQUENCE "user_id_seq" OWNED BY "category"."id";

-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE "category" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table comments
-- ----------------------------
ALTER TABLE "comments" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table news
-- ----------------------------
ALTER TABLE "news" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tags
-- ----------------------------
ALTER TABLE "tags" ADD PRIMARY KEY ("id");
