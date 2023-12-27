/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : enamduatekno

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 27/12/2023 02:06:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int NOT NULL,
  `business_id` int NOT NULL,
  `display_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_id` int NOT NULL,
  `name_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`display_address`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_closed` bit(1) NOT NULL,
  `is_claimed` bit(1) NOT NULL DEFAULT b'0',
  `url` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `review_count` int NULL DEFAULT NULL,
  `rating` double NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `display_phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `distance` double NULL DEFAULT NULL,
  `createdate` datetime NULL DEFAULT NULL,
  `createby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `updatedate` datetime NULL DEFAULT NULL,
  `updateby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deletedate` datetime NULL DEFAULT NULL,
  `deleteby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `del` enum('1','0') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (1, 'anytime-kitchen-new-york-2', 'Anytime Kitchen ', 'https://s3-media3.fl.yelpcdn.com/bphoto/APN3oda1GREsCVa9M8hgfw/o.jpg', b'0', b'0', 'https://www.yelp.com/biz/anytime-kitchen-new-york-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 2825, 4.5, '$$', '+16466697733', '(646) 669-7733', 4736.528034255248, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `business` VALUES (2, 'rubirosa-new-york-2', 'Rubirosa', 'https://s3-media3.fl.yelpcdn.com/bphoto/l0Phrnhhj78RFiDhLIOUyQ/o.jpg', b'0', b'0', 'https://www.yelp.com/biz/rubirosa-new-york-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 3237, 4.5, '$$', '+12129650500', '(212) 965-0500', 1922.0346803084792, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `business` VALUES (3, 'ippudo-ny-new-york-7', 'Ippudo NY', 'https://s3-media1.fl.yelpcdn.com/bphoto/zF3EgqHCk7zBUwD2B3WTEA/o.jpg', b'0', b'0', 'https://www.yelp.com/biz/ippudo-ny-new-york-7?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 10684, 4, '$$', '+12123880088', '(212) 388-0088', 2854.3012674083675, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `business` VALUES (4, 'jessies-nutty-cups-new-york-4', 'Jessie\'s Nutty Cups', 'https://s3-media2.fl.yelpcdn.com/bphoto/fndHURmSDgB8HXBWtVCAiQ/o.jpg', b'0', b'0', 'https://www.yelp.com/biz/jessies-nutty-cups-new-york-4?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 6, 5, NULL, '+13476760927', '(347) 676-0927', 6783.415750666014, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `business` VALUES (10, 'gramercy-tavern-new-york', 'Gramercy Taverns', 'https://s3-media2.fl.yelpcdn.com/bphoto/l2oSnhyvJfWT6bufumBMzw/o.jpg', b'0', b'0', 'https://www.yelp.com/biz/gramercy-tavern-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 3425, 4.5, '$$$$', '(212) 477-0777', '(212) 477-0777', 3695.6399277648, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `business` VALUES (12, 'gramercy-tavern-new-york', 'Gramercy Tavern', 'https://s3-media2.fl.yelpcdn.com/bphoto/l2oSnhyvJfWT6bufumBMzw/o.jpg', b'1', b'0', 'https://www.yelp.com/biz/gramercy-tavern-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 3425, 4.5, '$$$$', '+12124770777', '(212) 477-0777', 3695.6399277648, NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `business_id` int NULL DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `createdate` datetime NULL DEFAULT NULL,
  `createby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `updatedate` datetime NULL DEFAULT NULL,
  `updateby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deletedate` datetime NULL DEFAULT NULL,
  `deleteby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `del` enum('1','0') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKko9recucddispyq1tr9m4d023`(`business_id`) USING BTREE,
  CONSTRAINT `FKko9recucddispyq1tr9m4d023` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (4, 10, 'newamerican', 'New American', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `categories` VALUES (5, 12, 'newamerican', 'New American', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `categories` VALUES (6, 1, 'korean', 'Korean', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `categories` VALUES (7, 1, 'tapasmallplates', 'Tapas/Small Plates', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `categories` VALUES (8, 1, 'bbq', 'Barbeque', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `categories` VALUES (9, 2, 'italian', 'Italian', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `categories` VALUES (10, 2, 'pizza', 'Pizza', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `categories` VALUES (11, 3, 'ramen', 'Ramen', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `categories` VALUES (12, 4, 'chocolate', 'Chocolatiers & Shops', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `categories` VALUES (13, 4, 'candy', 'Candy Stores', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `categories` VALUES (14, 4, 'cupcakes', 'Cupcakes', NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for coordinates
-- ----------------------------
DROP TABLE IF EXISTS `coordinates`;
CREATE TABLE `coordinates`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `business_id` int NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `createdate` datetime NULL DEFAULT NULL,
  `createby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `updatedate` datetime NULL DEFAULT NULL,
  `updateby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deletedate` datetime NULL DEFAULT NULL,
  `deleteby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `del` enum('1','0') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKjmwakof8gw70bplv9oisc53uh`(`business_id`) USING BTREE,
  CONSTRAINT `FKjmwakof8gw70bplv9oisc53uh` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of coordinates
-- ----------------------------
INSERT INTO `coordinates` VALUES (4, 10, 40.73844, -73.98825, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `coordinates` VALUES (5, 12, 40.73844, -73.98825, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `coordinates` VALUES (6, 1, 40.74776270790539, -73.9867793576711, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `coordinates` VALUES (7, 2, 40.722766, -73.996233, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `coordinates` VALUES (8, 3, 40.730925, -73.990254, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `coordinates` VALUES (9, 4, 40.6475102, -74.0194898, NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (5);
INSERT INTO `hibernate_sequence` VALUES (5);
INSERT INTO `hibernate_sequence` VALUES (5);

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `business_id` int NULL DEFAULT NULL,
  `address1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `zip_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cross_streets` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `createdate` datetime NULL DEFAULT NULL,
  `createby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `updatedate` datetime NULL DEFAULT NULL,
  `updateby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deletedate` datetime NULL DEFAULT NULL,
  `deleteby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `del` enum('1','0') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKko6nq5r2se1cfb2oa1u0dd91e`(`business_id`) USING BTREE,
  CONSTRAINT `FKko6nq5r2se1cfb2oa1u0dd91e` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES (1, NULL, '42 E 20th St', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `location` VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `location` VALUES (7, 10, '42 E 20th St', '', '', 'New York', '10003', 'US', 'NY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `location` VALUES (8, 12, '42 E 20th St', '', '', 'New York', '10003', 'US', 'NY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `location` VALUES (9, 1, '23 W 32nd St', 'Fl 3', '', 'New York', '10001', 'US', 'NY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `location` VALUES (10, 2, '235 Mulberry St', '', '', 'New York', '10012', 'US', 'NY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `location` VALUES (11, 3, '65 4th Ave', '', '', 'New York', '10003', 'US', 'NY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `location` VALUES (12, 4, '170 53rd St', NULL, '', 'New York', '11232', 'US', 'NY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `business_id` int NULL DEFAULT NULL,
  `photos` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `createdate` datetime NULL DEFAULT NULL,
  `createby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `updatedate` datetime NULL DEFAULT NULL,
  `updateby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deletedate` datetime NULL DEFAULT NULL,
  `deleteby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `del` enum('1','0') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK7q8qjb6n7x21xj0ugd7jgralc`(`business_id`) USING BTREE,
  CONSTRAINT `FK7q8qjb6n7x21xj0ugd7jgralc` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES (5, 10, 'https://s3-media2.fl.yelpcdn.com/bphoto/l2oSnhyvJfWT6bufumBMzw/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (6, 10, 'https://s3-media3.fl.yelpcdn.com/bphoto/nVeROcJIBh2tWtbmBJonow/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (7, 10, 'https://s3-media2.fl.yelpcdn.com/bphoto/f14WAmWETi0cu2f6rUBj-Q/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (8, 12, 'https://s3-media1.fl.yelpcdn.com/bphoto/o7Lmy_fX07ZWhEn_m5R2CQ/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (9, 1, 'https://s3-media3.fl.yelpcdn.com/bphoto/APN3oda1GREsCVa9M8hgfw/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (10, 1, 'https://s3-media1.fl.yelpcdn.com/bphoto/1ubTDwJvE0l4zk-oqtEYZA/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (11, 1, 'https://s3-media2.fl.yelpcdn.com/bphoto/R7eZYCTmuYa9M-yFWnDFFg/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (12, 2, 'https://s3-media3.fl.yelpcdn.com/bphoto/l0Phrnhhj78RFiDhLIOUyQ/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (13, 2, 'https://s3-media2.fl.yelpcdn.com/bphoto/68zSZietSx3WJsAYxUANIA/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (14, 2, 'https://s3-media3.fl.yelpcdn.com/bphoto/4GLD-S-9rdBnXxrEjlFwPg/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (15, 3, 'https://s3-media1.fl.yelpcdn.com/bphoto/zF3EgqHCk7zBUwD2B3WTEA/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (16, 3, 'https://s3-media1.fl.yelpcdn.com/bphoto/dqjGk3X9wt_gaszKSNgijA/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (17, 3, 'https://s3-media2.fl.yelpcdn.com/bphoto/BwFk5Bu9mcnfThtf-AO5jg/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (18, 4, 'https://s3-media2.fl.yelpcdn.com/bphoto/fndHURmSDgB8HXBWtVCAiQ/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (19, 4, 'https://s3-media4.fl.yelpcdn.com/bphoto/4BUBDSUH27UPVO4Zw2KQ2A/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `photos` VALUES (20, 4, 'https://s3-media4.fl.yelpcdn.com/bphoto/Ovw9TpWlaDQBu-273yHV8g/o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produk
-- ----------------------------

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `business_id` int NULL DEFAULT NULL,
  `url` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `rating` int NULL DEFAULT NULL,
  `time_created` datetime NULL DEFAULT NULL,
  `user_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `profile_url` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `image_url` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reviews
-- ----------------------------
INSERT INTO `reviews` VALUES (1, 4, 'https://www.yelp.com/biz/jessies-nutty-cups-new-york-4?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&hrid=d3ulSqLFFDy9n5cB6cnqoQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=DSj6I8qbyHf-Zm2fGExuug', 'A coworker had brought these to our clinic in San Francisco & they were amazing!! I found them on instagram & it appears they have closed their business.', 5, '2023-10-30 23:21:55', 'qziedid5UCRy4WUeKUc_jg', 'https://www.yelp.com/user_details?userid=qziedid5UCRy4WUeKUc_jg', 'https://s3-media2.fl.yelpcdn.com/photo/pb9v5YZo4iOzki5KjxhvlA/o.jpg', 'Cindy G.');
INSERT INTO `reviews` VALUES (2, 4, 'https://www.yelp.com/biz/jessies-nutty-cups-new-york-4?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&hrid=d3ulSqLFFDy9n5cB6cnqoQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=DSj6I8qbyHf-Zm2fGExuug', 'A coworker had brought these to our clinic in San Francisco & they were amazing!! I found them on instagram & it appears they have closed their business.', 5, '2023-10-30 23:21:55', 'qziedid5UCRy4WUeKUc_jg', 'https://www.yelp.com/user_details?userid=qziedid5UCRy4WUeKUc_jg', 'https://s3-media2.fl.yelpcdn.com/photo/pb9v5YZo4iOzki5KjxhvlA/o.jpg', 'Cindy G.');
INSERT INTO `reviews` VALUES (3, 4, 'https://www.yelp.com/biz/jessies-nutty-cups-new-york-4?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&hrid=d3ulSqLFFDy9n5cB6cnqoQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=DSj6I8qbyHf-Zm2fGExuug', 'A coworker had brought these to our clinic in San Francisco & they were amazing!! I found them on instagram & it appears they have closed their business.', 5, '2023-10-30 23:21:55', 'qziedid5UCRy4WUeKUc_jg', 'https://www.yelp.com/user_details?userid=qziedid5UCRy4WUeKUc_jg', 'https://s3-media2.fl.yelpcdn.com/photo/pb9v5YZo4iOzki5KjxhvlA/o.jpg', 'Cindy G.');
INSERT INTO `reviews` VALUES (4, 4, 'https://www.yelp.com/biz/jessies-nutty-cups-new-york-4?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&hrid=d3ulSqLFFDy9n5cB6cnqoQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=DSj6I8qbyHf-Zm2fGExuug', 'A coworker had brought these to our clinic in San Francisco & they were amazing!! I found them on instagram & it appears they have closed their business.', 5, '2023-10-30 23:21:55', 'qziedid5UCRy4WUeKUc_jg', 'https://www.yelp.com/user_details?userid=qziedid5UCRy4WUeKUc_jg', 'https://s3-media2.fl.yelpcdn.com/photo/pb9v5YZo4iOzki5KjxhvlA/o.jpg', 'Cindy G.');

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `business_id` int NULL DEFAULT NULL,
  `transaction` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `createdate` datetime NULL DEFAULT NULL,
  `createby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `updatedate` datetime NULL DEFAULT NULL,
  `updateby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deletedate` datetime NULL DEFAULT NULL,
  `deleteby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `del` enum('1','0') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKkoy574xbxxv78lkan9iuhgvh3`(`business_id`) USING BTREE,
  CONSTRAINT `FKkoy574xbxxv78lkan9iuhgvh3` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES (4, 10, 'pickup', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `transactions` VALUES (5, 12, 'pickup', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `transactions` VALUES (6, 1, 'pickup', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `transactions` VALUES (7, 1, 'delivery', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `transactions` VALUES (8, 1, 'restaurant_reservation', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `transactions` VALUES (9, 2, 'pickup', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `transactions` VALUES (10, 3, 'pickup', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `transactions` VALUES (11, 3, 'delivery', NULL, NULL, NULL, NULL, NULL, NULL, '0');

SET FOREIGN_KEY_CHECKS = 1;
