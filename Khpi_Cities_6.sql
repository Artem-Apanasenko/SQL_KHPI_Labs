# LAB6
  
SELECT cities.name, regions.name
FROM cities, regions
WHERE population > 350000
AND cities.region = regions.uuid

SELECT cities.name, regions.name
FROM cities, regions
WHERE cities.region = regions.uuid
AND regions.name = "Nord"

DROP TABLE IF EXISTS `lines`;
CREATE TABLE `lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
)

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line_id` int(10) UNSIGNED NOT NULL,
  `previous_station` varchar(255) COLLATE utf8_unicode_ci,
  `next_station` varchar(255) COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`line_jd`) REFERENCES `lines`(`id`)
)

DROP TABLE IF EXISTS `transitions`;
CREATE TABLE `transitions` (
  `start_station` int(10) unsigned NOT NULL,
  `end_station` int(10) unsigned NOT NULL,
  PRIMARY KEY (`start_station`, `end_station`),
  FOREIGN KEY (`start_station`) REFERENCES `stations`(`id`),
  FOREIGN KEY (`end_station`) REFERENCES `stations`(`id`)
)
