#
# Ufreg Database Dump
# MODX Version:1.0.14
# 
# Host: 
# Generation Time: 14-07-2017 10:06:08
# Server version: 5.5.5-10.1.25-MariaDB
# PHP Version: 5.6.31
# Database : `srv37029_ufregru`
#

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_active_users`
#

DROP TABLE IF EXISTS `srv37029_ufregru_active_users`;
CREATE TABLE `srv37029_ufregru_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about active users.';

#
# Dumping data for table `srv37029_ufregru_active_users`
#

INSERT INTO `srv37029_ufregru_active_users` VALUES ('1','admin','1500041167','','93','127.0.0.1');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_categories`
#

DROP TABLE IF EXISTS `srv37029_ufregru_categories`;
CREATE TABLE `srv37029_ufregru_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

#
# Dumping data for table `srv37029_ufregru_categories`
#

INSERT INTO `srv37029_ufregru_categories` VALUES ('1','Demo Content');
INSERT INTO `srv37029_ufregru_categories` VALUES ('2','Login');
INSERT INTO `srv37029_ufregru_categories` VALUES ('3','Js');
INSERT INTO `srv37029_ufregru_categories` VALUES ('4','Manager and Admin');
INSERT INTO `srv37029_ufregru_categories` VALUES ('5','Search');
INSERT INTO `srv37029_ufregru_categories` VALUES ('6','Navigation');
INSERT INTO `srv37029_ufregru_categories` VALUES ('7','Content');
INSERT INTO `srv37029_ufregru_categories` VALUES ('8','Forms');
INSERT INTO `srv37029_ufregru_categories` VALUES ('9','my');
INSERT INTO `srv37029_ufregru_categories` VALUES ('10','Analytics');
INSERT INTO `srv37029_ufregru_categories` VALUES ('11','Form');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_document_groups`
#

DROP TABLE IF EXISTS `srv37029_ufregru_document_groups`;
CREATE TABLE `srv37029_ufregru_document_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `srv37029_ufregru_document_groups`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_documentgroup_names`
#

DROP TABLE IF EXISTS `srv37029_ufregru_documentgroup_names`;
CREATE TABLE `srv37029_ufregru_documentgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `srv37029_ufregru_documentgroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_event_log`
#

DROP TABLE IF EXISTS `srv37029_ufregru_event_log`;
CREATE TABLE `srv37029_ufregru_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

#
# Dumping data for table `srv37029_ufregru_event_log`
#

INSERT INTO `srv37029_ufregru_event_log` VALUES ('1','0','1393912383','3','0','0','Snippet - items','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Table \'srv37029_ufregru.users\' doesn\'t exist &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">select * from users</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/</td></tr><tr><td valign=\"top\">Resource : </td><td>[1]<a href=\"http://ufreg.ru/главная.html\" target=\"_blank\">Главная</a></td></tr><tr><td>Current Snippet : </td><td>items</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.18</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0599 s (10 Requests)</td></tr><tr><td>PHP : </td><td>0,1510 s</td></tr><tr><td>Total : </td><td>0,2109 s</td></tr><tr><td>Memory : </td><td>3,6334228515625 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1568</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1673</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 582</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1450</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1061</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td><tr><td valign=\"top\">8</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1005</td><tr><td valign=\"top\">9</td><td>DBAPI->query()<br />manager/includes/document.parser.class.inc.php(1005) : eval()\'d code on line 2</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('2','0','1393912383','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('3','0','1393912383','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('4','0','1393912444','3','0','0','Snippet - items','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Table \'srv37029_ufregru.users\' doesn\'t exist &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">select * from users</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/</td></tr><tr><td valign=\"top\">Resource : </td><td>[1]<a href=\"http://ufreg.ru/главная.html\" target=\"_blank\">Главная</a></td></tr><tr><td>Current Snippet : </td><td>items</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.18</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0028 s (10 Requests)</td></tr><tr><td>PHP : </td><td>0,0339 s</td></tr><tr><td>Total : </td><td>0,0367 s</td></tr><tr><td>Memory : </td><td>3,6334228515625 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1568</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1673</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 582</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1450</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1061</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td><tr><td valign=\"top\">8</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1005</td><tr><td valign=\"top\">9</td><td>DBAPI->query()<br />manager/includes/document.parser.class.inc.php(1005) : eval()\'d code on line 2</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('5','0','1393912444','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('6','0','1393912444','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('7','0','1393917438','3','1','0','SQL Query - Execute module','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Table \'srv37029_ufregru.users\' doesn\'t exist &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">select * from users</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/manager/index.php?a=112&amp;id=2</td></tr><tr><td valign=\"top\">Manager action : </td><td>112 - Execute module</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.14</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0056 s (3 Requests)</td></tr><tr><td>PHP : </td><td>0,0594 s</td></tr><tr><td>Total : </td><td>0,0650 s</td></tr><tr><td>Memory : </td><td>3,2542037963867 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />manager/index.php on line 573</td><tr><td valign=\"top\">2</td><td>evalModule()<br />manager/processors/execute_module.processor.php on line 101</td><tr><td valign=\"top\">3</td><td>eval()<br />manager/processors/execute_module.processor.php on line 114</td><tr><td valign=\"top\">4</td><td>DBAPI->query()<br />manager/processors/execute_module.processor.php(114) : eval()\'d code on line 3</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('8','0','1393917438','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('9','0','1393917438','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('10','0','1393917527','3','1','0','SQL Query - Execute module','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Table \'srv37029_ufregru.users\' doesn\'t exist &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">delete from users where id=13</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/manager/index.php?a=112&amp;id=2</td></tr><tr><td valign=\"top\">Manager action : </td><td>112 - Execute module</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.14</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0083 s (4 Requests)</td></tr><tr><td>PHP : </td><td>0,0397 s</td></tr><tr><td>Total : </td><td>0,0480 s</td></tr><tr><td>Memory : </td><td>3,2542037963867 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />manager/index.php on line 573</td><tr><td valign=\"top\">2</td><td>evalModule()<br />manager/processors/execute_module.processor.php on line 101</td><tr><td valign=\"top\">3</td><td>eval()<br />manager/processors/execute_module.processor.php on line 114</td><tr><td valign=\"top\">4</td><td>DBAPI->query()<br />manager/processors/execute_module.processor.php(114) : eval()\'d code on line 8</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('11','0','1393917527','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('12','0','1393917527','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('13','0','1393917554','3','1','0','SQL Query - Execute module','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Table \'srv37029_ufregru.users\' doesn\'t exist &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">delete from users where id=13</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/manager/index.php?a=112&amp;id=2</td></tr><tr><td valign=\"top\">Manager action : </td><td>112 - Execute module</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.14</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0030 s (4 Requests)</td></tr><tr><td>PHP : </td><td>0,0394 s</td></tr><tr><td>Total : </td><td>0,0424 s</td></tr><tr><td>Memory : </td><td>3,2542037963867 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />manager/index.php on line 573</td><tr><td valign=\"top\">2</td><td>evalModule()<br />manager/processors/execute_module.processor.php on line 101</td><tr><td valign=\"top\">3</td><td>eval()<br />manager/processors/execute_module.processor.php on line 114</td><tr><td valign=\"top\">4</td><td>DBAPI->query()<br />manager/processors/execute_module.processor.php(114) : eval()\'d code on line 8</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('14','0','1393917554','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('15','0','1393917554','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('16','0','1393917560','3','1','0','SQL Query - Execute module','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Table \'srv37029_ufregru.users\' doesn\'t exist &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">delete from users where id=13</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/manager/index.php?a=112&amp;id=2</td></tr><tr><td valign=\"top\">Manager action : </td><td>112 - Execute module</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.14</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0031 s (4 Requests)</td></tr><tr><td>PHP : </td><td>0,1357 s</td></tr><tr><td>Total : </td><td>0,1388 s</td></tr><tr><td>Memory : </td><td>3,2542037963867 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />manager/index.php on line 573</td><tr><td valign=\"top\">2</td><td>evalModule()<br />manager/processors/execute_module.processor.php on line 101</td><tr><td valign=\"top\">3</td><td>eval()<br />manager/processors/execute_module.processor.php on line 114</td><tr><td valign=\"top\">4</td><td>DBAPI->query()<br />manager/processors/execute_module.processor.php(114) : eval()\'d code on line 8</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('17','0','1393917560','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('18','0','1393917560','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('19','0','1393917582','3','1','0','SQL Query - Execute module','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Table \'srv37029_ufregru.users\' doesn\'t exist &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">delete from users where id=13</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/manager/index.php?a=112&amp;id=2</td></tr><tr><td valign=\"top\">Manager action : </td><td>112 - Execute module</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.14</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0027 s (4 Requests)</td></tr><tr><td>PHP : </td><td>0,0472 s</td></tr><tr><td>Total : </td><td>0,0499 s</td></tr><tr><td>Memory : </td><td>3,2542037963867 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />manager/index.php on line 573</td><tr><td valign=\"top\">2</td><td>evalModule()<br />manager/processors/execute_module.processor.php on line 101</td><tr><td valign=\"top\">3</td><td>eval()<br />manager/processors/execute_module.processor.php on line 114</td><tr><td valign=\"top\">4</td><td>DBAPI->query()<br />manager/processors/execute_module.processor.php(114) : eval()\'d code on line 8</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('20','0','1393917582','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('21','0','1393917582','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('22','0','1394047382','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Unknown column \'1231фывф\' in \'field list\' &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE srv37029_ufregru_items SET name=1231фывф, price=123вф, content=123ывф, coments=12ывфы, color=rgba(0, 0, 0, 0) WHERE id=2</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=2&amp;name=1231%D1%84%D1%8B%D0%B2%D1%84&amp;price=123%D0%B2%D1%84&amp;content=123%D1%8B%D0%B2%D1%84&amp;coments=12%D1%8B%D0%B2%D1%84%D1%8B&amp;color=rgba(0,%200,%200,%200)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0072 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1394047382.3552 s</td></tr><tr><td>Total : </td><td>1394047382.3624 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 29</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('23','0','1394047624','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \' color=rgba(0, 0, 0, 0) WHERE id=2\' at line 1 &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE srv37029_ufregru_items SET name=123, price=123, content=123, coments=, color=rgba(0, 0, 0, 0) WHERE id=2</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=2&amp;name=123&amp;price=123&amp;content=123&amp;coments=&amp;color=rgba(0,%200,%200,%200)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0017 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1394047624.1216 s</td></tr><tr><td>Total : </td><td>1394047624.1232 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 30</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('24','0','1394047628','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Table \'srv37029_ufregru.users\' doesn\'t exist &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">delete from users where id=2</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/delete.php?id=2&amp;_=1394044086806</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0018 s (0 Requests)</td></tr><tr><td>PHP : </td><td>1394047628.2258 s</td></tr><tr><td>Total : </td><td>1394047628.2276 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/delete.php on line 13</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('25','0','1394047790','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Table \'srv37029_ufregru.users\' doesn\'t exist &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">delete from users where id=2</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/delete.php?id=2&amp;_=1394044249035</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0016 s (0 Requests)</td></tr><tr><td>PHP : </td><td>1394047790.4515 s</td></tr><tr><td>Total : </td><td>1394047790.4531 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/delete.php on line 14</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('26','0','1394047899','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \' color=rgba(0, 0, 0, 0) WHERE id=2\' at line 1 &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE srv37029_ufregru_items SET name=123, price=123, content=123, coments=, color=rgba(0, 0, 0, 0) WHERE id=2</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=2&amp;name=123&amp;price=123&amp;content=123&amp;coments=&amp;color=rgba(0,%200,%200,%200)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0015 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1394047899.0261 s</td></tr><tr><td>Total : </td><td>1394047899.0276 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 30</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('27','0','1394048070','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Table \'srv37029_ufregru.users\' doesn\'t exist &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">delete from users where id=2</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/delete.php?id=2&amp;_=1394044528679</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0056 s (0 Requests)</td></tr><tr><td>PHP : </td><td>1394048070.0969 s</td></tr><tr><td>Total : </td><td>1394048070.1026 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/delete.php on line 14</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('28','0','1394048636','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Unknown column \'фыв\' in \'field list\' &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">insert into srv37029_ufregru_items (name, content, price, color, coments) values (фыв,фыв, ывфы, rgba(0, 0, 0, 0), фывф)</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=2&amp;name=%D1%84%D1%8B%D0%B2&amp;price=%D1%8B%D0%B2%D1%84%D1%8B&amp;content=%D1%84%D1%8B%D0%B2&amp;coments=%D1%84%D1%8B%D0%B2%D1%84&amp;color=rgba(0,%200,%200,%200)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0020 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1394048636.3825 s</td></tr><tr><td>Total : </td><td>1394048636.3845 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 38</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('29','0','1394048782','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Unknown column \'фыв\' in \'field list\' &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">insert into srv37029_ufregru_items (name, content, price, color, coments) values (фыв,фыв, фыв, rgba(0, 0, 0, 0), фыв)</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=2&amp;name=%D1%84%D1%8B%D0%B2&amp;price=%D1%84%D1%8B%D0%B2&amp;content=%D1%84%D1%8B%D0%B2&amp;coments=%D1%84%D1%8B%D0%B2&amp;color=rgba(0,%200,%200,%200)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0018 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1394048782.7876 s</td></tr><tr><td>Total : </td><td>1394048782.7894 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 37</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('30','0','1394048896','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'выписка из УГРЮЛ, price=от 250 руб, content=Заказ инф\' at line 1 &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE srv37029_ufregru_items SET name=Он-лайн выписка из УГРЮЛ, price=от 250 руб, content=Заказ информационной выписки в электронной базе НФС РоссииПредоставление заказчику полученной он-лайн выписки по электронной почте, coments=Заказ , color=rgba(0, 0, 0, 0) WHERE id=1</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=1&amp;name=%D0%9E%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B0%20%D0%B8%D0%B7%20%D0%A3%D0%93%D0%A0%D0%AE%D0%9B&amp;price=%D0%BE%D1%82%20250%20%D1%80%D1%83%D0%B1&amp;content=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%B2%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B1%D0%B0%D0%B7%D0%B5%20%D0%9D%D0%A4%D0%A1%20%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B8%D0%9F%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%87%D0%B8%D0%BA%D1%83%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BE%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%BF%D0%BE%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BF%D0%BE%D1%87%D1%82%D0%B5&amp;coments=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20&amp;color=rgba(0,%200,%200,%200)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0015 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1394048896.1288 s</td></tr><tr><td>Total : </td><td>1394048896.1303 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 29</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('31','0','1394048958','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'выписка из УГРЮЛ, price=от 250 руб, content=Заказ инф\' at line 1 &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE srv37029_ufregru_items SET name=Он-лайн выписка из УГРЮЛ, price=от 250 руб, content=Заказ информационной выписки в электронной базе НФС РоссииПредоставление заказчику полученной он-лайн выписки по электронной почте, coments=Заказ и, color=rgba(0, 0, 0, 0) WHERE id=1</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=1&amp;name=%D0%9E%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B0%20%D0%B8%D0%B7%20%D0%A3%D0%93%D0%A0%D0%AE%D0%9B&amp;price=%D0%BE%D1%82%20250%20%D1%80%D1%83%D0%B1&amp;content=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%B2%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B1%D0%B0%D0%B7%D0%B5%20%D0%9D%D0%A4%D0%A1%20%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B8%D0%9F%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%87%D0%B8%D0%BA%D1%83%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BE%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%BF%D0%BE%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BF%D0%BE%D1%87%D1%82%D0%B5&amp;coments=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20%D0%B8&amp;color=rgba(0,%200,%200,%200)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0017 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1394048958.7033 s</td></tr><tr><td>Total : </td><td>1394048958.7050 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 29</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('32','0','1394049301','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'выписка из УГРЮЛ, price=от 250 руб, content=Заказ инф\' at line 1 &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE srv37029_ufregru_items SET name=Он-лайн выписка из УГРЮЛ, price=от 250 руб, content=Заказ информационной выписки в электронной базе НФС РоссииПредоставление заказчику полученной он-лайн выписки по электронной почте, coments=Заказ и, color=rgba(0, 0, 0, 0) WHERE id=1</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=1&amp;name=%D0%9E%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B0%20%D0%B8%D0%B7%20%D0%A3%D0%93%D0%A0%D0%AE%D0%9B&amp;price=%D0%BE%D1%82%20250%20%D1%80%D1%83%D0%B1&amp;content=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%B2%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B1%D0%B0%D0%B7%D0%B5%20%D0%9D%D0%A4%D0%A1%20%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B8%D0%9F%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%87%D0%B8%D0%BA%D1%83%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BE%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%BF%D0%BE%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BF%D0%BE%D1%87%D1%82%D0%B5&amp;coments=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20%D0%B8&amp;color=rgba(0,%200,%200,%200)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0021 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1394049301.1439 s</td></tr><tr><td>Total : </td><td>1394049301.1460 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 29</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('33','0','1394049480','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'выписка из УГРЮЛ, price=от 250 руб, content=Заказ инф\' at line 1 &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE srv37029_ufregru_items SET name=Он-лайн выписка из УГРЮЛ, price=от 250 руб, content=Заказ информационной выписки в электронной базе НФС РоссииПредоставление заказчику полученной он-лайн выписки по электронной почте, coments=Заказ ин, color=rgba(0, 0, 0, 0) WHERE id=1</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=1&amp;name=%D0%9E%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B0%20%D0%B8%D0%B7%20%D0%A3%D0%93%D0%A0%D0%AE%D0%9B&amp;price=%D0%BE%D1%82%20250%20%D1%80%D1%83%D0%B1&amp;content=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%B2%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B1%D0%B0%D0%B7%D0%B5%20%D0%9D%D0%A4%D0%A1%20%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B8%D0%9F%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%87%D0%B8%D0%BA%D1%83%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BE%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%BF%D0%BE%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BF%D0%BE%D1%87%D1%82%D0%B5&amp;coments=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20%D0%B8%D0%BD&amp;color=rgba(0,%200,%200,%200)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0015 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1394049480.3221 s</td></tr><tr><td>Total : </td><td>1394049480.3236 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 29</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('34','0','1394049532','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'выписка из УГРЮЛ, price=от 250 руб, content=Заказ инф\' at line 1 &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE srv37029_ufregru_items SET name=Он-лайн выписка из УГРЮЛ, price=от 250 руб, content=Заказ информационной выписки в электронной базе НФС РоссииПредоставление заказчику полученной он-лайн выписки по электронной почте, coments=Заказ и, color=rgba(0, 0, 0, 0) WHERE id=1</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=1&amp;name=%D0%9E%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B0%20%D0%B8%D0%B7%20%D0%A3%D0%93%D0%A0%D0%AE%D0%9B&amp;price=%D0%BE%D1%82%20250%20%D1%80%D1%83%D0%B1&amp;content=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%B2%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B1%D0%B0%D0%B7%D0%B5%20%D0%9D%D0%A4%D0%A1%20%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B8%D0%9F%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%87%D0%B8%D0%BA%D1%83%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BE%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%BF%D0%BE%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BF%D0%BE%D1%87%D1%82%D0%B5&amp;coments=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20%D0%B8&amp;color=rgba(0,%200,%200,%200)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0018 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1394049532.2385 s</td></tr><tr><td>Total : </td><td>1394049532.2403 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 29</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('35','0','1394049661','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'выписка из УГРЮЛ, price=от 250 руб, content=Заказ инф\' at line 1 &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE srv37029_ufregru_items SET name=Он-лайн выписка из УГРЮЛ, price=от 250 руб, content=Заказ информационной выписки в электронной базе НФС РоссииПредоставление заказчику полученной он-лайн выписки по электронной почте, coments=Заказ ин, color=rgba(0, 0, 0, 0) WHERE id=1</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=1&amp;name=%D0%9E%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B0%20%D0%B8%D0%B7%20%D0%A3%D0%93%D0%A0%D0%AE%D0%9B&amp;price=%D0%BE%D1%82%20250%20%D1%80%D1%83%D0%B1&amp;content=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%B2%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%B1%D0%B0%D0%B7%D0%B5%20%D0%9D%D0%A4%D0%A1%20%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B8%D0%9F%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D1%87%D0%B8%D0%BA%D1%83%20%D0%BF%D0%BE%D0%BB%D1%83%D1%87%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BE%D0%BD-%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B2%D1%8B%D0%BF%D0%B8%D1%81%D0%BA%D0%B8%20%D0%BF%D0%BE%20%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D0%BE%D0%B9%20%D0%BF%D0%BE%D1%87%D1%82%D0%B5&amp;coments=%D0%97%D0%B0%D0%BA%D0%B0%D0%B7%20%D0%B8%D0%BD&amp;color=rgba(0,%200,%200,%200)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36 OPR/20.0.1387.64</td></tr><tr><td>IP : </td><td>178.127.35.112</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0018 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1394049661.0931 s</td></tr><tr><td>Total : </td><td>1394049661.0949 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 29</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('36','0','1394601426','3','0','0','Snippet - getTable','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/document.parser.class.inc.php(1005) : eval()\'d code</td></tr><tr><td>Line : </td><td>4</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/stoimost.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[2]<a href=\"http://ufreg.ru/stoimost.html\" target=\"_blank\">Стоимость</a></td></tr><tr><td>Current Snippet : </td><td>getTable</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=tree</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.21</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0051 s (27 Requests)</td></tr><tr><td>PHP : </td><td>0,0450 s</td></tr><tr><td>Total : </td><td>0,0501 s</td></tr><tr><td>Memory : </td><td>4,1245269775391 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1568</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1673</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 582</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1450</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1061</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('37','0','1394601426','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('38','0','1394601426','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('39','0','1394601833','3','0','0','Snippet - getTable','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/document.parser.class.inc.php(1005) : eval()\'d code</td></tr><tr><td>Line : </td><td>6</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/stoimost.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[2]<a href=\"http://ufreg.ru/stoimost.html\" target=\"_blank\">Стоимость</a></td></tr><tr><td>Current Snippet : </td><td>getTable</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=tree</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.21</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0181 s (27 Requests)</td></tr><tr><td>PHP : </td><td>0,0486 s</td></tr><tr><td>Total : </td><td>0,0667 s</td></tr><tr><td>Memory : </td><td>4,1245269775391 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1568</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1673</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 582</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1450</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1061</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('40','0','1394601833','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('41','0','1394601833','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('42','0','1394603093','3','0','0','Snippet - getTable','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/document.parser.class.inc.php(1005) : eval()\'d code</td></tr><tr><td>Line : </td><td>3</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/stoimost.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[2]<a href=\"http://ufreg.ru/stoimost.html\" target=\"_blank\">Стоимость</a></td></tr><tr><td>Current Snippet : </td><td>getTable</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=tree</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.21</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0112 s (27 Requests)</td></tr><tr><td>PHP : </td><td>0,0422 s</td></tr><tr><td>Total : </td><td>0,0534 s</td></tr><tr><td>Memory : </td><td>4,1245269775391 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1568</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1673</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 582</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1450</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1061</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('43','0','1394603093','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('44','0','1394603093','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('45','0','1394603205','3','0','0','Snippet - getTable','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/document.parser.class.inc.php(1005) : eval()\'d code</td></tr><tr><td>Line : </td><td>13</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/stoimost.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[2]<a href=\"http://ufreg.ru/stoimost.html\" target=\"_blank\">Стоимость</a></td></tr><tr><td>Current Snippet : </td><td>getTable</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=tree</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.21</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0090 s (27 Requests)</td></tr><tr><td>PHP : </td><td>0,0621 s</td></tr><tr><td>Total : </td><td>0,0711 s</td></tr><tr><td>Memory : </td><td>4,1245269775391 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1568</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1673</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 582</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1450</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1061</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('46','0','1394603205','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('47','0','1394603205','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('48','0','1394606841','3','0','0','Snippet - getTable','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/document.parser.class.inc.php(1005) : eval()\'d code</td></tr><tr><td>Line : </td><td>16</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/deklarirovanie-doxodov.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[30]<a href=\"http://ufreg.ru/deklarirovanie-doxodov.html\" target=\"_blank\">декларирование доходов</a></td></tr><tr><td>Current Snippet : </td><td>getTable</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=tree</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.21</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0050 s (27 Requests)</td></tr><tr><td>PHP : </td><td>0,0421 s</td></tr><tr><td>Total : </td><td>0,0470 s</td></tr><tr><td>Memory : </td><td>4,1243591308594 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1568</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1673</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 582</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1450</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1061</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('49','0','1394606842','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('50','0','1394606842','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('51','0','1394606860','3','0','0','Snippet - getTable','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/document.parser.class.inc.php(1005) : eval()\'d code</td></tr><tr><td>Line : </td><td>16</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/deklarirovanie-doxodov.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[30]<a href=\"http://ufreg.ru/deklarirovanie-doxodov.html\" target=\"_blank\">декларирование доходов</a></td></tr><tr><td>Current Snippet : </td><td>getTable</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=tree</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.21</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0049 s (27 Requests)</td></tr><tr><td>PHP : </td><td>0,0409 s</td></tr><tr><td>Total : </td><td>0,0457 s</td></tr><tr><td>Memory : </td><td>4,1243591308594 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1568</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1673</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 582</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1450</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1061</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('52','0','1394606860','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('53','0','1394606860','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('54','0','1394607019','3','0','0','Snippet - getTable','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/document.parser.class.inc.php(1005) : eval()\'d code</td></tr><tr><td>Line : </td><td>16</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/deklarirovanie-doxodov.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[30]<a href=\"http://ufreg.ru/deklarirovanie-doxodov.html\" target=\"_blank\">декларирование доходов</a></td></tr><tr><td>Current Snippet : </td><td>getTable</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=tree</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.21</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0047 s (27 Requests)</td></tr><tr><td>PHP : </td><td>0,0422 s</td></tr><tr><td>Total : </td><td>0,0469 s</td></tr><tr><td>Memory : </td><td>4,1243591308594 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1568</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1673</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 582</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1450</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1061</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('55','0','1394607019','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('56','0','1394607019','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('57','0','1394607115','3','0','0','Snippet - getTable','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/document.parser.class.inc.php(1005) : eval()\'d code</td></tr><tr><td>Line : </td><td>16</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/deklarirovanie-doxodov.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[30]<a href=\"http://ufreg.ru/deklarirovanie-doxodov.html\" target=\"_blank\">декларирование доходов</a></td></tr><tr><td>Current Snippet : </td><td>getTable</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=tree</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.21</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0047 s (27 Requests)</td></tr><tr><td>PHP : </td><td>0,0372 s</td></tr><tr><td>Total : </td><td>0,0419 s</td></tr><tr><td>Memory : </td><td>4,1243591308594 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1568</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1673</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 582</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1450</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1061</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('58','0','1394607115','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('59','0','1394607115','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('60','0','1395336710','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('61','0','1395336793','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('62','0','1395336899','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('63','0','1395386442','3','0','0','Snippet - items','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/document.parser.class.inc.php(1005) : eval()\'d code</td></tr><tr><td>Line : </td><td>26</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/glavnaya.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[1]<a href=\"http://ufreg.ru/glavnaya.html\" target=\"_blank\">Главная</a></td></tr><tr><td>Current Snippet : </td><td>items</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=1&amp;amp;f=tree</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.168.248.1</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0054 s (27 Requests)</td></tr><tr><td>PHP : </td><td>0,3001 s</td></tr><tr><td>Total : </td><td>0,3055 s</td></tr><tr><td>Memory : </td><td>4,1246337890625 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1568</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1673</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 582</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1450</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1061</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('64','0','1395386442','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('65','0','1395386442','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('66','0','1395777012','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('67','0','1395838379','2','1','0','Plugin - ManagerManager - Create Template Variable','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><!-- Begin ManagerManager output --><script src=\"http://ufreg.ru//assets/js/jquery.min.js\" type=\"text/javascript\"></script>\n		\n			<script type=\"text/javascript\">\n			var $j = jQuery.noConflict();\n			$j(\"select[name=type] option\").each( function() {\n												var $this = $j(this);\n												if( !($this.text().match(\"deprecated\")==null )) {\n													$this.remove();	\n												}\n														  });\n			</script>	\n		<!-- End ManagerManager output --></div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>NOTICE[8]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/assets/plugins/managermanager/mm.inc.php</td></tr><tr><td>Line : </td><td>78</td></tr><tr><td>Source : </td><td>Plugin</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/manager/index.php</td></tr><tr><td valign=\"top\">Manager action : </td><td>300 - Create Template Variable</td></tr><tr><td>Current Plugin : </td><td>ManagerManager(OnTVFormRender)</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=300</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.127.181.244</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0043 s (9 Requests)</td></tr><tr><td>PHP : </td><td>0,0535 s</td></tr><tr><td>Total : </td><td>0,0578 s</td></tr><tr><td>Memory : </td><td>3,7429046630859 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />manager/index.php on line 898</td><tr><td valign=\"top\">2</td><td>include()<br />manager/processors/save_tmplvars.processor.php on line 78</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/actions/mutate_tmplvars.dynamic.php on line 520</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3334</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('68','0','1395840988','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'color: \", coments=\" \", color=\"none\" WHERE id=4\' at line 1 &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE srv37029_ufregru_items SET name=\"Бухгалтерское сопровождение ИП\", page_id=\"29\", price=\"от 3000 \", content=\"Расчет стоимости по <span style=\"color: \", coments=\" \", color=\"none\" WHERE id=4</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=4&amp;name=%D0%91%D1%83%D1%85%D0%B3%D0%B0%D0%BB%D1%82%D0%B5%D1%80%D1%81%D0%BA%D0%BE%D0%B5%20%D1%81%D0%BE%D0%BF%D1%80%D0%BE%D0%B2%D0%BE%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%98%D0%9F&amp;price=%D0%BE%D1%82%203000%20&amp;page_id=29&amp;content=%D0%A0%D0%B0%D1%81%D1%87%D0%B5%D1%82%20%D1%81%D1%82%D0%BE%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8%20%D0%BF%D0%BE%20%3Cspan%20style=%22color:%20</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.127.181.244</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0035 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1395840988.4477 s</td></tr><tr><td>Total : </td><td>1395840988.4512 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 31</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('69','0','1395841014','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'color: \", coments=\" \", color=\"none\" WHERE id=4\' at line 1 &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE srv37029_ufregru_items SET name=\"Бухгалтерское сопровождение ИП\", page_id=\"29\", price=\"от 3000 \", content=\"Расчет стоимости по <span style=/\"color: \", coments=\" \", color=\"none\" WHERE id=4</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/assets/modules/mymodul/upload.php?id=4&amp;name=%D0%91%D1%83%D1%85%D0%B3%D0%B0%D0%BB%D1%82%D0%B5%D1%80%D1%81%D0%BA%D0%BE%D0%B5%20%D1%81%D0%BE%D0%BF%D1%80%D0%BE%D0%B2%D0%BE%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%98%D0%9F&amp;price=%D0%BE%D1%82%203000%20&amp;page_id=29&amp;content=%D0%A0%D0%B0%D1%81%D1%87%D0%B5%D1%82%20%D1%81%D1%82%D0%BE%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8%20%D0%BF%D0%BE%20%3Cspan%20style=/%22color:%20</td></tr><tr><td>Referer : </td><td>http://ufreg.ru/manager/index.php?a=112&amp;amp;id=2</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0</td></tr><tr><td>IP : </td><td>178.127.181.244</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0017 s (1 Requests)</td></tr><tr><td>PHP : </td><td>1395841014.0812 s</td></tr><tr><td>Total : </td><td>1395841014.0829 s</td></tr><tr><td>Memory : </td><td>2 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->query()<br />assets/modules/mymodul/upload.php on line 31</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('70','0','1396535604','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('71','0','1397629830','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('72','0','1398073261','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('73','0','1403098602','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)</td></tr><tr><td>IP : </td><td>178.154.243.120</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>9.2172 s</td></tr><tr><td>Total : </td><td>9.2172 s</td></tr><tr><td>Memory : </td><td>1.884521484375 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 140</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1491</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('74','0','1410337230','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Firefox/31.0</td></tr><tr><td>IP : </td><td>86.62.73.6</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>655.1387 s</td></tr><tr><td>Total : </td><td>655.1387 s</td></tr><tr><td>Memory : </td><td>1.8833465576172 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('75','0','1416226826','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('76','0','1421407734','3','0','0','Parser -           else            $this-&gt;conn ','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : mysql_connect() [<a href=\'function.mysql-connect\'>function.mysql-connect</a>]: Unknown MySQL server host \'mysql-37029.srv.hoster.ru\' (0)</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/extenders/dbapi.mysql.class.inc.php</td></tr><tr><td>Line : </td><td>93</td></tr><tr><td>Source : </td><td>          else            $this-&gt;conn = mysql_connect($host, $uid, $pwd, true);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)</td></tr><tr><td>IP : </td><td>5.255.253.214</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>68.1462 s</td></tr><tr><td>Total : </td><td>68.1462 s</td></tr><tr><td>Memory : </td><td>1.8830795288086 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('77','0','1421767189','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0</td></tr><tr><td>IP : </td><td>93.186.54.22</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>377.1631 s</td></tr><tr><td>Total : </td><td>377.1631 s</td></tr><tr><td>Memory : </td><td>1.881103515625 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('78','0','1423821259','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/wp-admin/admin-ajax.php?action=revslider_show_image&amp;img=../wp-config.php</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td></td></tr><tr><td>IP : </td><td>93.183.196.76</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>141.6544 s</td></tr><tr><td>Total : </td><td>141.6544 s</td></tr><tr><td>Memory : </td><td>2.8785400390625 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('79','0','1423821259','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/wp-content/plugins/ajax-store-locator-wordpress_/sl_file_download.php?download_file=../../wp-config.php</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td></td></tr><tr><td>IP : </td><td>93.183.196.76</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>141.6544 s</td></tr><tr><td>Total : </td><td>141.6544 s</td></tr><tr><td>Memory : </td><td>2.8783111572266 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('80','0','1423972833','3','0','0','Parser -           else            $this-&gt;conn ','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : mysql_connect() [<a href=\'function.mysql-connect\'>function.mysql-connect</a>]: Unknown MySQL server host \'mysql-37029.srv.hoster.ru\' (0)</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/extenders/dbapi.mysql.class.inc.php</td></tr><tr><td>Line : </td><td>93</td></tr><tr><td>Source : </td><td>          else            $this-&gt;conn = mysql_connect($host, $uid, $pwd, true);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)</td></tr><tr><td>IP : </td><td>5.255.253.214</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>29.9940 s</td></tr><tr><td>Total : </td><td>29.9940 s</td></tr><tr><td>Memory : </td><td>1.8830795288086 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('81','0','1424187299','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('82','0','1425995793','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('83','0','1426147654','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('84','0','1426234522','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('85','0','1429818508','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('86','0','1432351683','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('87','0','1433803390','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YandexMetrika/2.0; +http://yandex.com/bots mtmon01g.yandex.ru)</td></tr><tr><td>IP : </td><td>213.180.206.196</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>544.1791 s</td></tr><tr><td>Total : </td><td>544.1791 s</td></tr><tr><td>Memory : </td><td>1.882698059082 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('88','0','1433803393','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YandexMetrika/2.0; +http://yandex.com/bots mtmon01g.yandex.ru)</td></tr><tr><td>IP : </td><td>213.180.206.196</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>509.2782 s</td></tr><tr><td>Total : </td><td>509.2782 s</td></tr><tr><td>Memory : </td><td>1.882698059082 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('89','0','1438088743','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/buxgalterskoe-soprovozhdenie-firm.html</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YaDirectFetcher/1.0; +http://yandex.com/bots)</td></tr><tr><td>IP : </td><td>95.108.132.161</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>1635.4629 s</td></tr><tr><td>Total : </td><td>1635.4629 s</td></tr><tr><td>Memory : </td><td>2.1267013549805 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('90','0','1438088743','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YandexMetrika/2.0; +http://yandex.com/bots mtmon01e.yandex.ru)</td></tr><tr><td>IP : </td><td>95.108.129.196</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>2461.8298 s</td></tr><tr><td>Total : </td><td>2461.8298 s</td></tr><tr><td>Memory : </td><td>2.132698059082 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('91','0','1438088745','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/buxgalterskoe-soprovozhdenie-firm.html</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YaDirectFetcher/1.0; +http://yandex.com/bots)</td></tr><tr><td>IP : </td><td>95.108.132.161</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>1412.3898 s</td></tr><tr><td>Total : </td><td>1412.3898 s</td></tr><tr><td>Memory : </td><td>2.1267013549805 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('92','0','1438088746','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YandexMetrika/2.0; +http://yandex.com/bots mtmon01e.yandex.ru)</td></tr><tr><td>IP : </td><td>95.108.129.196</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>2462.7581 s</td></tr><tr><td>Total : </td><td>2462.7581 s</td></tr><tr><td>Memory : </td><td>2.132698059082 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('93','0','1438088747','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/buxgalterskoe-soprovozhdenie-firm.html</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YaDirectFetcher/1.0; +http://yandex.com/bots)</td></tr><tr><td>IP : </td><td>95.108.132.161</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>1584.4333 s</td></tr><tr><td>Total : </td><td>1584.4333 s</td></tr><tr><td>Memory : </td><td>2.1267013549805 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('94','0','1438088749','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/buxgalterskoe-soprovozhdenie-firm.html</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YaDirectFetcher/1.0; +http://yandex.com/bots)</td></tr><tr><td>IP : </td><td>95.108.132.161</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>1624.4542 s</td></tr><tr><td>Total : </td><td>1624.4542 s</td></tr><tr><td>Memory : </td><td>2.1267013549805 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('95','0','1438410155','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('96','0','1440364005','3','0','0','Parser -           else            $this-&gt;conn ','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : mysql_connect() [<a href=\'function.mysql-connect\'>function.mysql-connect</a>]: Unknown MySQL server host \'mysql-37029.srv.hoster.ru\' (0)</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/extenders/dbapi.mysql.class.inc.php</td></tr><tr><td>Line : </td><td>93</td></tr><tr><td>Source : </td><td>          else            $this-&gt;conn = mysql_connect($host, $uid, $pwd, true);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/robots.txt</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)</td></tr><tr><td>IP : </td><td>157.55.39.160</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>69.1052 s</td></tr><tr><td>Total : </td><td>69.1052 s</td></tr><tr><td>Memory : </td><td>1.8768005371094 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('97','0','1441540810','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)</td></tr><tr><td>IP : </td><td>5.255.253.10</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>809.3635 s</td></tr><tr><td>Total : </td><td>809.3635 s</td></tr><tr><td>Memory : </td><td>1.8821563720703 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('98','0','1441559704','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('99','0','1460456491','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('100','0','1461571621','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('101','0','1461736002','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('102','0','1469190290','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('103','0','1469437121','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('104','0','1470106929','3','0','0','Parser -             $q= basename($q);\n','<b>preg_match() expects parameter 2 to be string, array given</b><br />\n<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : basename() expects parameter 1 to be string, array given</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/storage/home/srv37029/ufreg.ru/html/manager/includes/document.parser.class.inc.php</td></tr><tr><td>Line : </td><td>467</td></tr><tr><td>Source : </td><td>            $q= basename($q);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/?q[]=a</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.13 (KHTML, like Gecko) Chrome/24.0.1290.1 Safari/537.13</td></tr><tr><td>IP : </td><td>46.166.137.234</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0093 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.2930 s</td></tr><tr><td>Total : </td><td>0.3023 s</td></tr><tr><td>Memory : </td><td>3.1318817138672 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DocumentParser->cleanDocumentIdentifier()<br />manager/includes/document.parser.class.inc.php on line 1550</td><tr><td valign=\"top\">3</td><td>basename()<br />manager/includes/document.parser.class.inc.php on line 467</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('105','0','1470106929','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('106','0','1470106929','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('107','0','1470106931','3','0','0','SQL Query','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Execution of a query to the database failed - Table \'srv37029_ufregru.srv37029_ufregru_ajaxsearch_log\' doesn\'t exist &raquo;</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">SQL &gt; <span id=\"sqlHolder\">UPDATE `srv37029_ufregru`.`srv37029_ufregru_ajaxsearch_log` SET `comment` = \'123\' WHERE id=\'123\'</span></div>\n	                </td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/index-ajax.php</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.13 (KHTML, like Gecko) Chrome/24.0.1290.1 Safari/537.13</td></tr><tr><td>IP : </td><td>46.166.137.234</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0016 s (0 Requests)</td></tr><tr><td>PHP : </td><td>1470106931.6856 s</td></tr><tr><td>Total : </td><td>1470106931.6872 s</td></tr><tr><td>Memory : </td><td>2.5 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />index-ajax.php on line 55</td><tr><td valign=\"top\">2</td><td>AjaxSearchLog->updateComment()<br />assets/snippets/ajaxSearch/classes/ajaxSearchLog.class.inc.php on line 163</td><tr><td valign=\"top\">3</td><td>DBAPI->update()<br />assets/snippets/ajaxSearch/classes/ajaxSearchLog.class.inc.php on line 143</td><tr><td valign=\"top\">4</td><td>DBAPI->query()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 263</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('108','0','1470106931','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('109','0','1470106931','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('110','0','1481163141','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YandexMetrika/2.0; +http://yandex.com/bots mtmon01e.yandex.ru)</td></tr><tr><td>IP : </td><td>95.108.129.196</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>640.4038 s</td></tr><tr><td>Total : </td><td>640.4038 s</td></tr><tr><td>Memory : </td><td>1.8828048706055 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('111','0','1481163141','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; YandexMetrika/2.0; +http://yandex.com/bots mtmon01e.yandex.ru)</td></tr><tr><td>IP : </td><td>95.108.129.196</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>624.2127 s</td></tr><tr><td>Total : </td><td>624.2127 s</td></tr><tr><td>Memory : </td><td>1.8828048706055 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1496</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('112','0','1485263981','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('113','0','1490625635','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('114','0','1493054962','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('115','0','1494427513','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('116','0','1495252935','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('117','0','1495320021','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('118','0','1495320033','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('119','0','1498225803','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('120','0','1498226159','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('121','0','1498226196','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('122','0','1498896989','3','0','0','Snippet - Ditto','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : strftime(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/home/vit/sites/www/ufreg.ru.com/assets/snippets/ditto/classes/ditto.class.inc.php</td></tr><tr><td>Line : </td><td>311</td></tr><tr><td>Source : </td><td>			$placeholders[\'date\'] = strftime($dateFormat,$timestamp);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru.com/</td></tr><tr><td valign=\"top\">Resource : </td><td>[1]<a href=\"http://ufreg.ru.com/buxgalterskie-uslugi.html\" target=\"_blank\">Главная</a></td></tr><tr><td>Current Snippet : </td><td>Ditto</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36</td></tr><tr><td>IP : </td><td>127.0.0.1</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0132 s (23 Requests)</td></tr><tr><td>PHP : </td><td>0,0757 s</td></tr><tr><td>Total : </td><td>0,0889 s</td></tr><tr><td>Memory : </td><td>1,6289291381836 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1579</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1681</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 596</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1461</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td><tr><td valign=\"top\">8</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1009</td><tr><td valign=\"top\">9</td><td>require()<br />manager/includes/document.parser.class.inc.php(1009) : eval()\'d code on line 1</td><tr><td valign=\"top\">10</td><td>ditto->render()<br />assets/snippets/ditto/snippet.ditto.php on line 1032</td><tr><td valign=\"top\">11</td><td>strftime()<br />assets/snippets/ditto/classes/ditto.class.inc.php on line 311</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('123','0','1498896989','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('124','0','1498896989','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('125','0','1498896997','3','0','0','Snippet - Ditto','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : strftime(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/home/vit/sites/www/ufreg.ru.com/assets/snippets/ditto/classes/ditto.class.inc.php</td></tr><tr><td>Line : </td><td>311</td></tr><tr><td>Source : </td><td>			$placeholders[\'date\'] = strftime($dateFormat,$timestamp);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru.com/</td></tr><tr><td valign=\"top\">Resource : </td><td>[1]<a href=\"http://ufreg.ru.com/buxgalterskie-uslugi.html\" target=\"_blank\">Главная</a></td></tr><tr><td>Current Snippet : </td><td>Ditto</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36</td></tr><tr><td>IP : </td><td>127.0.0.1</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0171 s (23 Requests)</td></tr><tr><td>PHP : </td><td>0,0655 s</td></tr><tr><td>Total : </td><td>0,0826 s</td></tr><tr><td>Memory : </td><td>1,6285438537598 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1579</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1681</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 596</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1461</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td><tr><td valign=\"top\">8</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1009</td><tr><td valign=\"top\">9</td><td>require()<br />manager/includes/document.parser.class.inc.php(1009) : eval()\'d code on line 1</td><tr><td valign=\"top\">10</td><td>ditto->render()<br />assets/snippets/ditto/snippet.ditto.php on line 1032</td><tr><td valign=\"top\">11</td><td>strftime()<br />assets/snippets/ditto/classes/ditto.class.inc.php on line 311</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('126','0','1498896997','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('127','0','1498896997','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('128','0','1498935248','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('129','0','1498935248','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('130','0','1498935248','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('131','0','1498935248','2','1','0','невозможна запись в папку кэширования','MODX не в состоянии записывать данные в папку кэширования. Система будет работать нормально, но кэширования происходить не будет. Для решения проблемы разрешите запись в папку <b>/assets/cache<b>.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('132','0','1498935248','2','1','0','Папка изображений (images) недоступна для записи','Папка изображений (images) недоступна для записи или не существует на сервере. Из этого следует, что управление изображениями работать не будет');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('133','0','1498978966','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('134','0','1498978966','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('135','0','1498978966','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('136','0','1498978966','2','1','0','невозможна запись в папку кэширования','MODX не в состоянии записывать данные в папку кэширования. Система будет работать нормально, но кэширования происходить не будет. Для решения проблемы разрешите запись в папку <b>/assets/cache<b>.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('137','0','1498978966','2','1','0','Папка изображений (images) недоступна для записи','Папка изображений (images) недоступна для записи или не существует на сервере. Из этого следует, что управление изображениями работать не будет');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('138','0','1499023614','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('139','0','1499023614','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('140','0','1499023614','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('141','0','1499023614','2','1','0','невозможна запись в папку кэширования','MODX не в состоянии записывать данные в папку кэширования. Система будет работать нормально, но кэширования происходить не будет. Для решения проблемы разрешите запись в папку <b>/assets/cache<b>.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('142','0','1499023614','2','1','0','Папка изображений (images) недоступна для записи','Папка изображений (images) недоступна для записи или не существует на сервере. Из этого следует, что управление изображениями работать не будет');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('143','0','1499107981','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('144','0','1499107981','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('145','0','1499107981','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('146','0','1499139678','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('147','0','1499139678','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('148','0','1499139678','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('149','0','1499195996','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('150','0','1499195996','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('151','0','1499195996','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('152','0','1499672599','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('153','0','1499673002','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('154','0','1499673167','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('155','0','1499673473','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('156','0','1499673544','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('157','0','1499676492','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('158','0','1499677010','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('159','0','1499677205','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('160','0','1499677225','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('161','0','1499677362','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('162','0','1499677763','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('163','0','1499679682','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('164','0','1499679879','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('165','0','1499684265','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('166','0','1499684326','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('167','0','1499685005','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('168','0','1499685274','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('169','0','1499685329','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('170','0','1499685404','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('171','0','1499685483','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('172','0','1499687147','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('173','0','1499689187','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('174','0','1499689534','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('175','0','1499689620','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('176','0','1499758854','3','0','0','Snippet - getTable','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : syntax error, unexpected \'$el\' (T_VARIABLE)</div></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \'$el\' (T_VARIABLE) in <b>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</b> on line <b>38</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</td></tr><tr><td>Line : </td><td>38</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru.loc/prajs.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[2]<a href=\"http://ufreg.ru.loc/prajs.html\" target=\"_blank\">Прайс</a></td></tr><tr><td>Current Snippet : </td><td>getTable</td></tr><tr><td>Referer : </td><td>http://ufreg.ru.loc/spasibo.html</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36</td></tr><tr><td>IP : </td><td>127.0.0.1</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0171 s (24 Requests)</td></tr><tr><td>PHP : </td><td>0,1484 s</td></tr><tr><td>Total : </td><td>0,1655 s</td></tr><tr><td>Memory : </td><td>2,5232238769531 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1579</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1681</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 596</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1461</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('177','0','1499758854','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('178','0','1499758854','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('179','0','1499758895','3','0','0','Snippet - getTable','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : syntax error, unexpected \'view_vichet\' (T_STRING)</div></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \'view_vichet\' (T_STRING) in <b>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</b> on line <b>38</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</td></tr><tr><td>Line : </td><td>38</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru.loc/prajs.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[2]<a href=\"http://ufreg.ru.loc/prajs.html\" target=\"_blank\">Прайс</a></td></tr><tr><td>Current Snippet : </td><td>getTable</td></tr><tr><td>Referer : </td><td>http://ufreg.ru.loc/spasibo.html</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36</td></tr><tr><td>IP : </td><td>127.0.0.1</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0178 s (24 Requests)</td></tr><tr><td>PHP : </td><td>0,0708 s</td></tr><tr><td>Total : </td><td>0,0886 s</td></tr><tr><td>Memory : </td><td>2,5232238769531 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1579</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1681</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 596</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1461</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('180','0','1499758895','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('181','0','1499758895','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('182','0','1499760540','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('183','0','1499779730','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('184','0','1499779730','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('185','0','1499779730','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('186','0','1499779730','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('187','0','1499779787','3','0','0','Snippet - getID','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : syntax error, unexpected \'~\', expecting \']\'</div></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \'~\', expecting \']\' in <b>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</b> on line <b>3</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</td></tr><tr><td>Line : </td><td>3</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru.loc/zakazat.html?id=28</td></tr><tr><td valign=\"top\">Resource : </td><td>[3]<a href=\"http://ufreg.ru.loc/zakazat.html\" target=\"_blank\">Заказать</a></td></tr><tr><td>Current Snippet : </td><td>getID</td></tr><tr><td>Referer : </td><td>http://ufreg.ru.loc/prajs.html</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36</td></tr><tr><td>IP : </td><td>127.0.0.1</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0365 s (25 Requests)</td></tr><tr><td>PHP : </td><td>0,1873 s</td></tr><tr><td>Total : </td><td>0,2238 s</td></tr><tr><td>Memory : </td><td>2,5225219726562 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1579</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1681</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 596</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1461</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('188','0','1499779787','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('189','0','1499779787','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('190','0','1499780424','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('191','0','1499781139','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('192','0','1499781259','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('193','0','1499781367','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('194','0','1499781631','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('195','0','1499782020','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('196','0','1499782044','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('197','0','1499840703','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('198','0','1499840742','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('199','0','1499841209','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('200','0','1499841350','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('201','0','1499841573','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('202','0','1499841702','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('203','0','1499841775','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('204','0','1499841838','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('205','0','1499846386','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('206','0','1499846541','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('207','0','1499847391','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('208','0','1499848081','3','0','0','Snippet - items','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : syntax error, unexpected \'href\' (T_STRING), expecting \',\' or \';\'</div></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \'href\' (T_STRING), expecting \',\' or \';\' in <b>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</b> on line <b>27</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</td></tr><tr><td>Line : </td><td>27</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru.loc/</td></tr><tr><td valign=\"top\">Resource : </td><td>[1]<a href=\"http://ufreg.ru.loc/buxgalterskie-uslugi.html\" target=\"_blank\">Главная</a></td></tr><tr><td>Current Snippet : </td><td>items</td></tr><tr><td>Referer : </td><td>http://ufreg.ru.loc/spasibo.html</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36</td></tr><tr><td>IP : </td><td>127.0.0.1</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0175 s (24 Requests)</td></tr><tr><td>PHP : </td><td>0,1118 s</td></tr><tr><td>Total : </td><td>0,1293 s</td></tr><tr><td>Memory : </td><td>2,5234756469727 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1579</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1681</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 596</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1461</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('209','0','1499848081','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('210','0','1499848081','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('211','0','1499848607','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('212','0','1499853377','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('213','0','1499942096','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('214','0','1499942096','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('215','0','1499942096','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('216','0','1499947238','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('217','0','1499947238','3','1','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('218','0','1499947239','3','1','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('219','0','1499947239','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('220','0','1499947455','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('221','0','1499947455','3','0','0','phpmailer','Could not instantiate mail function.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('222','0','1499948755','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('223','0','1499948755','3','0','0','phpmailer','Could not instantiate mail function.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('224','0','1499948778','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('225','0','1499948808','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('226','0','1499951658','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('227','0','1499953816','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('228','0','1499953989','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('229','0','1499954656','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('230','0','1500012862','3','0','0','Snippet - str2','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : require_once(libs/storage.php): failed to open stream: Нет такого файла или каталога</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</td></tr><tr><td>Line : </td><td>2</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru.loc/zakazat.html?id=28</td></tr><tr><td valign=\"top\">Resource : </td><td>[3]<a href=\"http://ufreg.ru.loc/zakazat.html\" target=\"_blank\">Заказать</a></td></tr><tr><td>Current Snippet : </td><td>str2</td></tr><tr><td>Referer : </td><td>http://ufreg.ru.loc/prajs.html</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36</td></tr><tr><td>IP : </td><td>127.0.0.1</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0295 s (24 Requests)</td></tr><tr><td>PHP : </td><td>0,0931 s</td></tr><tr><td>Total : </td><td>0,1226 s</td></tr><tr><td>Memory : </td><td>2,7729339599609 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1579</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1681</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 596</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1461</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td><tr><td valign=\"top\">8</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1009</td><tr><td valign=\"top\">9</td><td>require()<br />manager/includes/document.parser.class.inc.php(1009) : eval()\'d code on line 1</td><tr><td valign=\"top\">10</td><td>eForm()<br />assets/snippets/eform/snippet.eform.php on line 100</td><tr><td valign=\"top\">11</td><td>efLoadTemplate()<br />assets/snippets/eform/eform.inc.php on line 90</td><tr><td valign=\"top\">12</td><td>DocumentParser->evalSnippets()<br />assets/snippets/eform/eform.inc.php on line 1145</td><tr><td valign=\"top\">13</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">14</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td><tr><td valign=\"top\">15</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1009</td><tr><td valign=\"top\">16</td><td>require_once()<br />manager/includes/document.parser.class.inc.php(1009) : eval()\'d code on line 2</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('231','0','1500012862','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('232','0','1500012862','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('233','0','1500013490','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('234','0','1500013693','3','0','0','Snippet - str1','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : syntax error, unexpected \';\'</div></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \';\' in <b>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</b> on line <b>4</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</td></tr><tr><td>Line : </td><td>4</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru.loc/zakazat.html?formid=Send&amp;author=asd&amp;phone=asdf&amp;email=&amp;text=asdf&amp;submit=+%D0%9E%D1%82%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D1%82%D1%8C+&amp;usluga=%D0%9D%D1%83%D0%BB%D0%B5%D0%B2%D0%B0%D1%8F+%D0%BE%D1%82%D1%87%D0%B5%D1%82%D0%BD%D0%BE%D1%81%D1%82%D1%8C</td></tr><tr><td valign=\"top\">Resource : </td><td>[3]<a href=\"http://ufreg.ru.loc/zakazat.html\" target=\"_blank\">Заказать</a></td></tr><tr><td>Current Snippet : </td><td>str1</td></tr><tr><td>Referer : </td><td>http://ufreg.ru.loc/zakazat.html?id=28</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36</td></tr><tr><td>IP : </td><td>127.0.0.1</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0363 s (24 Requests)</td></tr><tr><td>PHP : </td><td>0,1413 s</td></tr><tr><td>Total : </td><td>0,1776 s</td></tr><tr><td>Memory : </td><td>2,7708892822266 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1579</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1681</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 596</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1461</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td><tr><td valign=\"top\">8</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1009</td><tr><td valign=\"top\">9</td><td>require()<br />manager/includes/document.parser.class.inc.php(1009) : eval()\'d code on line 1</td><tr><td valign=\"top\">10</td><td>eForm()<br />assets/snippets/eform/snippet.eform.php on line 100</td><tr><td valign=\"top\">11</td><td>efLoadTemplate()<br />assets/snippets/eform/eform.inc.php on line 90</td><tr><td valign=\"top\">12</td><td>DocumentParser->evalSnippets()<br />assets/snippets/eform/eform.inc.php on line 1145</td><tr><td valign=\"top\">13</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">14</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('235','0','1500013693','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('236','0','1500013693','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('237','0','1500013706','3','0','0','Snippet - str1','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : syntax error, unexpected \';\'</div></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \';\' in <b>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</b> on line <b>4</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</td></tr><tr><td>Line : </td><td>4</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru.loc/zakazat.html</td></tr><tr><td valign=\"top\">Resource : </td><td>[3]<a href=\"http://ufreg.ru.loc/zakazat.html\" target=\"_blank\">Заказать</a></td></tr><tr><td>Current Snippet : </td><td>str1</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36</td></tr><tr><td>IP : </td><td>127.0.0.1</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0164 s (24 Requests)</td></tr><tr><td>PHP : </td><td>0,0724 s</td></tr><tr><td>Total : </td><td>0,0889 s</td></tr><tr><td>Memory : </td><td>2,7732696533203 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1579</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1681</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 596</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1461</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td><tr><td valign=\"top\">8</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1009</td><tr><td valign=\"top\">9</td><td>require()<br />manager/includes/document.parser.class.inc.php(1009) : eval()\'d code on line 1</td><tr><td valign=\"top\">10</td><td>eForm()<br />assets/snippets/eform/snippet.eform.php on line 100</td><tr><td valign=\"top\">11</td><td>efLoadTemplate()<br />assets/snippets/eform/eform.inc.php on line 90</td><tr><td valign=\"top\">12</td><td>DocumentParser->evalSnippets()<br />assets/snippets/eform/eform.inc.php on line 1145</td><tr><td valign=\"top\">13</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">14</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('238','0','1500013706','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('239','0','1500013706','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('240','0','1500013717','3','0','0','Snippet - str1','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : syntax error, unexpected \';\'</div></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \';\' in <b>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</b> on line <b>4</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/home/vit/www/ufreg.ru.loc/manager/includes/document.parser.class.inc.php(1009) : eval()\'d code</td></tr><tr><td>Line : </td><td>4</td></tr><tr><td>Source : </td><td>Snippet</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://ufreg.ru.loc/zakazat.html?id=28</td></tr><tr><td valign=\"top\">Resource : </td><td>[3]<a href=\"http://ufreg.ru.loc/zakazat.html\" target=\"_blank\">Заказать</a></td></tr><tr><td>Current Snippet : </td><td>str1</td></tr><tr><td>Referer : </td><td>http://ufreg.ru.loc/prajs.html</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36</td></tr><tr><td>IP : </td><td>127.0.0.1</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0371 s (25 Requests)</td></tr><tr><td>PHP : </td><td>0,1150 s</td></tr><tr><td>Total : </td><td>0,1522 s</td></tr><tr><td>Memory : </td><td>2,7729339599609 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1579</td><tr><td valign=\"top\">3</td><td>DocumentParser->outputContent()<br />manager/includes/document.parser.class.inc.php on line 1681</td><tr><td valign=\"top\">4</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 596</td><tr><td valign=\"top\">5</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1461</td><tr><td valign=\"top\">6</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">7</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td><tr><td valign=\"top\">8</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1009</td><tr><td valign=\"top\">9</td><td>require()<br />manager/includes/document.parser.class.inc.php(1009) : eval()\'d code on line 1</td><tr><td valign=\"top\">10</td><td>eForm()<br />assets/snippets/eform/snippet.eform.php on line 100</td><tr><td valign=\"top\">11</td><td>efLoadTemplate()<br />assets/snippets/eform/eform.inc.php on line 90</td><tr><td valign=\"top\">12</td><td>DocumentParser->evalSnippets()<br />assets/snippets/eform/eform.inc.php on line 1145</td><tr><td valign=\"top\">13</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1060</td><tr><td valign=\"top\">14</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1147</td></table>\n');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('241','0','1500013717','3','0','0','phpmailer','Invalid address: ');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('242','0','1500013717','3','0','0','phpmailer','You must provide at least one recipient email address.');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('243','0','1500013800','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('244','0','1500013839','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('245','0','1500015406','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('246','0','1500015436','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('247','0','1500015519','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('248','0','1500015554','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('249','0','1500015643','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('250','0','1500015719','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('251','0','1500015773','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('252','0','1500015947','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('253','0','1500021483','3','0','0','phpmailer','Invalid address: www.ufreg.ru');
INSERT INTO `srv37029_ufregru_event_log` VALUES ('254','0','1500021573','3','0','0','phpmailer','Invalid address: www.ufreg.ru');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_items`
#

DROP TABLE IF EXISTS `srv37029_ufregru_items`;
CREATE TABLE `srv37029_ufregru_items` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `coments` text NOT NULL,
  `price` varchar(200) NOT NULL,
  `page_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Dumping data for table `srv37029_ufregru_items`
#

INSERT INTO `srv37029_ufregru_items` VALUES ('1','Бухгалтеркое сопровождение фирм','transparent','Ведение бухгалтерского документооборота в 1С. Сдача отчетности почтой и электронными направлениями. ','','от 3000 р.','30');
INSERT INTO `srv37029_ufregru_items` VALUES ('4','Бухгалтерское сопровождение ИП','transparent','Расчет стоимости по <span><b>кварталам</b></span>. Ведение бухгалтерии в 1С. ','','от 3000 р.','29');
INSERT INTO `srv37029_ufregru_items` VALUES ('5','Нулевая отчетность','transparent','Сдается при отсутствии деятельности в компании ежеквартально. Возможна электронная подача.','','от  1800 р.','28');
INSERT INTO `srv37029_ufregru_items` VALUES ('6','Подготовка деклараций 3-НДФЛ','transparent','Декларирование доходов. Получение социальных и имущественных вычетов.','','от 350 р.','68');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_keyword_xref`
#

DROP TABLE IF EXISTS `srv37029_ufregru_keyword_xref`;
CREATE TABLE `srv37029_ufregru_keyword_xref` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `keyword_id` (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Cross reference bewteen keywords and content';

#
# Dumping data for table `srv37029_ufregru_keyword_xref`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_manager_log`
#

DROP TABLE IF EXISTS `srv37029_ufregru_manager_log`;
CREATE TABLE `srv37029_ufregru_manager_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6679 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

#
# Dumping data for table `srv37029_ufregru_manager_log`
#

INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3601','1397474166','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3602','1397474169','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3603','1397474169','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3604','1397474176','1','admin','31','-','/storage/home/srv37029/ufreg.ru/html/assets/templates/registral/script/js.js','Viewing File');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3605','1397474218','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3606','1397474221','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3607','1397474223','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3608','1397474229','1','admin','31','-','/storage/home/srv37029/ufreg.ru/html/assets/modules/mymodul/js.js','Viewing File');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3609','1397642404','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3610','1397642429','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3611','1397642706','1','admin','27','65','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3612','1397642708','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3613','1397642714','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3614','1397642736','1','admin','79','26','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3615','1397642736','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3616','1397643024','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3617','1397643028','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3618','1397643030','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3619','1397643032','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3620','1397643035','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3621','1397643037','1','admin','31','-','/storage/home/srv37029/ufreg.ru/html/assets/templates/registral/style/style.css','Viewing File');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3622','1397643066','1','admin','31','-','/storage/home/srv37029/ufreg.ru/html/assets/templates/registral/style/style.css','Modified File');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3623','1397643066','1','admin','31','-','/storage/home/srv37029/ufreg.ru/html/assets/templates/registral/style/style.css','Viewing File');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3624','1397643086','1','admin','31','-','/storage/home/srv37029/ufreg.ru/html/assets/templates/registral/style/style.css','Modified File');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3625','1397643086','1','admin','31','-','/storage/home/srv37029/ufreg.ru/html/assets/templates/registral/style/style.css','Viewing File');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3626','1397643219','1','admin','31','-','/storage/home/srv37029/ufreg.ru/html/assets/templates/registral/style/style.css','Modified File');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3627','1397643219','1','admin','31','-','/storage/home/srv37029/ufreg.ru/html/assets/templates/registral/style/style.css','Viewing File');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3628','1398762488','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3629','1398762494','1','admin','27','65','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3630','1398762498','1','admin','27','65','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3631','1398762501','1','admin','27','1','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3632','1398762523','1','admin','27','64','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3633','1398762530','1','admin','27','4','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3634','1398762613','1','admin','27','1','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3635','1398762617','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3636','1398762626','1','admin','27','41','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3637','1398762629','1','admin','27','43','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3638','1398762853','1','admin','27','20','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3639','1398762857','1','admin','27','23','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3640','1398762860','1','admin','27','25','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3641','1398762862','1','admin','27','26','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3642','1398762874','1','admin','27','42','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3643','1398762888','1','admin','27','3','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3644','1398762892','1','admin','27','31','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3645','1398762920','1','admin','5','31','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3646','1398762921','1','admin','3','31','Он-лайн выписка из ЕГРЮЛ','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3647','1398762958','1','admin','27','3','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3648','1398762959','1','admin','27','31','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3649','1398762970','1','admin','27','68','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3650','1398762977','1','admin','27','27','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3651','1398762982','1','admin','27','27','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3652','1398762993','1','admin','27','28','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3653','1398763004','1','admin','27','38','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3654','1398763016','1','admin','27','5','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3655','1398763019','1','admin','27','10','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3656','1398763033','1','admin','27','25','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3657','1400499103','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3658','1400499192','1','admin','27','64','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3659','1400499203','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3660','1400499211','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3661','1400499214','1','admin','27','41','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3662','1400499216','1','admin','27','43','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3663','1400499219','1','admin','27','45','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3664','1400499225','1','admin','27','42','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3665','1400499230','1','admin','27','44','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3666','1400499232','1','admin','27','47','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3667','1400499236','1','admin','27','70','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3668','1400499240','1','admin','27','71','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3669','1400499243','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3670','1400499249','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3671','1400499255','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3672','1400499257','1','admin','27','74','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3673','1400499267','1','admin','27','69','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3674','1400499297','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3675','1400499301','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3676','1400499307','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3677','1400499336','1','admin','27','34','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3678','1400499341','1','admin','27','41','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3679','1400499343','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3680','1400499386','1','admin','27','13','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3681','1400499484','1','admin','27','3','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3682','1400499583','1','admin','27','43','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3683','1400500271','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3684','1400500281','1','admin','27','41','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3685','1400500284','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3686','1400500302','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3687','1400500316','1','admin','27','41','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3688','1400500341','1','admin','27','42','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3689','1400500344','1','admin','27','71','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3690','1400500435','1','admin','27','41','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3691','1400500439','1','admin','27','43','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3692','1400500489','1','admin','27','41','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3693','1400500499','1','admin','27','28','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3694','1400500549','1','admin','27','41','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3695','1400500555','1','admin','27','43','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3696','1400500556','1','admin','27','41','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3697','1400500610','1','admin','27','43','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3698','1400500685','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3699','1400500701','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3700','1400500888','1','admin','27','43','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3701','1400501001','1','admin','27','45','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3702','1400501020','1','admin','27','42','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3703','1400501039','1','admin','27','46','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3704','1400501043','1','admin','27','47','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3705','1400501049','1','admin','27','69','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3706','1400501077','1','admin','27','70','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3707','1400501169','1','admin','27','71','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3708','1400501177','1','admin','5','71','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3709','1400501178','1','admin','3','71','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3710','1400501180','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3711','1400501292','1','admin','27','42','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3712','1400501293','1','admin','27','44','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3713','1400501295','1','admin','27','48','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3714','1400501309','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3715','1400501314','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3716','1400501315','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3717','1400501320','1','admin','27','74','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3718','1400501329','1','admin','27','75','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3719','1400501397','1','admin','27','70','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3720','1400501410','1','admin','27','71','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3721','1400501421','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3722','1400501536','1','admin','5','72','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3723','1400501538','1','admin','3','72','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3724','1400501561','1','admin','27','71','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3725','1400501564','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3726','1400501595','1','admin','27','71','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3727','1400501597','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3728','1400501602','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3729','1400501612','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3730','1400502218','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3731','1400502264','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3732','1400502277','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3733','1400502323','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3734','1400502328','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3735','1400502441','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3736','1400502446','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3737','1400502448','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3738','1400502472','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3739','1400503027','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3740','1400503036','1','admin','3','73','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3741','1400503043','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3742','1400503047','1','admin','3','73','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3743','1400503048','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3744','1400503052','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3745','1400503054','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3746','1400503065','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3747','1400503067','1','admin','27','74','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3748','1400503070','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3749','1400503072','1','admin','27','74','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3750','1400503074','1','admin','27','75','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3751','1400503079','1','admin','5','75','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3752','1400503080','1','admin','3','75','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3753','1400503082','1','admin','27','74','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3754','1400503087','1','admin','5','74','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3755','1400503089','1','admin','3','74','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3756','1400503089','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3757','1400503095','1','admin','5','73','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3758','1400503096','1','admin','3','73','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3759','1400503098','1','admin','5','-','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3760','1400503100','1','admin','3','78','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3761','1400503143','1','admin','27','71','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3762','1400503146','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3763','1400503148','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3764','1400503157','1','admin','27','74','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3765','1400503158','1','admin','27','75','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3766','1400503160','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3767','1400503161','1','admin','27','71','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3768','1400503162','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3769','1400503166','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3770','1400503168','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3771','1400503173','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3772','1400503194','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3773','1400503204','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3774','1400503210','1','admin','27','70','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3775','1400503211','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3776','1400503212','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3777','1400503214','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3778','1400503216','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3779','1400503217','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3780','1400503247','1','admin','27','71','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3781','1400503249','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3782','1400503251','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3783','1400503256','1','admin','27','75','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3784','1400503260','1','admin','5','75','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3785','1400503262','1','admin','3','75','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3786','1400503263','1','admin','27','74','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3787','1400503269','1','admin','5','74','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3788','1400503270','1','admin','3','74','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3789','1400503271','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3790','1400503278','1','admin','5','73','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3791','1400503279','1','admin','3','73','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3792','1400503281','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3793','1400503283','1','admin','27','73','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3794','1400503285','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3795','1400503402','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3796','1400503458','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3797','1400503471','1','admin','27','70','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3798','1400503474','1','admin','27','78','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3799','1400503487','1','admin','5','78','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3800','1400503489','1','admin','3','78','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3801','1400503505','1','admin','27','78','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3802','1400503510','1','admin','5','78','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3803','1400503512','1','admin','3','78','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3804','1400504239','1','admin','27','33','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3805','1400504269','1','admin','6','33','-','Deleting resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3806','1400504271','1','admin','3','1','Главная','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3807','1400504274','1','admin','27','32','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3808','1400504341','1','admin','27','32','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3809','1400504341','1','admin','27','34','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3810','1400504361','1','admin','27','13','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3811','1400504435','1','admin','5','13','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3812','1400504436','1','admin','3','13','Скидка 10% при повторном заказе нулевой отчетности!','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3813','1400504443','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3814','1400504447','1','admin','3','13','Скидка 10% при повторном заказе нулевой отчетности!','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3815','1400504532','1','admin','61','12','-','Publishing a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3816','1400504533','1','admin','3','10','реклама','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3817','1400504555','1','admin','61','13','-','Publishing a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3818','1400504556','1','admin','3','10','реклама','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3819','1400504577','1','admin','62','12','-','Un-publishing a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3820','1400504579','1','admin','3','10','реклама','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3821','1400504644','1','admin','27','49','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3822','1400504650','1','admin','27','51','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3823','1400504955','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3824','1400504992','1','admin','27','49','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3825','1400504993','1','admin','27','51','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3826','1400505061','1','admin','5','51','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3827','1400505062','1','admin','3','51','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3828','1400505073','1','admin','27','51','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3829','1400505085','1','admin','5','51','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3830','1400505087','1','admin','3','51','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3831','1400505089','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3832','1400505092','1','admin','27','49','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3833','1400505100','1','admin','27','50','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3834','1400505102','1','admin','27','49','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3835','1400505103','1','admin','27','50','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3836','1400505104','1','admin','27','51','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3837','1400505173','1','admin','5','51','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3838','1400505173','1','admin','27','51','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3839','1400505302','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3840','1400505309','1','admin','27','51','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3841','1400505320','1','admin','27','50','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3842','1400505349','1','admin','27','49','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3843','1400505401','1','admin','27','50','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3844','1400505409','1','admin','5','50','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3845','1400505410','1','admin','3','50','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3846','1400505419','1','admin','27','50','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3847','1400505420','1','admin','27','51','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3848','1400505542','1','admin','27','29','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3849','1400505545','1','admin','27','55','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3850','1400505549','1','admin','27','56','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3851','1400505554','1','admin','27','57','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3852','1400505558','1','admin','27','56','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3853','1400505562','1','admin','27','54','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3854','1400505566','1','admin','27','53','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3855','1400505570','1','admin','27','55','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3856','1400505575','1','admin','27','56','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3857','1400505582','1','admin','27','57','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3858','1400505605','1','admin','27','30','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3859','1400505609','1','admin','27','53','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3860','1400505619','1','admin','27','68','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3861','1400505630','1','admin','27','53','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3862','1400505651','1','admin','27','53','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3863','1400505652','1','admin','27','54','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3864','1400505658','1','admin','27','55','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3865','1400505669','1','admin','27','58','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3866','1400505674','1','admin','27','59','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3867','1400505677','1','admin','27','60','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3868','1400505680','1','admin','27','30','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3869','1400505685','1','admin','27','29','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3870','1400505698','1','admin','5','29','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3871','1400505699','1','admin','3','29','Бухгалтерское сопровождение ИП','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3872','1400505715','1','admin','27','28','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3873','1400505723','1','admin','27','51','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3874','1400505732','1','admin','27','28','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3875','1400505774','1','admin','5','28','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3876','1400505775','1','admin','3','28','Нулевая отчетность','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3877','1400506398','1','admin','27','7','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3878','1400506581','1','admin','27','30','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3879','1400506584','1','admin','27','29','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3880','1400506607','1','admin','27','28','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3881','1400506651','1','admin','5','28','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3882','1400506652','1','admin','3','28','Нулевая отчетность','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3883','1402992839','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3884','1402992916','1','admin','8','-','-','Logged out');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3885','1403002852','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3886','1403002882','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3887','1403002946','1','admin','30','-','-','Saving settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3888','1403002952','1','admin','99','-','-','Manage Web Users');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3889','1403002953','1','admin','75','-','-','User/ role management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3890','1403002958','1','admin','12','1','admin','Editing user');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3891','1403002958','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3892','1403003017','1','admin','32','1','-','Saving user');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3893','1403003022','1','admin','75','-','-','User/ role management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3894','1403005361','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3895','1403006408','1','admin','27','36','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3896','1403006416','1','admin','27','37','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3897','1403006418','1','admin','27','20','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3898','1403007561','1','admin','27','39','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3899','1403007564','1','admin','27','40','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3900','1403007589','1','admin','27','12','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3901','1403007596','1','admin','5','12','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3902','1403007596','1','admin','27','12','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3903','1403511720','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3904','1403517718','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3905','1403517857','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3906','1403517912','1','admin','5','-','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3907','1403517912','1','admin','27','79','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3908','1403523421','1','admin','5','79','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3909','1403523422','1','admin','27','79','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3910','1403544669','1','admin','27','79','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3911','1403544673','1','admin','5','79','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3912','1403544673','1','admin','27','79','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3913','1403547588','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3914','1403547594','1','admin','16','17','Внутренняя','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3915','1403547603','1','admin','96','17','-','Duplicate Template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3916','1403547603','1','admin','16','20','Duplicate of Внутренняя','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3917','1403547616','1','admin','20','20','-','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3918','1403547616','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3919','1403547618','1','admin','27','79','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3920','1403547620','1','admin','27','79','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3921','1403547622','1','admin','5','79','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3922','1403547624','1','admin','3','79','Полезная информация','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3923','1403547629','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3924','1403547672','1','admin','16','20','Статьи','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3925','1403547724','1','admin','20','20','-','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3926','1403547724','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3927','1403547730','1','admin','77','-','New Chunk','Creating a new Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3928','1403547877','1','admin','79','-','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3929','1403547877','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3930','1403547879','1','admin','23','-','New snippet','Creating a new Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3931','1403547906','1','admin','24','-','-','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3932','1403547906','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3933','1403547959','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3934','1403548018','1','admin','79','27','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3935','1403548018','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3936','1403548021','1','admin','16','20','Статьи','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3937','1403548130','1','admin','20','20','-','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3938','1403548130','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3939','1403548132','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3940','1403548138','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3941','1403548160','1','admin','5','-','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3942','1403548162','1','admin','3','80','Новость 1','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3943','1403548248','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3944','1403548260','1','admin','5','80','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3945','1403548262','1','admin','3','80','Новость 1','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3946','1403548265','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3947','1403548281','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3948','1403548289','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3949','1403548306','1','admin','79','27','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3950','1403548307','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3951','1403548308','1','admin','27','79','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3952','1403548315','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3953','1403548344','1','admin','22','23','New snippet','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3954','1403548386','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3955','1403548391','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3956','1403548413','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3957','1403548431','1','admin','5','80','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3958','1403548431','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3959','1403548457','1','admin','27','79','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3960','1403548459','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3961','1403548461','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3962','1403548469','1','admin','79','27','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3963','1403548469','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3964','1403548491','1','admin','79','27','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3965','1403548491','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3966','1403548507','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3967','1403548556','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3968','1403548562','1','admin','22','23','New snippet','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3969','1403548573','1','admin','24','23','-','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3970','1403548573','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3971','1403548584','1','admin','22','23','New snippet','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3972','1403548586','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3973','1403548603','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3974','1403548619','1','admin','79','27','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3975','1403548619','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3976','1403548621','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3977','1403548626','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3978','1403548641','1','admin','5','80','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3979','1403548641','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3980','1403548658','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3981','1403548687','1','admin','5','80','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3982','1403548688','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3983','1403548695','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3984','1403548698','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3985','1403548705','1','admin','79','27','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3986','1403548705','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3987','1403548713','1','admin','79','27','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3988','1403548713','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3989','1403548723','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3990','1403548734','1','admin','5','80','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3991','1403548734','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3992','1403548742','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3993','1403548744','1','admin','94','80','-','Duplicate resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3994','1403548745','1','admin','3','81','Duplicate of Заголовок первой новости','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3995','1403548749','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3996','1403548751','1','admin','94','80','-','Duplicate resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3997','1403548752','1','admin','3','82','Duplicate of Заголовок первой новости','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3998','1403548757','1','admin','27','81','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('3999','1403548775','1','admin','5','81','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4000','1403548776','1','admin','3','81','Заголовок второй новости','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4001','1403548777','1','admin','27','82','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4002','1403548788','1','admin','5','82','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4003','1403548790','1','admin','3','82','Заголовок третьей новости','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4004','1403550406','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4005','1403550411','1','admin','16','20','Статьи','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4006','1403550442','1','admin','20','20','-','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4007','1403550442','1','admin','16','20','Статьи','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4008','1403550686','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4009','1403550690','1','admin','16','20','Статьи','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4010','1403550697','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4011','1403550708','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4012','1403550715','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4013','1403550728','1','admin','78','4','body','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4014','1403550735','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4015','1403550743','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4016','1403550751','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4017','1403550754','1','admin','78','20','rekl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4018','1403550872','1','admin','27','11','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4019','1403550879','1','admin','27','12','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4020','1403550880','1','admin','27','13','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4021','1403550882','1','admin','27','11','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4022','1403550937','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4023','1403550946','1','admin','78','20','rekl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4024','1403551125','1','admin','79','20','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4025','1403551125','1','admin','78','20','rekl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4026','1403551151','1','admin','79','20','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4027','1403551151','1','admin','78','20','rekl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4028','1403551402','1','admin','79','20','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4029','1403551402','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4030','1403551406','1','admin','78','27','news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4031','1403551408','1','admin','97','27','-','Duplicate Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4032','1403551408','1','admin','78','28','Duplicate of news_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4033','1403551423','1','admin','79','28','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4034','1403551423','1','admin','78','28','news_idx_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4035','1403551427','1','admin','79','28','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4036','1403551427','1','admin','78','28','news_idx_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4037','1403551539','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4038','1403551547','1','admin','78','20','rekl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4039','1403551626','1','admin','79','20','-','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4040','1403551626','1','admin','78','20','rekl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4041','1403766755','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4042','1403766770','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4043','1403766792','1','admin','27','29','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4044','1403766795','1','admin','27','30','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4045','1403766809','1','admin','5','30','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4046','1403766810','1','admin','3','30','Бухгалтерское сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4047','1403867169','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4048','1403867187','1','admin','27','79','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4049','1403867191','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4050','1403867435','1','admin','5','80','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4051','1403867436','1','admin','3','80','С  1 января 2015 года у физических лиц, сдающих жилые и не жилые помещения, принадлежащие им на праве собственности, появиться возможность вместо 13% НДФЛ  оплачивать другим налогом в размере 10%. ','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4052','1403867438','1','admin','27','82','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4053','1403867444','1','admin','5','82','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4054','1403867445','1','admin','27','81','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4055','1403867445','1','admin','3','82','Заголовок третьей новости','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4056','1403867447','1','admin','27','81','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4057','1403867451','1','admin','5','81','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4058','1403867452','1','admin','3','81','Заголовок второй новости','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4059','1404114386','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4060','1404114406','1','admin','27','12','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4061','1404114465','1','admin','5','12','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4062','1404114466','1','admin','3','12','Ближайший отчетный период','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4063','1404714947','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4064','1404714970','1','admin','27','15','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4065','1404715026','1','admin','5','15','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4066','1404715048','1','admin','3','15','Смена директора','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4067','1404715052','1','admin','27','17','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4068','1404715064','1','admin','5','17','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4069','1404715065','1','admin','3','17','Регистрация фирм ','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4070','1404715068','1','admin','27','18','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4071','1404715085','1','admin','5','18','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4072','1404715087','1','admin','3','18','Ликвидация ООО ','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4073','1404715087','1','admin','27','16','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4074','1404715106','1','admin','5','16','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4075','1404715107','1','admin','3','16','Смена паспортных данных ','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4076','1404715109','1','admin','27','19','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4077','1404715127','1','admin','5','19','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4078','1404715129','1','admin','3','19','Регистрация ИП ','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4079','1404715139','1','admin','27','66','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4080','1404715156','1','admin','5','66','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4081','1404715157','1','admin','3','66','Ликвидация ИП ','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4082','1404715157','1','admin','27','67','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4083','1404715173','1','admin','27','67','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4084','1404715186','1','admin','5','67','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4085','1404715187','1','admin','3','67','Получение выписки из ЕГРЮЛ ','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4086','1404715259','1','admin','27','12','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4087','1404741032','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4088','1404741045','1','admin','27','82','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4089','1404741046','1','admin','27','81','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4090','1404741359','1','admin','5','81','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4091','1404741360','1','admin','3','81','Рассматривает законопроект налоговых каникул с 0 % ставкой налога.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4092','1404741665','1','admin','27','81','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4093','1404890153','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4094','1404890162','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4095','1404890171','1','admin','27','41','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4096','1404890184','1','admin','27','43','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4097','1404890186','1','admin','27','42','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4098','1404890189','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4099','1404890201','1','admin','27','45','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4100','1404890203','1','admin','27','47','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4101','1404890204','1','admin','27','72','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4102','1404890208','1','admin','27','78','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4103','1404890211','1','admin','27','41','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4104','1404890212','1','admin','27','2','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4105','1404890233','1','admin','3','75','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4106','1404890235','1','admin','27','74','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4107','1404890237','1','admin','27','78','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4108','1404890239','1','admin','27','70','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4109','1404890240','1','admin','27','48','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4110','1404890241','1','admin','27','44','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4111','1404890243','1','admin','27','42','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4112','1404890249','1','admin','27','46','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4113','1404890252','1','admin','27','45','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4114','1404890259','1','admin','5','45','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4115','1404890261','1','admin','3','45','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4116','1406121615','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4117','1406121618','1','admin','27','65','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4118','1406121624','1','admin','27','82','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4119','1406121688','1','admin','5','82','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4120','1406121690','1','admin','3','82','Идет II квартал  сдачи отчетности.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4121','1406121715','1','admin','27','82','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4122','1408356552','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4123','1408356848','1','admin','27','23','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4124','1408356859','1','admin','27','13','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4125','1408356861','1','admin','27','12','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4126','1408356869','1','admin','27','77','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4127','1408356890','1','admin','4','-','-','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4128','1408357054','1','admin','5','-','-','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4129','1408357055','1','admin','3','83','В ближайшем будущем возможно не будет взиматься налог НДФЛ с продажи жилья. ','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4130','1408357106','1','admin','27','80','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4131','1408357113','1','admin','27','81','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4132','1408357170','1','admin','27','79','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4133','1408357172','1','admin','27','1','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4134','1408357180','1','admin','27','1','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4135','1408357184','1','admin','27','79','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4136','1408368349','1','admin','58','-','MODx','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4137','1408368352','1','admin','27','65','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4138','1408368357','1','admin','27','1','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4139','1408368364','1','admin','27','34','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4140','1408368366','1','admin','27','32','-','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4141','1409654271','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4142','1409654274','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4143','1409654279','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4144','1409654290','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4145','1409654341','1','admin','79','-','yandexMetrica','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4146','1409654341','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4147','1409654352','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4148','1409654354','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4149','1409654358','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4150','1409654369','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4151','1409654370','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4152','1409815318','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4153','1409815320','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4154','1409815328','1','admin','27','82','Идет II квартал  сдачи отчетности.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4155','1409818357','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4156','1409818550','1','admin','5','-','Информация по обособленному подразделению','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4157','1409818551','1','admin','3','84','Информация по обособленному подразделению','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4158','1409818587','1','admin','27','84','Информация по обособленному подразделению','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4159','1409818595','1','admin','5','84','Информация по обособленному подразделению','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4160','1409818596','1','admin','3','84','Информация по обособленному подразделению','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4161','1409818651','1','admin','27','84','Информация по обособленному подразделению','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4162','1409818665','1','admin','27','82','Идет II квартал  сдачи отчетности.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4163','1409818666','1','admin','27','84','Информация по обособленному подразделению','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4164','1409818673','1','admin','5','84','Информация по обособленному подразделению','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4165','1409818675','1','admin','3','84','Информация по обособленному подразделению','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4166','1409818686','1','admin','27','84','Информация по обособленному подразделению','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4167','1409818691','1','admin','5','84','Информация по обособленному подразделению','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4168','1409818692','1','admin','3','84','Информация по обособленному подразделению','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4169','1409818712','1','admin','27','84','Информация по обособленному подразделению','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4170','1409818720','1','admin','5','84','Информация по обособленному подразделению','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4171','1409818721','1','admin','3','84','Информация по обособленному подразделению','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4172','1410257147','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4173','1410257149','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4174','1410257195','1','admin','27','53','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4175','1410257220','1','admin','27','58','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4176','1410257224','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4177','1410257227','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4178','1410257246','1','admin','5','30','Бухгалтерское сопровождение фирм','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4179','1410257248','1','admin','3','30','Бухгалтерское сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4180','1410339301','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4181','1410339302','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4182','1410339337','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4183','1410339482','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4184','1410339500','1','admin','5','30','Бухгалтерское сопровождение фирм','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4185','1410339501','1','admin','3','30','Бухгалтерское сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4186','1410339511','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4187','1410339526','1','admin','5','30','Бухгалтерское сопровождение фирм','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4188','1410339528','1','admin','3','30','Бухгалтерское сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4189','1410437548','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4190','1410437550','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4191','1410437553','1','admin','27','20','карты оплаты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4192','1410437563','1','admin','27','12','Ближайший отчетный период','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4193','1410437623','1','admin','5','12','Ближайший отчетный период','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4194','1410437625','1','admin','3','12','Ближайший отчетный период','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4195','1410437644','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4196','1410437648','1','admin','27','13','Скидка 10% при повторном заказе нулевой отчетности!','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4197','1410437655','1','admin','5','13','Скидка 10% при повторном заказе нулевой отчетности!','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4198','1410437656','1','admin','3','13','Скидка 10% при повторном заказе нулевой отчетности!','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4199','1412170486','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4200','1412170487','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4201','1412170569','1','admin','27','31','Он-лайн выписка из ЕГРЮЛ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4202','1412170595','1','admin','5','31','Он-лайн выписка из ЕГРЮЛ','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4203','1412170597','1','admin','3','31','Он-лайн выписка из ЕГРЮЛ','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4204','1412170636','1','admin','27','79','Полезная информация','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4205','1412170640','1','admin','27','64','другие страницы','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4206','1412170643','1','admin','27','68','Подготовка деклараций','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4207','1415358983','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4208','1415358985','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4209','1415358993','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4210','1415359000','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4211','1415359004','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4212','1415359008','1','admin','27','79','Полезная информация','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4213','1415359012','1','admin','27','68','Подготовка деклараций','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4214','1415359020','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4215','1415359023','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4216','1415359030','1','admin','27','39','Картинки','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4217','1415359046','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4218','1416579995','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4219','1416579999','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4220','1416580003','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4221','1416580013','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4222','1416580021','1','admin','78','29','yandexMetrica','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4223','1416580053','1','admin','79','29','yandexMetrica','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4224','1416580054','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4225','1417091533','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4226','1417091534','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4227','1417091542','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4228','1417091600','1','admin','27','82','Идет II квартал  сдачи отчетности.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4229','1417091603','1','admin','27','82','Идет II квартал  сдачи отчетности.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4230','1417091619','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4231','1417091958','1','admin','5','-','Изменения налоговой ставки налога на имущество физических лиц.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4232','1417091960','1','admin','3','85','Изменения налоговой ставки налога на имущество физических лиц.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4233','1417092022','1','admin','27','85','Изменения налоговой ставки налога на имущество физических лиц.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4234','1417092034','1','admin','5','85','Изменение налоговой ставки налога на имущество физических лиц.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4235','1417092035','1','admin','3','85','Изменение налоговой ставки налога на имущество физических лиц.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4236','1417094254','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4237','1417094267','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4238','1417094302','1','admin','5','28','Нулевая отчетность','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4239','1417094303','1','admin','3','28','Нулевая отчетность','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4240','1417514295','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4241','1417514298','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4242','1417514322','1','admin','30','-','-','Saving settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4243','1417514334','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4244','1417514340','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4245','1417514343','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4246','1417514352','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4247','1417514367','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4248','1417514372','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4249','1417514377','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4250','1417514382','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4251','1417514806','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4252','1417515171','1','admin','5','3','Заказать','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4253','1417515172','1','admin','3','3','Заказать','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4254','1417516234','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4255','1417516248','1','admin','5','-','Услуги','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4256','1417516250','1','admin','3','86','Услуги','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4257','1417516255','1','admin','27','1','Главная','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4258','1417516259','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4259','1417516269','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4260','1417516280','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4261','1417516287','1','admin','5','86','Услуги','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4262','1417516289','1','admin','3','86','Услуги','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4263','1417538494','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4264','1417538515','1','admin','5','-','Первая услуга','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4265','1417538516','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4266','1417538531','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4267','1417538554','1','admin','5','-','Вторая услуга','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4268','1417538555','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4269','1417538574','1','admin','5','-','Третья услуга','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4270','1417538576','1','admin','3','89','Третья услуга','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4271','1417538603','1','admin','27','88','Вторая услуга','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4272','1417538606','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4273','1417543392','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4274','1417545307','1','admin','79','12','contacts','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4275','1417545307','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4276','1417545313','1','admin','22','12','if','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4277','1417545323','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4278','1417545328','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4279','1417545387','1','admin','79','-','menuRowTpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4280','1417545387','1','admin','78','30','menuRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4281','1417545411','1','admin','79','30','menuRowTpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4282','1417545412','1','admin','78','30','menuRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4283','1417545476','1','admin','79','30','menuRowTpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4284','1417545476','1','admin','78','30','menuRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4285','1417545503','1','admin','79','30','menuRowTpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4286','1417545503','1','admin','78','30','menuRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4287','1417545580','1','admin','79','30','menuRowTpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4288','1417545580','1','admin','78','30','menuRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4289','1417545597','1','admin','79','30','menuRowTpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4290','1417545597','1','admin','78','30','menuRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4291','1417545658','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4292','1417545670','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4293','1417545697','1','admin','79','12','contacts','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4294','1417545697','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4295','1417545706','1','admin','78','30','menuRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4296','1417545712','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4297','1417545714','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4298','1417545722','1','admin','79','-','menuParentRowTpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4299','1417545722','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4300','1417545725','1','admin','78','30','menuRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4301','1417545734','1','admin','79','30','menuRowTpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4302','1417545734','1','admin','78','30','menuRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4303','1417545769','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4304','1417545782','1','admin','5','86','Услуги','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4305','1417545783','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4306','1417545793','1','admin','5','86','Услуги','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4307','1417545794','1','admin','3','86','Услуги','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4308','1417545804','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4309','1417545807','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4310','1417545813','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4311','1417545820','1','admin','16','17','Внутренняя','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4312','1417545826','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4313','1417545828','1','admin','27','87','Первая услуга','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4314','1417545834','1','admin','27','87','Первая услуга','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4315','1417545836','1','admin','5','87','Первая услуга','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4316','1417545837','1','admin','3','87','Первая услуга','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4317','1417545844','1','admin','27','88','Вторая услуга','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4318','1417545850','1','admin','27','88','Вторая услуга','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4319','1417545852','1','admin','5','88','Вторая услуга','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4320','1417545853','1','admin','3','88','Вторая услуга','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4321','1417545854','1','admin','27','89','Третья услуга','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4322','1417545858','1','admin','27','89','Третья услуга','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4323','1417545860','1','admin','5','89','Третья услуга','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4324','1417545861','1','admin','3','89','Третья услуга','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4325','1417545863','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4326','1417550581','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4327','1417611816','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4328','1417611828','1','admin','27','87','Первая услуга','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4329','1417611858','1','admin','5','87','Бухгалтерcкое сопровождение фирм','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4330','1417611860','1','admin','3','87','Бухгалтерcкое сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4331','1417611896','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4332','1417611921','1','admin','27','58','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4333','1417611926','1','admin','27','59','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4334','1417611929','1','admin','27','60','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4335','1417611941','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4336','1417611944','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4337','1417611948','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4338','1417611954','1','admin','78','4','body','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4339','1417611959','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4340','1417611965','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4341','1417676314','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4342','1417676323','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4343','1417676370','1','admin','27','88','Вторая услуга','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4344','1417676389','1','admin','5','88','Бухгалтерское сопровождение ИП','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4345','1417676392','1','admin','3','88','Бухгалтерское сопровождение ИП','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4346','1417676393','1','admin','27','89','Третья услуга','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4347','1417676407','1','admin','5','89','Нулевая отчетность','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4348','1417676410','1','admin','3','89','Нулевая отчетность','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4349','1417676412','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4350','1417676424','1','admin','5','-','Подготовка деклараций 3-НДФЛ','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4351','1417676426','1','admin','3','90','Подготовка деклараций 3-НДФЛ','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4352','1417676648','1','admin','106','-','-','Viewing Modules');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4353','1417676650','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4354','1417676664','1','admin','78','31','menuParentRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4355','1417676733','1','admin','79','31','menuParentRowTpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4356','1417676733','1','admin','78','31','menuParentRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4357','1417676749','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4358','1417689975','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4359','1417689981','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4360','1417689989','1','admin','5','28','Нулевая отчетность','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4361','1417689991','1','admin','3','28','Нулевая отчетность','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4362','1417697987','1','admin','8','-','-','Logged out');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4363','1417697998','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4364','1417769557','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4365','1417769575','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4366','1417769728','1','admin','5','-','Получение справки по налогам, штрафам','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4367','1417769729','1','admin','3','91','Получение справки по налогам, штрафам','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4368','1417769758','1','admin','27','91','Получение справки по налогам, штрафам','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4369','1417769784','1','admin','5','91','Получение справки по налогам, штрафам','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4370','1417769785','1','admin','3','91','Получение справки по налогам, штрафам','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4371','1417769825','1','admin','27','91','Получение справки по налогам, штрафам','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4372','1417769841','1','admin','5','91','Получение справки по налогам, штрафам','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4373','1417769842','1','admin','3','91','Получение справки по налогам, штрафам','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4374','1417769927','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4375','1417769956','1','admin','27','91','Получение справки по налогам, штрафам','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4376','1417769962','1','admin','27','91','Получение справки по налогам, штрафам','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4377','1417769996','1','admin','5','91','Получение справки по налогам, штрафам','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4378','1417769999','1','admin','3','91','Получение справки по налогам, штрафам','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4379','1417771510','1','admin','27','87','Бухгалтерcкое сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4380','1417771526','1','admin','5','87','Бухгалтерcкое сопровождение фирм','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4381','1417771527','1','admin','3','87','Бухгалтерcкое сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4382','1417773264','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4383','1417773297','1','admin','27','87','Бухгалтерcкое сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4384','1417773318','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4385','1417773325','1','admin','5','86','Услуги','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4386','1417773325','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4387','1417773333','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4388','1417773372','1','admin','27','87','Бухгалтерcкое сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4389','1417773414','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4390','1417773458','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4391','1417773484','1','admin','5','86','Услуги','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4392','1417773486','1','admin','3','86','Услуги','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4393','1417773631','1','admin','27','87','Бухгалтерcкое сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4394','1417773638','1','admin','27','87','Бухгалтерcкое сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4395','1417773651','1','admin','27','88','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4396','1417773654','1','admin','27','87','Бухгалтерcкое сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4397','1417773706','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4398','1417773827','1','admin','3','30','Бухгалтерское сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4399','1417773903','1','admin','27','87','Бухгалтерcкое сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4400','1417773910','1','admin','6','87','Бухгалтерcкое сопровождение фирм','Deleting resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4401','1417773912','1','admin','3','86','Услуги','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4402','1417773926','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4403','1417773929','1','admin','3','30','Бухгалтерское сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4404','1417773931','1','admin','51','30','Бухгалтерское сопровождение фирм','Moving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4405','1417773936','1','admin','52','30','-','Moved resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4406','1417773941','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4407','1417773948','1','admin','5','30','Бухгалтерское сопровождение фирм','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4408','1417773950','1','admin','3','30','Бухгалтерское сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4409','1417773956','1','admin','64','-','-','Removing deleted content');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4410','1417773967','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4411','1417773974','1','admin','5','86','Услуги','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4412','1417773976','1','admin','3','86','Услуги','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4413','1417774018','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4414','1417774023','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4415','1417774092','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4416','1417774096','1','admin','5','30','Бухгалтерское сопровождение фирм','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4417','1417774097','1','admin','3','30','Бухгалтерское сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4418','1417774308','1','admin','27','88','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4419','1417774315','1','admin','6','88','Бухгалтерское сопровождение ИП','Deleting resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4420','1417774317','1','admin','3','86','Услуги','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4421','1417774319','1','admin','64','-','-','Removing deleted content');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4422','1417774323','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4423','1417774325','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4424','1417774330','1','admin','3','29','Бухгалтерское сопровождение ИП','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4425','1417774333','1','admin','51','29','Бухгалтерское сопровождение ИП','Moving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4426','1417774337','1','admin','52','29','-','Moved resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4427','1417774344','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4428','1417774351','1','admin','5','29','Бухгалтерское сопровождение ИП','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4429','1417774353','1','admin','3','29','Бухгалтерское сопровождение ИП','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4430','1417774380','1','admin','27','89','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4431','1417774384','1','admin','6','89','Нулевая отчетность','Deleting resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4432','1417774386','1','admin','3','86','Услуги','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4433','1417774390','1','admin','64','-','-','Removing deleted content');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4434','1417774394','1','admin','27','38','элементы страницы','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4435','1417774396','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4436','1417774398','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4437','1417774401','1','admin','3','28','Нулевая отчетность','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4438','1417774403','1','admin','51','28','Нулевая отчетность','Moving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4439','1417774407','1','admin','52','28','-','Moved resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4440','1417774411','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4441','1417774418','1','admin','5','28','Нулевая отчетность','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4442','1417774419','1','admin','3','28','Нулевая отчетность','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4443','1417774453','1','admin','27','68','Подготовка деклараций','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4444','1417774627','1','admin','27','90','Подготовка деклараций 3-НДФЛ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4445','1417774632','1','admin','6','90','Подготовка деклараций 3-НДФЛ','Deleting resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4446','1417774634','1','admin','3','86','Услуги','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4447','1417774636','1','admin','27','90','Подготовка деклараций 3-НДФЛ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4448','1417774642','1','admin','27','68','Подготовка деклараций','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4449','1417774650','1','admin','3','68','Подготовка деклараций','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4450','1417774653','1','admin','51','68','Подготовка деклараций','Moving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4451','1417774657','1','admin','52','68','-','Moved resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4452','1417774661','1','admin','27','68','Подготовка деклараций','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4453','1417774672','1','admin','5','68','Подготовка деклараций','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4454','1417774673','1','admin','3','68','Подготовка деклараций','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4455','1417774678','1','admin','64','-','-','Removing deleted content');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4456','1417787055','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4457','1417787073','1','admin','27','85','Изменение налоговой ставки налога на имущество физических лиц.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4458','1417787093','1','admin','5','85','Изменение налоговой ставки налога на имущество физических лиц.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4459','1417787095','1','admin','3','85','Изменение налоговой ставки налога на имущество физических лиц.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4460','1417787110','1','admin','27','85','Изменение налоговой ставки налога на имущество физических лиц.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4461','1417787146','1','admin','5','85','Изменение налоговой ставки налога на имущество физических лиц.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4462','1417787147','1','admin','3','85','Изменение налоговой ставки налога на имущество физических лиц.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4463','1417787279','1','admin','27','85','Изменение налоговой ставки налога на имущество физических лиц.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4464','1417787504','1','admin','5','85','Изменение налоговой ставки налога на имущество физических лиц.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4465','1417787506','1','admin','3','85','Изменение налоговой ставки налога на имущество физических лиц.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4466','1417787517','1','admin','27','85','Изменение налоговой ставки налога на имущество физических лиц.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4467','1417787548','1','admin','5','85','Изменение налоговой ставки налога на имущество физических лиц.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4468','1417787549','1','admin','3','85','Изменение налоговой ставки налога на имущество физических лиц.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4469','1417787558','1','admin','27','85','Изменение налоговой ставки налога на имущество физических лиц.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4470','1417787572','1','admin','5','85','Изменение налоговой ставки налога на имущество физических лиц.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4471','1417787573','1','admin','3','85','Изменение налоговой ставки налога на имущество физических лиц.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4472','1417787678','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4473','1417787782','1','admin','27','34','сайт недоступен','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4474','1417787787','1','admin','27','32','доступ запрещен','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4475','1417787798','1','admin','27','1','Главная','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4476','1417787801','1','admin','27','34','сайт недоступен','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4477','1417787802','1','admin','27','32','доступ запрещен','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4478','1417787826','1','admin','27','58','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4479','1417787833','1','admin','27','59','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4480','1417787838','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4481','1417787841','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4482','1417787864','1','admin','27','27','Платежи','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4483','1417787872','1','admin','27','39','Картинки','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4484','1417787886','1','admin','27','23','карта 3','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4485','1417787936','1','admin','27','31','Он-лайн выписка из ЕГРЮЛ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4486','1417787946','1','admin','27','65','Главное меню','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4487','1418298909','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4488','1418298927','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4489','1418298939','1','admin','5','30','Бухгалтерское сопровождение фирм','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4490','1418298941','1','admin','3','30','Бухгалтерское сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4491','1418899643','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4492','1418899667','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4493','1418899775','1','admin','5','-','Электронная подача отчетности','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4494','1418899776','1','admin','3','92','Электронная подача отчетности','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4495','1418899824','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4496','1418899877','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4497','1418900130','1','admin','5','92','Электронная подача отчетности','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4498','1418900131','1','admin','3','92','Электронная подача отчетности','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4499','1418900186','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4500','1418900201','1','admin','5','92','Электронная подача отчетности','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4501','1418900202','1','admin','3','92','Электронная подача отчетности','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4502','1418900208','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4503','1418900234','1','admin','5','92','Электронная подача отчетности','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4504','1418900235','1','admin','3','92','Электронная подача отчетности','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4505','1418900366','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4506','1418900369','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4507','1418900371','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4508','1418900373','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4509','1418900383','1','admin','27','75','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4510','1418900392','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4511','1418900405','1','admin','27','71','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4512','1418900408','1','admin','27','72','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4513','1418900413','1','admin','27','71','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4514','1418900415','1','admin','27','70','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4515','1418900429','1','admin','27','71','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4516','1418900438','1','admin','27','72','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4517','1418900465','1','admin','5','72','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4518','1418900466','1','admin','3','72','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4519','1418900495','1','admin','27','73','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4520','1418900499','1','admin','27','78','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4521','1418900505','1','admin','27','73','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4522','1418900518','1','admin','27','74','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4523','1418900540','1','admin','5','74','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4524','1418900542','1','admin','3','74','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4525','1418900555','1','admin','27','74','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4526','1418900578','1','admin','5','74','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4527','1418900579','1','admin','3','74','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4528','1419323737','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4529','1419323748','1','admin','27','27','Платежи','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4530','1419323757','1','admin','5','27','Платежи','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4531','1419323758','1','admin','3','27','Платежи','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4532','1421161714','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4533','1421161729','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4534','1421161735','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4535','1421161777','1','admin','27','1','Главная','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4536','1421161793','1','admin','27','38','элементы страницы','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4537','1421161798','1','admin','27','40','Тексты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4538','1421161809','1','admin','27','39','Картинки','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4539','1421161821','1','admin','27','20','карты оплаты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4540','1421161825','1','admin','27','23','карта 3','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4541','1421161841','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4542','1421161854','1','admin','5','4','Контакты','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4543','1421161855','1','admin','3','4','Контакты','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4544','1421161862','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4545','1421161866','1','admin','78','13','contacty','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4546','1421161869','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4547','1421161872','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4548','1421161913','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4549','1421161919','1','admin','22','18','getTV','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4550','1421161939','1','admin','27','1','Главная','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4551','1421161951','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4552','1421161957','1','admin','22','18','getTV','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4553','1421162094','1','admin','27','32','доступ запрещен','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4554','1421162138','1','admin','5','32','доступ запрещен','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4555','1421162140','1','admin','3','32','доступ запрещен','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4556','1421838663','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4557','1421838677','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4558','1421838702','1','admin','5','4','Контакты','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4559','1421838703','1','admin','3','4','Контакты','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4560','1421838710','1','admin','27','65','Главное меню','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4561','1421838719','1','admin','27','1','Главная','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4562','1422006147','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4563','1422006155','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4564','1422006178','1','admin','27','8','contact 1','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4565','1422006181','1','admin','27','9','contact 2','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4566','1422012634','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4567','1422012640','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4568','1422012646','1','admin','16','8','Контакты','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4569','1422012655','1','admin','20','8','Контакты','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4570','1422012655','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4571','1422883764','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4572','1422883770','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4573','1422883838','1','admin','5','-','Налоговые каникулы - это реальность!','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4574','1422883839','1','admin','3','93','Налоговые каникулы - это реальность!','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4575','1422979980','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4576','1422979988','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4577','1422980000','1','admin','27','79','Полезная информация','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4578','1422980002','1','admin','27','79','Полезная информация','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4579','1422980005','1','admin','27','82','Идет II квартал  сдачи отчетности.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4580','1422980014','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4581','1422980169','1','admin','5','-','Ежеквартальная сдача НДФЛ фирмами и ИП.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4582','1422980170','1','admin','3','94','Ежеквартальная сдача НДФЛ фирмами и ИП.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4583','1422980192','1','admin','27','94','Ежеквартальная сдача НДФЛ фирмами и ИП.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4584','1422980210','1','admin','5','94','Ежеквартальная сдача НДФЛ фирмами и ИП.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4585','1422980211','1','admin','3','94','Ежеквартальная сдача НДФЛ фирмами и ИП.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4586','1424248459','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4587','1424248475','1','admin','27','12','Ближайший отчетный период','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4588','1424248480','1','admin','5','12','Ближайший отчетный период','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4589','1424248481','1','admin','3','12','Ближайший отчетный период','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4590','1424248684','1','admin','27','6','Выписка из ЕГРЮЛ<br> от 300 рублей','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4591','1425627612','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4592','1425627624','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4593','1425627630','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4594','1425627635','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4595','1425627641','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4596','1425627660','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4597','1425627660','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4598','1425627662','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4599','1425627678','1','admin','79','-','LiveTex','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4600','1425627678','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4601','1426165483','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4602','1426165498','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4603','1426165620','1','admin','27','83','В ближайшем будущем возможно не будет взиматься налог НДФЛ с продажи жилья. ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4604','1426165623','1','admin','27','79','Полезная информация','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4605','1426165625','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4606','1426165730','1','admin','5','-','Виды деятельности для применения налоговых каникул.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4607','1426165731','1','admin','3','95','Виды деятельности для применения налоговых каникул.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4608','1426677362','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4609','1426677369','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4610','1426677375','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4611','1426677378','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4612','1426677379','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4613','1426677385','1','admin','27','71','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4614','1426677398','1','admin','5','71','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4615','1426677400','1','admin','3','71','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4616','1426767841','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4617','1426837630','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4618','1426837672','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4619','1426837686','1','admin','27','1','Главная','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4620','1426837695','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4621','1426837699','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4622','1426837717','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4623','1426837720','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4624','1426837723','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4625','1426837728','1','admin','78','20','rekl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4626','1426837761','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4627','1426837766','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4628','1426837781','1','admin','27','15','Смена директора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4629','1426840373','1','admin','27','15','Смена директора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4630','1426840413','1','admin','27','17','Регистрация фирм ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4631','1426840429','1','admin','27','18','Ликвидация ООО ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4632','1426840439','1','admin','27','16','Смена паспортных данных ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4633','1426840453','1','admin','27','19','Регистрация ИП ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4634','1426840471','1','admin','27','66','Ликвидация ИП ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4635','1426840480','1','admin','27','67','Получение выписки из ЕГРЮЛ ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4636','1426840679','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4637','1426840804','1','admin','27','15','Смена директора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4638','1426840971','1','admin','27','17','Регистрация фирм ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4639','1426841011','1','admin','27','18','Ликвидация ООО ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4640','1426841041','1','admin','27','16','Смена паспортных данных ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4641','1426841066','1','admin','27','19','Регистрация ИП ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4642','1426841102','1','admin','27','66','Ликвидация ИП ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4643','1426841144','1','admin','27','67','Получение выписки из ЕГРЮЛ ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4644','1426841358','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4645','1426841362','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4646','1426841413','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4647','1426841420','1','admin','22','18','getTV','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4648','1426841625','1','admin','27','39','Картинки','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4649','1426841778','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4650','1426841782','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4651','1426841867','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4652','1426841871','1','admin','78','8','column_img','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4653','1427383464','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4654','1427383474','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4655','1427384044','1','admin','5','92','Электронная подача отчетности','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4656','1427384045','1','admin','3','92','Электронная подача отчетности','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4657','1427384067','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4658','1427384108','1','admin','5','92','Электронная подача отчетности','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4659','1427384109','1','admin','3','92','Электронная подача отчетности','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4660','1427384115','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4661','1427384296','1','admin','5','92','Электронная подача отчетности','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4662','1427384297','1','admin','3','92','Электронная подача отчетности','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4663','1427384706','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4664','1427384745','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4665','1427384774','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4666','1427384790','1','admin','5','92','Электронная подача отчетности','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4667','1427384790','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4668','1427384835','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4669','1427384853','1','admin','5','92','Электронная подача отчетности','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4670','1427384853','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4671','1427384876','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4672','1427384886','1','admin','5','92','Электронная подача отчетности','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4673','1427384887','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4674','1428392880','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4675','1428393063','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4676','1428393257','1','admin','5','-','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4677','1428393258','1','admin','3','96','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4678','1428393260','1','admin','27','96','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4679','1428393557','1','admin','5','96','Блокировка счета при не сдачи отчетности в  срок.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4680','1428393558','1','admin','3','96','Блокировка счета при не сдачи отчетности в  срок.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4681','1428425026','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4682','1428425046','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4683','1428425058','1','admin','78','17','head','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4684','1428425061','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4685','1428425065','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4686','1428425073','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4687','1428425081','1','admin','78','18','header_old','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4688','1428425334','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4689','1429875235','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4690','1429875244','1','admin','27','23','карта 3','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4691','1429875257','1','admin','27','27','Платежи','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4692','1429875287','1','admin','5','27','Платежи','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4693','1429875288','1','admin','3','27','Платежи','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4694','1430404925','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4695','1430404927','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4696','1432112128','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4697','1432112148','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4698','1432112246','1','admin','5','4','Контакты','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4699','1432112246','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4700','1432112307','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4701','1432112324','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4702','1432112331','1','admin','75','-','-','User/ role management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4703','1432112396','1','admin','12','1','admin','Editing user');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4704','1432112475','1','admin','32','1','admin','Saving user');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4705','1432112479','1','admin','8','-','-','Logged out');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4706','1432112488','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4707','1432112495','1','admin','8','-','-','Logged out');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4708','1436190919','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4709','1436190933','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4710','1436190953','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4711','1436190957','1','admin','27','44','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4712','1436190961','1','admin','27','46','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4713','1436190962','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4714','1436190973','1','admin','27','70','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4715','1436190976','1','admin','27','72','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4716','1436190978','1','admin','27','73','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4717','1436190981','1','admin','27','75','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4718','1436190983','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4719','1436190988','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4720','1436190990','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4721','1436190990','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4722','1436191000','1','admin','27','75','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4723','1436195909','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4724','1436195940','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4725','1436195997','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4726','1436196094','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4727','1436196114','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4728','1436196121','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4729','1436196140','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4730','1436196150','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4731','1436196151','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4732','1436196153','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4733','1436196154','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4734','1436196155','1','admin','27','42','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4735','1436196157','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4736','1436196169','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4737','1436196173','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4738','1436196177','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4739','1436196181','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4740','1436196199','1','admin','27','44','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4741','1436196253','1','admin','27','42','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4742','1436196260','1','admin','27','44','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4743','1436196262','1','admin','27','46','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4744','1436196283','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4745','1436196310','1','admin','5','-','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4746','1436196311','1','admin','3','97','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4747','1436196327','1','admin','27','97','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4748','1436196333','1','admin','5','97','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4749','1436196335','1','admin','3','97','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4750','1436196349','1','admin','27','75','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4751','1436196352','1','admin','27','74','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4752','1436196354','1','admin','27','97','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4753','1436196362','1','admin','5','97','Электронная подача о применение/снятие торгового сбора','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4754','1436196364','1','admin','3','97','Электронная подача о применение/снятие торгового сбора','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4755','1436196374','1','admin','27','97','Электронная подача о применение/снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4756','1436196376','1','admin','5','97','Электронная подача о применение/снятие торгового сбора','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4757','1436196378','1','admin','3','97','Электронная подача о применение/снятие торгового сбора','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4758','1436196384','1','admin','27','97','Электронная подача о применение/снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4759','1436196389','1','admin','5','97','Электронная подача о применение/снятие торгового сбора','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4760','1436196391','1','admin','3','97','Электронная подача о применение/снятие торгового сбора','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4761','1436196396','1','admin','27','73','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4762','1436196400','1','admin','5','73','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4763','1436196401','1','admin','3','73','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4764','1436196402','1','admin','27','74','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4765','1436196406','1','admin','5','74','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4766','1436196407','1','admin','3','74','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4767','1436196408','1','admin','27','75','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4768','1436196411','1','admin','5','75','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4769','1436196413','1','admin','3','75','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4770','1436196421','1','admin','27','97','Электронная подача о применение/снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4771','1436196427','1','admin','5','97','Электронная подача о применение/снятие торгового сбора','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4772','1436196429','1','admin','3','97','Электронная подача о применение/снятие торгового сбора','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4773','1436196447','1','admin','27','97','Электронная подача о применение/снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4774','1436196456','1','admin','5','97','Электронная подача о применение / снятие торгового сбора','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4775','1436196457','1','admin','3','97','Электронная подача о применение / снятие торгового сбора','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4776','1436196490','1','admin','27','97','Электронная подача о применение / снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4777','1436196495','1','admin','5','97','Электронная подача о применение / снятие торгового сбора','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4778','1436196497','1','admin','3','97','Электронная подача о применение / снятие торгового сбора','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4779','1436260180','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4780','1436260207','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4781','1436260211','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4782','1436260394','1','admin','5','-','Торговый сбор','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4783','1436260396','1','admin','3','98','Торговый сбор','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4784','1436260438','1','admin','27','98','Торговый сбор','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4785','1436260529','1','admin','5','98','Торговый сбор','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4786','1436260530','1','admin','3','98','Торговый сбор','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4787','1436260865','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4788','1436260890','1','admin','27','97','Электронная подача о применение / снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4789','1436260908','1','admin','5','97','Электронная подача о применение / снятие торгового сбора','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4790','1436260909','1','admin','3','97','Электронная подача о применение / снятие торгового сбора','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4791','1436277518','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4792','1436277526','1','admin','27','98','Торговый сбор','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4793','1436277569','1','admin','5','98','Торговый сбор','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4794','1436277570','1','admin','3','98','Торговый сбор','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4795','1438606961','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4796','1438606967','1','admin','27','1','Главная','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4797','1440665908','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4798','1440665912','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4799','1440665915','1','admin','16','5','rekl','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4800','1440665916','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4801','1440665918','1','admin','16','11','snippets','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4802','1440665919','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4803','1440665919','1','admin','16','6','system','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4804','1440665922','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4805','1440665923','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4806','1440665925','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4807','1440665926','1','admin','16','17','Внутренняя','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4808','1440667518','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4809','1442155845','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4810','1442155849','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4811','1442163309','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4812','1442163321','1','admin','79','-','baner','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4813','1442163321','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4814','1442163326','1','admin','78','17','head','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4815','1442163356','1','admin','79','17','head','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4816','1442163356','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4817','1442164379','1','admin','78','3','adress','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4818','1442164381','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4819','1442164383','1','admin','16','5','rekl','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4820','1442164384','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4821','1442164385','1','admin','16','11','snippets','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4822','1442164387','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4823','1442164388','1','admin','16','6','system','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4824','1442166035','1','admin','20','6','system','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4825','1442166035','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4826','1442166037','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4827','1442166038','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4828','1442166040','1','admin','16','17','Внутренняя','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4829','1442166044','1','admin','20','17','Внутренняя','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4830','1442166045','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4831','1442166046','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4832','1442166052','1','admin','20','9','Главная','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4833','1442166052','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4834','1442166054','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4835','1442166059','1','admin','20','16','Заказать','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4836','1442166059','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4837','1442166060','1','admin','16','10','картинка','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4838','1442166062','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4839','1442166063','1','admin','16','12','Картинки страниц','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4840','1442166065','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4841','1442166066','1','admin','16','8','Контакты','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4842','1442166071','1','admin','20','8','Контакты','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4843','1442166071','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4844','1442166074','1','admin','16','19','Контакты1','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4845','1442166080','1','admin','20','19','Контакты1','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4846','1442166080','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4847','1442166081','1','admin','16','18','Слайды','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4848','1442166083','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4849','1442166084','1','admin','16','20','Статьи','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4850','1442166088','1','admin','20','20','Статьи','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4851','1442166088','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4852','1442166090','1','admin','16','15','Стоимость','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4853','1442166095','1','admin','20','15','Стоимость','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4854','1442166095','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4855','1442166097','1','admin','16','14','Таблицы','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4856','1442166099','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4857','1442166101','1','admin','16','13','Тексты страницы','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4858','1442166103','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4859','1442168961','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4860','1447917260','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4861','1447917476','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4862','1452699723','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4863','1452699773','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4864','1452699779','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4865','1452699784','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4866','1452699789','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4867','1452699800','1','admin','27','97','Электронная подача о применение / снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4868','1452717855','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4869','1452717878','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4870','1452717891','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4871','1452717919','1','admin','5','45','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4872','1452717922','1','admin','3','45','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4873','1452718148','1','admin','27','51','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4874','1452718178','1','admin','5','51','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4875','1452718180','1','admin','3','51','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4876','1452718196','1','admin','27','51','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4877','1452718197','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4878','1452718242','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4879','1452718264','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4880','1452718268','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4881','1452718382','1','admin','5','28','Нулевая отчетность','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4882','1452718382','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4883','1452718405','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4884','1452718557','1','admin','5','28','Нулевая отчетность','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4885','1452718557','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4886','1453281302','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4887','1453281310','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4888','1453281319','1','admin','5','-','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4889','1453281320','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4890','1453281330','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4891','1453281347','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4892','1453281351','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4893','1453281351','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4894','1453281669','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4895','1453281676','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4896','1453281677','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4897','1453281700','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4898','1453281744','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4899','1453281744','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4900','1453281781','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4901','1453281794','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4902','1453281794','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4903','1453281828','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4904','1453281836','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4905','1453281836','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4906','1453281881','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4907','1453281905','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4908','1453281905','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4909','1453281935','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4910','1453281973','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4911','1453281974','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4912','1453281990','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4913','1453282019','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4914','1453282019','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4915','1453282035','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4916','1453282191','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4917','1453282191','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4918','1453282240','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4919','1453282240','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4920','1453282265','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4921','1453282277','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4922','1453282277','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4923','1453282296','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4924','1453282349','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4925','1453282350','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4926','1453282376','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4927','1453282381','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4928','1453282381','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4929','1453384578','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4930','1453384586','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4931','1453384657','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4932','1453384785','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4933','1453384786','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4934','1453384824','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4935','1453384833','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4936','1453384833','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4937','1453384841','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4938','1453384842','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4939','1453460522','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4940','1453461574','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4941','1453461761','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4942','1453461814','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4943','1453461835','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4944','1453461836','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4945','1453461846','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4946','1453461847','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4947','1453461899','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4948','1453462042','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4949','1453462042','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4950','1453462064','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4951','1453462072','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4952','1453462072','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4953','1453462132','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4954','1453462133','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4955','1453462169','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4956','1453462262','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4957','1453462262','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4958','1453465107','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4959','1453465108','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4960','1453465161','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4961','1453465161','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4962','1453465219','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4963','1453465219','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4964','1453465235','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4965','1453465235','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4966','1453465255','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4967','1453465273','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4968','1453465273','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4969','1453465298','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4970','1453465298','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4971','1453465314','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4972','1453465314','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4973','1453467094','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4974','1453467095','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4975','1453467251','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4976','1453467283','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4977','1453467283','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4978','1453467381','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4979','1453467400','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4980','1453467400','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4981','1453467430','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4982','1453467430','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4983','1453467678','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4984','1453467678','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4985','1453467709','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4986','1453467709','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4987','1453467739','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4988','1453467771','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4989','1453467771','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4990','1453468455','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4991','1453468455','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4992','1453468490','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4993','1453468490','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4994','1453468523','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4995','1453468524','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4996','1453468544','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4997','1453468544','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4998','1453468559','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('4999','1453468570','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5000','1453468570','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5001','1453468585','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5002','1453468585','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5003','1453468661','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5004','1453468661','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5005','1453471179','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5006','1453471180','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5007','1453471194','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5008','1453471194','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5009','1453472929','1','admin','27','68','Подготовка деклараций','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5010','1453472930','1','admin','27','91','Получение справки по налогам, штрафам','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5011','1453472938','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5012','1453472941','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5013','1453473007','1','admin','5','-','Регистрация ООО «ПОД КЛЮЧ»','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5014','1453473007','1','admin','27','100','Регистрация ООО «ПОД КЛЮЧ»','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5015','1453473032','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5016','1453473034','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5017','1453473039','1','admin','27','100','Регистрация ООО «ПОД КЛЮЧ»','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5018','1453473042','1','admin','27','100','Регистрация ООО «ПОД КЛЮЧ»','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5019','1453473052','1','admin','5','100','Регистрация ООО «ПОД КЛЮЧ»','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5020','1453473052','1','admin','27','100','Регистрация ООО «ПОД КЛЮЧ»','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5021','1453473610','1','admin','6','100','Регистрация ООО «ПОД КЛЮЧ»','Deleting resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5022','1453473611','1','admin','3','86','Услуги','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5023','1453473613','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5024','1453473618','1','admin','64','-','-','Removing deleted content');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5025','1453744388','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5026','1453744397','1','admin','27','27','Платежи','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5027','1453744399','1','admin','27','64','другие страницы','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5028','1453744417','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5029','1453744592','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5030','1453744594','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5031','1453744700','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5032','1453744885','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5033','1453744887','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5034','1453744904','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5035','1453744931','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5036','1453744932','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5037','1453744985','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5038','1453745005','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5039','1453745006','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5040','1453745023','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5041','1453745349','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5042','1453745350','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5043','1453745889','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5044','1453745929','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5045','1453745931','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5046','1453746315','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5047','1453746347','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5048','1453746348','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5049','1453746672','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5050','1453746708','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5051','1453746709','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5052','1453746720','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5053','1453746761','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5054','1453746762','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5055','1453746802','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5056','1453746843','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5057','1453746844','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5058','1453746859','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5059','1453746870','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5060','1453746872','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5061','1453746938','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5062','1453746984','1','admin','5','99','Акция','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5063','1453746985','1','admin','3','99','Акция','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5064','1454331073','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5065','1454331097','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5066','1454331262','1','admin','5','-','С 2016 года появился новый ежеквартальный отчёт в налоговую инспекцию – 6 НДФЛ.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5067','1454331264','1','admin','3','101','С 2016 года появился новый ежеквартальный отчёт в налоговую инспекцию – 6 НДФЛ.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5068','1454331268','1','admin','27','101','С 2016 года появился новый ежеквартальный отчёт в налоговую инспекцию – 6 НДФЛ.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5069','1455093142','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5070','1455093157','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5071','1456306487','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5072','1456306509','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5073','1456306658','1','admin','5','-','Сплошное Федеральное статистическое наблюдение за деятельностью субъектов малого и среднего предпринимательства в 2016 году по итогам 2015 года.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5074','1456306660','1','admin','3','102','Сплошное Федеральное статистическое наблюдение за деятельностью субъектов малого и среднего предпринимательства в 2016 году по итогам 2015 года.','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5075','1457089368','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5076','1457089407','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5077','1465285781','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5078','1465285936','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5079','1465285964','1','admin','5','-','СЗВ-М сдают все компания без исключения!','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5080','1465285966','1','admin','3','103','СЗВ-М сдают все компания без исключения!','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5081','1465286081','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5082','1492417017','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5083','1496726447','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5084','1496726477','1','admin','27','65','Главное меню','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5085','1496726478','1','admin','27','1','Главная','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5086','1496726480','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5087','1496726484','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5088','1496726497','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5089','1496726506','1','admin','78','32','LiveTex','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5090','1496726515','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5091','1496726535','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5092','1496726540','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5093','1496726546','1','admin','78','17','head','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5094','1496726561','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5095','1496726569','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5096','1496726621','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5097','1496726640','1','admin','78','3','adress','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5098','1496726644','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5099','1496726646','1','admin','78','4','body','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5100','1496726650','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5101','1496726653','1','admin','78','5','column_card','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5102','1496726655','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5103','1496726658','1','admin','78','6','column_contact','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5104','1496726661','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5105','1496726665','1','admin','78','7','column_contact_footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5106','1496726667','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5107','1496726671','1','admin','78','8','column_img','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5108','1496726677','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5109','1496726683','1','admin','78','10','column_rekl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5110','1496726685','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5111','1496726691','1','admin','78','11','column_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5112','1496726697','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5113','1496726702','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5114','1496726713','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5115','1496726723','1','admin','78','18','header_old','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5116','1496726730','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5117','1496726736','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5118','1496726740','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5119','1496726747','1','admin','78','24','table','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5120','1496726751','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5121','1496726754','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5122','1496726760','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5123','1496726764','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5124','1496726776','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5125','1496726781','1','admin','27','1','Главная','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5126','1496726787','1','admin','27','32','доступ запрещен','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5127','1496726794','1','admin','27','34','сайт недоступен','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5128','1496726818','1','admin','27','31','Он-лайн выписка из ЕГРЮЛ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5129','1496726841','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5130','1496726857','1','admin','27','8','contact 1','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5131','1496726892','1','admin','5','8','contact 1','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5132','1496726895','1','admin','3','8','contact 1','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5133','1496726907','1','admin','62','9','contact 2','Un-publishing a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5134','1496726910','1','admin','3','4','Контакты','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5135','1496726962','1','admin','61','9','contact 2','Publishing a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5136','1496726964','1','admin','3','4','Контакты','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5137','1496726994','1','admin','62','9','contact 2','Un-publishing a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5138','1496726996','1','admin','3','4','Контакты','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5139','1496728056','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5140','1496728069','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5141','1496728091','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5142','1496728103','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5143','1496728112','1','admin','22','20','short_phone','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5144','1496728139','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5145','1496728157','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5146','1496728167','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5147','1496728174','1','admin','78','18','header_old','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5148','1496728236','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5149','1496728242','1','admin','78','4','body','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5150','1496728244','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5151','1496728252','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5152','1496728257','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5153','1496728274','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5154','1496728283','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5155','1496728288','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5156','1496728313','1','admin','79','12','contacts','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5157','1496728313','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5158','1496728323','1','admin','78','6','column_contact','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5159','1496728331','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5160','1496728346','1','admin','78','7','column_contact_footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5161','1496728357','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5162','1496728360','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5163','1496728376','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5164','1496728376','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5165','1496728392','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5166','1496728442','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5167','1496728442','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5168','1496728460','1','admin','78','6','column_contact','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5169','1496728464','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5170','1496728476','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5171','1496728494','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5172','1496728495','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5173','1496728622','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5174','1496728622','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5175','1496728662','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5176','1496728663','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5177','1496728768','1','admin','27','8','contact 1','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5178','1496728777','1','admin','27','9','contact 2','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5179','1496728779','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5180','1496728828','1','admin','5','4','Контакты','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5181','1496728830','1','admin','3','4','Контакты','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5182','1496728909','1','admin','27','65','Главное меню','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5183','1496728915','1','admin','27','1','Главная','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5184','1496728924','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5185','1496728965','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5186','1496728977','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5187','1496728986','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5188','1496728997','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5189','1496729007','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5190','1496729039','1','admin','5','3','Заказать','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5191','1496729041','1','admin','3','3','Заказать','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5192','1496729042','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5193','1496729047','1','admin','27','31','Он-лайн выписка из ЕГРЮЛ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5194','1496729055','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5195','1496729085','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5196','1496729095','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5197','1496729107','1','admin','27','58','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5198','1496729114','1','admin','27','59','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5199','1496729120','1','admin','27','60','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5200','1496729124','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5201','1496729162','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5202','1496729195','1','admin','27','68','Подготовка деклараций','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5203','1496729221','1','admin','27','91','Получение справки по налогам, штрафам','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5204','1496729231','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5205','1496729247','1','admin','27','98','Торговый сбор','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5206','1496729295','1','admin','5','98','Торговый сбор','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5207','1496729297','1','admin','3','98','Торговый сбор','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5208','1496729298','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5209','1496729306','1','admin','27','79','Полезная информация','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5210','1496729325','1','admin','27','82','Идет II квартал  сдачи отчетности.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5211','1496729338','1','admin','27','80','С  1 января 2015 года у физических лиц, сдающих жилые и не жилые помещения, принадлежащие им на праве собственности, появиться возможность вместо 13% НДФЛ  оплачивать другим налогом в размере 10%. ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5212','1496729346','1','admin','27','81','Рассматривает законопроект налоговых каникул с 0 % ставкой налога.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5213','1496729356','1','admin','27','83','В ближайшем будущем возможно не будет взиматься налог НДФЛ с продажи жилья. ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5214','1496729365','1','admin','27','84','Информация по обособленному подразделению','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5215','1496729377','1','admin','27','85','Изменение налоговой ставки налога на имущество физических лиц.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5216','1496729387','1','admin','27','93','Налоговые каникулы - это реальность!','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5217','1496729398','1','admin','27','94','Ежеквартальная сдача НДФЛ фирмами и ИП.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5218','1496729412','1','admin','27','95','Виды деятельности для применения налоговых каникул.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5219','1496729423','1','admin','27','96','Блокировка счета при не сдачи отчетности в  срок.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5220','1496729437','1','admin','27','101','С 2016 года появился новый ежеквартальный отчёт в налоговую инспекцию – 6 НДФЛ.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5221','1496729447','1','admin','27','102','Сплошное Федеральное статистическое наблюдение за деятельностью субъектов малого и среднего предпринимательства в 2016 году по итогам 2015 года.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5222','1496729474','1','admin','27','103','СЗВ-М сдают все компания без исключения!','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5223','1496729509','1','admin','27','64','другие страницы','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5224','1496729513','1','admin','27','27','Платежи','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5225','1496729536','1','admin','27','38','элементы страницы','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5226','1496729543','1','admin','27','39','Картинки','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5227','1496729552','1','admin','27','40','Тексты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5228','1496729561','1','admin','27','5','перечень слайдов','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5229','1496729567','1','admin','27','6','Выписка из ЕГРЮЛ<br> от 300 рублей','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5230','1496729572','1','admin','27','7','Подготовка нулевого отчета<br>пакет «Минимум» <br>от 900 рублей','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5231','1496729575','1','admin','27','76','Регистрация кассового аппарата<br> 8900 рублей','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5232','1496729579','1','admin','27','77','Регистрация обособленного<br> подразделения<br> 2500 рублей','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5233','1496729584','1','admin','27','10','реклама','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5234','1496729588','1','admin','27','11','Вам нужна срочная выписка?','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5235','1496729593','1','admin','27','12','Ближайший отчетный период','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5236','1496729596','1','admin','27','13','Скидка 10% при повторном заказе нулевой отчетности!','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5237','1496729602','1','admin','27','14','рулетка','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5238','1496729620','1','admin','27','15','Смена директора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5239','1496729634','1','admin','27','17','Регистрация фирм ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5240','1496729638','1','admin','27','18','Ликвидация ООО ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5241','1496729642','1','admin','27','20','карты оплаты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5242','1496729653','1','admin','27','23','карта 3','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5243','1496729658','1','admin','27','99','Акция','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5244','1496729905','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5245','1496729913','1','admin','78','17','head','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5246','1496729934','1','admin','79','17','head','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5247','1496729934','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5248','1496737904','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5249','1496737911','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5250','1496737915','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5251','1496737919','1','admin','78','18','header_old','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5252','1496737922','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5253','1496737925','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5254','1496737931','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5255','1496738207','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5256','1496738258','1','admin','79','26','header','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5257','1496738259','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5258','1496738318','1','admin','78','18','header_old','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5259','1496738322','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5260','1496738331','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5261','1496738335','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5262','1496738338','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5263','1496738340','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5264','1496738345','1','admin','78','23','map','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5265','1496738348','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5266','1496738357','1','admin','78','33','baner','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5267','1496812691','1','admin','78','33','baner','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5268','1496812692','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5269','1496819897','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5270','1496819905','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5271','1496819956','1','admin','20','9','Главная','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5272','1496819956','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5273','1496819962','1','admin','16','5','rekl','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5274','1496819964','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5275','1496819966','1','admin','16','11','snippets','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5276','1496819968','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5277','1496819970','1','admin','16','6','system','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5278','1496819983','1','admin','20','6','system','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5279','1496819984','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5280','1496820108','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5281','1496820111','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5282','1496820113','1','admin','16','17','Внутренняя','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5283','1496820125','1','admin','20','17','Внутренняя','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5284','1496820125','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5285','1496820128','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5286','1496820131','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5287','1496820133','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5288','1496820146','1','admin','20','16','Заказать','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5289','1496820146','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5290','1496820148','1','admin','16','10','картинка','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5291','1496820151','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5292','1496820153','1','admin','16','12','Картинки страниц','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5293','1496820154','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5294','1496820156','1','admin','16','8','Контакты','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5295','1496820178','1','admin','20','8','Контакты','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5296','1496820178','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5297','1496820180','1','admin','16','19','Контакты1','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5298','1496820192','1','admin','20','19','Контакты1','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5299','1496820192','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5300','1496820194','1','admin','16','18','Слайды','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5301','1496820196','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5302','1496820198','1','admin','16','20','Статьи','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5303','1496820209','1','admin','20','20','Статьи','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5304','1496820209','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5305','1496820212','1','admin','16','15','Стоимость','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5306','1496820220','1','admin','20','15','Стоимость','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5307','1496820220','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5308','1496820224','1','admin','16','14','Таблицы','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5309','1496820226','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5310','1496820228','1','admin','16','13','Тексты страницы','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5311','1496820229','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5312','1496820288','1','admin','78','13','contacty','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5313','1496820290','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5314','1496820294','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5315','1496820333','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5316','1496820338','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5317','1496821364','1','admin','79','26','header','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5318','1496821364','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5319','1496995107','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5320','1496995111','1','admin','78','32','LiveTex','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5321','1496995135','1','admin','79','32','LiveTex','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5322','1496995135','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5323','1496995146','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5324','1497633645','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5325','1498144310','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5326','1498144346','1','admin','27','65','Главное меню','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5327','1498144382','1','admin','27','64','другие страницы','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5328','1498144386','1','admin','27','1','Главная','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5329','1498144399','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5330','1498144417','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5331','1498144417','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5332','1498144418','1','admin','27','48','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5333','1498144429','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5334','1498144451','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5335','1498144461','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5336','1498144475','1','admin','5','41','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5337','1498144476','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5338','1498144477','1','admin','3','41','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5339','1498144481','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5340','1498144488','1','admin','27','42','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5341','1498144520','1','admin','5','42','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5342','1498144522','1','admin','3','42','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5343','1498144523','1','admin','27','44','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5344','1498144582','1','admin','5','44','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5345','1498144583','1','admin','3','44','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5346','1498144585','1','admin','27','47','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5347','1498144587','1','admin','27','46','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5348','1498144601','1','admin','27','47','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5349','1498144614','1','admin','27','69','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5350','1498144617','1','admin','27','70','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5351','1498144624','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5352','1498144681','1','admin','27','86','Услуги','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5353','1498144687','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5354','1498144818','1','admin','5','30','Бухгалтерское сопровождение фирм','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5355','1498144820','1','admin','3','30','Бухгалтерское сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5356','1498144823','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5357','1498144863','1','admin','5','29','Бухгалтерское сопровождение ИП','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5358','1498144865','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5359','1498144865','1','admin','3','29','Бухгалтерское сопровождение ИП','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5360','1498144871','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5361','1498144873','1','admin','27','68','Подготовка деклараций','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5362','1498144881','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5363','1498144910','1','admin','5','28','Нулевая отчетность','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5364','1498144913','1','admin','3','28','Нулевая отчетность','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5365','1498144914','1','admin','27','68','Подготовка деклараций','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5366','1498144924','1','admin','27','91','Получение справки по налогам, штрафам','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5367','1498144932','1','admin','27','92','Электронная подача отчетности','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5368','1498144971','1','admin','5','92','Электронная подача отчетности','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5369','1498144973','1','admin','3','92','Электронная подача отчетности','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5370','1498144973','1','admin','27','79','Полезная информация','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5371','1498145017','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5372','1498145029','1','admin','27','65','Главное меню','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5373','1498145058','1','admin','27','38','элементы страницы','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5374','1498145062','1','admin','27','5','перечень слайдов','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5375','1498145068','1','admin','27','14','рулетка','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5376','1498145116','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5377','1498145120','1','admin','27','74','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5378','1498145127','1','admin','27','73','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5379','1498145131','1','admin','27','97','Электронная подача о применение / снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5380','1498145137','1','admin','27','78','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5381','1498145144','1','admin','27','72','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5382','1498145157','1','admin','5','72','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5383','1498145158','1','admin','3','72','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5384','1498145216','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5385','1498145222','1','admin','27','53','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5386','1498145229','1','admin','27','54','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5387','1498145235','1','admin','27','55','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5388','1498145242','1','admin','27','56','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5389','1498145246','1','admin','27','56','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5390','1498145247','1','admin','27','57','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5391','1498145252','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5392','1498145271','1','admin','27','53','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5393','1498145277','1','admin','27','54','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5394','1498145284','1','admin','27','55','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5395','1498145290','1','admin','27','56','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5396','1498145294','1','admin','27','29','Бухгалтерское сопровождение ИП','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5397','1498145299','1','admin','27','58','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5398','1498145299','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5399','1498145310','1','admin','5','30','Бухгалтерское сопровождение фирм','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5400','1498145312','1','admin','3','30','Бухгалтерское сопровождение фирм','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5401','1498739570','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5402','1498739608','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5403','1498739623','1','admin','78','4','body','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5404','1498739633','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5405','1498739655','1','admin','16','5','rekl','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5406','1498739659','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5407','1498739660','1','admin','16','11','snippets','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5408','1498739663','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5409','1498739665','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5410','1498739668','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5411','1498739670','1','admin','16','17','Внутренняя','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5412','1498739710','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5413','1498739721','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5414','1498739747','1','admin','79','-','zadarma','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5415','1498739747','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5416','1498739752','1','admin','16','17','Внутренняя','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5417','1498739768','1','admin','20','17','Внутренняя','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5418','1498739768','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5419','1498739772','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5420','1498739783','1','admin','20','9','Главная','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5421','1498739783','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5422','1498739787','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5423','1498739797','1','admin','20','16','Заказать','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5424','1498739797','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5425','1498739815','1','admin','16','17','Внутренняя','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5426','1498739823','1','admin','20','17','Внутренняя','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5427','1498739823','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5428','1498739826','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5429','1498739831','1','admin','20','9','Главная','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5430','1498739831','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5431','1498739835','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5432','1498739843','1','admin','20','16','Заказать','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5433','1498739844','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5434','1498739847','1','admin','16','10','картинка','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5435','1498739851','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5436','1498739859','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5437','1498739868','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5438','1498739869','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5439','1498739873','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5440','1498739957','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5441','1498739983','1','admin','22','12','if','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5442','1498740025','1','admin','22','12','if','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5443','1498740030','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5444','1498740035','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5445','1498740074','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5446','1498740083','1','admin','78','17','head','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5447','1498740093','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5448','1498740113','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5449','1498740135','1','admin','79','26','header','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5450','1498740136','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5451','1498740231','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5452','1498740242','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5453','1498740254','1','admin','78','13','contacty','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5454','1498740257','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5455','1498740273','1','admin','78','17','head','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5456','1498740282','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5457','1498740298','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5458','1498740408','1','admin','97','12','Duplicate of contacts','Duplicate Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5459','1498740408','1','admin','78','35','Duplicate of contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5460','1498740455','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5461','1498740455','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5462','1498740476','1','admin','20','9','Главная','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5463','1498740477','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5464','1498740787','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5465','1498740794','1','admin','5','4','Контакты','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5466','1498740796','1','admin','3','4','Контакты','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5467','1498740804','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5468','1498740811','1','admin','27','79','Полезная информация','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5469','1498740815','1','admin','5','79','Полезная информация','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5470','1498740818','1','admin','3','79','Полезная информация','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5471','1498741969','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5472','1498742021','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5473','1498742032','1','admin','78','30','menuRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5474','1498742035','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5475','1498742037','1','admin','78','31','menuParentRowTpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5476','1498742042','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5477','1498742050','1','admin','78','13','contacty','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5478','1498742053','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5479','1498742057','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5480','1498742068','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5481','1498742078','1','admin','78','6','column_contact','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5482','1498742097','1','admin','27','8','contact 1','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5483','1498742109','1','admin','27','9','contact 2','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5484','1498742174','1','admin','5','9','contact 2','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5485','1498742176','1','admin','3','9','contact 2','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5486','1498742187','1','admin','61','9','contact 2','Publishing a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5487','1498742190','1','admin','3','4','Контакты','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5488','1498742213','1','admin','27','8','contact 1','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5489','1498742220','1','admin','27','9','contact 2','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5490','1498742256','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5491','1498742262','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5492','1498742266','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5493','1498742273','1','admin','78','6','column_contact','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5494','1498742285','1','admin','79','6','column_contact','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5495','1498742286','1','admin','78','6','column_contact','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5496','1498742311','1','admin','79','6','column_contact','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5497','1498742311','1','admin','78','6','column_contact','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5498','1498742316','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5499','1498742328','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5500','1498742335','1','admin','79','12','contacts','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5501','1498742336','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5502','1498742351','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5503','1498742420','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5504','1498742420','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5505','1498742455','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5506','1498742455','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5507','1498742570','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5508','1498742571','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5509','1498742593','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5510','1498742593','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5511','1498742635','1','admin','27','8','contact 1','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5512','1498742640','1','admin','5','8','contact 1','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5513','1498742641','1','admin','27','9','contact 2','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5514','1498742647','1','admin','5','9','contact 2','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5515','1498742649','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5516','1498742654','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5517','1498742701','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5518','1498742705','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5519','1498742719','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5520','1498742720','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5521','1498742736','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5522','1498742737','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5523','1498742870','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5524','1498742879','1','admin','78','6','column_contact','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5525','1498742903','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5526','1498743433','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5527','1498743433','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5528','1498743826','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5529','1498743833','1','admin','27','9','contact 2','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5530','1498743849','1','admin','5','9','contact 2','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5531','1498743850','1','admin','27','9','contact 2','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5532','1498743953','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5533','1498743953','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5534','1498745109','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5535','1498745110','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5536','1498745122','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5537','1498745129','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5538','1498745146','1','admin','79','12','contacts','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5539','1498745146','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5540','1498805822','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5541','1498805835','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5542','1498805842','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5543','1498805845','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5544','1498805848','1','admin','78','6','column_contact','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5545','1498806705','1','admin','79','6','column_contact','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5546','1498806706','1','admin','78','6','column_contact','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5547','1498806783','1','admin','79','6','column_contact','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5548','1498806783','1','admin','78','6','column_contact','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5549','1498806793','1','admin','27','8','contact 1','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5550','1498806843','1','admin','5','8','contact 1','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5551','1498806844','1','admin','27','8','contact 1','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5552','1498807045','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5553','1498807050','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5554','1498807306','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5555','1498807307','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5556','1498807479','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5557','1498807480','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5558','1498807568','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5559','1498807568','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5560','1498807600','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5561','1498807600','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5562','1498807677','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5563','1498807677','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5564','1498807877','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5565','1498807952','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5566','1498807959','1','admin','27','49','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5567','1498807969','1','admin','5','49','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5568','1498807971','1','admin','3','49','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5569','1498808007','1','admin','27','58','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5570','1498808014','1','admin','27','59','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5571','1498808016','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5572','1498808040','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5573','1498808045','1','admin','27','49','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5574','1498808053','1','admin','27','50','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5575','1498808057','1','admin','27','51','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5576','1498808082','1','admin','71','-','-','Searching');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5577','1498808086','1','admin','71','-','-','Searching');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5578','1498808095','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5579','1498808100','1','admin','27','49','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5580','1498808104','1','admin','27','50','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5581','1498808108','1','admin','27','51','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5582','1498808129','1','admin','27','7','Подготовка нулевого отчета<br>пакет «Минимум» <br>от 900 рублей','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5583','1498808239','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5584','1498808246','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5585','1498808269','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5586','1498808273','1','admin','78','4','body','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5587','1498808284','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5588','1498808290','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5589','1498808331','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5590','1498808347','1','admin','27','49','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5591','1498808353','1','admin','27','50','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5592','1498808357','1','admin','27','51','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5593','1498808407','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5594','1498808409','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5595','1498808415','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5596','1498808437','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5597','1498808531','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5598','1498808535','1','admin','27','49','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5599','1498809083','1','admin','71','-','-','Searching');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5600','1498809090','1','admin','71','-','-','Searching');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5601','1498809135','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5602','1498809140','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5603','1498809352','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5604','1498809357','1','admin','27','31','Он-лайн выписка из ЕГРЮЛ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5605','1498809405','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5606','1498809413','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5607','1498809695','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5608','1498809708','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5609','1498809721','1','admin','27','49','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5610','1498809735','1','admin','27','50','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5611','1498810234','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5612','1498810246','1','admin','301','9','Цена','Edit Template Variable');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5613','1498810292','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5614','1498810309','1','admin','27','49','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5615','1498810330','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5616','1498810335','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5617','1498810338','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5618','1498810341','1','admin','27','42','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5619','1498810346','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5620','1498810352','1','admin','27','31','Он-лайн выписка из ЕГРЮЛ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5621','1498810363','1','admin','27','58','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5622','1498810405','1','admin','27','5','перечень слайдов','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5623','1498810410','1','admin','27','6','Выписка из ЕГРЮЛ<br> от 300 рублей','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5624','1498810416','1','admin','27','7','Подготовка нулевого отчета<br>пакет «Минимум» <br>от 900 рублей','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5625','1498810431','1','admin','5','7','Подготовка нулевого отчета<br>пакет «Минимум» <br>от 900 рублей','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5626','1498810433','1','admin','3','7','Подготовка нулевого отчета<br>пакет «Минимум» <br>от 900 рублей','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5627','1498810505','1','admin','27','7','Подготовка нулевого отчета<br>пакет «Минимум» <br>от 900 рублей','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5628','1498810552','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5629','1498810612','1','admin','27','28','Нулевая отчетность','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5630','1498810631','1','admin','27','68','Подготовка деклараций','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5631','1498813619','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5632','1498813629','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5633','1498813726','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5634','1498935247','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5635','1498978965','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5636','1499023613','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5637','1499023621','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5638','1499023655','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5639','1499023739','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5640','1499024115','1','admin','17','-','-','Editing settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5641','1499024121','1','admin','30','-','-','Saving settings');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5642','1499024648','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5643','1499024655','1','admin','78','17','head','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5644','1499024663','1','admin','79','17','head','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5645','1499024663','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5646','1499027101','1','admin','78','4','body','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5647','1499027121','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5648','1499027126','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5649','1499027173','1','admin','24','19','items','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5650','1499027173','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5651','1499107980','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5652','1499107998','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5653','1499108020','1','admin','78','4','body','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5654','1499108022','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5655','1499108027','1','admin','78','8','column_img','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5656','1499108029','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5657','1499108031','1','admin','78','10','column_rekl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5658','1499108033','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5659','1499108036','1','admin','78','11','column_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5660','1499108040','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5661','1499108047','1','admin','78','18','header_old','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5662','1499108049','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5663','1499108081','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5664','1499108085','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5665','1499108101','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5666','1499108105','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5667','1499108110','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5668','1499108132','1','admin','79','26','header','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5669','1499108132','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5670','1499108151','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5671','1499139677','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5672','1499147343','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5673','1499147724','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5674','1499147914','1','admin','78','34','zadarma','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5675','1499147938','1','admin','79','34','zadarma','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5676','1499147938','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5677','1499147973','1','admin','78','32','LiveTex','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5678','1499147987','1','admin','79','32','LiveTex','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5679','1499147987','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5680','1499148021','1','admin','78','18','header_old','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5681','1499148024','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5682','1499150617','1','admin','16','18','Слайды','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5683','1499150629','1','admin','27','14','рулетка','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5684','1499150653','1','admin','27','6','Выписка из ЕГРЮЛ<br> от 300 рублей','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5685','1499150687','1','admin','27','15','Смена директора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5686','1499150705','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5687','1499150709','1','admin','16','10','картинка','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5688','1499150768','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5689','1499150786','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5690','1499150818','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5691','1499150823','1','admin','16','18','Слайды','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5692','1499150827','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5693','1499150830','1','admin','16','11','snippets','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5694','1499150832','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5695','1499150879','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5696','1499150968','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5697','1499151051','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5698','1499151067','1','admin','16','18','Слайды','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5699','1499151070','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5700','1499151073','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5701','1499151083','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5702','1499151098','1','admin','78','20','rekl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5703','1499151144','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5704','1499151147','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5705','1499152092','1','admin','79','19','logo_slaid','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5706','1499152092','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5707','1499152434','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5708','1499152995','1','admin','79','19','logo_slaid','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5709','1499152995','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5710','1499158974','1','admin','79','19','logo_slaid','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5711','1499158974','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5712','1499160791','1','admin','79','19','logo_slaid','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5713','1499160791','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5714','1499160795','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5715','1499160801','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5716','1499161464','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5717','1499161464','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5718','1499161583','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5719','1499161621','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5720','1499161622','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5721','1499165253','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5722','1499165311','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5723','1499165311','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5724','1499165681','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5725','1499165681','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5726','1499165937','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5727','1499165937','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5728','1499167679','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5729','1499167679','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5730','1499168171','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5731','1499168171','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5732','1499195995','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5733','1499196006','1','admin','31','-','-','Using file manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5734','1499196009','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5735','1499196019','1','admin','78','19','logo_slaid','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5736','1499196033','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5737','1499196037','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5738','1499197274','1','admin','106','-','-','Viewing Modules');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5739','1499197296','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5740','1499197302','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5741','1499197308','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5742','1499197310','1','admin','78','18','header_old','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5743','1499197323','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5744','1499197339','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5745','1499197347','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5746','1499197355','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5747','1499197361','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5748','1499197797','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5749','1499197799','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5750','1499197836','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5751','1499232817','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5752','1499232821','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5753','1499232909','1','admin','79','12','contacts','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5754','1499232909','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5755','1499232938','1','admin','78','26','header','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5756','1499232942','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5757','1499232948','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5758','1499232955','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5759','1499232955','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5760','1499234961','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5761','1499235105','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5762','1499235105','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5763','1499235257','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5764','1499235967','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5765','1499235967','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5766','1499236068','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5767','1499236068','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5768','1499237021','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5769','1499237021','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5770','1499238413','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5771','1499238413','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5772','1499242351','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5773','1499242351','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5774','1499244513','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5775','1499244513','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5776','1499250083','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5777','1499250083','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5778','1499250084','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5779','1499250088','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5780','1499250141','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5781','1499250141','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5782','1499258221','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5783','1499258270','1','admin','79','14','footer','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5784','1499258270','1','admin','78','14','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5785','1499317563','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5786','1499317568','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5787','1499317699','1','admin','79','12','contacts','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5788','1499317699','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5789','1499317912','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5790','1499317917','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5791','1499318367','1','admin','79','35','contacts_home','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5792','1499318367','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5793','1499318372','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5794','1499319624','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5795','1499319631','1','admin','78','35','contacts_home','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5796','1499319646','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5797','1499319650','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5798','1499319660','1','admin','79','12','contacts','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5799','1499319661','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5800','1499319873','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5801','1499319888','1','admin','5','-','O компании','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5802','1499319890','1','admin','3','104','O компании','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5803','1499319937','1','admin','27','104','O компании','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5804','1499319946','1','admin','5','104','O компании','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5805','1499319948','1','admin','3','104','O компании','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5806','1499319956','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5807','1499319963','1','admin','5','2','Прайс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5808','1499319964','1','admin','3','2','Прайс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5809','1499340608','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5810','1499340620','1','admin','27','4','Контакты','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5811','1499340649','1','admin','5','4','Контакты','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5812','1499340651','1','admin','3','4','Контакты','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5813','1499345083','1','admin','27','85','Изменение налоговой ставки налога на имущество физических лиц.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5814','1499345093','1','admin','27','85','Изменение налоговой ставки налога на имущество физических лиц.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5815','1499345218','1','admin','5','85','Изменение налоговой ставки налога на имущество физических лиц.','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5816','1499345218','1','admin','27','85','Изменение налоговой ставки налога на имущество физических лиц.','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5817','1499430449','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5818','1499430464','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5819','1499430498','1','admin','5','41','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5820','1499430499','1','admin','3','41','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5821','1499430499','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5822','1499430506','1','admin','5','43','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5823','1499430507','1','admin','3','43','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5824','1499430510','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5825','1499430514','1','admin','5','45','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5826','1499430515','1','admin','3','45','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5827','1499430516','1','admin','27','42','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5828','1499430524','1','admin','5','42','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5829','1499430526','1','admin','3','42','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5830','1499430528','1','admin','27','44','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5831','1499430537','1','admin','27','46','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5832','1499430543','1','admin','5','46','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5833','1499430544','1','admin','3','46','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5834','1499430548','1','admin','27','47','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5835','1499430555','1','admin','5','47','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5836','1499430556','1','admin','27','69','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5837','1499430563','1','admin','5','69','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5838','1499430564','1','admin','3','69','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5839','1499430566','1','admin','27','70','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5840','1499430572','1','admin','5','70','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5841','1499430574','1','admin','3','70','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5842','1499430575','1','admin','27','70','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5843','1499430578','1','admin','27','71','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5844','1499430583','1','admin','5','71','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5845','1499430584','1','admin','3','71','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5846','1499430587','1','admin','27','72','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5847','1499430592','1','admin','5','72','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5848','1499430593','1','admin','3','72','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5849','1499430596','1','admin','27','78','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5850','1499430601','1','admin','5','78','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5851','1499430602','1','admin','3','78','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5852','1499430603','1','admin','27','97','Электронная подача о применение / снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5853','1499430608','1','admin','5','97','Электронная подача о применение / снятие торгового сбора','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5854','1499430609','1','admin','3','97','Электронная подача о применение / снятие торгового сбора','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5855','1499430612','1','admin','27','73','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5856','1499430617','1','admin','5','73','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5857','1499430618','1','admin','3','73','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5858','1499430619','1','admin','27','74','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5859','1499430624','1','admin','5','74','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5860','1499430625','1','admin','3','74','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5861','1499430625','1','admin','27','75','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5862','1499430627','1','admin','27','75','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5863','1499430631','1','admin','5','75','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5864','1499430633','1','admin','3','75','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5865','1499430653','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5866','1499430658','1','admin','27','42','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5867','1499430667','1','admin','27','44','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5868','1499430671','1','admin','27','46','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5869','1499430680','1','admin','27','45','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5870','1499430684','1','admin','27','42','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5871','1499430703','1','admin','27','44','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5872','1499430706','1','admin','27','46','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5873','1499430746','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5874','1499430754','1','admin','27','58','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5875','1499430759','1','admin','27','59','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5876','1499430764','1','admin','27','60','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5877','1499430769','1','admin','27','30','Бухгалтерское сопровождение фирм','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5878','1499430862','1','admin','27','42','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5879','1499430866','1','admin','27','43','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5880','1499430870','1','admin','27','46','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5881','1499430883','1','admin','27','48','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5882','1499430898','1','admin','5','48','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5883','1499430899','1','admin','3','48','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5884','1499662935','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5885','1499662961','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5886','1499662990','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5887','1499663000','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5888','1499663053','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5889','1499663061','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5890','1499663074','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5891','1499663079','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5892','1499663117','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5893','1499663160','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5894','1499663191','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5895','1499663325','1','admin','78','3','adress','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5896','1499663327','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5897','1499663332','1','admin','78','4','body','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5898','1499663334','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5899','1499663337','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5900','1499663347','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5901','1499663350','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5902','1499663360','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5903','1499663382','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5904','1499663417','1','admin','27','31','Он-лайн выписка из ЕГРЮЛ','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5905','1499663438','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5906','1499663447','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5907','1499663465','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5908','1499663469','1','admin','16','8','Контакты','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5909','1499663479','1','admin','20','8','Контакты','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5910','1499663479','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5911','1499663520','1','admin','16','8','Контакты','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5912','1499664469','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5913','1499672536','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5914','1499672588','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5915','1499672589','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5916','1499672856','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5917','1499672974','1','admin','79','21','report_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5918','1499672974','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5919','1499673126','1','admin','79','21','report_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5920','1499673127','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5921','1499673465','1','admin','79','21','report_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5922','1499673465','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5923','1499675979','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5924','1499675982','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5925','1499675987','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5926','1499675995','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5927','1499675998','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5928','1499676201','1','admin','4','-','Новый ресурс','Creating a resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5929','1499676269','1','admin','5','-','спасибо','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5930','1499676270','1','admin','3','105','спасибо','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5931','1499676272','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5932','1499676304','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5933','1499676309','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5934','1499676313','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5935','1499676315','1','admin','5','105','спасибо','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5936','1499676316','1','admin','3','105','спасибо','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5937','1499676334','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5938','1499676342','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5939','1499676359','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5940','1499676359','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5941','1499676748','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5942','1499676752','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5943','1499676755','1','admin','78','12','contacts','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5944','1499676758','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5945','1499676768','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5946','1499676772','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5947','1499676786','1','admin','78','13','contacty','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5948','1499676789','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5949','1499676793','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5950','1499676829','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5951','1499676837','1','admin','78','13','contacty','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5952','1499676840','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5953','1499676846','1','admin','16','8','Контакты','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5954','1499676869','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5955','1499676872','1','admin','19','-','Новый шаблон','Creating a new template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5956','1499676894','1','admin','20','-','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5957','1499676894','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5958','1499676898','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5959','1499676908','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5960','1499676913','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5961','1499676919','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5962','1499676923','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5963','1499676938','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5964','1499676938','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5965','1499676940','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5966','1499676956','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5967','1499676962','1','admin','5','105','спасибо','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5968','1499676963','1','admin','3','105','спасибо','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5969','1499676977','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5970','1499676984','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5971','1499676986','1','admin','5','105','спасибо','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5972','1499676987','1','admin','3','105','спасибо','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5973','1499677068','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5974','1499677076','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5975','1499677093','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5976','1499677100','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5977','1499677217','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5978','1499677238','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5979','1499677257','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5980','1499677279','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5981','1499677306','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5982','1499677318','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5983','1499677325','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5984','1499677335','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5985','1499677343','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5986','1499677344','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5987','1499677396','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5988','1499677651','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5989','1499677662','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5990','1499677757','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5991','1499677757','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5992','1499679640','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5993','1499679643','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5994','1499679669','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5995','1499679669','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5996','1499679710','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5997','1499679710','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5998','1499679756','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('5999','1499679780','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6000','1499679785','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6001','1499679851','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6002','1499679861','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6003','1499679873','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6004','1499679873','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6005','1499680216','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6006','1499680221','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6007','1499683971','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6008','1499683996','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6009','1499683996','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6010','1499684005','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6011','1499684011','1','admin','79','21','report_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6012','1499684011','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6013','1499684019','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6014','1499684032','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6015','1499684032','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6016','1499684037','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6017','1499684041','1','admin','79','22','thank_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6018','1499684041','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6019','1499684068','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6020','1499684072','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6021','1499684252','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6022','1499684252','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6023','1499684313','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6024','1499684313','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6025','1499684385','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6026','1499684968','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6027','1499684975','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6028','1499684982','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6029','1499684995','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6030','1499684995','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6031','1499685025','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6032','1499685076','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6033','1499685079','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6034','1499685242','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6035','1499685247','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6036','1499685251','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6037','1499685255','1','admin','5','105','спасибо','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6038','1499685256','1','admin','3','105','спасибо','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6039','1499685257','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6040','1499685320','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6041','1499685320','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6042','1499685360','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6043','1499685382','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6044','1499685382','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6045','1499685466','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6046','1499685466','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6047','1499687085','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6048','1499687099','1','admin','5','105','спасибо','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6049','1499687100','1','admin','27','105','спасибо','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6050','1499687130','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6051','1499687130','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6052','1499687218','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6053','1499687222','1','admin','23','-','Новый сниппет','Creating a new Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6054','1499687270','1','admin','24','-','EmailOrPhone','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6055','1499687270','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6056','1499687279','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6057','1499687328','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6058','1499687328','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6059','1499687392','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6060','1499687400','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6061','1499687400','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6062','1499687404','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6063','1499687415','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6064','1499687422','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6065','1499687458','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6066','1499687525','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6067','1499687534','1','admin','22','24','EmailOrPhone','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6068','1499687837','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6069','1499687837','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6070','1499687888','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6071','1499687888','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6072','1499687893','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6073','1499687898','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6074','1499687947','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6075','1499687951','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6076','1499688002','1','admin','24','24','EmailOrPhone','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6077','1499688002','1','admin','22','24','EmailOrPhone','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6078','1499688019','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6079','1499688019','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6080','1499688068','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6081','1499688229','1','admin','22','24','EmailOrPhone','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6082','1499688236','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6083','1499688239','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6084','1499688309','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6085','1499688309','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6086','1499689241','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6087','1499689241','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6088','1499689353','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6089','1499689353','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6090','1499689383','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6091','1499689383','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6092','1499689413','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6093','1499689427','1','admin','22','24','EmailOrPhone','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6094','1499689487','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6095','1499689487','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6096','1499689748','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6097','1499689754','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6098','1499752495','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6099','1499752522','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6100','1499752567','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6101','1499752575','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6102','1499752583','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6103','1499752588','1','admin','16','15','Стоимость','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6104','1499752597','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6105','1499752603','1','admin','78','24','table','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6106','1499752622','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6107','1499752627','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6108','1499758650','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6109','1499758650','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6110','1499758666','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6111','1499758666','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6112','1499758852','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6113','1499758852','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6114','1499758893','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6115','1499758893','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6116','1499758911','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6117','1499758911','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6118','1499758991','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6119','1499758991','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6120','1499759059','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6121','1499759059','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6122','1499759311','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6123','1499759312','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6124','1499759357','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6125','1499759357','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6126','1499760033','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6127','1499760050','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6128','1499760447','1','admin','5','3','Заказать','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6129','1499760447','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6130','1499760475','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6131','1499766445','1','admin','5','3','Заказать','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6132','1499766449','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6133','1499766511','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6134','1499766522','1','admin','23','-','Новый сниппет','Creating a new Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6135','1499766632','1','admin','24','-','getID','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6136','1499766632','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6137','1499766641','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6138','1499766659','1','admin','20','7','zakaz','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6139','1499766659','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6140','1499766708','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6141','1499766754','1','admin','20','7','zakaz','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6142','1499766754','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6143','1499766785','1','admin','20','7','zakaz','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6144','1499766785','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6145','1499766791','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6146','1499766802','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6147','1499766813','1','admin','5','3','Заказать','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6148','1499766814','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6149','1499766860','1','admin','5','3','Заказать','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6150','1499766860','1','admin','27','3','Заказать','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6151','1499766884','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6152','1499766891','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6153','1499766896','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6154','1499766994','1','admin','16','11','snippets','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6155','1499766996','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6156','1499767008','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6157','1499767039','1','admin','20','16','Заказать','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6158','1499767039','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6159','1499771223','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6160','1499771230','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6161','1499771232','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6162','1499771238','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6163','1499771248','1','admin','22','24','EmailOrPhone','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6164','1499771254','1','admin','24','24','EmailOrPhone','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6165','1499771254','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6166','1499779729','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6167','1499779742','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6168','1499779750','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6169','1499779785','1','admin','24','25','getID','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6170','1499779785','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6171','1499779798','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6172','1499779801','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6173','1499779822','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6174','1499779867','1','admin','24','25','getID','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6175','1499779867','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6176','1499779885','1','admin','24','25','getID','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6177','1499779885','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6178','1499779927','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6179','1499779932','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6180','1499779936','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6181','1499779939','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6182','1499780253','1','admin','24','25','getID','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6183','1499780253','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6184','1499780319','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6185','1499780323','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6186','1499780326','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6187','1499780330','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6188','1499780339','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6189','1499780341','1','admin','16','7','zakaz','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6190','1499780346','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6191','1499780348','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6192','1499780360','1','admin','20','16','Заказать','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6193','1499780360','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6194','1499780362','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6195','1499780367','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6196','1499780370','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6197','1499780379','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6198','1499780407','1','admin','79','21','report_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6199','1499780407','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6200','1499780522','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6201','1499780524','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6202','1499780527','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6203','1499780529','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6204','1499780579','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6205','1499780579','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6206','1499780604','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6207','1499780736','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6208','1499780736','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6209','1499780758','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6210','1499780758','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6211','1499780786','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6212','1499780786','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6213','1499780860','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6214','1499780860','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6215','1499780873','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6216','1499780873','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6217','1499780885','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6218','1499780892','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6219','1499780982','1','admin','79','21','report_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6220','1499780982','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6221','1499781136','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6222','1499781136','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6223','1499781217','1','admin','79','21','report_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6224','1499781217','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6225','1499781218','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6226','1499781221','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6227','1499781246','1','admin','24','25','getID','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6228','1499781246','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6229','1499781302','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6230','1499781307','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6231','1499781311','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6232','1499781314','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6233','1499781336','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6234','1499781338','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6235','1499781353','1','admin','79','21','report_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6236','1499781353','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6237','1499781609','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6238','1499781609','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6239','1499781697','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6240','1499781697','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6241','1499781734','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6242','1499781734','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6243','1499781759','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6244','1499781759','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6245','1499781833','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6246','1499781833','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6247','1499782017','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6248','1499782017','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6249','1499835499','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6250','1499835569','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6251','1499836396','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6252','1499836972','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6253','1499836972','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6254','1499837079','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6255','1499837080','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6256','1499837124','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6257','1499837135','1','admin','78','24','table','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6258','1499837146','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6259','1499837160','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6260','1499837170','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6261','1499837174','1','admin','16','14','Таблицы','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6262','1499837177','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6263','1499837196','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6264','1499837225','1','admin','20','16','Заказать','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6265','1499837225','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6266','1499837319','1','admin','20','16','Заказать','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6267','1499837319','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6268','1499837321','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6269','1499837349','1','admin','16','16','Заказать','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6270','1499837363','1','admin','27','2','Прайс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6271','1499837368','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6272','1499837371','1','admin','16','20','Статьи','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6273','1499837387','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6274','1499837390','1','admin','16','15','Стоимость','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6275','1499837400','1','admin','20','15','Стоимость','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6276','1499837400','1','admin','16','15','Стоимость','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6277','1499837435','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6278','1499837435','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6279','1499837457','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6280','1499837457','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6281','1499837512','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6282','1499837512','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6283','1499837535','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6284','1499837535','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6285','1499837551','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6286','1499837551','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6287','1499837776','1','admin','27','42','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6288','1499837784','1','admin','27','44','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6289','1499837791','1','admin','27','46','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6290','1499837795','1','admin','27','48','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6291','1499837823','1','admin','27','47','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6292','1499837902','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6293','1499837902','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6294','1499837952','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6295','1499837952','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6296','1499838127','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6297','1499838127','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6298','1499838772','1','admin','27','69','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6299','1499838850','1','admin','5','69','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6300','1499838850','1','admin','27','69','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6301','1499838872','1','admin','5','69','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6302','1499838872','1','admin','27','69','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6303','1499838901','1','admin','5','69','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6304','1499838901','1','admin','27','69','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6305','1499839122','1','admin','27','97','Электронная подача о применение / снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6306','1499839139','1','admin','27','41','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6307','1499839217','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6308','1499839217','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6309','1499839252','1','admin','27','75','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6310','1499839270','1','admin','27','73','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6311','1499839288','1','admin','27','97','Электронная подача о применение / снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6312','1499839298','1','admin','27','73','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6313','1499839316','1','admin','27','97','Электронная подача о применение / снятие торгового сбора','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6314','1499839321','1','admin','27','78','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6315','1499839325','1','admin','27','74','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6316','1499839515','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6317','1499839515','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6318','1499839754','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6319','1499839754','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6320','1499840387','1','admin','27','48','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6321','1499840406','1','admin','27','69','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6322','1499840412','1','admin','27','70','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6323','1499840453','1','admin','5','70','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6324','1499840454','1','admin','3','70','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6325','1499840469','1','admin','27','71','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6326','1499840498','1','admin','27','72','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6327','1499840533','1','admin','27','78','Новый ресурс','Editing resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6328','1499840541','1','admin','5','78','Новый ресурс','Saving resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6329','1499840542','1','admin','3','78','Новый ресурс','Viewing data for resource');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6330','1499840580','1','admin','24','22','getTable','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6331','1499840580','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6332','1499840585','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6333','1499840589','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6334','1499840836','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6335','1499840848','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6336','1499840886','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6337','1499840886','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6338','1499840933','1','admin','24','25','getID','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6339','1499840933','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6340','1499841031','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6341','1499841036','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6342','1499841137','1','admin','24','25','getID','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6343','1499841137','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6344','1499841151','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6345','1499841151','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6346','1499841182','1','admin','24','25','getID','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6347','1499841182','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6348','1499841238','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6349','1499841243','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6350','1499841247','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6351','1499841248','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6352','1499841259','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6353','1499841262','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6354','1499841330','1','admin','79','21','report_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6355','1499841330','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6356','1499841503','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6357','1499841512','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6358','1499841512','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6359','1499841587','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6360','1499841735','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6361','1499841735','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6362','1499841773','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6363','1499841773','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6364','1499846353','1','admin','24','25','getID','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6365','1499846353','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6366','1499847468','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6367','1499847497','1','admin','16','9','Главная','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6368','1499847509','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6369','1499847522','1','admin','78','4','body','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6370','1499847532','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6371','1499847544','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6372','1499847761','1','admin','24','19','items','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6373','1499847761','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6374','1499847833','1','admin','24','19','items','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6375','1499847833','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6376','1499847950','1','admin','24','19','items','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6377','1499847950','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6378','1499848044','1','admin','24','19','items','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6379','1499848045','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6380','1499848079','1','admin','24','19','items','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6381','1499848079','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6382','1499848106','1','admin','24','19','items','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6383','1499848106','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6384','1499848144','1','admin','24','19','items','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6385','1499848144','1','admin','22','19','items','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6386','1499848196','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6387','1499848550','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6388','1499848575','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6389','1499848578','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6390','1499848595','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6391','1499848595','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6392','1499848656','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6393','1499848662','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6394','1499848662','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6395','1499848666','1','admin','78','21','report_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6396','1499848674','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6397','1499848676','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6398','1499848750','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6399','1499848756','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6400','1499852430','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6401','1499852430','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6402','1499852750','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6403','1499852750','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6404','1499852828','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6405','1499852828','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6406','1499852869','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6407','1499852869','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6408','1499852885','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6409','1499852979','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6410','1499852980','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6411','1499942095','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6412','1499947238','1','admin','58','-','MODX','Logged in');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6413','1499947248','1','admin','93','-','-','Backup Manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6414','1499947285','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6415','1499947290','1','admin','22','25','getID','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6416','1499947300','1','admin','24','25','getID','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6417','1499947300','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6418','1499947318','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6419','1499947336','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6420','1499947336','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6421','1499948843','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6422','1499949493','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6423','1499949614','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6424','1499949620','1','admin','23','-','Новый сниппет','Creating a new Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6425','1499951150','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6426','1499951150','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6427','1499951172','1','admin','24','-','sanks','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6428','1499951172','1','admin','22','26','sanks','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6429','1499951212','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6430','1499951212','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6431','1499951231','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6432','1499951237','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6433','1499951243','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6434','1499951286','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6435','1499951286','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6436','1499951294','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6437','1499951350','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6438','1499951350','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6439','1499951383','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6440','1499951383','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6441','1499951396','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6442','1499951396','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6443','1499951538','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6444','1499951538','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6445','1499951564','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6446','1499951564','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6447','1499951628','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6448','1499951628','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6449','1499951716','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6450','1499951716','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6451','1499951755','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6452','1499951755','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6453','1499951802','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6454','1499951802','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6455','1499951836','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6456','1499951836','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6457','1499951945','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6458','1499951945','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6459','1499953746','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6460','1499953747','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6461','1499953760','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6462','1499953763','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6463','1499953768','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6464','1499953768','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6465','1499953885','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6466','1499953885','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6467','1499953979','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6468','1499953979','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6469','1499954377','1','admin','22','10','eForm','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6470','1500008525','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6471','1500008532','1','admin','23','-','Новый сниппет','Creating a new Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6472','1500008553','1','admin','24','-','eFormFunctions','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6473','1500008553','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6474','1500008559','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6475','1500008599','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6476','1500008599','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6477','1500008629','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6478','1500008629','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6479','1500008653','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6480','1500008667','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6481','1500008669','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6482','1500008697','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6483','1500008699','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6484','1500008722','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6485','1500008722','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6486','1500008767','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6487','1500008785','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6488','1500008785','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6489','1500008836','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6490','1500008836','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6491','1500008957','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6492','1500008957','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6493','1500008971','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6494','1500008971','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6495','1500009342','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6496','1500009349','1','admin','22','27','eFormFunctions','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6497','1500009589','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6498','1500009590','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6499','1500012403','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6500','1500012425','1','admin','23','-','Новый сниппет','Creating a new Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6501','1500012441','1','admin','24','-','str1','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6502','1500012441','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6503','1500012446','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6504','1500012499','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6505','1500012501','1','admin','22','21','delete_item','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6506','1500012504','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6507','1500012519','1','admin','22','21','delete_item','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6508','1500012521','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6509','1500012528','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6510','1500012533','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6511','1500012535','1','admin','22','18','getTV','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6512','1500012538','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6513','1500012543','1','admin','22','20','short_phone','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6514','1500012552','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6515','1500012556','1','admin','22','23','SubStr','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6516','1500012558','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6517','1500012561','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6518','1500012571','1','admin','78','17','head','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6519','1500012618','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6520','1500012621','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6521','1500012709','1','admin','24','28','str1','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6522','1500012709','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6523','1500012713','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6524','1500012725','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6525','1500012725','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6526','1500012780','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6527','1500012792','1','admin','24','28','str1','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6528','1500012792','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6529','1500012829','1','admin','23','-','Новый сниппет','Creating a new Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6530','1500012848','1','admin','24','-','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6531','1500012848','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6532','1500012851','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6533','1500012860','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6534','1500012860','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6535','1500012881','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6536','1500012887','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6537','1500012889','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6538','1500012894','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6539','1500012894','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6540','1500012998','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6541','1500012998','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6542','1500013001','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6543','1500013010','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6544','1500013027','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6545','1500013027','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6546','1500013468','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6547','1500013474','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6548','1500013476','1','admin','78','22','thank_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6549','1500013480','1','admin','79','22','thank_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6550','1500013480','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6551','1500013518','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6552','1500013525','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6553','1500013525','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6554','1500013545','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6555','1500013614','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6556','1500013620','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6557','1500013620','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6558','1500013670','1','admin','24','28','str1','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6559','1500013670','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6560','1500013673','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6561','1500013683','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6562','1500013689','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6563','1500013689','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6564','1500013745','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6565','1500013753','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6566','1500013763','1','admin','24','28','str1','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6567','1500013763','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6568','1500013784','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6569','1500013793','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6570','1500013793','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6571','1500015103','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6572','1500015111','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6573','1500015111','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6574','1500015116','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6575','1500015164','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6576','1500015165','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6577','1500015182','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6578','1500015197','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6579','1500015201','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6580','1500015283','1','admin','24','28','str1','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6581','1500015283','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6582','1500015286','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6583','1500015294','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6584','1500015296','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6585','1500015379','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6586','1500015379','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6587','1500015450','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6588','1500015476','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6589','1500015479','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6590','1500015496','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6591','1500015496','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6592','1500015561','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6593','1500015600','1','admin','24','28','str1','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6594','1500015600','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6595','1500015604','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6596','1500015616','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6597','1500015616','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6598','1500015650','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6599','1500015675','1','admin','24','28','str1','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6600','1500015675','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6601','1500015678','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6602','1500015753','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6603','1500015753','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6604','1500015780','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6605','1500015789','1','admin','24','28','str1','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6606','1500015789','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6607','1500015793','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6608','1500015810','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6609','1500015810','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6610','1500015823','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6611','1500015858','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6612','1500015859','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6613','1500015870','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6614','1500015897','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6615','1500015899','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6616','1500015923','1','admin','24','28','str1','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6617','1500015923','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6618','1500015959','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6619','1500015969','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6620','1500015969','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6621','1500016010','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6622','1500016010','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6623','1500016021','1','admin','22','28','str1','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6624','1500016043','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6625','1500016058','1','admin','24','28','str1','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6626','1500016058','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6627','1500016064','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6628','1500016151','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6629','1500016151','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6630','1500016174','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6631','1500016195','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6632','1500016195','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6633','1500016196','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6634','1500016201','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6635','1500016326','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6636','1500016334','1','admin','22','22','getTable','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6637','1500016585','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6638','1500016585','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6639','1500016627','1','admin','24','29','str2','Saving Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6640','1500016627','1','admin','22','29','str2','Editing Snippet');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6641','1500018692','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6642','1500018696','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6643','1500020973','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6644','1500020973','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6645','1500021021','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6646','1500021022','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6647','1500021126','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6648','1500021126','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6649','1500021197','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6650','1500021197','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6651','1500021231','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6652','1500021231','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6653','1500021244','1','admin','20','21','spasibo','Saving template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6654','1500021244','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6655','1500021424','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6656','1500021430','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6657','1500021457','1','admin','79','15','form','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6658','1500021457','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6659','1500021507','1','admin','78','15','form','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6660','1500021523','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6661','1500021530','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6662','1500021554','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6663','1500021554','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6664','1500021738','1','admin','93','-','-','Backup Manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6665','1500021757','1','admin','16','21','spasibo','Editing template');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6666','1500021761','1','admin','93','-','-','Backup Manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6667','1500021812','1','admin','93','-','-','Backup Manager');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6668','1500023486','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6669','1500031290','1','admin','26','-','-','Refreshing site');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6670','1500035553','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6671','1500035572','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6672','1500035619','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6673','1500035619','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6674','1500035661','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6675','1500035665','1','admin','79','16','form_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6676','1500035665','1','admin','76','-','-','Element management');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6677','1500035668','1','admin','78','16','form_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `srv37029_ufregru_manager_log` VALUES ('6678','1500041160','1','admin','93','-','-','Backup Manager');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_manager_users`
#

DROP TABLE IF EXISTS `srv37029_ufregru_manager_users`;
CREATE TABLE `srv37029_ufregru_manager_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

#
# Dumping data for table `srv37029_ufregru_manager_users`
#

INSERT INTO `srv37029_ufregru_manager_users` VALUES ('1','admin','uncrypt>b88447d8857b86ad48bade59f665d65909f30671');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_member_groups`
#

DROP TABLE IF EXISTS `srv37029_ufregru_member_groups`;
CREATE TABLE `srv37029_ufregru_member_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_member` (`user_group`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `srv37029_ufregru_member_groups`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_membergroup_access`
#

DROP TABLE IF EXISTS `srv37029_ufregru_membergroup_access`;
CREATE TABLE `srv37029_ufregru_membergroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `srv37029_ufregru_membergroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_membergroup_names`
#

DROP TABLE IF EXISTS `srv37029_ufregru_membergroup_names`;
CREATE TABLE `srv37029_ufregru_membergroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `srv37029_ufregru_membergroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_content`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_content`;
CREATE TABLE `srv37029_ufregru_site_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  KEY `typeidx` (`type`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

#
# Dumping data for table `srv37029_ufregru_site_content`
#

INSERT INTO `srv37029_ufregru_site_content` VALUES ('1','document','text/html','Главная','Бухгалтерские услуги','','buxgalterskie-uslugi','','1','0','0','65','1','','','1','9','0','1','1','1','1130304721','1','1396864152','0','0','0','1130304721','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('2','document','text/html','Прайс','','','prajs','','1','0','0','65','1','','<p><span style=\"color: #057ec8;\"><strong>Что понимается под одной операцией?</strong></span></p>\n<p>- до 10 проводок по банку в день;</p>\n<p>- закрывающие документы (акт, счет &ndash; фактура, товарная накладная и прочее);</p>\n<p>- выписка из банка за один календарный день;</p>\n<p>- z &ndash; отчет.</p>\n<p><span style=\"color: #057ec8;\">Прайс- лист</span></p>\n<p></p>\n<p></p>','1','15','2','1','0','1','1393912570','1','1499319963','0','0','0','1393912570','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('3','document','text/html','Заказать','','','zakazat','','1','0','0','65','1','','<p>Как заказать наши услуги</p>\n<ul>\n<li>Мы работаем с понедельника по пятницу c 09:00 до 19:00.</li>\n<li>Контактные телефоны: +7 (499) 112-02-42</li>\n<li>Электронная почта: <a href=\"mailto:info@ufreg.com\">info@ufreg.com</a><a href=\"mailto:info@ufreg.com\"></a></li>\n</ul>\n<p></p>','1','16','2','1','0','1','1393912626','1','1499766860','0','0','0','1393912626','1','','0','0','0','0','0','0','1','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('4','document','text/html','Контакты','','','kontaktyi','','1','0','0','65','1','','<h3>Компания РЕГИСТРАЛ расположена по адресу:</h3>\n<p>м. Кожуховская, БЦ Золотое кольцо, ул. Южнопортовая, д. 5, стр. 1.</p>\n<p>&nbsp;</p>\n<h3>Контактные телефоны:</h3>\n<p>+7 (499) 112-02-42</p>\n<p>E-Mail: <a href=\"mailto:info@ufreg.com\">info@ufreg.com</a></p>\n<p>&nbsp;</p>\n<h3>График работы:</h3>\n<p>Понедельник-четверг с 9-00 до 19-00. Пятница с 9-00 по 18-00</p>\n<p><img src=\"assets/images/map_ufreg.png\" alt=\"Карта проезда\" style=\"display: block; margin-left: auto; margin-right: auto;width:100%;\" /></p>','1','8','4','1','0','1','1393912648','1','1499340649','0','0','0','1393912648','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('66','document','text/html','Ликвидация ИП ','','','likvidacziya-ip','','1','0','0','14','0','','','1','10','5','1','0','1','1395054596','1','1404715156','0','0','0','1395054596','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('67','document','text/html','Получение выписки из ЕГРЮЛ ','','','poluchenie-vyipiski-iz-egryul','','1','0','0','14','0','','','1','10','6','1','0','1','1395054633','1','1404715186','0','0','0','1395054633','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('5','document','text/html','перечень слайдов','','','перечень-слайдов','','1','0','0','0','1','','','1','0','4','1','0','1','1393912670','1','1393912670','0','0','0','1393912670','1','','0','0','0','0','0','0','1','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('6','document','text/html','Выписка из ЕГРЮЛ<br> от 300 рублей','','','zaverennaya-vyipiska-iz-egryul-ot-600-r','','1','0','0','5','0','','<p class=\"justifyleft\" align=\"center\">В стоимость услуг входит:</p>\n<ul>\n<li>заказ выписки в электронной базе ФНС</li>\n<li>предоставление он-лайн выписки по электронной почте</li>\n</ul>','1','18','0','1','0','1','1393912775','1','1395839451','0','0','0','1393912775','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('7','document','text/html','Подготовка нулевого отчета<br>пакет «Минимум» <br>от 900 рублей','','','podgotovka-nulevogo-otcheta-paket-minimum-ot-900-rublej','','1','0','0','5','0','','<p class=\"justifyleft\" align=\"center\">В стоимость услуг входит:</p>\n<ul>\n<li>подготовка отчетности для подачи в государственные органы</li>\n<li>предоставление отчета в электронном или печатном виде</li>\n</ul>','1','18','1','1','0','1','1393912792','1','1498810430','0','0','0','1393912792','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('8','document','text/html','contact 1','','','contact-1','','1','0','0','4','0','','','1','3','1','1','0','1','1393912857','1','1498806843','0','0','0','1393912857','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('9','document','text/html','contact 2','','','contact-2','','1','0','0','4','0','','','1','3','2','1','0','1','1393912875','1','1498743849','0','0','0','1498742187','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('10','document','text/html','реклама','','','реклама','','1','0','0','0','1','','','1','5','5','1','0','1','1393912923','1','1393912923','0','0','0','1393912923','1','','0','0','0','0','0','0','1','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('11','document','text/html','Вам нужна срочная выписка?','','','vam-nuzhna-srochnaya-vyipiska','','1','0','0','10','0','','<p>Ведение бухгалтерии &ndash; сложный и трудоемкий процесс, требующий знаний, опыта и смекалки.</p>\n<p>При заказе услуг в компании РЕГИСТРАЛ Вы получаете качественный сервис, грамотно оказанные услуги и консультационное сопровождение Вашего бизнеса.</p>\n<p>Компания РЕГИСТРАЛ существует более 10 лет, оказывает обширные услуги в юридических и бухгалтерских сферах.</p>','1','5','0','1','0','1','1393912970','1','1395841576','0','0','0','1393912970','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('76','document','text/html','Регистрация кассового аппарата<br> 8900 рублей','','','registracziya-kassovogo-apparata-8900-rublej','','1','0','0','5','0','','<p class=\"justifyleft\" align=\"center\">В стоимость услуг входит:</p>\n<ul>\n<li>постановка кассы на учет в налоговой инспекции</li>\n</ul>\n<ul>\n<li>обслуживание кассового аппарата&nbsp; в течение года</li>\n</ul>','1','18','2','1','0','1','1395772751','1','1395838544','0','0','0','1395772751','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('12','document','text/html','Ближайший отчетный период','Ближайший отчетный период','','xotite-poluchit-skidku-10','','0','0','0','10','0','','<p>С 1 октября &ndash; сдаем III квартал 2014 года</p>\n<p>до 15 октября сдаем ФСС</p>\n<p>до 20 октября сдаем НДС</p>\n<p>до 28&nbsp;октября сдаем налог на прибыль</p>\n<p>до 30&nbsp;октября сдаем авансовый налог на имущество</p>\n<p>до 15 ноября сдаем ПФР</p>','1','5','1','1','0','1','1393912986','1','1424248480','0','0','0','0','0','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('13','document','text/html','Скидка 10% при повторном заказе нулевой отчетности!','Скидка 10% при повторном заказе нулевой отчетности!','','skidka-10-pri-povtornom-zakaze','','0','0','0','10','0','','<p>При повторном обращении за подготовкой нулевого отчета Вам будет предоставлена скидка 10%!</p>','1','5','2','1','0','1','1393913003','1','1410437655','0','0','0','0','0','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('14','document','text/html','рулетка','','','logotipyi','','1','0','0','0','1','','','1','9','6','1','0','1','1393913033','1','1395060529','0','0','0','1393913033','1','','0','0','0','0','0','0','1','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('15','document','text/html','Смена директора','','','logotip-1','','1','0','0','14','0','','','1','10','0','1','0','1','1393913318','1','1404715025','0','0','0','1393913318','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('16','document','text/html','Смена паспортных данных ','','','logotip-2','','1','0','0','14','0','','','1','10','4','1','0','1','1393913332','1','1404715106','0','0','0','1393913332','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('17','document','text/html','Регистрация фирм ','','','logotip-3','','1','0','0','14','0','','','1','10','2','1','0','1','1393913349','1','1404715064','0','0','0','1393913349','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('18','document','text/html','Ликвидация ООО ','','','logotip-4','','1','0','0','14','0','','','1','10','3','1','0','1','1393913369','1','1404715085','0','0','0','1393913369','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('19','document','text/html','Регистрация ИП ','','','logotip-5','','1','0','0','14','0','','','1','10','4','1','0','1','1393913382','1','1404715127','0','0','0','1393913382','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('20','document','text/html','карты оплаты','','','карты-оплаты','','1','0','0','0','1','','','1','8','7','1','0','1','1393913414','1','1393913414','0','0','0','1393913414','1','','0','0','0','0','0','0','1','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('23','document','text/html','карта 3','','','карта-3','','1','0','0','20','0','','','1','10','2','1','0','1','1393913500','1','1393913500','0','0','0','1393913500','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('25','document','text/html','карта 5','','','карта-5','','1','0','0','20','0','','','1','10','4','1','0','1','1393913566','1','1393913566','0','0','0','1393913566','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('26','document','text/html','карта 6','','','karta-6','','1','0','0','20','0','','','1','10','5','1','0','1','1393913584','1','1394050109','0','0','0','1393913584','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('27','document','text/html','Платежи','','','platezhi','','1','0','0','64','0','','<h1>Наличный расчет</h1>\n<p>Происходит у нас в офисе: <a href=\"[~4~]\">ул. Южнопортовая, д.5 стр.1</a></p>\n<p>Предоставляется кассовый чек, при необходимости договор и акт оказания услуг.<br /> <br /> Время работы: пн-пт с 09:00 до 19:00, без перерыва</p>\n<p>&nbsp;</p>\n<h1>Безналичный расчет</h1>\n<p>Оплату можно сделать по следующим <a href=\"assets/files/Kartochka-organizacii-OOO-REGISTRAL.xls\">реквизитам.doc</a> &nbsp;платежным поручением заверенным банком. Для ускорения оказания услуги сканированную копию платежного поручения высылайте на почту <a href=\"mailto:info@ufreg.com\">info@ufreg.com</a>. По факту оказания услуги предоставляем договор и акт.</p>\n<p>&nbsp;</p>\n<h1>Яндекс.Деньги</h1>\n<p>Он-лайн оплата осуществляется при помощи <a href=\"https://money.yandex.ru/\" target=\"_blank\">Яндекс.Деньги</a></p>\n<p>№ кошелька - 41001259146312</p>\n<p>Информируем! &nbsp;за перевод система Яндекс.Деньги снимает комиссию 0,5%. Указывайте назначение перевода для идентификации платежа.</p>\n<p>При возникновении вопросов обращайтесь!</p>','1','15','8','1','0','1','1393913613','1','1429875286','0','0','0','1393913613','1','','0','0','0','0','0','0','1','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('68','document','text/html','Подготовка деклараций','','','podgotovka-deklaraczij','','1','0','0','86','0','','<p>НДФЛ рассчитывается в процентах от всего дохода физического лица, полученного за год, за вычетом подтверждённых расходов.</p>\n<p>Сроки подачи НДФЛ:</p>\n<p><span style=\"color: #057ec8;\">Декларация по налогу на доходы физических лиц обязаны подавать все лица, получившие доходы в предыдущем году по 30 апреля каждого года включительно.</span></p>\n<p><span style=\"color: #057ec8;\">Доходы уплачиваются:</span></p>\n<table class=\"table_firm\" cellspacing=\"0\" border=\"0\">\n<tbody>\n<tr>\n<td>\n<ul>\n<li>от продажи имущества (движимого и недвижимого), которое в собственности менее 3-х лет;</li>\n<li>от сдачи имущества в аренду (комнат, квартир и прочего имущества);</li>\n<li>доход, с которого не удержан налог;</li>\n</ul>\n</td>\n<td><span style=\"color: #ff3a00;\">700</span></td>\n</tr>\n<tr>\n<td>\n<ul>\n<li>от продажи ценных бумаг, долей в уставном капитале;</li>\n<li>индивидуальные предприниматели, находящиеся на общей системе налогообложения;</li>\n<li>от источников за пределами РФ;</li>\n<li>от доходов по договорам гражданско &ndash; правового характера и т.д.</li>\n</ul>\n</td>\n<td><span style=\"color: #ff3a00;\">1500<br /></span></td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<p>За несвоевременную подачу декларации предусмотрен штраф (п. 1 ст. 119 НК РФ)</p>\n<p><span style=\"color: #057ec8;\">Так же НДФЛ Вы можете подать в течение календарного года на:</span></p>\n<p><span style=\"color: #057ec8;\">- Имущественный вычет</span></p>\n<table class=\"table_firm\" cellspacing=\"0\" border=\"0\">\n<tbody>\n<tr>\n<td>\n<ul>\n<li>по строительству, ремонту и приобретения жилья. Возврат НДФЛ осуществляется в&nbsp; сумме, не превышающее 260&nbsp;000 рублей. Возврат производиться один раз в жизни!)</li>\n</ul>\n</td>\n<td><span style=\"color: #ff3a00;\">1000 <br /></span></td>\n</tr>\n<tr>\n<td>\n<ul>\n<li>%-в по ипотечному кредитованию (13% с фактически уплаченных процентов), сдается ежегодно.</li>\n</ul>\n</td>\n<td><span style=\"color: #ff3a00;\">1000 <br /></span></td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<p><span style=\"color: #057ec8;\">- Социальный вычет</span></p>\n<table class=\"table_firm\" cellspacing=\"0\" border=\"0\">\n<tbody>\n<tr>\n<td>\n<ul>\n<li>на обучение (сумма возврата не более 50&nbsp;000 рублей)</li>\n</ul>\n</td>\n<td><span style=\"color: #ff3a00;\">800 <br /></span></td>\n</tr>\n<tr>\n<td>\n<ul>\n<li>на приобретение медикаментов и лечение</li>\n</ul>\n</td>\n<td><span style=\"color: #ff3a00;\">800 <br /></span></td>\n</tr>\n<tr>\n<td>\n<ul>\n<li>по расходам на благотворительные нужды (не превышает 25% от дохода полученного физическим лицом за год)</li>\n</ul>\n</td>\n<td><span style=\"color: #ff3a00;\">350 <br /></span></td>\n</tr>\n<tr>\n<td>\n<ul>\n<li>пре внесение дополнительных взносов на накопительную часть пенсии</li>\n</ul>\n</td>\n<td><span style=\"color: #ff3a00;\">350 <br /></span></td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<p><span style=\"color: #057ec8;\">Дополнительно оплачивается</span></p>\n<table class=\"table_firm\" cellspacing=\"0\" border=\"0\">\n<tbody>\n<tr>\n<td>за внесение дополнительного источника дохода или/вычета</td>\n<td><span style=\"color: #ff3a00;\">200 <br /></span></td>\n</tr>\n<tr>\n<td>за отправку декларации почтовым отправлением</td>\n<td><span style=\"color: #ff3a00;\">300 <br /></span></td>\n</tr>\n<tr>\n<td>За предоставление декларации курьером (нотариальное заверение доверенности, &nbsp;оплачивается нотариусу)</td>\n<td><span style=\"color: #ff3a00;\">1000 <br /></span></td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<p>Документы необходимые для получения вычетов в налоговом органе:</p>\n<p><b><i>На имущественный вычет </i></b>&ndash; документы подтверждающие право собственности (договор купли-продажи свидетельство), платежные документы.</p>\n<p><b><i>На социальный</i></b> <b><i>вычет</i></b> - паспорт, ИНН, справка&nbsp; о доходах (2-НДФЛ). Дополнительно:</p>\n<p>- по образованию &ndash; копия договора с учебным заведением, копия лицензии образовательного учреждения, документы подтверждающие оплату обучения, справка из учебного заведения, документы подтверждающие родство (если оплачивал брат или сестра), свидетельство о рождение (если оплачивали родители);</p>\n<p>- на лечение &ndash; справка оплаты медицинских услуг, договор на оказание медицинских услуг на имя получателя НДФЛ, копия лицензии медучреждения, платежные документы.</p>\n<p>- на медикаменты &ndash; рецепт по форме №107, заверенный врачом и печатями лечебного учреждения, платежные документы.</p>\n<p>&nbsp;</p>\n<p><b><i>Налоговую декларацию, можно, предоставлять:</i></b></p>\n<p>- в бумажном виде: лично, почтовым отправление, курьером (доверенность нотариально заверенная), представителями (родителями, попечителями, опекуны);</p>\n<p>- в электронном виде.</p>\n<p>Срок рассмотрения декларации - 3 месяца с момента подачи в налоговый орган&nbsp; (п. 2 ст.88 НК).</p>','1','15','3','1','0','1','1395745179','1','1417774671','0','0','0','1395745179','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('28','document','text/html','Нулевая отчетность','','','nulevaya-otchetnost','','1','0','0','86','1','','<h1>Нулевая отчетность</h1>\n<p>Независимо от того ведется или не ведется деятельность в компании, отчетность должна сдаваться в порядке и в сроки, установленные законодательством.</p>\n<p>При отсутствии предпринимательской деятельности в компании подается нулевая отчетность в госорганы.</p>\n<p>При применении фирмой УСН (упрощённая система налогообложения) ежеквартально сдается отчетность в фонды и один раз в год в налоговую инспекцию.</p>\n<p>При применение ОСН (общей системы налогообложения) ежеквартально сдается отчетность в фонды и налоговую инспекцию.</p>\n<p><b>С 2014 года все фирмы, находящиеся на ОСН, обязаны сдавать отчетность в налоговую инспекцию только в электронном виде. Отчетность, направленная другим способом (почтой или курьером,) считается не сданной. (ст.12. п.2. ФЗ-134 от 28.06.2013г)</b></p>\n<p><span style=\"color: #057ec8;\"><b>Пакеты услуг по подготовке нулевой отчетности*:</b></span></p>\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n<tbody>\n<tr>\n<td>\n<p><span style=\"color: #057ec8;\"><b>&laquo;Минимум&raquo;</b></span></p>\n<p>После предоставления необходимого перечня документов (в электроном или бумажном) и оплаты любым удобным способом, высылаем Вам отчетность на электронную почту или передаем ее в нашем офисе. Срок подготовки документов -1 час. Подачу производите самостоятельно.</p>\n</td>\n<td style=\"width: 90px;\">\n<p align=\"center\"><span style=\"color: #057ec8;\"><b>1800</b></span></p>\n</td>\n</tr>\n<tr>\n<td>\n<p><span style=\"color: #057ec8;\"><b>&laquo;Базовый&raquo;</b></span></p>\n<p>Пакет &laquo;Минимум&raquo; + сдача отчетности почтовым направлением (подходит компаниям, применяющии УСН и ИП).</p>\n</td>\n<td style=\"width: 90px;\">\n<p align=\"center\"><span style=\"color: #057ec8;\"><b>2000</b></span></p>\n</td>\n</tr>\n<tr>\n<td>\n<p><span style=\"color: #057ec8;\"><b>&laquo;Электронный&raquo; 1, 2, 3 кв.</b></span></p>\n<p>Пакет &laquo;Минимум&raquo; + электронная сдача отчетности в налоговую инспекцию (для компаний находящихся на ОСН).</p>\n</td>\n<td style=\"width: 90px;\">\n<p align=\"center\"><span style=\"color: #057ec8;\"><b>2700</b></span></p>\n</td>\n</tr>\n<tr>\n<td>\n<p><span style=\"color: #057ec8;\"><b>&laquo;Электронный&raquo; 4 кв.</b></span></p>\n<p>Пакет &laquo;Минимум&raquo; + электронная сдача отчетности в налоговую инспекцию (для компаний находящихся на УСН / ОСН).</p>\n</td>\n<td style=\"width: 90px;\">\n<p align=\"center\"><span style=\"color: #057ec8;\"><b>3000 / 4000</b></span></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p></p>\n<p><span style=\"font-size: 90%;\">* при предоставлении необходимого перечня документов в офис, время ожидания ее подготовки составляет 30 минут, при предоставлении документов заранее (заблаговременно электронной почтой), отчетность будет готова к Вашему приезду.</span></p>\n<p></p>\n<p></p>\n<p><span style=\"color: #1b4987;\"><a href=\"[~2~]\">Дополнительные услуги </a></span></p>\n<p><span style=\"color: #057ec8;\"><b>Документы, которые необходимо предоставить для подготовки нулевой отчетности:</b></span></p>\n<p>- выписка из ЕГРЮЛ/ЕГРИП;<br />- коды статистики;<br />- регистрационные номера ПФР и ФСС (желательно предоставить <a href=\"http://www.ufreg.com/dopolnitelnye-uslugi/postanovka-na-uchet-v-pfr-i-fss.html\" target=\"_blank\">уведомления о постановке на учет</a>);</p>\n<p><b>- </b>при применении УСН - заявление о переходе.</p>\n<p><b>При отсутствии возможности предоставить интересующею нас информацию, мы можем ее узнать для Вас. Стоимость &mdash; от 300 руб.</b></p>\n<p><b>При несвоевременной подаче отчетности законом предусмотрены штрафные санкции.</b></p>','1','15','2','1','0','1','1393913631','1','1498144910','0','0','0','1393913631','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('29','document','text/html','Бухгалтерское сопровождение ИП','','','buxgalterskoe-soprovozhdenie-ip','','1','0','0','86','1','','<h1>Бухгалтерское сопровождение ИП</h1>\n<p>Ведение бухгалтерии Индивидуального Предпринимателя происходит по более облегченной схеме, чем ведение бухгалтерии ООО.&nbsp; Как правило, это зависит от меньшего документарного и финансового оборота по сравнению с ООО.</p>\n<p>Только для ИП предусмотрена <a target=\"_blank\" href=\"http://ufreg.com\">патентная система налогообложения</a>&nbsp; более подробно по данной системе налогообложения можете узнать у нашего бухгалтера.</p>\n<p>Индивидуальный предприниматель,&nbsp; находящейся на УСН (упрощённой системе налогообложения), без сотрудников, сдает отчетность 1 раз в год.</p>\n<p>В остальных случаях отчетность сдается ежеквартально, в установленный законом срок.</p>\n<p>Нужно учитывать, что ИП отвечает за свою предпринимательскую деятельность своим личным имуществом, как движимым, так и недвижимым.</p>\n<p><span style=\"color: #651471;\"><span style=\"color: #057ec8;\"><b>Стоимость бухгалтерских услуг ИП, без работников</b></span> <span style=\"color: #111e90;\"><b>в месяц.</b></span></span></p>\n<table rules=\"all\" frame=\"border\" style=\"border-color: #000000; border-width: 0px; border-style: solid;\" cellspacing=\"0\" border=\"0\">\n<tbody>\n<tr>\n<td>до 5 операция</td>\n<td>3000</td>\n</tr>\n<tr>\n<td>от 6 до 15</td>\n<td>4500</td>\n</tr>\n<tr>\n<td>от 16 до 25</td>\n<td>6000</td>\n</tr>\n<tr>\n<td>от 26 до 35</td>\n<td>7500</td>\n</tr>\n<tr>\n<td>от 36 до 45&nbsp;</td>\n<td>9000</td>\n</tr>\n<tr>\n<td>46 и более</td>\n<td>от 10500</td>\n</tr>\n<tr>\n<td>+500</td>\n<td>за каждого сотрудника</td>\n</tr>\n<tr>\n<td>+ 1500</td>\n<td>за подготовку и сдачу 3-НДФЛ, для ИП находящихся на ОСН</td>\n</tr>\n<tr>\n<td>Электронная сдача отчетности</td>\n<td>от 300</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<p>Что понимается под одной операцией?</p>\n<p>- до 10 проводок по банку в день;</p>\n<p>- закрывающие документы (акт, счет &ndash; фактура, товарная накладная и прочее);</p>\n<p>- выписка из банка за один календарный день;</p>\n<p>- z &ndash; отчет.</p>\n<p></p>\n<p></p>','1','15','1','1','0','1','1393913670','1','1498144863','0','0','0','1393913670','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('30','document','text/html','Бухгалтерское сопровождение фирм','','','buxgalterskoe-soprovozhdenie-firm','','1','0','0','86','1','','<h1>Бухгалтерское сопровождение фирм</h1>\n<p>Согласно законодательству Российской Федерации любая организация обязана вести бухгалтерский учет по установленным нормам:</p>\n<p>- документарное оформление хозяйственных операций;</p>\n<p>- внесение и ведение документооборота в 1С;</p>\n<p>- подготовка, формирование и подача отчетности в государственные органы ;</p>\n<p>- расчет заработной платы сотрудников и налогов.</p>\n<p>&nbsp;</p>\n<p><span style=\"color: #057ec8;\"><b>Стоимость бухгалтерского сопровождения фирм:</b></span></p>\n<table cellspacing=\"0\" border=\"0\">\n<tbody>\n<tr>\n<td>\n<p><b><span style=\"color: #057ec8;\">&laquo;ПРОФИ&raquo;</span> - </b>вы сами ведете финансово-хозяйственную деятельность в&nbsp; программе 1С,<br />базу которой высылаете нам для уточнений и замечаний, ее корректировки,<br /> формирования и подачи налоговой отчетности в налоговые органы и фонды.</p>\n</td>\n<td>\n<p><b>&nbsp;&laquo;-50%&raquo; от <span style=\"color: #057ec8;\">Основного прайса</span></b></p>\n</td>\n</tr>\n<tr>\n<td>\n<p><b><span style=\"color: #057ec8;\">&laquo;ПОМОЩЬ БУХГАЛТЕРА&raquo;</span> - </b>предоставляете нашему бухгалтеру&nbsp; первичную<br /> документацию в любом виде: электронной почтой или на бумажном носителе,<br /> предпочтительно копии. Вся первичная документация обрабатывается,<br /> вносится в программу, формируется, подготавливается и в установленные сроки<br /> сдается отчетность в государственные органы.</p>\n<p>От Вас необходимо своевременно предоставлять первичную документацию в виде:<br /> актов, накладных, счетов-фактур, Z- отчетов и т.д.</p>\n</td>\n<td><span style=\"color: #057ec8;\"><b>Основной прайс</b></span></td>\n</tr>\n<tr>\n<td>\n<p><b><span style=\"color: #057ec8;\">&laquo;ПОЛНОЦЕННЫЙ БУХГАЛТЕР&raquo;</span> - </b>оказание бухгалтерских услуги от &laquo;А&raquo; до &laquo;Я&raquo;, т.е. подготовка первичной документации и по Вашему желанию ведение &laquo;Банк-клиента&raquo;&nbsp; по р/с компании<b>. </b></p>\n</td>\n<td><span style=\"color: #057ec8;\"><b>Основной прайс</b><span style=\"font-size: 90%;\"><b> + 70* р. за подготовку документа первичной документации.</b></span></span></td>\n</tr>\n</tbody>\n</table>\n<p></p>\n<p><span style=\"color: #057ec8; font-size: 80%;\"><b>*&nbsp; состоящий не более чем из 10 позиций. Если документы более объемный, то оплачивается включительно каждые полные и/или не полные 10 позиций отдельно.</b></span></p>\n<p><span style=\"color: #134eae; font-size: 80%;\"><b>&nbsp;</b></span></p>\n<p><span style=\"color: #057ec8;\"><strong>Основной прайс по бухгалтерским услугам фирмам</strong></span></p>\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n<tbody>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p align=\"center\">&nbsp;Перечень услуг</p>\n</td>\n<td colspan=\"2\" width=\"338\" valign=\"top\">\n<p align=\"center\">Стоимость услуги</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p>Количество проведенных операций в месяц</p>\n</td>\n<td width=\"150\" valign=\"top\">\n<p align=\"center\">УСН</p>\n</td>\n<td width=\"188\" valign=\"top\">\n<p align=\"center\">ОСН</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p>до 5</p>\n</td>\n<td style=\"text-align: center;\" width=\"150\" valign=\"top\">\n<p>3500</p>\n</td>\n<td style=\"text-align: center;\" width=\"188\" valign=\"top\">\n<p>4000</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p>от 6 до 15</p>\n</td>\n<td style=\"text-align: center;\" width=\"150\" valign=\"top\">\n<p>5000</p>\n</td>\n<td style=\"text-align: center;\" width=\"188\" valign=\"top\">\n<p>5500</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p>от 16 до 30</p>\n</td>\n<td style=\"text-align: center;\" width=\"150\" valign=\"top\">\n<p>8000</p>\n</td>\n<td style=\"text-align: center;\" width=\"188\" valign=\"top\">\n<p>8500</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p>от 31 до 50</p>\n</td>\n<td style=\"text-align: center;\" width=\"150\" valign=\"top\">\n<p>7500</p>\n</td>\n<td style=\"text-align: center;\" width=\"188\" valign=\"top\">\n<p>8000</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p>от 51 до 70</p>\n</td>\n<td style=\"text-align: center;\" width=\"150\" valign=\"top\">\n<p>9500</p>\n</td>\n<td style=\"text-align: center;\" width=\"188\" valign=\"top\">\n<p>10000</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p>от 71 до 90</p>\n</td>\n<td style=\"text-align: center;\" width=\"150\" valign=\"top\">\n<p>10500</p>\n</td>\n<td style=\"text-align: center;\" width=\"188\" valign=\"top\">\n<p>11000</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p>от 90 и более</p>\n</td>\n<td style=\"text-align: center;\" width=\"150\" valign=\"top\">\n<p>от 11000</p>\n</td>\n<td style=\"text-align: center;\" width=\"188\" valign=\"top\">\n<p>от 11500</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p>за каждого сотрудника</p>\n</td>\n<td style=\"text-align: center;\" width=\"150\" valign=\"top\">\n<p>+ 500</p>\n</td>\n<td style=\"text-align: center;\" width=\"188\" valign=\"top\">\n<p>+500</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p>за сдачу отчётности в электронном виде</p>\n</td>\n<td style=\"text-align: center;\" width=\"150\" valign=\"top\">\n<p>+300</p>\n</td>\n<td style=\"text-align: center;\" width=\"188\" valign=\"top\">\n<p>+500</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p>Электронно - цифровая подпись для участия в торгах (входят универсальные Федеральные площадки и около 100 коммерческих).</p>\n<p>Изготавливается ключ в течение 3 дней</p>\n<p>Изготавливается ключ в течение дня</p>\n</td>\n<td style=\"text-align: center;\" colspan=\"2\" width=\"338\" valign=\"top\">\n<p>&nbsp;</p>\n<p align=\"center\">&nbsp;</p>\n<p align=\"center\">&nbsp;</p>\n<p align=\"center\">7900</p>\n<p align=\"center\">15800</p>\n</td>\n</tr>\n<tr>\n<td width=\"300\" valign=\"top\">\n<p><span style=\"color: #800000;\">Электронная подача отчетности компании, не находящейся на бухгалтерском обслуживании в компании &laquo;РЕГИСТРАЛ&raquo;</span></p>\n</td>\n<td style=\"text-align: center;\" colspan=\"2\" width=\"338\" valign=\"top\">\n<p align=\"center\">&nbsp;</p>\n<span style=\"color: #800000;\">от 1000</span></td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<p>Что понимается под одной операцией?</p>\n<p></p>\n<p>- до 10 проводок по банку в день;</p>\n<p></p>\n<p>- закрывающие документы (акт, счет &ndash; фактура, товарная накладная и прочее);</p>\n<p></p>\n<p>- выписка из банка за один календарный день;</p>\n<p>- Z - отчет.</p>\n<p><span style=\"font-size: 140%;\"><b>&nbsp;</b></span></p>\n<p><b>Мы гарантируем:</b></p>\n<p><b>- соблюдение законодательных норм </b></p>\n<p><b>- полную конфиденциальность</b></p>\n<p><b>- тактичность, честность и объективность</b></p>\n<p><b>- безоговорочное качество услуг.</b></p>','1','15','0','1','0','1','1393913695','1','1498145310','0','0','0','1393913695','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('64','document','text/html','другие страницы','','','drugie-straniczyi','','1','0','0','0','1','','','1','0','2','1','0','1','1394695688','1','1395261654','0','0','0','1394695688','1','','0','0','0','0','0','0','1','0');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('65','document','text/html','Главное меню','','','glavnoe-menyu','','1','0','0','0','1','','','1','0','1','1','0','1','1394695836','1','1395261644','0','0','0','1394695836','1','','0','0','0','0','0','0','1','0');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('31','document','text/html','Он-лайн выписка из ЕГРЮЛ','','','on-lajn-vyipiska-iz-egryul','','1','0','0','3','0','','<p>Заказ информационной выписки в электронной базе ИФС России</p>\n<p>Предоставление заказчику полученной он-лайн выписки по электронной почте</p>','1','7','0','1','0','1','1393913725','1','1412170595','0','0','0','1393913725','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('32','document','text/html','доступ запрещен','','','dostup-zapreshhen','','1','0','0','1','0','','','1','6','0','1','0','1','1393913898','1','1421162138','0','0','0','1393913898','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('34','document','text/html','сайт недоступен','','','sajt-nedostupen','','1','0','0','1','0','','В настоящее время сайт недоступен.','1','6','2','1','0','1','1393916888','1','1393916888','0','0','0','1393916888','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('93','document','text/html','Налоговые каникулы - это реальность!','nalogovie-kanikyli','','nalogovye-kanikuly-eto-realnost!','','1','0','0','79','0','','<p>Теперь применения ставки 0% стало возможным.</p>\n<p>Ранее мы писали, что в Госдуму Минфином был направлен &nbsp;проект о применении налоговых каникул.</p>\n<p>С 25 декабря 2014 г он был принят, но видоизменен, что же мы получили на выходе?</p>\n<p>Налоговые каникулы применяются только Индивидуальными предпринимателями, которые зарегистрированы после 25.12.2014 года. Для применения 0% ставки ИП должно осуществлять деятельность в следующих сферах: производственной, социальной и/или научной.</p>\n<p>Ряд ограничений, которые определяет каждый субъект РФ по своему усмотрению:</p>\n<p>-по каким именно видам деятельности в сферах производственной, научной и/или социальной можно применять налоговые каникулы;</p>\n<p>- доля дохода от установленных видов деятельности &nbsp;по 0% ставке не должна &nbsp;быть менее 70% от общей предпринимательской деятельности;</p>\n<p>- ограничения среднесписочной численности работников;</p>\n<p>- ограничения предельного размера&nbsp; дохода от деятельности.</p>\n<p>ИП при ведении деятельности, не входящая в перечень видов &nbsp;попадающих под налоговые каникулы обязан вести раздельный учет.</p>\n<p>При нарушении ограничений, предприниматель теряет право на применение 0% ставки.</p>\n<p>По состоянию на 01.02.2015г. в ФНС г. Москвы &nbsp;не поясняют, по каким видам (кодам) возможно применения 0% ставке, а так же какие ограничения вводятся в нашем субъекте.</p>\n<p>Подводим итог: только ИП может применять ставку 0% с 25.12.2014 по 01.01.2021 г. года, если он зарегистрировано после принятия закона! и только в определенных сферах бизнеса.</p>','1','17','6','1','0','1','1422883838','1','1422883838','0','0','0','1422883838','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('38','document','text/html','элементы страницы','','','elementyi-straniczyi','','1','0','0','0','1','','','1','0','3','1','0','1','1394186068','1','1394696004','0','0','0','1394186068','1','','0','0','0','0','0','0','1','0');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('39','document','text/html','Картинки','','','kartinki','','1','0','0','38','0','','','1','12','0','1','0','1','1394186087','1','1394539311','0','0','0','1394186087','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('40','document','text/html','Тексты','','','tekstyi','','1','0','0','38','0','','','1','13','1','1','0','1','1394186100','1','1394192380','0','0','0','1394186100','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('41','document','text/html','Новый ресурс','','','novyij-resurs','','1','0','0','2','0','','<p>Пакет &laquo;Минимум&raquo;</p>','1','14','0','1','0','1','1394545298','1','1499430498','0','0','0','1394545298','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('42','document','text/html','Новый ресурс','','','novyij-resurs1','','1','0','0','2','0','','<p>Бухгалтерское сопровождение предпринимателя, подготовка и&nbsp; сдача отчетности</p>','1','14','2','1','0','1','1394545786','1','1499430524','0','0','0','1394545786','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('43','document','text/html','Новый ресурс','','','novyij-resurs2','','1','0','0','2','0','','<p>Пакет &laquo;Базовый&raquo;</p>','1','14','1','1','0','1','1394604848','1','1499430506','0','0','0','1394604848','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('44','document','text/html','Новый ресурс','','','novyij-resurs3','','1','0','0','2','0','','<p>Пакет &laquo;Профи&raquo;</p>','1','14','3','1','0','1','1394604887','1','1498144582','0','0','0','1394604887','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('45','document','text/html','Новый ресурс','','','novyij-resurs4','','1','0','0','2','0','','<p>Пакет &laquo;Электронный&raquo;</p>','1','14','1','1','0','1','1394604909','1','1499430514','0','0','0','1394604909','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('46','document','text/html','Новый ресурс','','','novyij-resurs5','','1','0','0','2','0','','<p>Пакет &laquo;Помощь бухгалтера&raquo;</p>','1','14','5','1','0','1','1394604958','1','1499430543','0','0','0','1394604958','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('69','document','text/html','Новый ресурс','','','novyij-resurs23','','1','0','0','2','0','','<p>Изготавливается ключ в течение дня</p>','1','14','8','1','0','1','1395747166','1','1499838901','0','0','0','1395747166','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('47','document','text/html','Новый ресурс','','','novyij-resurs6','','1','0','0','2','0','','<p>Изготавливается ключ в течение 3 дней</p>','1','14','7','1','0','1','1394605006','1','1499430555','0','0','0','1394605006','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('48','document','text/html','Новый ресурс','','','novyij-resurs7','','1','0','0','2','0','','<p>Пакет &laquo;Полноценный бухгалтер&raquo;</p>','1','14','6','1','0','1','1394605028','1','1499430898','0','0','0','1394605028','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('49','document','text/html','Новый ресурс','','','novyij-resurs8','','1','0','0','28','0','','<p>После предоставления необходимого перечня документов (в электроном или бумажном) и оплаты любым удобным способом, высылаем Вам отчетность на электронную почту или передаем ее в нашем офисе. Срок подготовки документов -1 час. Подачу производите самостоятельно.</p>','1','14','0','1','0','1','1394605201','1','1498807969','0','0','0','1394605201','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('50','document','text/html','Новый ресурс','','','novyij-resurs9','','1','0','0','28','0','','<p>Пакет &laquo;Минимум&raquo; + сдача отчетности почтовым направлением. (подходит компаниям, применяющии УСН и ИП)</p>','1','14','1','1','0','1','1394605259','1','1400505409','0','0','0','1394605259','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('51','document','text/html','Новый ресурс','','','novyij-resurs10','','1','0','0','28','0','','<p>Пакет &laquo;Минимум&raquo; + электронная сдача отчетности в налоговую инспекцию (для компаний находящихся на ОСН) 1, 2, 3 кв.</p>','1','14','2','1','0','1','1394605282','1','1452718178','0','0','0','1394605282','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('53','document','text/html','Новый ресурс','','','novyij-resurs12','','1','0','0','29','0','','<ul> \n	<li>лечение</li> \n	<li>обучение свое, детей</li> \n</ul>','1','14','0','1','0','1','1394605459','1','1395224578','0','0','0','1394605459','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('54','document','text/html','Новый ресурс','','','novyij-resurs13','','1','0','0','29','0','','<ul> \n	<li>страховые пенсионные отчисления</li> \n	<li>добровольное медицинское страхование</li> \n	<li>благотворительность</li> \n</ul>','1','14','1','1','0','1','1394605482','1','1394695225','0','0','0','1394605482','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('55','document','text/html','Новый ресурс','','','novyij-resurs14','','1','0','0','29','0','','<ul> \n	<li>каждый дополнительный источник дохода или налоговый вычет</li> \n</ul>','1','14','2','1','0','1','1394605509','1','1394695238','0','0','0','1394605509','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('56','document','text/html','Новый ресурс','','','novyij-resurs15','','1','0','0','29','0','','<ul> \n	<li>подготовка документов для отправки почтой</li> \n</ul>','1','14','3','1','0','1','1394605535','1','1394695247','0','0','0','1394605535','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('57','document','text/html','Новый ресурс','','','novyij-resurs16','','1','0','0','29','0','','<ul> \n	<li>отправка декларации почтой</li> \n</ul>','1','14','4','1','0','1','1394605562','1','1394695258','0','0','0','1394605562','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('58','document','text/html','Новый ресурс','','','novyij-resurs17','','1','0','0','30','0','','<p>Вы сами ведете финансово-хозяйственную деятельность в  программе 1С, базу которой высылаете нам для уточнений и замечаний, ее корректировки, формирования и подачи налоговой отчетности в налоговые органы и фонды. </p>','1','14','0','1','0','1','1394605677','1','1395229008','0','0','0','1394605677','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('59','document','text/html','Новый ресурс','','','novyij-resurs18','','1','0','0','30','0','','<p>Предоставляете нашему бухгалтеру  первичную документацию в любом виде: электронной почтой или на бумажном носителе, предпочтительно копии. Вся первичная документация обрабатывается, вносится в программу, формируется, подготавливается и в установленные сроки сдается отчетность в государственные органы.\n	От Вас необходимо своевременно предоставлять первичную документацию в виде: актов, накладных, счетов-фактур, Z- отчетов и т.д.</p>\n','1','14','1','1','0','1','1394605699','1','1395225155','0','0','0','1394605699','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('60','document','text/html','Новый ресурс','','','novyij-resurs19','','1','0','0','30','0','','<p>Оказание бухгалтерских услуги от «А» до «Я», т.е. подготовка первичной документации и по Вашему желанию ведение «Банк-клиента»  по р/с компании. </p>','1','14','2','1','0','1','1394605731','1','1395225120','0','0','0','1394605731','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('70','document','text/html','Новый ресурс','','','novyij-resurs24','','1','0','0','2','0','','<p><span style=\"font-size: 90%;\">* стоимость подключения включена в 12 месяцев бухгалтерского обслуживания. При расторжении договора ранее 12 мес., стоимость подключения возмещается в 100 % размере</span></p>','1','14','9','1','0','1','1395747203','1','1499840453','0','0','0','1395747203','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('71','document','text/html','Новый ресурс','','','novyij-resurs25','','1','0','0','2','0','','<p>на 1 организация</p>','1','14','10','1','0','1','1395747225','1','1499430583','0','0','0','1395747225','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('72','document','text/html','Новый ресурс','','','novyij-resurs26','','1','0','0','2','0','','<p>при предоставлении отчетности в виде выгрузки</p>','1','14','11','1','0','1','1395747259','1','1499430592','0','0','0','1395747259','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('73','document','text/html','Новый ресурс','','','novyij-resurs28','','1','0','0','2','0','','<p>электронная</p>','1','14','13','1','0','1','1395747302','1','1499430617','0','0','0','1395747302','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('74','document','text/html','Новый ресурс','','','novyij-resurs29','','1','0','0','2','0','','<p>с печатью налогового органа</p>','1','14','14','1','0','1','1395747354','1','1499430624','0','0','0','1395747354','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('75','document','text/html','Новый ресурс','','','novyij-resurs30','','1','0','0','2','0','','<p>расширенная - с паспортными данными участника и генерального директора</p>','1','14','15','1','0','1','1395747387','1','1499430631','0','0','0','1395747387','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('77','document','text/html','Регистрация обособленного<br> подразделения<br> 2500 рублей','','','registracziya-obosoblennogo-podrazdeleniya-2500-rublej','','1','0','0','5','0','','<ul>\n<li>подготовка заявление о регистрации обособленного подразделения</li>\n<li>получение уведомления о регистрации обособленного подразделения</li>\n</ul>','1','18','3','1','0','1','1395772787','1','1395838567','0','0','0','1395772787','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('78','document','text/html','Новый ресурс','','','novyij-resurs27','','1','0','0','2','0','','<p>при внесении отчетности в ручную (нет выгрузки или выгрузка с не последними обновлениями)</p>','1','14','12','1','0','1','1400503098','1','1499840541','0','0','0','1400503098','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('79','document','text/html','Полезная информация','','','poleznaya-informacziya','','1','0','0','65','1','','','1','20','3','1','0','1','1403517912','1','1498740815','0','0','0','1403517912','1','Полезная информация','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('80','document','text/html','С  1 января 2015 года у физических лиц, сдающих жилые и не жилые помещения, принадлежащие им на праве собственности, появиться возможность вместо 13% НДФЛ  оплачивать другим налогом в размере 10%. ','Упрощенная система налогообложения для физических лиц','','usn-fizlica','','1','0','0','79','0','','<p>С&nbsp; 1 января 2015 года у физических лиц, сдающих жилые и не жилые помещения, принадлежащие им на праве собственности, появиться возможность вместо 13% НДФЛ&nbsp; оплачивать другим налогом в размере 10%.</p>\n<p>В Налоговом Кодексе РФ вносятся изменения, которые позволяют физическим лицам - арендодателям, не оформленных как Индивидуальные предприниматели, применять упрощённую систему налогообложения при сдаче помещения.</p>\n<p>Оплата 10 % налога освобождает от уплаты НДФЛ при сдаче помещения в аренду.</p>\n<p>Размер ежемесячных платежей не может превышать:</p>\n<p>- по жилым помещениям &ndash; 5000 р.</p>\n<p>- по дачам/садовым домикам &ndash; 3000 р.</p>\n<p>- по гаражам &ndash; 500 р.</p>\n<p>Оплатить налог необходимо полностью не позже 20 дней, с момента начала действия договора в налоговую инспекцию по месту сдаваемого помещения.</p>\n<p>Для перехода на упрощённую систему налогообложения (УСН) в налоговую инспекцию предоставляется документы:</p>\n<p>- заявление о применении УСН,</p>\n<p>- копии правоустанавливающих документов,</p>\n<p>- копии документов, подтверждающих уплату налога.</p>','1','17','1','1','0','1','1403548159','1','1403867435','0','0','0','1403548159','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('81','document','text/html','Рассматривает законопроект налоговых каникул с 0 % ставкой налога.','','','nalogovye-kanikuly','','1','0','0','79','0','','<p>Государственная дума рассматривает новый законопроект, который предусматривает возможность&nbsp; налоговых каникул для Индивидуальных предпринимателей, а так же малых компаний, находящихся на упрощённой системе налогообложения.</p>\n<p>Налоговые каникулы&nbsp; - это ведение деятельности с нулевой налоговой ставкой. Каникулы действуют в течение двух летнего срока с момента <a target=\"_blank\" href=\"http://www.ufreg.com/registraciya/registraciya-ooo.html\">регистрации ООО</a> или <a target=\"_blank\" href=\"http://ufreg.com/registraciya/registraciya-ip.html\">ИП</a>.</p>\n<p>За региональными органами предусматривается&nbsp; принятие решения, в отношение &nbsp;видов деятельности, по которым &nbsp;нельзя будет применять налоговые каникулы.</p>\n<p>Дополнительным плюсом данного законопроекта &nbsp;является то, что при наличии сотрудников организация или ИП оплачивает меньше страховых взносов - 17% (ФСС-05% ФФОМС-0,5 ПФР-16%).</p>\n<p>Будем надеяться, что законопроект примут, так как он очень облегчит &laquo;жизнь&raquo; вновь созданных ООО и ИП.</p>','1','17','2','1','0','1','1403548744','1','1404741359','0','0','0','1404741359','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('82','document','text/html','Идет II квартал  сдачи отчетности.','','','zagolovok-tretej-novosti','','1','0','0','79','0','','<p>Напоминаем, что компаниям, находящимся на ОСН с 2014 года, можно сдавать отчетность, только в электронном виде и никак иначе.</p>\n<p>Отчетность в фонд социального страхования и в пенсионный фонд можно сдать любым из способов, главное, вовремя!</p>\n<p>Мы предлагаем услугу по сдаче отчетности через электронный сервис, стоимость 700 рублей.</p>\n<p>Желаем Вас сдать все вовремя и безошибочно, удачного Вам отчетного периода!</p>','1','17','0','1','0','1','1403548751','1','1406121688','0','0','0','1406121688','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('84','document','text/html','Информация по обособленному подразделению','','','obosoblenoe-podrazdelenie','','1','0','0','79','0','','<p>Полезная информация по зарегистрированному обособленному подразделению &ndash; то, что необходимо знать:</p>\n<p>- НДФЛ по сотрудникам, работающим в обособленном подразделении, оплачивается в налоговую инспекцию, за которой закреплено подразделение, также в эту налоговую сдается форма 2-НДФЛ.</p>\n<p>- при подготовке Декларации по налогу на прибыль по фирме, находящейся на ОСН, дополнительно заполняется Приложение №5.</p>\n<p>- согласно ст.113 НК РФ, за несвоевременную подачу 2-НДФЛ &nbsp;и Декларации, указанной выше, предусмотрен штраф в размере от 1000 рублей до 30% от суммы налога, прописанного в Декларации.</p>\n<p>Рассматривалось понятие &laquo;Иное обособленное подразделение&raquo;.</p>\n<p>Для более детальной консультации обращайтесь по телефону.</p>\n<p></p>','1','17','4','1','0','1','1409818549','1','1409818719','0','0','0','1409818549','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('83','document','text/html','В ближайшем будущем возможно не будет взиматься налог НДФЛ с продажи жилья. ','','','ne-budet-vzimatcy-nalog-ndfl','','1','0','0','79','0','','<p>Минфин подготовил поправку в Госдуму и направил на рассмотрение (к гл.23 НК РФ).</p>\n<p>Согласно поправке не будет взиматься налог НДФЛ с продажи жилого имущества:</p>\n<p>- если жилье единственное (срок владения не имеет значения),</p>\n<p>- при соблюдении трех правил:</p>\n<p>1 - стоимость не более 5 млн. р.,</p>\n<p>2 - площадью не более 50 кв.м.,</p>\n<p>3 &ndash; в собственности не менее 3-х лет (хотя этот&nbsp; пункт оставили на усмотрение региональных властей,&nbsp; которые могут увеличить срок владения до 10 лет).</p>\n<p>Даты принятия, и в каком виде примут поправку, пока что нет.</p>\n<p>Желаете заполнить декларацию <a href=\"podgotovka-deklaraczij.html\">3-НДФЛ</a>?</p>','1','17','3','1','0','1','1408357054','1','1408357054','0','0','0','1408357054','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('95','document','text/html','Виды деятельности для применения налоговых каникул.','','','nalogovye-kanikuly-vidy-deyatelnosti','','1','0','0','79','0','','<p>10 марта впервые вышел перечень видов деятельности, по которым могут применяться налоговые каникулы и патентная система налогообложения в г. Москве.</p>\n<p>Для вновь созданных ИП возможно применение налоговых каникул для следующих видов деятельности: &laquo;Производство пищевых продуктов и напитков; одежды; выделка и крашение меха; производство обуви; целлюлозы, древесной массы, бумаги, картона и изделий из них; резиновых и пластмассовых изделий; мебели; музыкальных инструментов; спортивных товаров; игр и игрушек; метел и щеток; готовых металлических изделий; офисного оборудования и вычислительной техники; машин и оборудования; электрических машин и электрооборудования; аппаратуры для радио, телевидения и связи; изделий медицинской техники, средств измерений, оптических приборов и аппаратуры, часов; обработка древесины и производство изделий из дерева и пробки; издательская и полиграфическая деятельность, тиражирование записанных носителей информации и обработка вторичного сырья, здравоохранение; социальные услуги; услуги в системе образования; деятельность в области спорта&raquo;.</p>\n<p>Перечень видов деятельности для применения патентной системы налогообложения ИП расширен. Теперь можно получить патент, если Вы занимаетесь репетиторством, переводом или проводите экскурсии.</p>\n<p>&nbsp;</p>','1','17','8','1','0','1','1426165730','1','1426165730','0','0','0','1426165730','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('85','document','text/html','Изменение налоговой ставки налога на имущество физических лиц.','','','nalog-na-imychestvo','','1','0','0','79','0','','<p><span style=\"font-size: 100%;\">С 2015 года изменяется ставка налога на имущество физических лиц (в гл.32 НК РФ).</span></p>\n<p><span style=\"font-size: 100%;\">Налоговая база, т.е. сумма с которой будет взиматься налог, определяется по кадастровой стоимости объекта.</span></p>\n<table style=\"width: 100%;\" border=\"0\">\n<tbody>\n<tr>\n<td colspan=\"2\" class=\"title\"><span style=\"font-size: 100%;\">В г. Москве установлены следующие ставки:</span></td>\n</tr>\n<tr>\n<td><span style=\"font-size: 100%;\">до 10 млн</span></td>\n<td align=\"right\"><span style=\"font-size: 100%;\">0,1%</span></td>\n</tr>\n<tr>\n<td><span style=\"font-size: 100%;\">до 20 млн</span></td>\n<td align=\"right\"><span style=\"font-size: 100%;\">0,15%</span></td>\n</tr>\n<tr>\n<td><span style=\"font-size: 100%;\">до 50 млн</span></td>\n<td align=\"right\"><span style=\"font-size: 100%;\">0,2%</span></td>\n</tr>\n<tr>\n<td><span style=\"font-size: 100%;\">до 300 млн</span></td>\n<td align=\"right\"><span style=\"font-size: 100%;\">0,3%</span></td>\n</tr>\n<tr>\n<td><span style=\"font-size: 100%;\">свыше 300 млн</span></td>\n<td align=\"right\"><span style=\"font-size: 100%;\">2%</span></td>\n</tr>\n<tr></tr>\n</tbody>\n</table>\n<p></p>\n<p><span style=\"font-size: 100%;\">При наличии в собственности одной квартиры, налог не уплачивается.</span></p>\n<p><span style=\"font-size: 100%;\">При наличии в собственности двух квартир и более (доля в квартире тоже учитывается), можно выбрать с какой квартиры платить налог, предоставив в налоговую инспекцию по месту прописки заявление, прописав в нем данные по квартирам, и в отношении какой из квартир Вы хотите получить льготу на имущественный налог.</span></p>\n<p><span style=\"font-size: 100%;\">Если же Вами не предоставлена информация с какой квартиры взимать налог, то налоговая инспекция, по умолчанию, будет облагать налогом первую из приобретённых квартир.</span></p>\n<p><span style=\"font-size: 100%;\">Налог уплачивается до 15 ноября.</span></p>','1','17','5','1','0','1','1417091958','1','1499345218','0','0','0','1417091958','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('86','reference','text/html','Услуги','','','uslugi','','1','0','0','65','1','','30','1','3','2','1','0','1','1417516248','1','1417773974','0','0','0','1417516248','1','Услуги','0','0','0','0','0','0','0','0');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('92','document','text/html','Электронная подача отчетности','','','elektronnay-sdacha-otcheta','','1','0','0','86','0','','<p><strong>Электронная подача отчетности и корректировок.<br /></strong></p>\n<p>С 2014 года отчетность в налоговую инспекцию необходимо сдавать &nbsp;электронно.</p>\n<p>Стоимость услуги по электронной подаче отчётности:</p>\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n<tbody>\n<tr>\n<td>\n<p>При предоставлении отчетности в виде выгрузки в 1С.</p>\n</td>\n<td><span style=\"color: #057ec8;\"><b>1000</b></span></td>\n</tr>\n<tr>\n<td>\n<p>При ручном вводе отчетности в электронную систему.</p>\n</td>\n<td><span style=\"color: #057ec8;\"><b>1200*</b></span></td>\n</tr>\n</tbody>\n</table>\n<p><span style=\"font-size: 90%;\">* стоимость отправки НДС с 1 квартала 2015 года при ручном вводе будет иным, уточните у сотрудника компании.</span></p>\n<p><strong><span style=\"color: #800000;\">Сдаем отчётность и уточнения к ним во все налоговые инспекции России.</span></strong></p>\n<p><span style=\"color: #333399;\">Информируем наших клиентов!</span></p>\n<p>Отчетность необходимо предоставлять правильно заполненную (реквизиты компании, графы и суммы) при наличии ошибки система не дает ее отправить.</p>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>Внесение исправлений в отчетность.</td>\n<td><span style=\"color: #057ec8;\"><b>500</b></span></td>\n</tr>\n</tbody>\n</table>\n<p>Для сдачи отчётности необходимо предоставить :</p>\n<p>- саму отчетность;</p>\n<p>- копию паспорта генерального директора (страницы с фото и пропиской);</p>\n<p>- копию СНИЛСа генерального директора (свидетельство из пенсионного фонда).</p>\n<p>Наши плюсы для Вашей компании при электронной подаче отчетности именно у нас:</p>\n<ul>\n<ul>\n<ul>\n<li>Приятная цена</li>\n<li>Качество обслуживания</li>\n<li>Возможность получение услуги дистанционно, т.е. не покидая своего офиса или дома.</li>\n<li>Бесплатное! предоставление писем и требований налоговой инспекции по Вашей компании.</li>\n</ul>\n</ul>\n</ul>\n<p>Способы оплаты услуги можно посмотреть <a href=\"platezhi.html\">тут.</a></p>','1','15','5','1','0','1','1418899774','1','1498144971','0','0','0','1418899774','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('91','document','text/html','Получение справки по налогам, штрафам','','','spravka-po-nalogam-shtrafam','','1','0','0','86','0','','<p><strong><span style=\"font-size: 120%;\">Справка по налогам, штрафам, пеням.</span></strong></p>\n<p>Данная справка необходима в первую очередь бухгалтерам, а также может понадобиться для проверки контрагента, при реорганизации или ликвидации фирмы и т.д.</p>\n<p>В справке отображается информация о состоянии расчетов по налогам и сборам, по наличию пеней и штрафов, числящихся на компании, переплата или недоимка по налогам.</p>\n<p><b><span style=\"color: #333399;\">Электронная справка.</span></b></p>\n<p><span style=\"color: #333333;\"><b>Стоимость услуги&nbsp; -1500 рублей.</b></span></p>\n<p>Подготавливается электронный запрос и направляется в налоговую инспекцию , ответ налоговый орган предоставляет через 3 рабочих дня.</p>\n<p><span style=\"color: #333399;\"><b>Справка с печатью налогового органа, в бумажном виде.</b></span></p>\n<p><b>Стоимость услуги &ndash; 5000 рублей.</b></p>\n<p>Подготавливается запрос от компании,&nbsp; по доверенности подается в налоговую инспекцию по юридическому адресу фирмы. Через 10 рабочих дней налоговая инспекция предоставляет информацию.</p>','1','17','4','1','0','1','1417769727','1','1417769995','0','0','0','1417769727','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('94','document','text/html','Ежеквартальная сдача НДФЛ фирмами и ИП.','В скором времени компании будут в обязательном порядке ежеквартально сдавать отчетность по НДФЛ.','','ezekvartalinay-cdacha-ndfl','','1','0','0','79','0','','<p>В скором времени компании будут в обязательном порядке ежеквартально сдавать отчетность по НДФЛ.</p>\n<p>30 января 2015 года прошло первое чтение в Госдуме законопроекта №673772-6, который вносит изменение в НК РФ.</p>\n<p>Законопроект обязывает налоговых агентов, т.е. фирмы и ИП ежеквартально предоставлять&nbsp; в налоговую инспекцию суммы исчислений и удержаний налога на доходы физических лиц.</p>\n<p>Предусматриваются штрафные санкции за несвоевременную подачу отчета &ndash; 1000 рублей, а&nbsp; при не сдаче &ndash; блокировка р/с в банке.</p>\n<p>Таким образом, к привычным &laquo;старым&raquo; ежеквартальным отчетам в ближайшем будущем прибавиться новый отчет.</p>\n<p>Налоговый агент &ndash; лицо, которое вместо физического лица оплачивает налоги в бюджет (в понятие налога НДФЛ).</p>','1','17','7','1','0','1','1422980168','1','1422980210','0','0','0','1422980168','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('96','document','text/html','Блокировка счета при не сдачи отчетности в  срок.','blokirovka-scheta','','novyj-resurs','','1','0','0','79','0','','<p>01.01.2015 года были корректированы правила, касаемые блокировки банковского счёта налогоплательщика (организации или ИП). На текущий момент налоговики блокируют счёт налогоплательщика (организации или ИП), начиная с одиннадцатого дня просрочки сдачи налоговой декларации, и имеют право проводить эту процедуру в течение трех лет. Напомним, что ранее не был регламентирован срок, когда &nbsp;налоговые органы имели возможность &nbsp;применить предоставленное им право блокировки. Если налогоплательщик (организация или ИП) не выполнит в установленные сроки требования закона, налоговые органы обладают правом приостанавливать &nbsp;операции по счетам налогоплательщика. &nbsp;Исходя из этого, настоятельно рекомендуем Вам сдавать вовремя все необходимые отчётности, дабы избежать негативного исхода.</p>','1','17','9','1','0','1','1428393257','1','1428393556','0','0','0','1428393257','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('97','document','text/html','Электронная подача о применение / снятие торгового сбора','','','novyj-resurs1','','1','0','0','2','0','','','1','14','12','1','0','1','1436196310','1','1499430608','0','0','0','1436196310','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('98','document','text/html','Торговый сбор','','','torgovyi-sbor','','1','0','0','86','0','','<p><span style=\"font-size: 120%;\">С 01.07.2015г. в г. Москве появился новый налог &ndash; торговый сбор.</span></p>\n<p><span style=\"font-size: 120%;\">Торговый сбор обязывает компании и индивидуальных предпринимателей, занимающихся торговлей,&nbsp;вносить фиксированные суммы ежеквартально.</span></p>\n<p><span style=\"font-size: 120%;\">&nbsp;</span></p>\n<table border=\"0\">\n<tbody>\n<tr>\n<td><span style=\"font-size: 120%; color: #333399;\">Электронная подача уведомления о применение/снятие торгового сбора</span></td>\n<td><span style=\"color: #333399;\"><span style=\"font-size: 120%;\">&nbsp;&nbsp; 1500 р</span>&nbsp;</span></td>\n</tr>\n</tbody>\n</table>\n<p><span style=\"font-size: 120%;\"></span><span style=\"font-size: 120%;\"> <br /></span></p>\n<p><span style=\"font-size: 120%;\">Перечень необходимых документов:</span></p>\n<p><span style=\"font-size: 120%;\">- Информация о компании/ИП (ИНН,ОГРН, коды статистики)</span></p>\n<p><span style=\"font-size: 120%;\">- информация об объекте, который облагается налогом (например: договор аренды)</span></p>\n<p><span style=\"font-size: 120%;\">- паспортные данные директора или ИП (необходимые для подготовки доверенности, на основании которой отправляется электронный документ).</span></p>\n<p><span style=\"font-size: 120%;\"><span style=\"color: #333399;\"><strong>За более подробной информацией, в том числе о других наших услугах Вы можете обратиться по телефону +7 (499) 112-02-42.</strong></span></span></p>','1','15','6','1','0','1','1436260394','1','1496729295','0','0','0','1436260394','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('99','document','text/html','Акция','','','akciya','','1','0','0','0','0','','<h1 style=\"font-weight: normal; font-size: 20px;\">БУХГАЛТЕРСКОЕ ОБСЛУЖИВАНИЕ - СДАЙ ОТЧЕТ ВОВРЕМЯ!</h1>\n<p>Бухгалтера Юридической фирмы РЕГИСТРАЛ помогут сдать электронно Вашу отчетность при формировании выгрузки из 1С в форматах 1С или Excel, сформируют отчетность самостоятельно на основании предоставленной первичной документации или восстановят и сдадут всю бухгалтерию по Вашей организации.</p>\n<p>ВСЕ цены и нижеуказанные предложения и акции действительны ограниченное количество времени и только для новых клиентов.<br /><br /></p>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tbody>\n<tr>\n<td>\n<p><span style=\"color: #3366ff;\"><a href=\"[~92~]\" target=\"_blank\" style=\"color: #057ec8;\"><span style=\"color: #3366ff;\"><b>&laquo;НДС электронно&raquo;</b></span></a></span></p>\n<p><br />При предоставлении отчетности в виде выгрузки из 1С за каждый файл выгрузки оплачивается по 500 рублей (НДС, прибыль, баланс, декларация, среднесписочная численность, имущество&hellip;).</p>\n<p>При заказе электронной выгрузки для 3-х и более организаций одновременно действует скидка 20%.</p>\n<p>1 отчет = 400 рублей.</p>\n<p><br /> Приводи друга &ndash; получи ПОДАРОК <img src=\"assets/images/podarochnie-nabori(2).jpg\" style=\"vertical-align: middle;\" height=\"100\" width=\"150\" /><br /><br /></p>\n</td>\n<td style=\"width: 90px; color: #057ec8;\" align=\"center\">\n<p><img src=\"assets/images/akcia.png\" alt=\"Акция\" /></p>\n<p><span style=\"color: #3366ff;\">от 400 р.</span></p>\n</td>\n</tr>\n<tr>\n<td>\n<p><span style=\"color: #3366ff;\"><a href=\"[~28~]\" target=\"_blank\" style=\"color: #057ec8;\"><span style=\"color: #3366ff;\"><b>&laquo;Нулевой отчет&raquo;</b></span></a></span></p>\n<p><br />Подготовка пакета документов для подачи нулевой отчетности &ndash; 900 рублей</p>\n<p>ОСН ИП 3-НДФЛ подготовка и подача под ключ - 1500 рублей<br /> УСН нулевая отчетность за 1 квартал (для 1,2,3 кварталов) &ndash; 2000 рублей<br /> УСН 4 квартал &ndash; 3000 рублей</p>\n<p>ОСН нулевая отчетность за 1 квартал (для 1,2,3 кварталов) &ndash; 2700 рублей</p>\n<p>ОСН 4 квартал &ndash; 4000 рублей<br /><br /></p>\n</td>\n<td style=\"width: 90px; color: #057ec8;\" align=\"center\"><span style=\"color: #3366ff;\">от 900 р.</span></td>\n</tr>\n<tr>\n<td>\n<p><span style=\"color: #3366ff;\"><a href=\"[~30~]\" target=\"_blank\" style=\"color: #057ec8;\"><span style=\"color: #3366ff;\"><b>&laquo;Бухгалтерское обслуживание&raquo;</b></span></a></span></p>\n<p><br />Стоимость рассчитывается индивидуально для каждой организации, исходя из условий и требований к работе с Вашей компанией, количества производимых ежемесячных<br /> операций и количества сотрудников, находящихся в штате компании.<br /><br /></p>\n</td>\n<td style=\"width: 90px; color: #057ec8;\" align=\"center\"><span style=\"color: #3366ff;\">от 3000 р.</span></td>\n</tr>\n</tbody>\n</table>','1','17','7','1','0','1','1453281318','1','1453746984','0','0','0','1453281318','1','','0','0','0','0','0','0','1','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('101','document','text/html','С 2016 года появился новый ежеквартальный отчёт в налоговую инспекцию – 6 НДФЛ.','','','s-2016-goda-poyavilsya-novyj-ezhekvartalnyj-otchyot-v-nalogovuyu-inspekciyu-–-6-ndfl','','1','0','0','79','0','','<p><span style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">С 2016 года появился новый ежеквартальный отчёт в налоговую инспекцию &ndash; 6 НДФЛ.</span><br style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">Данный отчёт сдают все компании независимо от системы налогообложения, а также ИП-работодатели.</span><br style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">Сдаётся 6-НДФЛ с первого квартала 2016 года.</span><br style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">Сроки предоставления данного отчёта:</span><br style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">I квартал &ndash; по 4 мая (перенесено из-за праздников),</span><br style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">II квартал &ndash; по 31 июля</span><br style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">III квартал &ndash; по 31 октября</span><br style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">IV квартал &ndash; по 1 апреля.</span><br style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">В отчете отражается общая информация по: сумме начисления дохода, сумме налоговых вычетов, количеству сотрудников и прочее.</span><br style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">При не своевременной подаче отчёта предусмотрен штраф &ndash; 1000р., при не сдаче возможна блокировка р/с.</span><br style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">Если Вы сомневаетесь в правильности заполнения отчёта, обратитесь к нашим специалистам, которые грамотно составят&nbsp; и сдадут отчёт электронно.</span></p>','1','17','10','1','0','1','1454331261','1','1454331261','0','0','0','1454331261','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('102','document','text/html','Сплошное Федеральное статистическое наблюдение за деятельностью субъектов малого и среднего предпринимательства в 2016 году по итогам 2015 года.','','','sploshnoe-federalnoe-statisticheskoe-nablyudenie-za-deyatelnostyu-subektov-malogo-i-srednego-predprinimatelstva-v-2016-godu-po-itogam-2015-goda','','1','0','0','79','0','','<p><b>Сплошное Федеральное статистическое наблюдение за деятельностью субъектов малого и среднего предпринимательства в 2016 году по итогам 2015 года.</b></p>\n<p>Все&nbsp;компании, относящиеся к субъектам малого и среднего предпринимательства (до 100 сотрудников и выручка не более 2 миллиардов в год), обязаны сдать отчетность в органы статистики по форме МП-СПза 2015 год. Согласно ст.5 ФЗ №209 отчетность сдается в Росстат до &laquo;01&raquo; апреля 2016г.</p>\n<p>Штраф за непредставление отчетности для должностных лиц составляет 10 000 - 20&nbsp;000 рублей, а на компанию от 20&nbsp;000 до 70&nbsp;000 рублей (при повторном нарушении до 150&nbsp;000 рублей).</p>\n<p>Вы можете воспользоваться услугами Юридической фирмы РЕГИСТРАЛ для формирования и, при необходимости,электронной подачи отчетов в органы статистики.</p>','1','17','11','1','0','1','1456306658','1','1456306658','0','0','0','1456306658','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('103','document','text/html','СЗВ-М сдают все компания без исключения!','','','szv-m-sdayut-vse-kompaniya-bez-isklyucheniya!','','1','0','0','79','0','','<p>Форма СЗВ-М сдается компанией обязательно, даже если в организации числится только учредитель и он же является руководителем фирмы.</p>\n<p>По итогам <b><span style=\"text-decoration: underline;\">каждого месяца</span>,</b> все страхователи обязаны сдавать отчет по форме СЗВ-М в Пенсионный фонд РФ.</p>\n<p>В отчете отражаются все сотрудники компании независимо от того, производятся ли выплаты и иные вознаграждения работникам за месяц, т.к. это не является основанием для непредставления формы в ПФР.</p>\n<p>Подводя итог письма <b>ПФ РФ от 06.05.2016 № 08-22/6356</b><b> </b>можно сказать, что<b> </b>все фирмы, вне зависимости от того, платите вы сотруднику или нет, который числится в компании, а у любой компании есть Директор!, обязаны сдавать отчет СЗВ-М ежемесячно. И в случае непредставления формы, скорее всего, на компанию будет наложен предусмотренный штраф в размере от 500 рублей.</p>','1','17','12','1','0','1','1465285964','1','1465285964','0','0','0','1465285964','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('104','document','text/html','O компании','','','o-kompanii','','1','0','0','65','0','','','1','3','1','1','0','1','1499319888','1','1499319946','0','0','0','1499319888','1','','0','0','0','0','0','0','0','1');
INSERT INTO `srv37029_ufregru_site_content` VALUES ('105','document','text/html','спасибо','','','spasibo','','1','0','0','0','0','','<p><strong>Спасибо, что воспользовались формой обратной связи на нашем сайте.</strong></p>\n<p>Ваше сообщение будет рассмотрено в кротчайшие сроки, и, если оно требует ответа, Вы обязательно его получите.</p>\n<p>Отправленная информация:</p>\n<ul>\n<li><b>Ваше имя:</b> [*author*]</li>\n<li><b>Ваш телефон:</b> [+phone+]</li>\n<li><b>Ваш e-mail:</b> [+email+]</li>\n<li><b>Текст сообщения:</b> [+text+]</li>\n</ul>','1','21','8','1','0','1','1499676269','1','1499687099','0','0','0','1499676269','1','','0','0','0','0','0','0','1','1');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_content_metatags`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_content_metatags`;
CREATE TABLE `srv37029_ufregru_site_content_metatags` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `metatag_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `metatag_id` (`metatag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reference table between meta tags and content';

#
# Dumping data for table `srv37029_ufregru_site_content_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_htmlsnippets`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_htmlsnippets`;
CREATE TABLE `srv37029_ufregru_site_htmlsnippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

#
# Dumping data for table `srv37029_ufregru_site_htmlsnippets`
#

INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('1','WebLoginSideBar','WebLogin Tpl','0','2','0','<!-- #declare:separator <hr> -->\n<!-- login form section-->\n<form method=\"post\" name=\"loginfrm\" action=\"[+action+]\">\n    <input type=\"hidden\" value=\"[+rememberme+]\" name=\"rememberme\" />\n    <fieldset>\n        <h3>Your Login Details</h3>\n        <label for=\"username\">User: <input type=\"text\" name=\"username\" id=\"username\" tabindex=\"1\" onkeypress=\"return webLoginEnter(document.loginfrm.password);\" value=\"[+username+]\" /></label>\n    	<label for=\"password\">Password: <input type=\"password\" name=\"password\" id=\"password\" tabindex=\"2\" onkeypress=\"return webLoginEnter(document.loginfrm.cmdweblogin);\" value=\"\" /></label>\n    	<input type=\"checkbox\" id=\"checkbox_1\" name=\"checkbox_1\" tabindex=\"3\" size=\"1\" value=\"\" [+checkbox+] onclick=\"webLoginCheckRemember()\" /><label for=\"checkbox_1\" class=\"checkbox\">Remember me</label>\n    	<input type=\"submit\" value=\"[+logintext+]\" name=\"cmdweblogin\" class=\"button\" />\n	<a href=\"#\" onclick=\"webLoginShowForm(2);return false;\" id=\"forgotpsswd\">Forget Your Password?</a>\n	</fieldset>\n</form>\n<hr>\n<!-- log out hyperlink section -->\n<h4>You\'re already logged in</h4>\nDo you wish to <a href=\"[+action+]\" class=\"button\">[+logouttext+]</a>?\n<hr>\n<!-- Password reminder form section -->\n<form name=\"loginreminder\" method=\"post\" action=\"[+action+]\">\n    <fieldset>\n        <h3>It happens to everyone...</h3>\n        <input type=\"hidden\" name=\"txtpwdrem\" value=\"0\" />\n        <label for=\"txtwebemail\">Enter the email address of your account to reset your password: <input type=\"text\" name=\"txtwebemail\" id=\"txtwebemail\" size=\"24\" /></label>\n        <label>To return to the login form, press the cancel button.</label>\n    	<input type=\"submit\" value=\"Submit\" name=\"cmdweblogin\" class=\"button\" /> <input type=\"reset\" value=\"Cancel\" name=\"cmdcancel\" onclick=\"webLoginShowForm(1);\" class=\"button\" style=\"clear:none;display:inline\" />\n    </fieldset>\n</form>\n\n','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('2','mm_rules','Default ManagerManager rules.','0','3','0','// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n\n// example of how PHP is allowed - check that a TV named documentTags exists before creating rule\nif($modx->db->getValue(\"SELECT COUNT(id) FROM \" . $modx->getFullTableName(\'site_tmplvars\') . \" WHERE name=\'documentTags\'\")) {\n    mm_widget_tags(\'documentTags\',\' \'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n}\nmm_widget_showimagetvs(); // Always give a preview of Image TVs\n','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('3','adress','','0','9','0','<p>[+adress+]</p>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('4','body','','0','9','0','<div id=\"body\">\n	<div>    		\n		[!items!]\n    </div>\n</div>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('5','column_card','','0','9','0','<img src=\"[+img+]\" alt=\"[+pagetitle+]\">','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('6','column_contact','','0','9','0','<p>[+contact+]</p>\n','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('7','column_contact_footer','','0','9','0','[+contact+]','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('8','column_img','','0','9','0','<li><a href=\"[+link_out_site+]\" target=\"_blank\"><img src=\"[+img+]\" alt=\"[+pagetitle+]\"></a></li>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('9','column_item','','0','9','0','<div class=\"buklet\">\n	<a href=\"[~3~]\">Заказать</a>\n	<p>[+pagetitle+]</p>\n	[+content+]\n	<p class=\"price_item\">[+price+]</p>\n</div>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('10','column_rekl','','0','9','0',' <div>\n	 <p>[+longtitle+]</p>\n	 [+content+]\n</div>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('11','column_tpl','','0','9','0','<div>\n	<p>[+slaid_name+]</p>	\n	<p class=\"slaid_price\">[+price+]</p>	\n	[+content+]\n	<a href=\"[~3~]\">Заказать</a>\n</div>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('12','contacts','','0','9','0','<div id=\"head\">\n	<div class=\"logo_block_m\">\n		<a href=\"\">\n			<img src=\"/assets/templates/registral/img/logo_mob.png\">\n			<div id=\"logo_txt\">\n    			<p>[!getTV? &parent=`38` &tv=`title_page`!]</p>\n					<div class=\"clear\"></div>\n			</div>\n		</a>\n	</div>\n	<div>\n		<div class=\"logo_h\">\n			<a href=\"[~1~]\"><img src=\"[!getTV? &parent=`1` &tv=`logo_head`!]\" alt=\"logo\" ></a>\n    		<p>[!getTV? &parent=`38` &tv=`title_page`!]</p>\n		</div>\n		<nav id=\"menu\">\n			<div class=\"bug\">\n				<a href=\"#\" id=\"pull\">&nbsp;</a>\n			</div>\n			<div class=\"wrap_mob_memu\">\n					<div>\n					[!Wayfinder? &startId=`65` &level=`2` &selfClass=`selfItem` &rowTpl=`menuRowTpl` &parentRowTpl=`menuParentRowTpl`!]    		\n						<div class=\"tel_head\">\n						[!Ditto? &parents=`4` &tpl=`column_contact` &display=`2`&extenders=`customsort` &documents=`8,9`!]\n						</div>	\n					</div>\n					\n			</div>\n		</nav>\n	</div>\n</div>\n\n','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('13','contacty','','0','9','0','{{form}}','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('23','map','','0','9','0','<embed name=\"plugin\" src=\"assets/files/map-registralv2.swf\" type=\"application/x-shockwave-flash\">\n	','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('26','header','','0','9','0','<div id=\"sky\">\n	\n<div class=\"sky_m\">\n<ul>\n    <li><a href=\"http://ufreg.ru\">Бухгалтерские услуги</a>\n    </li>\n</ul>\n</div>	\n	<!--<object data=\"assets/flash/birds.swf\" type=\"application/x-shockwave-flash\">\n            <param value=\"assets/flash/birds.swf\" name=\"movie\">\n            <param value=\"transparent\" name=\"wmode\">\n            <!--[if lt IE 9]>\n            <span style=\"color: #fff; display: block; height: 1px; width: 1px; float: left;\">.</span>\n            <![endif]-->\n           <!-- </object>-->\n</div>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('14','footer','','0','9','0','<div id=\"footer\">\n	<div>\n	<div class=\"foot_logo\">\n		<a href=\"[~1~]\"><img src=\"[!getTV? &parent=`1` &tv=`logo_footer`!]\"></a>\n		<div id=\"foot_soc\">\n			<div>Мы в соц. сетях:  </div>\n			<div><a target=\"_blank\" href=\"[!getTV? &parent=`1` &tv=`vkcom`!]\"><img src=\"[!getTV? &parent=`38` &tv=`soc_sety_vkcom`!]\"></a></div>\n		</div>\n	</div>\n\n        <div class=\"foot_cont\">\n			<div class=\"foot_cont_w\">\n			<p>[!Ditto? &parents=`4` &tpl=`column_contact` &display=`2`!]</p>\n			<p>[!getTV? &parent=`1` &tv=`adress`!]</p>\n			</div>\n        </div>        \n        <div class=\"foot_pay\">\n			<div class=\"foot_pay_w\">\n        	<p>Мы принимаем:</p>\n            [!Ditto? &parents=`20` &tpl=`column_card` &display=`6`!]\n            <a href=\"[~27~]\">Все варианты оплаты</a>\n			</div>\n        </div>\n		</div>\n</div>\n{{LiveTex}}\n{{yandexMetrica}}\n{{zadarma}}\n\n','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('15','form','','0','11','0','[!EmailOrPhone!]\n[!eForm? &formid=`Send` &tpl=`form_tpl` &to=`info@ufreg.com` &report=`report_tpl` &gotoid=`105` &subject=`Заказ  бухгалтерских услуг` &from =`www.ufreg.ru` &fromname=`Бухгалтерских услуг` &eFormOnValidate=`isEmailOrPhone`!]','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('16','form_tpl','','0','11','0','<p>[+validationmessage+]</p>\n<form id=\"order\" method=\"post\" action=\"[~[*id*]~]\">		 \n	<div>\n		<input type=\"hidden\" name=\"formid\" value=\"Send\" />\n		<label for=\"author\">Ваше имя</label> <input type=\"text\" id=\"author\" name=\"author\" eform=\"Имя::1\" /><br>\n		<label for=\"phone\">Ваш телефон</label> <input type=\"text\" id=\"phone\" name=\"phone\"  /><br>\n		<label for=\"email\">Email:</label> <input type=\"text\" id=\"email\" name=\"email\" eform=\"email:email:0\" />		\n	</div>\n	<div>\n		<label for=\"text\">Сообщение</label><textarea id=\"text\" name=\"text\" rows=\"4\" cols=\"35\" class=\"required\" eform=\"Текст сообщения:html:1\"></textarea>\n		<div class=\"form_sub\">\n			<input type=\"submit\" class=\"submit_btn\" name=\"submit\" id=\"submit\" value=\" Отправить \" />\n		</div>\n	</div> \n	<input type=\"text\" name=\"usluga\" value=\"[!getID!]\" style=\"display:none\" />\n</form>\n[!str1!]\n','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('17','head','','0','9','0','<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=[(modx_charset)]\" />\n<meta name=\"keywords\" content=\"[*keywords*]\" />\n<meta name=\"description\" content=\"[*description*]\" />\n<base href=\"[(site_url)]\" />\n		<link rel=\"icon\" href=\"assets/templates/registral/favicon.png\" type=\"image/png\" />\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"assets/templates/registral/style/style.css\" />\n<script type=\"text/javascript\" src=\"assets/templates/registral/script/jquery-1.11.0.min.js\"></script>\n<script type=\"text/javascript\" src=\"assets/templates/registral/script/js.js\"></script>\n<title>[*longtitle*]</title>\n<script type=\"text/javascript\" src=\"baner/swfobject.js\"></script>\n<script type=\"text/javascript\">\n	<!-- Компания Adobe рекомендует разработчиками использовать для определения версии проигрывателя Flash Player объект SWFObject2. -->\n		<!-- Дополнительные сведения см. на странице SWFObject по адресу http://code.google.com/p/swfobject. -->\n	<!-- Информацию также можно получить в центре разработчиков Adobe Developer Connection в разделе \"Определение версии Flash Player и внедрение файлов SWF с SWFObject 2\" -->\n		<!-- Чтобы отключить проверку версии Flash Player, установите минимальное значение версии (ноль) -->\n			var swfVersionStr = \"11.2.0\";\n	<!-- xiSwfUrlStr может использоваться для определения экспресс-установщика SWF. -->\n		var xiSwfUrlStr = \"\";\n	var flashvars = {};\n	var params = {};\n	params.quality = \"high\";\n	params.bgcolor = \"#f4f9ff\";\n	params.play = \"true\";\n	params.loop = \"true\";\n	params.wmode = \"opaque\";\n	params.scale = \"showall\";\n	params.menu = \"true\";\n	params.devicefont = \"false\";\n	params.salign = \"\";\n	params.allowscriptaccess = \"sameDomain\";\n	var attributes = {};\n	attributes.id = \"baner\";\n	attributes.name = \"baner\";\n	attributes.align = \"middle\";\n	swfobject.embedSWF(\n		\"baner/baner.swf\", \"baner\",\n		\"680\", \"109\",\n		swfVersionStr, xiSwfUrlStr,\n		flashvars, params, attributes);\n</script>\n</head>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('18','header_old','','0','9','0','<div id=\"header\">\n	<div>\n    	<div>\n        	<a href=\"[~1~]\"><img src=\"[!getTV? &parent=`1` &tv=`logo_head`!]\" alt=\"logo\" ></a>\n            <div>\n               [!Ditto? &parents=`5` &tpl=`column_tpl` &orderBy=`id ASC`!]                \n            </div>\n            <img src=\"[!getTV? &parent=`38` &tv=`array_to_left`!]\" alt=\"left\">\n            <img src=\"[!getTV? &parent=`38` &tv=`array_to_right`!]\" alt=\"right\">\n        </div>\n    </div>	\n</div>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('19','logo_slaid','','0','9','0','<div id=\"carusel\">\n	<span class=\"prev\"></span>\n	<ul>\n		[!Ditto? &parents=`14` &tpl=`column_img`!]     \n	</ul>\n	<span class=\"next\"></span>\n</div>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('20','rekl','','0','9','0','<div id=\"rekl\">\n	<div>\n		[!Ditto? &parents=`10` &tpl=`column_rekl`&display=`3` &orderBy=`id ASC`!]\n		<section class=\"articles\">\n			<h1 class=\"title_list_info\">Полезная информация</h1>\n			[!Ditto? &startID=`79` &tpl=`news_idx_tpl` &paginate=`1` &dateFormat=`%H:%M - %d.%m.%Y` &display=`3` &orderBy=`pub_date DESC` !]\n		</section>\n		<div class=\"sl\"></div>\n		{{logo_slaid}}\n    </div>    \n</div>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('21','report_tpl','','0','11','0','<p>Это сообщение было отправлено посетителем по имени [+author+] с помощью формы обратной связи. </p>\n<table>\n<tr valign=\"top\"><td><b>Заказ услуги:</b></td><td>[+usluga+]</td></tr>\n<tr valign=\"top\"><td><b>Имя:</b></td><td>[+author+]</td></tr>\n<tr valign=\"top\"><td><b>Телефон:</b></td><td>[+phone+]</td></tr>\n<tr valign=\"top\"><td><b>Email:</b>:</td><td>[+email+]</td></tr>\n<tr valign=\"top\"><td><b>Сообщение:</b></td><td>[+text+]</td></tr>\n</table>\n\n<p>Вы можете использовать эту ссылку для ответа: <a href=\"mailto:[+email+]?subject=RE:[+subject+]\">[+email+]</a></p>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('22','thank_tpl','','0','11','0','<strong>Спасибо, что воспользовались формой обратной связи на нашем сайте.</strong>\n<p>Ваше сообщение будет рассмотрено в кротчайшие сроки, и, если оно требует ответа, Вы обязательно его получите.</p>\n<p>Отправленная информация:</p>\n<ul>\n<li><b>Ваше имя:</b> [+author+]</li>\n<li><b>Ваш телефон:</b> [+phone+]</li>\n<li><b>Ваш e-mail:</b> [+email+]</li>\n<li><b>Текст сообщения:</b> [+text+]</li>\n</ul>\n[[str2]]','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('24','table','','0','9','0','[!getTable? &parent=`[*id*]` &wont_table=`[*wont_table*]`!]','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('25','map1','','0','9','0','<div class=\"map\">\n	<iframe width=\"962\" scrolling=\"no\" height=\"340\" frameborder=\"0\" src=\"https://maps.google.com/maps/ms?hl=ru&amp;ie=UTF8&amp;oe=UTF8&amp;msa=0&amp;msid=213055875448570551925.0004e0957e6ad7c2a8c98&amp;t=m&amp;ll=55.740823,37.653944&amp;spn=0.002114,0.00456&amp;z=17&amp;iwloc=0004e09580b6b68d8038c&amp;output=embed\" marginwidth=\"0\" marginheight=\"0\"></iframe></div>\n	<a target=\"_blank\" href=\"https://maps.google.com/maps/ms?hl=ru&amp;ie=UTF8&amp;oe=UTF8&amp;msa=0&amp;msid=213055875448570551925.0004e0957e6ad7c2a8c98&amp;t=m&amp;ll=55.740823,37.653944&amp;spn=0.002114,0.00456&amp;z=17&amp;iwloc=0004e09580b6b68d8038c&amp;source=embed\" rel=\"nofollow\" class=\"zoom\"><span>Просмотреть увеличенную карту</span></a>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('27','news_tpl','шаблон статьи','0','9','0','<article class=\"article\">\n	<p class=\"date\">[+date+]</p>\n	<h3><a href=\"[~[+id+]~]\" title=\"[+pagetitle+]\">[+pagetitle+]</a></h3>\n	[[SubStr? &field=`content` &size=`350` &docid=`[+id+]`]]\n</article>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('28','news_idx_tpl','шаблон статьи на главной','0','9','0','<article class=\"article\">\n	<p class=\"date\">[+date+]</p>\n	<h3><a href=\"[~[+id+]~]\" title=\"[+pagetitle+]\">[+pagetitle+]</a></h3>\n	[[SubStr? &field=`content` &size=`180` &docid=`[+id+]`]]\n</article>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('29','yandexMetrica','Яндекс метрика','0','10','0','<!-- Yandex.Metrika counter -->\n<script type=\"text/javascript\">\nvar yaParams = {/*Здесь параметры визита*/};\n</script>\n\n<script type=\"text/javascript\">\n(function (d, w, c) {\n    (w[c] = w[c] || []).push(function() {\n        try {\n            w.yaCounter26048709 = new Ya.Metrika({id:26048709,\n                    webvisor:true,\n                    clickmap:true,\n                    trackLinks:true,\n                    accurateTrackBounce:true,params:window.yaParams||{ }});\n        } catch(e) { }\n    });\n\n    var n = d.getElementsByTagName(\"script\")[0],\n        s = d.createElement(\"script\"),\n        f = function () { n.parentNode.insertBefore(s, n); };\n    s.type = \"text/javascript\";\n    s.async = true;\n    s.src = (d.location.protocol == \"https:\" ? \"https:\" : \"http:\") + \"//mc.yandex.ru/metrika/watch.js\";\n\n    if (w.opera == \"[object Opera]\") {\n        d.addEventListener(\"DOMContentLoaded\", f, false);\n    } else { f(); }\n})(document, window, \"yandex_metrika_callbacks\");\n</script>\n<noscript><div><img src=\"//mc.yandex.ru/watch/26048709\" style=\"position:absolute; left:-9999px;\" alt=\"\" /></div></noscript>\n<!-- /Yandex.Metrika counter -->','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('30','menuRowTpl','','0','0','0','<li[+wf.id+][+wf.classes+]><a href=\"[+wf.link+]\" title=\"[+wf.title+]\" [+wf.attributes+]>[+wf.linktext+]</a></li>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('31','menuParentRowTpl','','0','0','0','<li[+wf.id+][+wf.classes+]><a href=\"[+wf.link+]\" title=\"[+wf.title+]\" [+wf.attributes+][[if? &is=`[+id+]:is:86` &then=` style=\"color:#ff7100;\"` &else=``]]>[+wf.linktext+]</a>[[if? &is=`[+id+]:is:86` &then=`[+wf.wrapper+]` &else=``]]</li>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('32','LiveTex','','0','0','0','<!--<script>\n var liveTex = true,\n liveTexID = 95125,\n liveTex_object = true;\nvar cb = function() {\n var lt = document.createElement(\'script\');\n lt.type =\'text/javascript\';\n lt.async = true;\n lt.src = \'//cs15.livetex.ru/js/client.js\';\n var sc = document.getElementsByTagName(\'script\')[0];\n if ( sc ) sc.parentNode.insertBefore(lt, sc);\n else document.documentElement.firstChild.appendChild(lt);\n};\nvar raf = requestAnimationFrame || mozRequestAnimationFrame ||\nwebkitRequestAnimationFrame || msRequestAnimationFrame;\nif (raf) {\n raf(cb)\n} else {\n window.addEventListener(\'load\', cb)\n};\n </script>-->','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('33','baner','','0','0','0','<div id=\"baner\">\n	<a href=\"http://www.adobe.com/go/getflash\">\n		<img src=\"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif\" alt=\"Загрузить Adobe Flash Player\" />\n	</a>\n	<p>Для корректного отображения данной страницы требуется проигрыватель Flash Player версии 11.2.0 или новее.</p>\n</div>','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('35','contacts_home','верхний блок на главную','0','9','0','<div id=\"head\">\n	<div class=\"logo_block_m\">\n		<a href=\"\">\n			<img src=\"/assets/templates/registral/img/logo_mob.png\">\n			<div id=\"logo_txt\">\n    			<p>[!getTV? &parent=`38` &tv=`title_page`!]</p>\n					<div class=\"clear\"></div>\n			</div>\n		</a>\n	</div>\n	<div>\n		<div class=\"logo_h\">\n			<a href=\"[~1~]\"><img src=\"[!getTV? &parent=`1` &tv=`logo_head`!]\" alt=\"logo\" ></a>\n    		<p>[!getTV? &parent=`38` &tv=`title_page`!]</p>\n		</div>\n		<nav id=\"menu\">\n			<div class=\"bug\">\n				<a href=\"#\" id=\"pull\">&nbsp;</a>\n			</div>\n			<div class=\"wrap_mob_memu\">\n					<div>\n					[!Wayfinder? &startId=`65` &level=`2` &excludeDocs=`1`	&selfClass=`selfItem` &rowTpl=`menuRowTpl` &parentRowTpl=`menuParentRowTpl`!]    		\n						<div class=\"tel_head\">\n						[!Ditto? &parents=`4` &tpl=`column_contact` &display=`2`&extenders=`customsort` &documents=`8,9`!]\n						</div>	\n					</div>\n					\n			</div>\n		</nav>\n	</div>\n</div>\n\n','0');
INSERT INTO `srv37029_ufregru_site_htmlsnippets` VALUES ('34','zadarma','','0','0','0','<!--<script type=\"text/javascript\">\nvar ZCallbackWidgetLinkId = \'c2c075fe19620978cf81c625ce841025\';\nvar ZCallbackWidgetDomain = \'my.zadarma.com\';\n(function(){\nvar lt = document.createElement(\'script\');\nlt.type =\'text/javascript\';\nlt.charset = \'utf-8\';\nlt.async = true;\nlt.src = \'https://\' + ZCallbackWidgetDomain + \'/callbackWidget/js/main.min.js?unq=\'+Math.floor(Math.random(0,1000)*1000);\nvar sc = document.getElementsByTagName(\'script\')[0];\nif (sc) sc.parentNode.insertBefore(lt, sc);\nelse document.documentElement.firstChild.appendChild(lt);\n})();\n</script>-->','0');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_keywords`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_keywords`;
CREATE TABLE `srv37029_ufregru_site_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site keyword list';

#
# Dumping data for table `srv37029_ufregru_site_keywords`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_metatags`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_metatags`;
CREATE TABLE `srv37029_ufregru_site_metatags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL DEFAULT '' COMMENT 'tag name',
  `tagvalue` varchar(255) NOT NULL DEFAULT '',
  `http_equiv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - use http_equiv tag style, 0 - use name',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site meta tags';

#
# Dumping data for table `srv37029_ufregru_site_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_module_access`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_module_access`;
CREATE TABLE `srv37029_ufregru_site_module_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

#
# Dumping data for table `srv37029_ufregru_site_module_access`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_module_depobj`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_module_depobj`;
CREATE TABLE `srv37029_ufregru_site_module_depobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

#
# Dumping data for table `srv37029_ufregru_site_module_depobj`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_modules`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_modules`;
CREATE TABLE `srv37029_ufregru_site_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Site Modules';

#
# Dumping data for table `srv37029_ufregru_site_modules`
#

INSERT INTO `srv37029_ufregru_site_modules` VALUES ('1','Doc Manager','<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions','0','0','4','0','0','','0','','0','0','docman435243542tf542t5t','1','','include_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}');
INSERT INTO `srv37029_ufregru_site_modules` VALUES ('2','Товары','','0','0','0','0','0','','0','','0','0','ddabd134b61d415042c816a68fb09b81','0','','include_once(MODX_BASE_PATH.\'assets/modules/mymodul/head.php\');\n\n$res = $modx->db->query(\'select id,name,content,price,color,coments,page_id from srv37029_ufregru_items\');\n$tmp = mysql_fetch_assoc($res);\nif(empty($tmp))$tmp[\'id\'] = 0;\necho \'<form class=\"myform\" name=\"myform\" action=\"\">\';\necho \'<p id=\"test\"> &nbsp; </p>\';\necho \'<p id=\"test1\">  </p>\';\ndo\n{\n	echo \'<div id=\"changecolor\" name=\"\'.$tmp[\'id\'].\'\" style=\"background-color: \'.$tmp[\'color\'].\';\">\';\n   	echo \'<input name=\"\'.$tmp[\'id\'].\'\" type=\"text\" disabled value=\"\'.$tmp[\'name\'].\'\">\';\n	echo \'<input name=\"\'.$tmp[\'id\'].\'\" type=\"text\" disabled value=\"\'.$tmp[\'price\'].\'\">\';\n	echo \'<input name=\"\'.$tmp[\'id\'].\'\" type=\"text\" disabled value=\"\'.$tmp[\'page_id\'].\'\"><br>\';\n	echo \'<input name=\"\'.$tmp[\'id\'].\'\" type=\"text\" disabled value=\"\'.$tmp[\'content\'].\'\">\';	\n	echo \'<textarea name=\"\'.$tmp[\'id\'].\'\" disabled>\'.$tmp[\'coments\'].\'</textarea><br>\';\n	echo \'</div>\';\n	echo \'<input name=\"\'.$tmp[\'id\'].\'\" type=\"button\" value=\"Редактировать\">\';\n	echo \'<input name=\"\'.$tmp[\'id\'].\'\" type=\"button\" value=\"Удалить\">\';\n	echo \'<input name=\"\'.$tmp[\'id\'].\'\" disabled class=\"selectcolor\" type=\"button\" value=\"Цвет\">\';	\n	echo \'<input name=\"\'.$tmp[\'id\'].\'\" disabled type=\"button\" value=\"Сброс\">\';	\n	\n}while($tmp = mysql_fetch_assoc($res));\necho \'<br><br> <input type=\"button\" name=\"add\" value=\"Добавить\">\';\necho \'<input type=\"button\" name=\"save\" value=\"Сохранить\">\';\necho \'</form>\';\n');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_plugin_events`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_plugin_events`;
CREATE TABLE `srv37029_ufregru_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order',
  PRIMARY KEY (`pluginid`,`evtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

#
# Dumping data for table `srv37029_ufregru_site_plugin_events`
#

INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('1','3','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('1','13','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('1','28','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('1','31','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('1','92','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('2','23','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('2','29','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('2','35','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('2','41','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('2','47','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('2','73','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('3','100','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('4','85','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('4','87','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('4','88','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('5','34','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('5','35','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('5','36','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('5','40','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('5','41','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('5','42','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('6','3','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('7','80','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('7','81','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('7','93','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('8','28','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('8','29','0');
INSERT INTO `srv37029_ufregru_site_plugin_events` VALUES ('8','53','0');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_plugins`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_plugins`;
CREATE TABLE `srv37029_ufregru_site_plugins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

#
# Dumping data for table `srv37029_ufregru_site_plugins`
#

INSERT INTO `srv37029_ufregru_site_plugins` VALUES ('1','Quick Manager+','<strong>1.5.6</strong> Enables QuickManager+ front end content editing support','0','4','0','// In manager\nif (isset($_SESSION[\'mgrValidated\'])) {\n\n    $show = TRUE;\n\n    if ($disabled  != \'\') {\n        $arr = explode(\",\", $disabled );\n        if (in_array($modx->documentIdentifier, $arr)) {\n            $show = FALSE;\n        }\n    }\n\n    if ($show) {\n        // Replace [*#tv*] with QM+ edit TV button placeholders\n        if ($tvbuttons == \'true\') {\n            $e = $modx->Event;\n            if ($e->name == \'OnParseDocument\') {\n                 $output = &$modx->documentOutput;\n                 $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n                 $modx->documentOutput = $output;\n             }\n         }\n        // In manager\n        if (isset($_SESSION[\'mgrValidated\'])) {\n            include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n            $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass);\n        }\n    }\n}','0','&jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &1=undefined;; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv','1','');
INSERT INTO `srv37029_ufregru_site_plugins` VALUES ('2','CodeMirror','<strong>1.2b</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirrir 3.13','0','4','0','$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');\n\n','0','&theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light; &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;false &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;true','0','');
INSERT INTO `srv37029_ufregru_site_plugins` VALUES ('3','TransAlias','<strong>1.0.2</strong> Human readible URL translation supporting multiple languages and overrides','0','4','0','require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';','0','&table_name=Trans table;list;common,russian,dutch,german,czech,utf8,utf8lowercase;russian &char_restrict=Restrict alias to;list;lowercase alphanumeric,alphanumeric,legal characters;legal characters &remove_periods=Remove Periods;list;Yes,No;No &word_separator=Word Separator;list;dash,underscore,none;dash &override_tv=Override TV name;string;','0',' ');
INSERT INTO `srv37029_ufregru_site_plugins` VALUES ('4','TinyMCE Rich Text Editor','<strong>3.5.8</strong> Javascript WYSIWYG Editor','0','4','0','require MODX_BASE_PATH.\'assets/plugins/tinymce/plugin.tinymce.php\';\n','0','&customparams=Custom Parameters;textarea;valid_elements : \"*[*]\", &mce_formats=Block Formats;text;p,h1,h2,h3,h4,h5,h6,div,blockquote,code,pre &entity_encoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &mce_path_options=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &mce_resizing=Advanced Resizing;list;true,false;true &disabledButtons=Disabled Buttons;text; &link_list=Link List;list;enabled,disabled;enabled &webtheme=Web Theme;list;simple,editor,creative,custom;simple &webPlugins=Web Plugins;text;style,advimage,advlink,searchreplace,contextmenu,paste,fullscreen,xhtmlxtras,media &webButtons1=Web Buttons 1;text;undo,redo,selectall,|,pastetext,pasteword,|,search,replace,|,hr,charmap,|,image,link,unlink,anchor,media,|,cleanup,removeformat,|,fullscreen,code,help &webButtons2=Web Buttons 2;text;bold,italic,underline,strikethrough,sub,sup,|,|,blockquote,bullist,numlist,outdent,indent,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,|,styleprops &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;95% &height=Height;text;500','0','');
INSERT INTO `srv37029_ufregru_site_plugins` VALUES ('5','FileSource','<strong>0.1</strong> Save snippet and plugins to file','0','4','0','require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';','0','','0','');
INSERT INTO `srv37029_ufregru_site_plugins` VALUES ('6','Search Highlight','<strong>1.5</strong> Used with AjaxSearch to show search terms highlighted on page linked from search results','0','5','0','/*\n  ------------------------------------------------------------------------\n  Plugin: Search_Highlight v1.5\n  ------------------------------------------------------------------------\n  Changes:\n  18/03/10 - Remove possibility of XSS attempts being passed in the URL\n           - look-behind assertion improved\n  29/03/09 - Removed urldecode calls;\n           - Added check for magic quotes - if set, remove slashes\n           - Highlights terms searched for when target is a HTML entity\n  18/07/08 - advSearch parameter and pcre modifier added\n  10/02/08 - Strip_tags added to avoid sql injection and XSS. Use of $_REQUEST\n  01/03/07 - Added fies/updates from forum from users mikkelwe/identity\n  (better highlight replacement, additional div around term/removal message)\n  ------------------------------------------------------------------------\n  Description: When a user clicks on the link from the AjaxSearch results\n    the target page will have the terms highlighted.\n  ------------------------------------------------------------------------\n  Created By:  Susan Ottwell (sottwell@sottwell.com)\n               Kyle Jaebker (kjaebker@muddydogpaws.com)\n\n  Refactored by Coroico (www.evo.wangba.fr) and TS\n  ------------------------------------------------------------------------\n  Based off the the code by Susan Ottwell (www.sottwell.com)\n    http://modxcms.com/forums/index.php/topic,1237.0.html\n  ------------------------------------------------------------------------\n  CSS:\n    The classes used for the highlighting are the same as the AjaxSearch\n  ------------------------------------------------------------------------\n  Notes:\n    To add a link to remove the highlighting and to show the searchterms\n    put the following on your page where you would like this to appear:\n\n      <!--search_terms-->\n\n    Example output for this:\n\n      Search Terms: the, template\n      Remove Highlighting\n\n    Set the following variables to change the text:\n\n      $termText - the text before the search terms\n      $removeText - the text for the remove link\n  ------------------------------------------------------------------------\n*/\nglobal $database_connection_charset;\n// Conversion code name between html page character encoding and Mysql character encoding\n// Some others conversions should be added if needed. Otherwise Page charset = Database charset\n$pageCharset = array(\n  \'utf8\' => \'UTF-8\',\n  \'latin1\' => \'ISO-8859-1\',\n  \'latin2\' => \'ISO-8859-2\'\n);\n\nif (isset($_REQUEST[\'searched\']) && isset($_REQUEST[\'highlight\'])) {\n\n  // Set these to customize the text for the highlighting key\n  // --------------------------------------------------------\n     $termText = \'<div class=\"searchTerms\">Search Terms: \';\n     $removeText = \'Remove Highlighting\';\n  // --------------------------------------------------------\n\n  $highlightText = $termText;\n  $advsearch = \'oneword\';\n\n  $dbCharset = $database_connection_charset;\n  $pgCharset = array_key_exists($dbCharset,$pageCharset) ? $pageCharset[$dbCharset] : $dbCharset;\n\n  // magic quotes check\n  if (get_magic_quotes_gpc()){\n    $searched = strip_tags(stripslashes($_REQUEST[\'searched\']));\n    $highlight = strip_tags(stripslashes($_REQUEST[\'highlight\']));\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags(stripslashes($_REQUEST[\'advsearch\']));\n  }\n  else {\n    $searched = strip_tags($_REQUEST[\'searched\']);\n    $highlight = strip_tags($_REQUEST[\'highlight\']);\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags($_REQUEST[\'advsearch\']);\n  }\n\n  if ($advsearch != \'nowords\') {\n\n    $searchArray = array();\n    if ($advsearch == \'exactphrase\') $searchArray[0] = $searched;\n    else $searchArray = explode(\' \', $searched);\n\n    $searchArray = array_unique($searchArray);\n    $nbterms = count($searchArray);\n    $searchTerms = array();\n    for($i=0;$i<$nbterms;$i++){\n      // Consider all possible combinations\n      $word_ents = array();\n      $word_ents[] = $searchArray[$i];\n      $word_ents[] = htmlentities($searchArray[$i], ENT_NOQUOTES, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_COMPAT, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_QUOTES, $pgCharset);\n      // Avoid duplication\n      $word_ents = array_unique($word_ents);\n      foreach($word_ents as $word) $searchTerms[]= array(\'term\' => $word, \'class\' => $i+1);\n    }\n\n    $output = $modx->documentOutput; // get the parsed document\n    $body = explode(\"<body\", $output); // break out the head\n\n    $highlightClass = explode(\' \',$highlight); // break out the highlight classes\n    /* remove possibility of XSS attempts being passed in URL */\n    foreach ($highlightClass as $key => $value) {\n       $highlightClass[$key] = preg_match(\'/[^A-Za-z0-9_-]/ms\', $value) == 1 ? \'\' : $value;\n    }\n\n    $pcreModifier = ($pgCharset == \'UTF-8\') ? \'iu\' : \'i\';\n    $lookBehind = \'/(?<!&|&[\\w#]|&[\\w#]\\w|&[\\w#]\\w\\w|&[\\w#]\\w\\w\\w|&[\\w#]\\w\\w\\w\\w|&[\\w#]\\w\\w\\w\\w\\w)\';  // avoid a match with a html entity\n    $lookAhead = \'(?=[^>]*<)/\'; // avoid a match with a html tag\n\n    $nbterms = count($searchTerms);\n    for($i=0;$i<$nbterms;$i++){\n      $word = $searchTerms[$i][\'term\'];\n      $class = $highlightClass[0].\' \'.$highlightClass[$searchTerms[$i][\'class\']];\n\n      $highlightText .= ($i > 0) ? \', \' : \'\';\n      $highlightText .= \'<span class=\"\'.$class.\'\">\'.$word.\'</span>\';\n\n      $pattern = $lookBehind . preg_quote($word, \'/\') . $lookAhead . $pcreModifier;\n      $replacement = \'<span class=\"\' . $class . \'\">${0}</span>\';\n      $body[1] = preg_replace($pattern, $replacement, $body[1]);\n    }\n\n    $output = implode(\"<body\", $body);\n\n    $removeUrl = $modx->makeUrl($modx->documentIdentifier);\n    $highlightText .= \'<br /><a href=\"\'.$removeUrl.\'\" class=\"ajaxSearch_removeHighlight\">\'.$removeText.\'</a></div>\';\n\n    $output = str_replace(\'<!--search_terms-->\',$highlightText,$output);\n    $modx->documentOutput = $output;\n  }\n}','0','','1','');
INSERT INTO `srv37029_ufregru_site_plugins` VALUES ('7','Forgot Manager Login','<strong>1.1.6</strong> Resets your manager login when you forget your password via email confirmation','0','4','0','require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';','0','','0','');
INSERT INTO `srv37029_ufregru_site_plugins` VALUES ('8','ManagerManager','<strong>0.3.11</strong> Customize the MODx Manager to offer bespoke admin functions for end users.','0','4','0','$js_default_url_local = $modx->config[\'site_url\']. \'/assets/js/jquery.min.js\';\n$js_default_url_remote = \'http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js\';\n$asset_path = $modx->config[\'base_path\'] . \'assets/plugins/managermanager/mm.inc.php\';\ninclude($asset_path);\n','0','&config_chunk=Configuration Chunk;text;mm_rules; &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &which_jquery=jQuery source;list;local (assets/js),remote (google code),manual url (specify below);local (assets/js) &js_src_type=jQuery URL override;text;','0','');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_snippets`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_snippets`;
CREATE TABLE `srv37029_ufregru_site_snippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

#
# Dumping data for table `srv37029_ufregru_site_snippets`
#

INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('1','ListIndexer','<strong>1.0.1</strong> A flexible way to show the most recent Resources and other Resource lists','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/listindexer/snippet.listindexer.php\';','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('2','Reflect','<strong>2.1.0</strong> Generates date-based archives using Ditto','0','7','0','/*\n * Author: \n *      Mark Kaplan for MODx CMF\n * \n * Note: \n *      If Reflect is not retrieving its own documents, make sure that the\n *          Ditto call feeding it has all of the fields in it that you plan on\n *       calling in your Reflect template. Furthermore, Reflect will ONLY\n *          show what is currently in the Ditto result set.\n *       Thus, if pagination is on it will ONLY show that page\'s items.\n*/\n \n\n// ---------------------------------------------------\n//  Includes\n// ---------------------------------------------------\n\n$reflect_base = isset($reflect_base) ? $modx->config[\'base_path\'].$reflect_base : $modx->config[\'base_path\'].\"assets/snippets/reflect/\";\n/*\n    Param: ditto_base\n    \n    Purpose:\n    Location of Ditto files\n\n    Options:\n    Any valid folder location containing the Ditto source code with a trailing slash\n\n    Default:\n    [(base_path)]assets/snippets/ditto/\n*/\n\n$config = (isset($config)) ? $config : \"default\";\n/*\n    Param: config\n\n    Purpose:\n    Load a custom configuration\n\n    Options:\n    \"default\" - default blank config file\n    CONFIG_NAME - Other configs installed in the configs folder or in any folder within the MODx base path via @FILE\n\n    Default:\n    \"default\"\n    \n    Related:\n    - <extenders>\n*/\n\nrequire($reflect_base.\"configs/default.config.php\");\nrequire($reflect_base.\"default.templates.php\");\nif ($config != \"default\") {\n    require((substr($config, 0, 5) != \"@FILE\") ? $reflect_base.\"configs/$config.config.php\" : $modx->config[\'base_path\'].trim(substr($config, 5)));\n}\n\n// ---------------------------------------------------\n//  Parameters\n// ---------------------------------------------------\n\n$id = isset($id) ? $id.\"_\" : false;\n/*\n    Param: id\n\n    Purpose:\n    Unique ID for this Ditto instance for connection with other scripts (like Reflect) and unique URL parameters\n\n    Options:\n    Any valid folder location containing the Ditto source code with a trailing slash\n\n    Default:\n    \"\" - blank\n*/\n$getDocuments = isset($getDocuments) ? $getDocuments : 0;\n/*\n    Param: getDocuments\n\n    Purpose:\n    Force Reflect to get documents\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    0 - off\n*/\n$showItems = isset($showItems) ? $showItems : 1;\n/*\n    Param: showItems\n\n    Purpose:\n    Show individual items in the archive\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    1 - on\n*/\n$groupByYears = isset($groupByYears)? $groupByYears : 1;\n/*\n    Param: groupByYears\n\n    Purpose:\n    Group the archive by years\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    1 - on\n*/\n$targetID = isset($targetID) ? $targetID : $modx->documentObject[\'id\'];\n/*\n    Param: targetID\n\n    Purpose:\n    ID for archive links to point to\n\n    Options:\n    Any MODx document with a Ditto call setup with extenders=`dateFilter`\n    \n    Default:\n    Current MODx Document\n*/\n$dateSource = isset($dateSource) ? $dateSource : \"createdon\";\n/*\n    Param: dateSource\n\n    Purpose:\n    Date source to display for archive items\n\n    Options:\n    # - Any UNIX timestamp from MODx fields or TVs such as createdon, pub_date, or editedon\n    \n    Default:\n    \"createdon\"\n    \n    Related:\n    - <dateFormat>\n*/\n$dateFormat = isset($dateFormat) ? $dateFormat : \"%d-%b-%y %H:%M\";  \n/*\n    Param: dateFormat\n\n    Purpose:\n    Format the [+date+] placeholder in human readable form\n\n    Options:\n    Any PHP valid strftime option\n\n    Default:\n    \"%d-%b-%y %H:%M\"\n    \n    Related:\n    - <dateSource>\n*/\n$yearSortDir = isset($yearSortDir) ? $yearSortDir : \"DESC\";\n/*\n    Param: yearSortDir\n\n    Purpose:\n    Direction to sort documents\n\n    Options:\n    ASC - ascending\n    DESC - descending\n\n    Default:\n    \"DESC\"\n    \n    Related:\n    - <monthSortDir>\n*/\n$monthSortDir = isset($monthSortDir) ? $monthSortDir : \"ASC\";\n/*\n    Param: monthSortDir\n\n    Purpose:\n    Direction to sort the months\n\n    Options:\n    ASC - ascending\n    DESC - descending\n\n    Default:\n    \"ASC\"\n    \n    Related:\n    - <yearSortDir>\n*/\n$start = isset($start)? intval($start) : 0;\n/*\n    Param: start\n\n    Purpose:\n    Number of documents to skip in the results\n    \n    Options:\n    Any number\n\n    Default:\n    0\n*/  \n$phx = (isset($phx))? $phx : 1;\n/*\n    Param: phx\n\n    Purpose:\n    Use PHx formatting\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    1 - on\n*/\n\n// ---------------------------------------------------\n//  Initialize Ditto\n// ---------------------------------------------------\n$placeholder = ($id != false && $getDocuments == 0) ? true : false;\nif ($placeholder === false) {\n    $rID = \"reflect_\".rand(1,1000);\n    $itemTemplate = isset($tplItem) ? $tplItem: \"@CODE:\".$defaultTemplates[\'item\'];\n    $dParams = array(\n        \"id\" => \"$rID\",\n        \"save\" => \"3\",  \n        \"summarize\" => \"all\",\n        \"tpl\" => $itemTemplate,\n    );\n    \n    $source = $dittoSnippetName;\n    $params = $dittoSnippetParameters;\n        // TODO: Remove after 3.0\n        \n    if (isset($params)) {\n        $givenParams = explode(\"|\",$params);\n        foreach ($givenParams as $parameter) {\n            $p = explode(\":\",$parameter);\n            $dParams[$p[0]] = $p[1];\n        }\n    }\n    /*\n        Param: params\n\n        Purpose:\n        Pass parameters to the Ditto instance used to retreive the documents\n\n        Options:\n        Any valid ditto parameters in the format name:value \n        with multiple parameters separated by a pipe (|)\n        \n        Note:\n        This parameter is only needed for config, start, and phx as you can\n        now simply use the parameter as if Reflect was Ditto\n\n        Default:\n        [NULL]\n    */\n    \n    $reflectParameters = array(\'reflect_base\',\'config\',\'id\',\'getDocuments\',\'showItems\',\'groupByYears\',\'targetID\',\'yearSortDir\',\'monthSortDir\',\'start\',\'phx\',\'tplContainer\',\'tplYear\',\'tplMonth\',\'tplMonthInner\',\'tplItem\',\'save\');\n    $params =& $modx->event->params;\n    if(is_array($params)) {\n        foreach ($params as $param=>$value) {\n            if (!in_array($param,$reflectParameters) && substr($param,-3) != \'tpl\') {\n                $dParams[$param] = $value;\n            }\n        }\n    }\n\n    $source = isset($source) ? $source : \"Ditto\";\n    /*\n        Param: source\n\n        Purpose:\n        Name of the Ditto snippet to use\n\n        Options:\n        Any valid snippet name\n\n        Default:\n        \"Ditto\"\n    */\n    $snippetOutput = $modx->runSnippet($source,$dParams);\n    $ditto = $modx->getPlaceholder($rID.\"_ditto_object\");\n    $resource = $modx->getPlaceholder($rID.\"_ditto_resource\");\n} else {\n    $ditto = $modx->getPlaceholder($id.\"ditto_object\");\n    $resource = $modx->getPlaceholder($id.\"ditto_resource\");\n}\nif (!is_object($ditto) || !isset($ditto) || !isset($resource)) {\n    return !empty($snippetOutput) ? $snippetOutput : \"The Ditto object is invalid. Please check it.\";\n}\n\n// ---------------------------------------------------\n//  Templates\n// ---------------------------------------------------\n\n$templates[\'tpl\'] = isset($tplContainer) ? $ditto->template->fetch($tplContainer): $defaultTemplates[\'tpl\'];\n/*\n    Param: tplContainer\n\n    Purpose:\n    Container template for the archive\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[\'year\'] = isset($tplYear) ? $ditto->template->fetch($tplYear): $defaultTemplates[\'year\'];\n/*\n    Param: tplYear\n\n    Purpose:\n    Template for the year item\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[\'year_inner\'] = isset($tplYearInner) ? $ditto->template->fetch($tplYearInner): $defaultTemplates[\'year_inner\'];\n/*\n    Param: tplYearInner\n\n    Purpose:\n    Template for the year item (the ul to hold the year template)\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[\'month\'] = isset($tplMonth) ? $ditto->template->fetch($tplMonth): $defaultTemplates[\'month\'];\n/*\n    Param: tplMonth\n\n    Purpose:\n    Template for the month item\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[\'month_inner\'] = isset($tplMonthInner) ? $ditto->template->fetch($tplMonthInner): $defaultTemplates[\'month_inner\'];\n/*\n    Param: tplMonthInner\n\n    Purpose:\n    Template for the month item  (the ul to hold the month template)\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[\'item\'] = isset($tplItem) ? $ditto->template->fetch($tplItem): $defaultTemplates[\'item\'];\n/*\n    Param: tplItem\n\n    Purpose:\n    Template for the individual item\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n\n$ditto->addField(\"date\",\"display\",\"custom\");\n    // force add the date field if receiving data from a Ditto instance\n\n// ---------------------------------------------------\n//  Reflect\n// ---------------------------------------------------\n\nif (function_exists(\"reflect\") === FALSE) {\nfunction reflect($templatesDocumentID, $showItems, $groupByYears, $resource, $templatesDateSource, $dateFormat, $ditto, $templates,$id,$start,$yearSortDir,$monthSortDir) {\n    global $modx;\n    $cal = array();\n    $output = \'\';\n    $ph = array(\'year\'=>\'\',\'month\'=>\'\',\'item\'=>\'\',\'out\'=>\'\');\n    $build = array();\n    $stop = count($resource);\n\n    // loop and fetch all the results\n    for ($i = $start; $i < $stop; $i++) {\n        $date = getdate($resource[$i][$templatesDateSource]);\n        $year = $date[\"year\"];\n        $month = $date[\"mon\"];\n        $cal[$year][$month][] = $resource[$i];\n    }\n    if ($yearSortDir == \"DESC\") {\n        krsort($cal);\n    } else {\n        ksort($cal);\n    }\n    foreach ($cal as $year=>$months) {\n        if ($monthSortDir == \"ASC\") {\n            ksort($months);\n        } else {\n            krsort($months);\n        }\n        $build[$year] = $months;\n    }\n    \n    foreach ($build as $year=>$months) {\n        $r_year = \'\';\n        $r_month = \'\';\n        $r_month_2 = \'\';\n        $year_count = 0;\n        $items = array();\n        \n        foreach ($months as $mon=>$month) {\n            $month_text = strftime(\"%B\", mktime(10, 10, 10, $mon, 10, $year));\n            $month_url = $ditto->buildURL(\"month=\".$mon.\"&year=\".$year.\"&day=false&start=0\",$templatesDocumentID,$id);\n            $month_count = count($month);\n            $year_count += $month_count;\n            $r_month = $ditto->template->replace(array(\"year\"=>$year,\"month\"=>$month_text,\"url\"=>$month_url,\"count\"=>$month_count),$templates[\'month\']);\n            if ($showItems) {\n                foreach ($month as $item) {\n                    $items[$year][$mon][\'items\'][] = $ditto->render($item, $templates[\'item\'], false, $templatesDateSource, $dateFormat, array(),$phx);\n                }\n                $r_month_2 = $ditto->template->replace(array(\'wrapper\' => implode(\'\',$items[$year][$mon][\'items\'])),$templates[\'month_inner\']);\n                $items[$year][$mon] = $ditto->template->replace(array(\'wrapper\' => $r_month_2),$r_month);\n            } else {\n                $items[$year][$mon] = $r_month;\n            }\n        }\n        if ($groupByYears) {\n            $year_url = $ditto->buildURL(\"year=\".$year.\"&month=false&day=false&start=0\",$templatesDocumentID,$id);\n            $r_year =  $ditto->template->replace(array(\"year\"=>$year,\"url\"=>$year_url,\"count\"=>$year_count),$templates[\'year\']);\n            $var = $ditto->template->replace(array(\'wrapper\'=>implode(\'\',$items[$year])),$templates[\'year_inner\']);\n            $output .= $ditto->template->replace(array(\'wrapper\'=>$var),$r_year);\n        } else {\n            $output .= implode(\'\',$items[$year]);\n        }\n    }\n\n    $output = $ditto->template->replace(array(\'wrapper\'=>$output),$templates[\'tpl\']);\n    $modx->setPlaceholder($id.\'reset\',$ditto->buildURL(\'year=false&month=false&day=false\',$templatesDocumentID,$id));\n\nreturn $output;\n    \n}\n}\n\nreturn reflect($targetID, $showItems, $groupByYears, $resource, $dateSource, $dateFormat, $ditto, $templates,$id,$start,$yearSortDir,$monthSortDir);','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('3','Breadcrumbs','<strong>1.0.3</strong> Configurable breadcrumb page-trail navigation','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/breadcrumbs/snippet.breadcrumbs.php\';','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('4','WebLogin','<strong>1.1</strong> Allows webusers to login to protected pages in the website, supporting multiple user groups','0','2','0','# Created By Raymond Irving 2004\n#::::::::::::::::::::::::::::::::::::::::\n# Params:	\n#\n#	&loginhomeid 	- (Optional)\n#		redirects the user to first authorized page in the list.\n#		If no id was specified then the login home page id or \n#		the current document id will be used\n#\n#	&logouthomeid 	- (Optional)\n#		document id to load when user logs out	\n#\n#	&pwdreqid 	- (Optional)\n#		document id to load after the user has submited\n#		a request for a new password\n#\n#	&pwdactid 	- (Optional)\n#		document id to load when the after the user has activated\n#		their new password\n#\n#	&logintext		- (Optional) \n#		Text to be displayed inside login button (for built-in form)\n#\n#	&logouttext 	- (Optional)\n#		Text to be displayed inside logout link (for built-in form)\n#	\n#	&tpl			- (Optional)\n#		Chunk name or document id to as a template\n#				  \n#	Note: Templats design:\n#			section 1: login template\n#			section 2: logout template \n#			section 3: password reminder template \n#\n#			See weblogin.tpl for more information\n#\n# Examples:\n#\n#	[[WebLogin? &loginhomeid=`8` &logouthomeid=`1`]] \n#\n#	[[WebLogin? &loginhomeid=`8,18,7,5` &tpl=`Login`]] \n\n# Set Snippet Paths \n$snipPath = $modx->config[\'base_path\'] . \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->insideManager()) {\n	return \'\'; # don\'t go any further when inside manager\n}\n\n# deprecated params - only for backward compatibility\nif(isset($loginid)) $loginhomeid=$loginid;\nif(isset($logoutid)) $logouthomeid = $logoutid;\nif(isset($template)) $tpl = $template;\n\n# Snippet customize settings\n$liHomeId	= isset($loginhomeid)? explode(\",\",$loginhomeid):array($modx->config[\'login_home\'],$modx->documentIdentifier);\n$loHomeId	= isset($logouthomeid)? $logouthomeid:$modx->documentIdentifier;\n$pwdReqId	= isset($pwdreqid)? $pwdreqid:0;\n$pwdActId	= isset($pwdactid)? $pwdactid:0;\n$loginText	= isset($logintext)? $logintext:\'Login\';\n$logoutText	= isset($logouttext)? $logouttext:\'Logout\';\n$tpl		= isset($tpl)? $tpl:\"\";\n\n# System settings\n$webLoginMode = isset($_REQUEST[\'webloginmode\'])? $_REQUEST[\'webloginmode\']: \'\';\n$isLogOut		= $webLoginMode==\'lo\' ? 1:0;\n$isPWDActivate	= $webLoginMode==\'actp\' ? 1:0;\n$isPostBack		= count($_POST) && (isset($_POST[\'cmdweblogin\']) || isset($_POST[\'cmdweblogin_x\']));\n$txtPwdRem 		= isset($_REQUEST[\'txtpwdrem\'])? $_REQUEST[\'txtpwdrem\']: 0;\n$isPWDReminder	= $isPostBack && $txtPwdRem==\'1\' ? 1:0;\n\n$site_id = isset($site_id)? $site_id: \'\';\n$cookieKey = substr(md5($site_id.\"Web-User\"),0,15);\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once ($modx->config[\'site_manager_path\'] . \"includes/crypt.class.inc.php\");\n\nif ($isPWDActivate || $isPWDReminder || $isLogOut || $isPostBack) {\n	# include the logger class\n	include_once $modx->config[\'site_manager_path\'] . \"includes/log.class.inc.php\";\n	include_once $snipPath.\"weblogin/weblogin.processor.inc.php\";\n}\n\ninclude_once $snipPath.\"weblogin/weblogin.inc.php\";\n\n# Return\nreturn $output;\n','0','&loginhomeid=Login Home Id;string; &logouthomeid=Logout Home Id;string; &logintext=Login Button Text;string; &logouttext=Logout Button Text;string; &tpl=Template;string;','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('5','Ditto','<strong>2.1.1</strong> Summarizes and lists pages to create blogs, catalogs, PR archives, bio listings and more','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/ditto/snippet.ditto.php\';','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('6','WebSignup','<strong>1.1</strong> Basic Web User account creation/signup system','0','2','0','# Created By Raymond Irving April, 2005\n#::::::::::::::::::::::::::::::::::::::::\n# Usage:     \n#    Allows a web user to signup for a new web account from the website\n#    This snippet provides a basic set of form fields for the signup form\n#    You can customize this snippet to create your own signup form\n#\n# Params:    \n#\n#    &tpl        - (Optional) Chunk name or document id to use as a template\n#    &groups     - Web users groups to be assigned to users\n#    &useCaptcha - (Optional) Determine to use (1) or not to use (0) captcha\n#                  on signup form - if not defined, will default to system\n#                  setting. GD is required for this feature. If GD is not \n#                  available, useCaptcha will automatically be set to false;\n#                  \n#    Note: Templats design:\n#        section 1: signup template\n#        section 2: notification template \n#\n# Examples:\n#\n#    [[WebSignup? &tpl=`SignupForm` &groups=`NewsReaders,WebUsers`]] \n\n# Set Snippet Paths \n$snipPath = $modx->config[\'base_path\'] . \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->insideManager()) {\n    return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl = isset($tpl)? $tpl:\"\";\n$useCaptcha = isset($useCaptcha)? $useCaptcha : $modx->config[\'use_captcha\'] ;\n// Override captcha if no GD\nif ($useCaptcha && !gd_info()) $useCaptcha = 0;\n\n# setup web groups\n$groups = isset($groups) ? explode(\',\',$groups):array();\nfor($i=0;$i<count($groups);$i++) $groups[$i] = trim($groups[$i]);\n\n# System settings\n$isPostBack        = count($_POST) && isset($_POST[\'cmdwebsignup\']);\n\n$output = \'\';\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/websignup.inc.php\";\n\n# Return\nreturn $output;','0','&tpl=Template;string;','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('7','MemberCheck','<strong>1.1</strong> Show chunks based on a logged in Web User\'s group membership','0','2','0','return require MODX_BASE_PATH.\'assets/snippets/membercheck/snippet.membercheck.php\';','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('8','phpthumb','<strong>1.1</strong> PHPThumb creates thumbnails and altered images on the fly and caches them','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('9','FirstChildRedirect','<strong>1.0</strong> Automatically redirects to the first child of a Container Resource','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/firstchildredirect/snippet.firstchildredirect.php\';','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('10','eForm','<strong>1.4.4.7</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/eform/snippet.eform.php\';','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('11','Personalize','<strong>2.1</strong> Personalize snippet','0','2','0','return require MODX_BASE_PATH.\'assets/snippets/personalize/snippet.personalize.php\';','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('12','if','<strong>1.2</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('13','Wayfinder','<strong>2.0.1</strong> Completely template-driven and highly flexible menu builder','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/wayfinder/snippet.wayfinder.php\';','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('14','Jot','<strong>1.1.4</strong> User comments with moderation and email subscription','0','7','0','/*####\n#\n# Author: Armand \"bS\" Pondman (apondman@zerobarrier.nl)\n#\n# Latest Version: http://modxcms.com/Jot-998.html\n# Jot Demo Site: http://projects.zerobarrier.nl/modx/\n# Documentation: http://wiki.modxcms.com/index.php/Jot (wiki)\n#\n####*/\n\n$jotPath = $modx->config[\'base_path\'] . \'assets/snippets/jot/\';\ninclude_once($jotPath.\'jot.class.inc.php\');\n\n$Jot = new CJot;\n$Jot->VersionCheck(\"1.1.4\");\n$Jot->Set(\"path\",$jotPath);\n$Jot->Set(\"action\", $action);\n$Jot->Set(\"postdelay\", $postdelay);\n$Jot->Set(\"docid\", $docid);\n$Jot->Set(\"tagid\", $tagid);\n$Jot->Set(\"subscribe\", $subscribe);\n$Jot->Set(\"moderated\", $moderated);\n$Jot->Set(\"captcha\", $captcha);\n$Jot->Set(\"badwords\", $badwords);\n$Jot->Set(\"bw\", $bw);\n$Jot->Set(\"sortby\", $sortby);\n$Jot->Set(\"numdir\", $numdir);\n$Jot->Set(\"customfields\", $customfields);\n$Jot->Set(\"guestname\", $guestname);\n$Jot->Set(\"canpost\", $canpost);\n$Jot->Set(\"canview\", $canview);\n$Jot->Set(\"canedit\", $canedit);\n$Jot->Set(\"canmoderate\", $canmoderate);\n$Jot->Set(\"trusted\", $trusted);\n$Jot->Set(\"pagination\", $pagination);\n$Jot->Set(\"placeholders\", $placeholders);\n$Jot->Set(\"subjectSubscribe\", $subjectSubscribe);\n$Jot->Set(\"subjectModerate\", $subjectModerate);\n$Jot->Set(\"subjectAuthor\", $subjectAuthor);\n$Jot->Set(\"notify\", $notify);\n$Jot->Set(\"notifyAuthor\", $notifyAuthor);\n$Jot->Set(\"validate\", $validate);\n$Jot->Set(\"title\", $title);\n$Jot->Set(\"authorid\", $authorid);\n$Jot->Set(\"css\", $css);\n$Jot->Set(\"cssFile\", $cssFile);\n$Jot->Set(\"cssRowAlt\", $cssRowAlt);\n$Jot->Set(\"cssRowMe\", $cssRowMe);\n$Jot->Set(\"cssRowAuthor\", $cssRowAuthor);\n$Jot->Set(\"tplForm\", $tplForm);\n$Jot->Set(\"tplComments\", $tplComments);\n$Jot->Set(\"tplModerate\", $tplModerate);\n$Jot->Set(\"tplNav\", $tplNav);\n$Jot->Set(\"tplNotify\", $tplNotify);\n$Jot->Set(\"tplNotifyModerator\", $tplNotifyModerator);\n$Jot->Set(\"tplNotifyAuthor\", $tplNotifyAuthor);\n$Jot->Set(\"tplSubscribe\", $tplSubscribe);\n$Jot->Set(\"debug\", $debug);\n$Jot->Set(\"output\", $output);\nreturn $Jot->Run();','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('15','AjaxSearch','<strong>1.9.3b</strong> Ajax and non-Ajax search that supports results highlighting','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/ajaxSearch/snippet.ajaxSearch.php\';','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('16','WebChangePwd','<strong>1.0</strong> Allows Web User to change their password from the front-end of the website','0','2','0','# Created By Raymond Irving April, 2005\n#::::::::::::::::::::::::::::::::::::::::\n# Params:	\n#\n#	&tpl			- (Optional)\n#		Chunk name or document id to use as a template\n#				  \n#	Note: Templats design:\n#			section 1: change pwd template\n#			section 2: notification template \n#\n# Examples:\n#\n#	[[WebChangePwd? &tpl=`ChangePwd`]] \n\n# Set Snippet Paths \n$snipPath  = (($modx->insideManager())? \"../\":\"\");\n$snipPath .= \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->insideManager()) {\n	return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl		= isset($tpl)? $tpl:\"\";\n\n# System settings\n$isPostBack		= count($_POST) && isset($_POST[\'cmdwebchngpwd\']);\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/webchangepwd.inc.php\";\n\n# Return\nreturn $output;\n\n\n\n','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('17','UltimateParent','<strong>2.0</strong> Travels up the document tree from a specified document and returns its \"ultimate\" non-root parent','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/ultimateparent/snippet.ultimateparent.php\';','0','','');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('18','getTV','','0','9','0','\nif(!isset($parent) || !isset($tv))return \'памылка\';\n\n$elements = $modx->getAllChildren($parent);\n$el=\'\';\nforeach ($elements as $item){	\n	$el = $modx->getTemplateVarOutput(true, $item[\'id\']);	\n	if($el[$tv]!=\'\') return $el[$tv];		\n	}	\n	return;\n','0','',' ');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('19','items','','0','9','0','\n$res = $modx->db->query(\'select page_id,name,content,price from srv37029_ufregru_items\');\n$row = mysql_fetch_assoc($res);\n$first = 0;\nif(empty($row))return;\ndo{	\n	echo \'<div class=\"buklet_wrap\">\';	\n	echo \'<div class=\"buklet\">\';	\n	//echo \'<a href=\"[~3~]\">Заказать</a>\';\n	/*switch($first){\n		case 0:\n			echo \'<p><a href=\"[~30~]\">\'.$row[\'name\'].\'</a></p>\';\n			break;\n		case 1:\n			echo \'<a href=\"[~3~]\">Заказать</a>\';\n			echo \'<p><a href=\"[~29~]\">\'.$row[\'name\'].\'</a></p>\';\n			break;\n		case 2:\n			echo \'<a href=\"[~3~]\">Заказать</a>\';\n			echo \'<p><a href=\"[~28~]\">\'.$row[\'name\'].\'</a></p>\';\n			break;\n		case 3: \n			echo \'<p><a href=\"\">\'.$row[\'name\'].\'</a></p>\';\n			break;\n	}	*/\n	if($row[\'page_id\']!=0)	\n		echo \'<a href=\"[~3~]?id=\'.$row[\'page_id\'].\'\">Заказать</a><p><a href=\"[~\'.$row[\'page_id\'].\'~]\">\'.$row[\'name\'].\'</a></p>\';\n	else \n		echo \'<p><a href=\"\">\'.$row[\'name\'].\'</a></p>\';\n	echo \'<p>\'.$row[\'content\'].\'</p>\';\n	//echo \'<p>Заказ информационной выписки в электронной базе НФС РоссииПредоставление заказчику полученной он-лайн выписки по электронной почте</p>\';	\n	echo \'<p class=\"price_item\">\'.$row[\'price\'].\' </p>\';\n	echo \'</div>\';\n	echo \'</div>\';\n	$first++;\n\n}while($row = mysql_fetch_assoc($res));\n','0','',' ');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('20','short_phone','','0','9','0','\nif(!isset($parent))return \'памылка\';\n$elements = $modx->getAllChildren($parent);\n$txt=\'\';\n$count=0;\nforeach ($elements as $item){\n	$count++;\n	if($count>2)break;\n	$el = $modx->getTemplateVarOutput(true, $item[\'id\']);\n	$str = trim($el[\'contact\']);\n	list(,$str) = explode(\'(\', $str);\n	if($count>1)\n		$txt .= \'(\'.$str.\' \';	\n	else \n		$txt .= \'(\'.$str.\', \';	\n}\nreturn $txt;\n','0','',' ');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('21','delete_item','','0','9','0','\nif(!isset($id))return \'памылка\';\n$res = $modx->db->query(\'delete from users where id=\'.$id);\nif(!$res) echo \'error\';\nelse \'complete\';\n','0','',' ');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('22','getTable','Вставляем таблицу если необходимо','0','9','0','\nif(!isset($parent))return \'памылка\';\n	if(isset($wont_table) && !empty($wont_table)){\n	echo \'<table class=\"price\"  cellspacing=\"0\" cellpadding=\"0\">\n				<tr>\n					<th>Вид услуги</th> \n					<th>Описание</th> \n					<th>Стоимость</th> \n					<th>&nbsp;</th>\n				</tr> \';\n$elements = $modx->getActiveChildren($parent);\n$el=\'\';\n$last = false;	\nforeach ($elements as $item){		\n	$el = $modx->getTemplateVarOutput(array(\'colspan\', \'price\',\'view_vichet\',\'link\',\'content\',\'pick_out\',\'addButton\'), $item[\'id\']);\n	$str = \"\";\n	$usl = \"\";\n	if($el[\'colspan\'] == 1)\n		$str = \'<tr><td colspan=\"2\">\';\n	else \n		$str = \'<tr><td>\';\n	\n	\n	if(!empty($el[\'link\']))	\n			if(is_numeric($el[\'link\']))\n				$str .= \'<a href=\"[~\'.$el[\'link\'].\'~]\">\'.$el[\'view_vichet\'].\'</a></td>\';	\n			else\n				$str .= \'<a href=\"\'.$el[\'link\'].\'\" target=\"_blank\">\'.$el[\'view_vichet\'].\'</a></td>\';	\n		else $str .= \'<span>\'.$el[\'view_vichet\'].\'</span></td>\';\n	\n	if($el[\'pick_out\'] == 1) \n		$str = substr_replace($str, \' class=\"last\"\', 3, 0);\n	\n	if($el[\'colspan\'] == 1)\n		$str .= \'<td class=\"money\">\'.$el[\'price\'].\'</td><td class=\"zakaz\"></td></tr>\';\n	else \n		$str .= \'<td class=\"content\">\'.$el[\'content\'].\'</td><td class=\"money\">\'.$el[\'price\'].\'</td><td class=\"zakaz\"></td></tr>\';\n	\n		//добавляем к кнопке определение услуги\n	if(!empty($el[\'link\']))	\n			if(is_numeric($el[\'link\']))\n				$usl = $el[\'link\'];	\n			else\n				$usl = $el[\'view_vichet\'];	\n		else $usl = $el[\'view_vichet\'];	\n				\n		//конец определения услуги\n		\n	if($el[\'addButton\'] == 1) \n		$str = substr_replace($str, \'<a href=\"[~3~]?id=\'.$usl.\'\">Заказать</a>\', strlen($str)-10, 0);		\n	echo $str;\n	}			\n	echo \'</table>\';\n	\n}\n	else ;\n\nreturn;\n','0','',' ');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('23','SubStr','Обрезает текст до нужно величины','0','9','0','\nmb_internal_encoding(\"UTF-8\");\n$size= isset($size)? $size:\"200\";\n$docid = (isset($docid)) ? $docid : $modx->documentIdentifier;\n$field = isset($field)? $field:\"content\";\n\n$docFields = $modx->getDocument($docid);\n\n$text = $docFields[$field];\n$text = strip_tags($text);\n$text = mb_substr($text,0,$size);\n\n$text = explode(\" \",$text);\narray_pop($text);\n$text = implode(\" \",$text);\nreturn $text.\'<span>...</span>\';\n','0','',' ');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('24','EmailOrPhone','Одно из двух полей','0','0','0','\nfunction isEmailOrPhone(&$fields, &$vMsg, &$rMsg){\n  if (trim($fields[\'phone\']) == \'\' && trim($fields[\'email\']) == \'\') {\n    $vMsg[] = \'Введите или телефон или email!\';\n    return true;\n  } else {\n    return true;\n  }\n}\n','0','',' ');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('25','getID','выводит услугу для заказа','0','0','0','\n$pattern = \"/^[а-яё 0-9]+$/ui\";\n$id=($_GET[\'id\']);\n$id = (preg_match($pattern, $id))?$id:\"\";\n$pid = $id;\n$huy = $modx->getDocument($pid,\'pagetitle, longtitle, id, description, menutitle\');\n \n//параметры\n$tol = (is_numeric($id)) ? $huy[\'pagetitle\'] : $id;\n$title = (!isset($title)) ? $huy[\'longtitle\'] : \"$title\";\n$target = (!isset($target)) ? \"\" : \"target=\\\"_$target\\\"\";\n$link = (!isset($link)) ? \"\" : \"link=\\\"$link\\\"\";\n$class = (!isset($class)) ? \"\" : \"class=\\\"$class\\\"\";\n$output .= $tol;\nreturn $output;\n','0','',' ');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('26','sanks','выводит инфу на спасибо','0','0','0','\necho \"hello\";\n','0','',' ');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('27','eFormFunctions','','0','0','0','\nif(!function_exists(\"beforeParseFunction\")){\n    function beforeParseFunction(&$fields, &$templates){\n        $limit = 5;\n        $options = \'\';\n        for($i=0;$i<$limit;$i++)\n            $options .= \'<option value=\"\'.$i.\'\">option \'.$i.\'</option>\';\n        //replace the placeholder in the form template\n        $templates[\'tpl\'] = str_replace(\"[+extraoptions+]\",$options,$templates[\'tpl\']);\n        //set some arbitrary session variable\n        $_SESSION[\'myName\']=\"TobyL\";\n        return true; //important!\n    }\n}\n','0','',' ');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('28','str1','','0','0','0','\nrequire_once \'assets/templates/registral/storage.php\';\nstorage::init();\n$author = ($_POST[\'author\']);\nstorage::write(\"author\", $author);\n\n$phone = ($_POST[\'phone\']);\nstorage::write(\"phone\", $phone);\n\n$email = ($_POST[\'email\']);\nstorage::write(\"email\", $email);\n','0','',' ');
INSERT INTO `srv37029_ufregru_site_snippets` VALUES ('29','str2','','0','0','0','\nrequire_once \'assets/templates/registral/storage.php\';\nstorage::init();\nif (!storage::exists(\"author\")) {\n  die(\"Данные не были сохранены ранее!\");\n}\n$author = storage::read(\"author\");\n\nif (!storage::exists(\"phone\")) {\n  die(\"Данные не были сохранены ранее!\");\n}\n$phone = storage::read(\"phone\");\n\nif (!storage::exists(\"email\")) {\n  die(\"Данные не были сохранены ранее!\");\n}\n$email = storage::read(\"email\");\n\n$output .= \'<ul><li><b>Ваше имя: </b>\'.$author.\'</li><li><b>Ваш e-mail: </b>\'.$phone.\'</li><li><b>Текст сообщения: </b>\'.$email.\'</li></ul>\';\n\nreturn $output;\n\n\n','0','',' ');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_templates`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_templates`;
CREATE TABLE `srv37029_ufregru_site_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

#
# Dumping data for table `srv37029_ufregru_site_templates`
#

INSERT INTO `srv37029_ufregru_site_templates` VALUES ('3','Minimal Template','Default minimal empty template (content returned only)','0','0','','0','[*content*]','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('4','MODxHost','<strong>1.0</strong> Legacy MODx Host template including dropdown menu','0','1','','0','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n\n<head>\n  <title>[(site_name)] | [*pagetitle*]</title>\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=[(modx_charset)]\" />\n  <base href=\"[(site_url)]\"></base>\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/layout.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/modxmenu.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/form.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/modx.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/print.css\" type=\"text/css\" media=\"print\" />\n  <link rel=\"alternate\" type=\"application/rss+xml\" title=\"RSS 2.0\" href=\"[(site_url)][~11~]\" />\n  <script src=\"[(site_manager_url)]media/script/mootools/mootools.js\" type=\"text/javascript\"></script>\n  <script src=\"assets/templates/modxhost/drop_down_menu.js\" type=\"text/javascript\"></script>\n</head>\n<body>\n<div id=\"wrapper\">\n  <div id=\"minHeight\"></div>\n  <div id=\"outer\">\n    <div id=\"inner\">\n      <div id=\"right\">\n        <div id=\"right-inner\">\n          <h1 style=\"text-indent: -5000px;padding: 0px; margin:0px; font-size: 1px;\">[(site_name)]</h1>\n          <div id=\"sidebar\">\n            <h2>News:</h2>\n            [[Ditto? &parents=`2` &display=`2` &total=`20` &removeChunk=`Comments` &tpl=`nl_sidebar`]]\n            <div id=\"recentdocsctnr\">\n              <h2>Most Recent:</h2>\n				<a name=\"recentdocs\"></a><ul class=\"LIn_shortMode\">[[Ditto?parents=0&display=5&tpl=\'@CODE:<li><a href=\"[+url+]\" title=\"[+pagetitle+]\">[+pagetitle+]</a> <span class=\"LIn_date\">[+date+]</span> <span class=\"LIn_desc\"></span></li>\']]</ul> </div>\n            <h2>Login:</h2>\n            <div id=\"sidebarlogin\">[!WebLogin? &tpl=`WebLoginSideBar` &loginhomeid=`[(site_start)]`!]</div>\n            <h2>Meta:</h2>\n            <p><a href=\"http://validator.w3.org/check/referer\" title=\"This page validates as XHTML 1.0 Transitional\">Valid <abbr title=\"eXtensible HyperText Markup Language\">XHTML</abbr></a></p>\n            <p><a href=\"http://jigsaw.w3.org/css-validator/check/referer\" title=\"This page uses valid Cascading Stylesheets\" rel=\"external\">Valid <abbr title=\"W3C Cascading Stylesheets\">css</abbr></a></p>\n            <p><a href=\"http://modx.com\" title=\"Ajax CMS and PHP Application Framework\">MODX</a></p>\n          </div>\n          <!-- close #sidebar -->\n        </div>\n        <!-- end right inner-->\n      </div>\n      <!-- end right -->\n      <div id=\"left\">\n        <div id=\"left-inner\">\n          [[Breadcrumbs?]]\n          <div id=\"content\">\n            <div class=\"post\">\n              <h2>[*longtitle*]</h2>\n              [*#content*] </div>\n            <!-- close .post (main column content) -->\n          </div>\n          <!-- close #content -->\n        </div>\n        <!-- end left-inner -->\n      </div>\n      <!-- end left -->\n    </div>\n    <!-- end inner -->\n    <div id=\"clearfooter\"></div>\n    <div id=\"header\">\n      <h1><a id=\"logo\" href=\"[~[(site_start)]~]\" title=\"[(site_name)]\">[(site_name)]</a></h1>\n\n      <div id=\"search\"><!--search_terms--><span id=\"search-txt\">SEARCH</span><a name=\"search\"></a>[!AjaxSearch? &ajaxSearch=`1` &landingPage=`8` &moreResultsPage=`8` &addJscript=`0` &showIntro=`0` &ajaxMax=`5` &extract=`1`!]</div>\n      <div id=\"ajaxmenu\"> [[Wayfinder?startId=`0` &outerTpl=`mh.OuterTpl` &innerTpl=`mh.InnerTpl` &rowTpl=`mh.RowTpl` &innerRowTpl=`mh.InnerRowTpl` &firstClass=`first` &hereClass=``]] </div>\n      <!-- end topmenu -->\n    </div>\n    <!-- end header -->\n    <br style=\"clear:both;height:0;font-size: 1px\" />\n    <div id=\"footer\">\n      <p> <a href=\"http://modx.com\" title=\"Ajax CMS and PHP Application Framework\">Powered\n          by MODX</a> &nbsp;<a href=\"http://www.modx.com/\" title=\"Template Designed by modXhost.com\">Template &copy; 2006-2011\n          modXhost.com</a><br />\n        Memory: [^m^], MySQL: [^qt^], [^q^] request(s), PHP: [^p^], total: [^t^], document retrieved\n        from [^s^]. </p>\n    </div>\n    <!-- end footer -->\n  </div>\n  <!-- end outer div -->\n</div>\n<!-- end wrapper -->\n</body>\n</html>','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('5','rekl','','0','9','','0','','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('6','system','','0','9','','0','<!DOCTYPE html>\n<html>\n	{{head}}\n<body>\n	{{contacts}}\n	{{header}}\n	<!--<div class=\"baner\">\n		{{baner}}\n	</div>-->\n	<div id=\"body\">\n		<div>\n			<p>[*content*]</p>\n		</div>\n	</div>	\n	{{rekl}}\n	{{footer}}\n</body>\n</html>\n','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('7','zakaz','','0','9','','0','','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('8','Контакты','','0','9','','0','<!DOCTYPE html>\n<html>\n	{{head}}\n<body>\n	{{contacts}}\n	{{header}}\n	<!--<div class=\"baner\">\n		{{baner}}\n	</div>-->\n	<div class=\"ins\">\n		<div>\n			<div class=\"payment\">  \n			[*content*]\n				{{form}}\n			</div>\n			{{logo_slaid}}\n		</div>\n	</div>\n	{{footer}}\n</body>\n</html>\n','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('9','Главная','','0','9','','0','<!DOCTYPE html>\n<html>\n	{{head}}\n<body>\n	{{contacts_home}}\n	{{header}}\n	<!--<div class=\"baner\">\n		{{baner}}\n	</div>-->\n	{{body}}\n	{{rekl}}\n	{{footer}}\n</body>\n</html>\n','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('10','картинка','','0','9','','0','','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('11','snippets','','0','9','','0','','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('12','Картинки страниц','','0','9','','0','','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('13','Тексты страницы','','0','9','','0','','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('14','Таблицы','','0','9','','0','','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('15','Стоимость','','0','9','','0','<!DOCTYPE html>\n<html>\n	{{head}}\n<body>\n	{{contacts}}\n	{{header}}\n	<!--<div class=\"baner\">\n		{{baner}}\n	</div>-->\n	<div class=\"ins\">\n		<div>\n			<div class=\"payment\">  \n			[*content*]	\n			{{table}}\n				[!getTable!]\n			</div>\n			{{logo_slaid}}\n		</div>\n	</div>\n	{{footer}}\n</body>\n</html>\n','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('17','Внутренняя','','0','9','','0','<!DOCTYPE html>\n<html>\n	{{head}}\n<body>\n	{{contacts}}\n	{{header}}\n	<!--<div class=\"baner\">\n		{{baner}}\n	</div>-->\n	<div class=\"ins\">\n		<div>\n			<div class=\"payment\">  \n			[*content*]			\n			</div>\n			{{logo_slaid}}\n		</div>\n	</div>\n	{{footer}}\n</body>\n</html>\n','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('16','Заказать','','0','9','','0','<!DOCTYPE html>\n<html>\n	{{head}}\n<body>\n	{{contacts}}\n	{{header}}\n	<!--<div class=\"baner\">\n		{{baner}}\n	</div>-->\n	<div class=\"ins\">\n		<div>\n			<div class=\"payment\">  \n			[*content*]\n				\n			{{form}}							\n			</div>\n			{{logo_slaid}}\n		</div>\n	</div>\n	{{footer}}\n</body>\n</html>\n','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('18','Слайды','','0','9','','0','','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('19','Контакты1','','0','9','','0','<!DOCTYPE html>\n<html>\n	{{head}}\n<body>\n	{{contacts}}\n	{{header_sky}}\n	<!--<div class=\"baner\">\n		{{baner}}\n	</div>-->\n	<div class=\"ins\">\n		<div>\n			<div class=\"payment\">  \n			[*content*]			\n			</div>\n			{{map}}\n			{{logo_slaid}}\n		</div>\n	</div>\n	{{footer}}\n</body>\n</html>\n','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('20','Статьи','','0','9','','0','<!DOCTYPE html>\n<html>\n	{{head}}\n<body>\n	{{contacts}}\n	{{header}}\n	<!--<div class=\"baner\">\n		{{baner}}\n	</div>-->\n	<div class=\"ins\">\n		<div>\n			<div class=\"payment\">\n				<section>\n					[!Ditto? &tpl=`news_tpl` &paginate=`1` &dateFormat=`%H:%M - %d.%m.%Y` &display=`30` &orderBy=`pub_date DESC` !]\n				</section>\n			</div>\n			{{logo_slaid}}\n		</div>\n	</div>\n	{{footer}}\n</body>\n</html>\n','0');
INSERT INTO `srv37029_ufregru_site_templates` VALUES ('21','spasibo','','0','0','','0','<!DOCTYPE html>\n<html>\n	{{head}}\n<body>\n	{{contacts}}\n	{{header}}\n<div class=\"ins\">\n	<div>\n		<div class=\"payment\">\n			<p>Как заказать наши услуги</p>\n			<ul>\n				<li>Мы работаем с понедельника по пятницу c 09:00 до 19:00.</li>\n				<li>Контактные телефоны: +7 (499) 112-02-42</li>\n				<li>Электронная почта: <a href=\"mailto:info@ufreg.com\">info@ufreg.com</a><a href=\"mailto:info@ufreg.com\"></a></li>\n			</ul>\n			<strong>Спасибо, что воспользовались формой обратной связи на нашем сайте.</strong>\n			<p>Ваше сообщение будет рассмотрено в кротчайшие сроки, и, если оно требует ответа, Вы обязательно его получите.</p>\n			<p>Отправленная информация:</p>\n		[[str2]]\n	</div>\n		{{logo_slaid}}\n	</div>\n</div>\n	{{footer}}\n</body>\n</html>','0');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_tmplvar_access`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_tmplvar_access`;
CREATE TABLE `srv37029_ufregru_site_tmplvar_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

#
# Dumping data for table `srv37029_ufregru_site_tmplvar_access`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_tmplvar_contentvalues`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_tmplvar_contentvalues`;
CREATE TABLE `srv37029_ufregru_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`),
  FULLTEXT KEY `value_ft_idx` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

#
# Dumping data for table `srv37029_ufregru_site_tmplvar_contentvalues`
#

INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('1','5','8','<a href=\"tel:+7 (499) 112-02-42\">+7 (499) 112-02-42</a>');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('2','5','9','Пн - чт с 9-00 до 19-00<br/> Пт с 9-00 по 18-00');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('3','6','15','assets/images/new_logo3_1.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('4','6','16','assets/images/new_logo4_2.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('5','6','17','assets/images/new_logo2_1.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('6','6','18','assets/images/new_logo1_1.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('7','6','19','assets/images/new_logo5_1.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('10','6','23','assets/images/card3.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('12','6','25','assets/images/card5.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('13','6','26','assets/images/card6.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('14','9','31','от 250 руб');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('15','4','32','м. Кожуховская, ул. Южнопортовая, д. 5, стр. 1.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('16','7','32','assets/images/logo_footer_1(3).png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('17','8','32','assets/images/logo(4)(1).png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('18','10','32','http://vk.com/club65869564');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('19','11','40','Бухгалтерские услуги');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('20','12','39','assets/images/contact.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('21','13','39','assets/images/left(1).png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('22','14','39','assets/images/right(1).png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('23','15','39','assets/images/slaid_left.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('24','16','39','assets/images/slaid_right.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('25','9','41','1800 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('101','19','2','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('33','20','41','28');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('107','17','43','Нулевая отчетность');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('34','17','42','Бухгалтерские услуги ИП');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('35','20','42','29');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('106','21','51','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('36','9','43','2000 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('104','21','49','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('39','20','44','30');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('40','9','45','2700 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('41','9','46','от 3000 р. в месяц');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('42','17','46','Бухгалтерское сопровождение фирм');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('43','9','47','7900 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('44','9','48','от 3500 р. в месяц');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('45','9','49','1800');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('46','17','49','«Минимум»');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('47','9','50','2000');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('48','17','50','«Базовый»');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('49','9','51','2700');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('155','17','97','Электронная подача о применение / снятие торгового сбора');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('108','20','43','28');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('52','9','53',' 	3000');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('53','17','53','до 5 операция');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('54','9','54','250 руб.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('55','9','55','150 руб.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('56','17','55','Дополнительные услуг');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('57','9','56','250 руб.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('58','9','57','250 руб.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('111','9','44','-50% от общего количества движений в месяц');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('60','9','58','«-50%» от основного прайса ');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('61','17','58','«ПРОФИ» ');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('62','9','59','Основной прайс ');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('63','9','60','Основной прайс + 40* р. за подготовку документа первичной документации.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('64','17','60','«ПОЛНОЦЕННЫЙ БУХГАЛТЕР» ');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('154','9','97','1500 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('150','9','78','1200 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('102','17','51','«Электронный»');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('73','21','54','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('74','22','55','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('75','22','56','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('76','22','57','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('103','17','59','«ПОМОЩЬ БУХГАЛТЕРА» ');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('109','9','42','от 3000 р. в месяц');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('105','21','50','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('153','20','72','92');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('86','21','43','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('112','20','46','30');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('114','17','47','Электронно - цифровая подпись для участия в торгах (входят универсальные Федеральные площадки и около 100 коммерческих).');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('92','23','15','http://www.ufreg.com/vnesenie-izmenenij/smena-direktora.html');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('93','23','16','http://ufreg.com/vnesenie-izmenenij/smena-pasportnyh-dannyh.html');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('94','23','17','http://ufreg.com/registraciya/registraciya-ooo.html');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('95','23','18','http://ufreg.com/likvidaciya/likvidaciya-ooo-alternativnye-varianty.html');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('96','23','19','http://ufreg.com/registraciya/registraciya-ip.html');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('97','6','66','assets/images/new_logo6_4.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('98','23','66','http://ufreg.com/likvidaciya/likvidaciya-ip.html');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('99','6','67','assets/images/new_logo7_1.png');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('100','23','67','http://ufreg.com/dopolnitelnye-uslugi/vypiska-iz-egrul.html');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('110','21','42','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('113','21','46','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('115','21','47','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('116','9','69','15800 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('117','21','69','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('118','9','70','1500 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('119','17','70','Подключение к электронной подаче отчетности*');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('120','9','71','1500 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('121','17','71','Ключ ЭЦП ');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('122','21','71','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('123','9','72','1000 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('124','17','72','Электронная сдача отчетности фирм не находящейся на бухгалтерском обслуживании');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('125','21','72','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('126','9','73','300 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('127','9','74','1000 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('128','17','74','Выписка из ЕГРЮЛ');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('141','9','6','от 300 рублей');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('129','21','74','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('130','9','75','2000 р.');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('131','22','42','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('132','22','47','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('149','22','69','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('134','22','71','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('157','21','97','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('140','20','74','http://www.ufreg.com/dopolnitelnye-uslugi/vypiska-iz-egrul.html');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('142','26','6','Выписка из ЕГРЮЛ\n');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('143','9','7','от 1800 рублей');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('144','26','7','Подготовка нулевого отчета\n<br><br>\nпакет «Минимум»');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('145','9','76','8900 рублей');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('146','26','76','Регистрация кассового аппарата');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('147','9','77','2500 рублей');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('148','26','77','Регистрация обособленного\nподразделения');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('152','21','78','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('156','22','97','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('159','20','69','47');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('160','21','70','1');
INSERT INTO `srv37029_ufregru_site_tmplvar_contentvalues` VALUES ('161','20','78','72');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_tmplvar_templates`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_tmplvar_templates`;
CREATE TABLE `srv37029_ufregru_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

#
# Dumping data for table `srv37029_ufregru_site_tmplvar_templates`
#

INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('1','4','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('2','4','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('3','4','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('4','6','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('5','3','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('6','10','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('7','6','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('8','6','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('9','7','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('10','6','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('11','13','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('12','12','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('13','12','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('14','12','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('15','12','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('16','12','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('9','14','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('17','14','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('22','14','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('21','14','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('19','15','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('20','14','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('19','16','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('23','10','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('24','14','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('19','17','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('9','18','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('26','18','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('26','3','0');
INSERT INTO `srv37029_ufregru_site_tmplvar_templates` VALUES ('19','20','0');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_site_tmplvars`
#

DROP TABLE IF EXISTS `srv37029_ufregru_site_tmplvars`;
CREATE TABLE `srv37029_ufregru_site_tmplvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text,
  PRIMARY KEY (`id`),
  KEY `indx_rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

#
# Dumping data for table `srv37029_ufregru_site_tmplvars`
#

INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('1','richtext','blogContent','blogContent','RTE for the new blog entries','0','1','0','','0','RichText','&w=383px&h=450px&edt=TinyMCE','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('2','text','loginName','loginName','Conditional name for the Login menu item','0','1','0','','0','','','@EVAL if ($modx->getLoginUserID()) return \'Logout\'; else return \'Login\';');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('3','text','documentTags','Tags','Space delimited tags for the current document','0','1','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('4','text','adress','Адресс','Адресс фирмы','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('5','text','contact','contact','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('6','image','img','img','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('7','image','logo_footer','Логотип внизу страницы','Логотип страницы','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('8','image','logo_head','Логотип в шапке','Логотип страницы','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('9','text','price','Цена','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('10','text','vkcom','vkcom','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('11','text','title_page','Надпись в шапке','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('12','image','soc_sety_vkcom','картинка Вконтакте','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('13','image','array_to_left','стрелка влево','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('14','image','array_to_right','стрелка вправо','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('15','image','array_slaid_left','стрелка слайдов влево','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('16','image','array_slaid_right','стрелка слайдов вправо','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('17','text','view_vichet','Вид вычета','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('18','text','other_link','Другие услуги','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('19','checkbox','wont_table','Нужна таблица на странице?','Поставте галочку если нужна','0','9','0','да==1','0','','&w=100%&h=300px&edt=TinyMCE','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('20','text','link','Ссылка на (id)','Если ссылка на документ указать id документа','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('21','checkbox','addButton','Добавить кнопку  \"заказать\" ?','','0','9','0','Добавить==1','0','','','Добавить==0');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('22','checkbox','pick_out','Выделить строку?','','0','9','0','Выделить==1','0','','','Выделить==0');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('23','url','link_out_site','Ссылки на внешние сайты','','0','9','0','','0','','','');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('24','checkbox','colspan','ОБъеденить колонки','','0','9','0','Объеденить==1','0','','','Объеденить==0');
INSERT INTO `srv37029_ufregru_site_tmplvars` VALUES ('26','textarea','slaid_name','Заглавие слайда','','0','9','0','','0','','','');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_system_eventnames`
#

DROP TABLE IF EXISTS `srv37029_ufregru_system_eventnames`;
CREATE TABLE `srv37029_ufregru_system_eventnames` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

#
# Dumping data for table `srv37029_ufregru_system_eventnames`
#

INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('1','OnDocPublished','5','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('2','OnDocUnPublished','5','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('3','OnWebPagePrerender','5','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('4','OnWebLogin','3','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('5','OnBeforeWebLogout','3','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('6','OnWebLogout','3','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('7','OnWebSaveUser','3','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('8','OnWebDeleteUser','3','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('9','OnWebChangePassword','3','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('10','OnWebCreateGroup','3','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('11','OnManagerLogin','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('12','OnBeforeManagerLogout','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('13','OnManagerLogout','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('14','OnManagerSaveUser','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('15','OnManagerDeleteUser','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('16','OnManagerChangePassword','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('17','OnManagerCreateGroup','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('18','OnBeforeCacheUpdate','4','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('19','OnCacheUpdate','4','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('20','OnLoadWebPageCache','4','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('21','OnBeforeSaveWebPageCache','4','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('22','OnChunkFormPrerender','1','Chunks');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('23','OnChunkFormRender','1','Chunks');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('24','OnBeforeChunkFormSave','1','Chunks');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('25','OnChunkFormSave','1','Chunks');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('26','OnBeforeChunkFormDelete','1','Chunks');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('27','OnChunkFormDelete','1','Chunks');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('28','OnDocFormPrerender','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('29','OnDocFormRender','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('30','OnBeforeDocFormSave','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('31','OnDocFormSave','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('32','OnBeforeDocFormDelete','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('33','OnDocFormDelete','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('34','OnPluginFormPrerender','1','Plugins');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('35','OnPluginFormRender','1','Plugins');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('36','OnBeforePluginFormSave','1','Plugins');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('37','OnPluginFormSave','1','Plugins');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('38','OnBeforePluginFormDelete','1','Plugins');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('39','OnPluginFormDelete','1','Plugins');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('40','OnSnipFormPrerender','1','Snippets');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('41','OnSnipFormRender','1','Snippets');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('42','OnBeforeSnipFormSave','1','Snippets');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('43','OnSnipFormSave','1','Snippets');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('44','OnBeforeSnipFormDelete','1','Snippets');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('45','OnSnipFormDelete','1','Snippets');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('46','OnTempFormPrerender','1','Templates');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('47','OnTempFormRender','1','Templates');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('48','OnBeforeTempFormSave','1','Templates');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('49','OnTempFormSave','1','Templates');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('50','OnBeforeTempFormDelete','1','Templates');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('51','OnTempFormDelete','1','Templates');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('52','OnTVFormPrerender','1','Template Variables');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('53','OnTVFormRender','1','Template Variables');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('54','OnBeforeTVFormSave','1','Template Variables');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('55','OnTVFormSave','1','Template Variables');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('56','OnBeforeTVFormDelete','1','Template Variables');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('57','OnTVFormDelete','1','Template Variables');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('58','OnUserFormPrerender','1','Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('59','OnUserFormRender','1','Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('60','OnBeforeUserFormSave','1','Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('61','OnUserFormSave','1','Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('62','OnBeforeUserFormDelete','1','Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('63','OnUserFormDelete','1','Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('64','OnWUsrFormPrerender','1','Web Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('65','OnWUsrFormRender','1','Web Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('66','OnBeforeWUsrFormSave','1','Web Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('67','OnWUsrFormSave','1','Web Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('68','OnBeforeWUsrFormDelete','1','Web Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('69','OnWUsrFormDelete','1','Web Users');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('70','OnSiteRefresh','1','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('71','OnFileManagerUpload','1','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('72','OnModFormPrerender','1','Modules');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('73','OnModFormRender','1','Modules');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('74','OnBeforeModFormDelete','1','Modules');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('75','OnModFormDelete','1','Modules');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('76','OnBeforeModFormSave','1','Modules');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('77','OnModFormSave','1','Modules');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('78','OnBeforeWebLogin','3','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('79','OnWebAuthentication','3','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('80','OnBeforeManagerLogin','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('81','OnManagerAuthentication','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('82','OnSiteSettingsRender','1','System Settings');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('83','OnFriendlyURLSettingsRender','1','System Settings');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('84','OnUserSettingsRender','1','System Settings');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('85','OnInterfaceSettingsRender','1','System Settings');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('86','OnMiscSettingsRender','1','System Settings');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('87','OnRichTextEditorRegister','1','RichText Editor');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('88','OnRichTextEditorInit','1','RichText Editor');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('89','OnManagerPageInit','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('90','OnWebPageInit','5','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('101','OnLoadDocumentObject','5','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('91','OnLoadWebDocument','5','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('92','OnParseDocument','5','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('93','OnManagerLoginFormRender','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('94','OnWebPageComplete','5','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('95','OnLogPageHit','5','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('96','OnBeforeManagerPageInit','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('97','OnBeforeEmptyTrash','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('98','OnEmptyTrash','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('99','OnManagerLoginFormPrerender','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('100','OnStripAlias','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('200','OnCreateDocGroup','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('201','OnManagerWelcomePrerender','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('202','OnManagerWelcomeHome','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('203','OnManagerWelcomeRender','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('204','OnBeforeDocDuplicate','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('205','OnDocDuplicate','1','Documents');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('206','OnManagerMainFrameHeaderHTMLBlock','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('207','OnManagerPreFrameLoader','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('208','OnManagerFrameLoader','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('209','OnManagerTreeInit','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('210','OnManagerTreePrerender','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('211','OnManagerTreeRender','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('212','OnManagerNodePrerender','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('213','OnManagerNodeRender','2','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('999','OnPageUnauthorized','1','');
INSERT INTO `srv37029_ufregru_system_eventnames` VALUES ('1000','OnPageNotFound','1','');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_system_settings`
#

DROP TABLE IF EXISTS `srv37029_ufregru_system_settings`;
CREATE TABLE `srv37029_ufregru_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

#
# Dumping data for table `srv37029_ufregru_system_settings`
#

INSERT INTO `srv37029_ufregru_system_settings` VALUES ('manager_theme','MODxRE');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('settings_version','1.0.14');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('show_meta','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('server_offset_time','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('server_protocol','http');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('manager_language','russian-UTF8');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('modx_charset','UTF-8');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('site_name','Ufreg');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('site_start','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('error_page','33');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('unauthorized_page','32');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('site_status','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('site_unavailable_message','В настоящее время сайт недоступен.');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('track_visitors','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('top_howmany','10');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('auto_template_logic','sibling');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('default_template','3');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('old_template','3');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('publish_default','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('cache_default','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('search_default','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('friendly_urls','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('friendly_url_prefix','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('friendly_url_suffix','.html');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('friendly_alias_urls','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('use_alias_path','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('use_udperms','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('udperms_allowroot','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('failed_login_attempts','3');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('blocked_minutes','30');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('use_captcha','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('captcha_words','MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('emailsender','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('email_method','mail');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('smtp_auth','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('smtp_host','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('smtp_port','25');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('smtp_username','admin');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('emailsubject','Informacje o założonym koncie użytkownika');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('number_of_logs','100');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('number_of_messages','30');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('number_of_results','20');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('use_editor','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('use_browser','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('rb_base_dir','/storage/home/srv37029/ufreg.ru/html/assets/');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('rb_base_url','assets/');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('which_editor','TinyMCE');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('fe_editor_lang','russian-UTF8');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('fck_editor_toolbar','standard');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('fck_editor_autolang','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('editor_css_path','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('editor_css_selectors','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('strip_image_paths','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('upload_images','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('upload_media','au,avi,mp3,mp4,mpeg,mpg,wav,wmv');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('upload_flash','fla,flv,swf');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('upload_files','aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('upload_maxsize','1048576');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('new_file_permissions','0644');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('new_folder_permissions','0755');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('filemanager_path','/home/vit/sites/www/ufreg.ru.com/');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('theme_refresher','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('manager_layout','4');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('custom_contenttype','application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('auto_menuindex','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('session.cookie.lifetime','604800');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('mail_check_timeperiod','60');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('manager_direction','ltr');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('tinymce_editor_theme','editor');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('tinymce_custom_plugins','style,advimage,advlink,searchreplace,print,contextmenu,paste,fullscreen,nonbreaking,xhtmlxtras,visualchars,media');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('tinymce_custom_buttons1','undo,redo,selectall,separator,pastetext,pasteword,separator,search,replace,separator,nonbreaking,hr,charmap,separator,image,link,unlink,anchor,media,separator,cleanup,removeformat,separator,fullscreen,print,code,help');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('tinymce_custom_buttons2','bold,italic,underline,strikethrough,sub,sup,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,separator,styleprops');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('tree_show_protected','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('rss_url_news','http://feeds.feedburner.com/modx-announce');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('rss_url_security','http://feeds.feedburner.com/modxsecurity');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('validate_referer','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('datepicker_offset','-10');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('xhtml_urls','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('allow_duplicate_alias','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('automatic_alias','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('datetime_format','dd-mm-YYYY');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('warning_visibility','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('remember_last_tab','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('enable_bindings','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('seostrict','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('cache_type','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('maxImageWidth','1600');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('maxImageHeight','1200');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('thumbWidth','150');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('thumbHeight','150');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('thumbsDir','.thumbs');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('jpegQuality','90');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('denyZipDownload','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('denyExtensionRename','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('showHiddenFiles','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('docid_incrmnt_method','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('make_folders','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('site_id','531564e409f44');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('site_unavailable_page','34');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('reload_site_unavailable','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('siteunavailable_message_default','В настоящее время сайт недоступен.');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('check_files_onlogin','index.php\n.htaccess\nmanager/index.php\nmanager/includes/config.inc.php');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('error_reporting','1');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('send_errormail','3');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('pwd_hash_algo','UNCRYPT');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('reload_captcha_words','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('captcha_words_default','MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('reload_emailsubject','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('emailsubject_default','Данные для авторизации');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('reload_signupemail_message','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('signupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('system_email_signup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('reload_websignupemail_message','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('websignupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('system_email_websignup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('reload_system_email_webreminder_message','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('webpwdreminder_message','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('system_email_webreminder_default','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('tree_page_click','27');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('resource_tree_node_name','pagetitle');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('rb_webuser','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('clean_uploaded_filename','0');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('mce_editor_skin','default');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('mce_template_docs','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('mce_template_chunks','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('mce_entermode','p');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('mce_element_format','xhtml');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('mce_schema','html4');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('tinymce_custom_buttons3','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('tinymce_custom_buttons4','');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('tinymce_css_selectors','left=justifyleft;right=justifyright');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('sys_files_checksum','a:4:{s:42:\"/home/vit/sites/www/ufreg.ru.com/index.php\";s:32:\"c6f73908b7b0a58acfe95b0f844d134e\";s:42:\"/home/vit/sites/www/ufreg.ru.com/.htaccess\";s:32:\"21c9fc60671dac2a221b3b29e7feb81e\";s:50:\"/home/vit/sites/www/ufreg.ru.com/manager/index.php\";s:32:\"46aa79ef9c0dc42b0c9b656621973e22\";s:64:\"/home/vit/sites/www/ufreg.ru.com/manager/includes/config.inc.php\";s:32:\"658ce0742c12a7b7501297e36d37bd0c\";}');
INSERT INTO `srv37029_ufregru_system_settings` VALUES ('smtppw','VWZyZWdfMTk4NjExMzA%bV6Z7DY');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_user_attributes`
#

DROP TABLE IF EXISTS `srv37029_ufregru_user_attributes`;
CREATE TABLE `srv37029_ufregru_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';

#
# Dumping data for table `srv37029_ufregru_user_attributes`
#

INSERT INTO `srv37029_ufregru_user_attributes` VALUES ('1','1','admin account','1','info@ufreg.com','','','0','1492417016','0','145','1499942095','1499947238','0','ii23f2ra6rjco2r5p44ttnah40','0','2','','','','','','','','');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_user_messages`
#

DROP TABLE IF EXISTS `srv37029_ufregru_user_messages`;
CREATE TABLE `srv37029_ufregru_user_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';

#
# Dumping data for table `srv37029_ufregru_user_messages`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_user_roles`
#

DROP TABLE IF EXISTS `srv37029_ufregru_user_roles`;
CREATE TABLE `srv37029_ufregru_user_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `manage_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'manage site meta tags and keywords',
  `edit_doc_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'edit document meta tags and keywords',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';

#
# Dumping data for table `srv37029_ufregru_user_roles`
#

INSERT INTO `srv37029_ufregru_user_roles` VALUES ('2','Editor','Limited to managing content','1','1','1','1','1','1','1','0','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0','1','1','1','1','1','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','1','0','0','1');
INSERT INTO `srv37029_ufregru_user_roles` VALUES ('3','Publisher','Editor with expanded permissions including manage users, update Elements and site settings','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','0','0','1','1','1','1','1','1','0','0','0','0','1','1','1','1','1','1','1','1','1','1','1','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','0','0','0','1','1','1','1','0','1','0','0','1');
INSERT INTO `srv37029_ufregru_user_roles` VALUES ('1','Administrator','Site administrators have full access to all functions','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_user_settings`
#

DROP TABLE IF EXISTS `srv37029_ufregru_user_settings`;
CREATE TABLE `srv37029_ufregru_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`user`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

#
# Dumping data for table `srv37029_ufregru_user_settings`
#

INSERT INTO `srv37029_ufregru_user_settings` VALUES ('1','allow_manager_access','1');

# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_web_groups`
#

DROP TABLE IF EXISTS `srv37029_ufregru_web_groups`;
CREATE TABLE `srv37029_ufregru_web_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `srv37029_ufregru_web_groups`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_web_user_attributes`
#

DROP TABLE IF EXISTS `srv37029_ufregru_web_user_attributes`;
CREATE TABLE `srv37029_ufregru_web_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

#
# Dumping data for table `srv37029_ufregru_web_user_attributes`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_web_user_settings`
#

DROP TABLE IF EXISTS `srv37029_ufregru_web_user_settings`;
CREATE TABLE `srv37029_ufregru_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`webuser`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

#
# Dumping data for table `srv37029_ufregru_web_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_web_users`
#

DROP TABLE IF EXISTS `srv37029_ufregru_web_users`;
CREATE TABLE `srv37029_ufregru_web_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table `srv37029_ufregru_web_users`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_webgroup_access`
#

DROP TABLE IF EXISTS `srv37029_ufregru_webgroup_access`;
CREATE TABLE `srv37029_ufregru_webgroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `srv37029_ufregru_webgroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `srv37029_ufregru_webgroup_names`
#

DROP TABLE IF EXISTS `srv37029_ufregru_webgroup_names`;
CREATE TABLE `srv37029_ufregru_webgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `srv37029_ufregru_webgroup_names`
#
