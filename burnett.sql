CREATE TABLE `allocations` (
  `location_id` smallint(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) TYPE=MyISAM;
CREATE TABLE `locations` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) DEFAULT NULL,
  `description` varchar(64) DEFAULT NULL,
  `keyword` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) TYPE=MyISAM AUTO_INCREMENT=3;
CREATE TABLE `macs` (
  `number` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(25) DEFAULT NULL,
  `lastseen` datetime DEFAULT NULL,
  `lastip` varchar(15) DEFAULT NULL,
  `mac` varchar(18) NOT NULL DEFAULT '',
  `indns` tinyint(4) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `first_hostname` varchar(25) DEFAULT NULL,
  `last_hostname` varchar(25) DEFAULT NULL,
  `previous_hostname` varchar(25) DEFAULT NULL,
  `open_ports` varchar(128) DEFAULT NULL,
  `ping_max` float DEFAULT NULL,
  `ping_min` float DEFAULT NULL,
  `ping_avg` float DEFAULT NULL,
  `ping_mdev` float DEFAULT NULL,
  PRIMARY KEY (`mac`),
  UNIQUE KEY `mac` (`mac`),
  KEY `number` (`number`),
  KEY `host_index` (`hostname`)
) TYPE=MyISAM AUTO_INCREMENT=7370;
CREATE TABLE `traffic` (
  `user_id` smallint(6) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `traffic_in` bigint(20) DEFAULT '0',
  `traffic_out` bigint(20) DEFAULT '0',
  `bps_in` int(11) DEFAULT '0',
  `bps_out` int(11) DEFAULT '0',
  `last_bytes_in` int(11) DEFAULT '0',
  `last_bytes_out` int(11) DEFAULT '0',
  `browsing_in` bigint(20) DEFAULT '0',
  `browsing_out` bigint(20) DEFAULT '0',
  `mail_in` bigint(20) DEFAULT '0',
  `mail_out` bigint(20) DEFAULT '0',
  PRIMARY KEY (`user_id`,`date`)
) TYPE=MyISAM;
CREATE TABLE `user_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(128) NOT NULL,
  `traffic_allocated` bigint(20) DEFAULT '0',
  `traffic_left` bigint(20) DEFAULT '0',
  PRIMARY KEY (`group_id`,`group_name`),
  UNIQUE KEY `group_name` (`group_name`)
) TYPE=MyISAM AUTO_INCREMENT=4;
