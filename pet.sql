-- ----------------------------
-- Table structure for pet_actions
-- ----------------------------
DROP TABLE IF EXISTS `pet_actions`;
CREATE TABLE `pet_actions`  (
                                `ID` int(0) NOT NULL AUTO_INCREMENT,
                                `pet_type` int(0) NOT NULL,
                                `pet_name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                                `offspring_type` int(0) NOT NULL DEFAULT -1,
                                `happy_actions` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
                                `tired_actions` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
                                `random_actions` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
                                `can_swim` enum('1','0') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
                                PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 77 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pet_actions
-- ----------------------------
INSERT INTO `pet_actions` VALUES (38, 0, 'Dog', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (1, 1, 'Cat', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (2, 2, 'Crocodile', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (3, 3, 'Terrier', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (4, 4, 'Bear', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (5, 5, 'Pig', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (6, 6, 'Lion', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (7, 7, 'Rhino', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (8, 8, 'Spider', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (9, 9, 'Turtle', -1, '', '', '', '1');
INSERT INTO `pet_actions` VALUES (10, 10, 'Chicken', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (11, 11, 'Frog', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (12, 12, 'Dragon', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (13, 13, '', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (14, 14, 'Monkey', -1, '', '', '', '1');
INSERT INTO `pet_actions` VALUES (15, 15, 'Horse', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (16, 16, 'Monsterplant', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (17, 17, 'Bunny', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (18, 18, 'Evil Bunny', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (19, 19, 'Bored Bunny', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (20, 20, 'Love Bunny', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (21, 21, 'Wise Pidgeon', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (22, 22, 'Cunning Pidgeon', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (23, 23, 'Evil Monkey', -1, '', '', '', '1');
INSERT INTO `pet_actions` VALUES (24, 24, 'Baby Bear', -1, '', '', '', '1');
INSERT INTO `pet_actions` VALUES (25, 25, 'Baby Terrier', -1, '', '', '', '1');
INSERT INTO `pet_actions` VALUES (26, 26, 'Gnome', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (27, 27, 'Leprechaun', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (28, 28, 'Baby Cat', -1, '', '', '', '1');
INSERT INTO `pet_actions` VALUES (29, 29, 'Baby Dog', -1, '', '', '', '1');
INSERT INTO `pet_actions` VALUES (30, 30, 'Baby Pig', -1, '', '', '', '1');
INSERT INTO `pet_actions` VALUES (31, 31, 'Haloompa', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (32, 32, 'Fools', -1, '', '', '', '1');
INSERT INTO `pet_actions` VALUES (33, 33, 'Pterodactyl', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (34, 34, 'Velociraptor', -1, '', '', '', '0');
INSERT INTO `pet_actions` VALUES (35, 35, 'Cow', -1, '', '', '', '0');

-- ----------------------------
-- Table structure for pet_breeding
-- ----------------------------
DROP TABLE IF EXISTS `pet_breeding`;
CREATE TABLE `pet_breeding`  (
                                 `pet_id` int(0) NOT NULL,
                                 `offspring_id` int(0) NOT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for pet_breeding_races
-- ----------------------------
DROP TABLE IF EXISTS `pet_breeding_races`;
CREATE TABLE `pet_breeding_races`  (
                                       `pet_type` int(0) NOT NULL,
                                       `rarity_level` int(0) NOT NULL,
                                       `breed` int(0) NOT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of pet_breeding_races
-- ----------------------------
INSERT INTO `pet_breeding_races` VALUES (28, 1, 1);
INSERT INTO `pet_breeding_races` VALUES (28, 1, 2);
INSERT INTO `pet_breeding_races` VALUES (28, 1, 3);
INSERT INTO `pet_breeding_races` VALUES (28, 1, 4);
INSERT INTO `pet_breeding_races` VALUES (28, 1, 5);
INSERT INTO `pet_breeding_races` VALUES (28, 1, 6);
INSERT INTO `pet_breeding_races` VALUES (28, 1, 7);
INSERT INTO `pet_breeding_races` VALUES (28, 2, 8);
INSERT INTO `pet_breeding_races` VALUES (28, 2, 9);
INSERT INTO `pet_breeding_races` VALUES (28, 2, 10);
INSERT INTO `pet_breeding_races` VALUES (28, 2, 11);
INSERT INTO `pet_breeding_races` VALUES (28, 2, 12);
INSERT INTO `pet_breeding_races` VALUES (28, 2, 13);
INSERT INTO `pet_breeding_races` VALUES (28, 3, 14);
INSERT INTO `pet_breeding_races` VALUES (28, 3, 15);
INSERT INTO `pet_breeding_races` VALUES (28, 3, 16);
INSERT INTO `pet_breeding_races` VALUES (28, 3, 17);
INSERT INTO `pet_breeding_races` VALUES (28, 4, 18);
INSERT INTO `pet_breeding_races` VALUES (28, 4, 19);
INSERT INTO `pet_breeding_races` VALUES (28, 4, 20);

-- ----------------------------
-- Table structure for pet_breeds
-- ----------------------------
DROP TABLE IF EXISTS `pet_breeds`;
CREATE TABLE `pet_breeds`  (
                               `race` int(0) NOT NULL,
                               `color_one` int(0) NOT NULL,
                               `color_two` int(0) NOT NULL,
                               `has_color_one` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
                               `has_color_two` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
                               UNIQUE INDEX `idx_name`(`race`, `color_one`, `color_two`, `has_color_one`, `has_color_two`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of pet_breeds
-- ----------------------------
INSERT INTO `pet_breeds` VALUES (0, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 12, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 13, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 14, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 15, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 16, 16, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 17, 17, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 18, 18, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 19, 19, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 20, 20, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 21, 21, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 22, 22, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 23, 23, '1', '0');
INSERT INTO `pet_breeds` VALUES (0, 24, 24, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 12, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 13, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 14, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 15, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 16, 16, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 17, 17, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 18, 18, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 19, 19, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 20, 20, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 21, 21, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 22, 22, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 23, 23, '1', '0');
INSERT INTO `pet_breeds` VALUES (1, 24, 24, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (2, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (3, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (3, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (3, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (3, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (3, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (3, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (3, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (4, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (4, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (4, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (4, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (5, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (5, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (5, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (5, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (5, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (5, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (5, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (6, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (6, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (6, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (6, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (6, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (6, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (6, 6, 6, '0', '1');
INSERT INTO `pet_breeds` VALUES (6, 7, 7, '0', '1');
INSERT INTO `pet_breeds` VALUES (6, 8, 8, '0', '1');
INSERT INTO `pet_breeds` VALUES (6, 9, 9, '0', '1');
INSERT INTO `pet_breeds` VALUES (6, 10, 10, '0', '1');
INSERT INTO `pet_breeds` VALUES (6, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (6, 12, 12, '0', '1');
INSERT INTO `pet_breeds` VALUES (7, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (7, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (7, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (7, 3, 3, '0', '1');
INSERT INTO `pet_breeds` VALUES (7, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (7, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (7, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (7, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (8, 14, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (9, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (9, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (9, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (9, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (9, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (9, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (9, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (9, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (9, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (10, 0, 0, '1', '1');
INSERT INTO `pet_breeds` VALUES (10, 1, 1, '1', '1');
INSERT INTO `pet_breeds` VALUES (10, 2, 2, '1', '1');
INSERT INTO `pet_breeds` VALUES (10, 3, 3, '1', '1');
INSERT INTO `pet_breeds` VALUES (10, 4, 4, '1', '1');
INSERT INTO `pet_breeds` VALUES (11, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 8, 8, '0', '0');
INSERT INTO `pet_breeds` VALUES (11, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 12, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 13, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 15, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (11, 18, 18, '1', '0');
INSERT INTO `pet_breeds` VALUES (12, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (12, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (12, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (12, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (12, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (12, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (12, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (12, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (12, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (12, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (12, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (14, 0, 0, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 1, 1, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 2, 2, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 3, 3, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 4, 4, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 5, 5, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 6, 6, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 7, 7, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 8, 8, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 9, 9, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 10, 10, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 11, 11, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 12, 12, '1', '1');
INSERT INTO `pet_breeds` VALUES (14, 13, 13, '1', '1');
INSERT INTO `pet_breeds` VALUES (15, 1, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 18, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 21, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 25, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 29, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 33, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 37, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 41, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 45, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 49, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 53, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 1, 57, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 19, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 22, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 26, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 30, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 34, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 38, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 42, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 46, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 50, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 54, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 2, 58, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 16, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 20, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 23, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 27, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 31, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 35, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 39, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 43, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 47, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 51, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 55, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 3, 59, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 17, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 21, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 24, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 28, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 32, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 36, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 40, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 44, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 48, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 52, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 56, '1', '0');
INSERT INTO `pet_breeds` VALUES (15, 4, 60, '1', '0');
INSERT INTO `pet_breeds` VALUES (17, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (17, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (17, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (17, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (17, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (18, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (19, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (20, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (21, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (22, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (23, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 12, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 13, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 14, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 15, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 16, 16, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 17, 17, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 18, 18, '1', '0');
INSERT INTO `pet_breeds` VALUES (24, 19, 19, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 12, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 13, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 14, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 15, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 16, 16, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 17, 17, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 18, 18, '1', '0');
INSERT INTO `pet_breeds` VALUES (25, 19, 19, '1', '0');
INSERT INTO `pet_breeds` VALUES (26, 0, 0, '0', '0');
INSERT INTO `pet_breeds` VALUES (27, 0, 0, '0', '0');
INSERT INTO `pet_breeds` VALUES (28, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 12, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 13, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 14, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 15, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 16, 16, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 17, 17, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 18, 18, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 19, 19, '1', '0');
INSERT INTO `pet_breeds` VALUES (28, 20, 20, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 12, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 13, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 14, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 15, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 16, 16, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 17, 17, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 18, 18, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 19, 19, '1', '0');
INSERT INTO `pet_breeds` VALUES (29, 20, 20, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 12, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 13, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 14, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 15, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 16, 16, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 17, 17, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 18, 18, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 19, 19, '1', '0');
INSERT INTO `pet_breeds` VALUES (30, 20, 20, '1', '0');
INSERT INTO `pet_breeds` VALUES (31, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (31, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (31, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (31, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (31, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (31, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (31, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (31, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (31, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (31, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (32, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 12, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 13, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 14, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 15, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 16, 16, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 17, 17, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 18, 18, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 19, 19, '1', '0');
INSERT INTO `pet_breeds` VALUES (33, 20, 20, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 0, 0, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 1, 1, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 3, 3, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 12, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 13, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 14, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 15, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 16, 16, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 17, 17, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 18, 18, '1', '0');
INSERT INTO `pet_breeds` VALUES (34, 19, 19, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 2, 2, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 4, 4, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 5, 5, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 6, 6, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 7, 7, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 8, 8, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 9, 9, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 10, 10, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 11, 11, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 12, 12, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 13, 13, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 14, 14, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 15, 15, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 16, 16, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 17, 17, '1', '0');
INSERT INTO `pet_breeds` VALUES (35, 18, 18, '1', '1');

-- ----------------------------
-- Table structure for pet_commands
-- ----------------------------
DROP TABLE IF EXISTS `pet_commands`;
CREATE TABLE `pet_commands`  (
                                 `pet_id` int(0) NOT NULL,
                                 `command_id` int(0) NOT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of pet_commands
-- ----------------------------
INSERT INTO `pet_commands` VALUES (12, 0);
INSERT INTO `pet_commands` VALUES (12, 35);
INSERT INTO `pet_commands` VALUES (12, 5);
INSERT INTO `pet_commands` VALUES (12, 3);
INSERT INTO `pet_commands` VALUES (12, 36);
INSERT INTO `pet_commands` VALUES (12, 37);
INSERT INTO `pet_commands` VALUES (12, 38);
INSERT INTO `pet_commands` VALUES (12, 2);
INSERT INTO `pet_commands` VALUES (12, 6);
INSERT INTO `pet_commands` VALUES (12, 7);
INSERT INTO `pet_commands` VALUES (12, 22);
INSERT INTO `pet_commands` VALUES (12, 8);
INSERT INTO `pet_commands` VALUES (12, 9);
INSERT INTO `pet_commands` VALUES (12, 41);
INSERT INTO `pet_commands` VALUES (12, 10);
INSERT INTO `pet_commands` VALUES (12, 11);
INSERT INTO `pet_commands` VALUES (12, 12);
INSERT INTO `pet_commands` VALUES (12, 13);
INSERT INTO `pet_commands` VALUES (12, 14);
INSERT INTO `pet_commands` VALUES (12, 15);
INSERT INTO `pet_commands` VALUES (12, 16);
INSERT INTO `pet_commands` VALUES (12, 42);

-- ----------------------------
-- Table structure for pet_commands_data
-- ----------------------------
DROP TABLE IF EXISTS `pet_commands_data`;
CREATE TABLE `pet_commands_data`  (
                                      `command_id` int(0) NOT NULL,
                                      `text` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
                                      `required_level` int(0) NOT NULL,
                                      `reward_xp` int(0) NOT NULL DEFAULT 5,
                                      `cost_happyness` int(0) NOT NULL DEFAULT 0,
                                      `cost_energy` int(0) NOT NULL DEFAULT 0,
                                      PRIMARY KEY (`command_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pet_commands_data
-- ----------------------------
INSERT INTO `pet_commands_data` VALUES (0, 'Free', 1, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (1, 'Sit', 1, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (2, 'Down', 2, 10, 0, 0);
INSERT INTO `pet_commands_data` VALUES (3, 'Here', 2, 10, 0, 0);
INSERT INTO `pet_commands_data` VALUES (4, 'Beg', 2, 10, 0, 0);
INSERT INTO `pet_commands_data` VALUES (5, 'Play Dead', 3, 15, 0, 0);
INSERT INTO `pet_commands_data` VALUES (6, 'Stay', 4, 10, 0, 0);
INSERT INTO `pet_commands_data` VALUES (7, 'Follow', 5, 15, 0, 0);
INSERT INTO `pet_commands_data` VALUES (8, 'Stand', 6, 15, 0, 0);
INSERT INTO `pet_commands_data` VALUES (9, 'Jump', 6, 15, 0, 0);
INSERT INTO `pet_commands_data` VALUES (10, 'Speak', 7, 10, 0, 0);
INSERT INTO `pet_commands_data` VALUES (11, 'Play', 8, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (12, 'Silent', 8, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (13, 'Nest', 5, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (14, 'Drink', 4, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (15, 'Follow left', 15, 15, 0, 0);
INSERT INTO `pet_commands_data` VALUES (16, 'Follow right', 15, 15, 0, 0);
INSERT INTO `pet_commands_data` VALUES (17, 'Play football', 10, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (18, 'Come here', 9, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (19, 'Bounce', 9, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (20, 'Flat', 11, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (21, 'Dance', 12, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (22, 'Spin', 10, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (23, 'Switch TV', 12, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (24, 'Move forward', 17, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (25, 'Turn left', 18, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (26, 'Turn right', 18, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (27, 'Relax', 13, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (28, 'Croak', 14, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (29, 'Dip', 14, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (30, 'Wave', 5, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (31, 'Mambo!', 18, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (32, 'High jump', 18, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (33, 'Chicken dance', 7, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (34, 'Triple jump', 9, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (35, 'Spread wings', 8, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (36, 'Breathe fire', 10, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (37, 'Hang', 12, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (38, 'Torch', 6, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (40, 'Swing', 13, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (41, 'Roll', 10, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (42, 'Ring of fire', 20, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (43, 'Eat', 4, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (44, 'Wag Tail', 4, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (45, 'Count', 6, 5, 0, 0);
INSERT INTO `pet_commands_data` VALUES (46, 'Breed', 20, 5, 0, 0);

-- ----------------------------
-- Table structure for pet_drinks
-- ----------------------------
DROP TABLE IF EXISTS `pet_drinks`;
CREATE TABLE `pet_drinks`  (
                               `pet_id` int(0) NOT NULL DEFAULT 0 COMMENT 'Leave 0 to have it affect all pet types.',
                               `item_id` int(0) NOT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for pet_foods
-- ----------------------------
DROP TABLE IF EXISTS `pet_foods`;
CREATE TABLE `pet_foods`  (
                              `pet_id` int(0) NOT NULL DEFAULT 0 COMMENT 'Leave 0 to have it affect all pet types.',
                              `item_id` int(0) NOT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for pet_items
-- ----------------------------
DROP TABLE IF EXISTS `pet_items`;
CREATE TABLE `pet_items`  (
                              `pet_id` int(0) NOT NULL COMMENT 'Leave 0 to have it affect all pet types.',
                              `item_id` int(0) NOT NULL COMMENT 'Item id of a item having one of the following interactions: nest, pet_food, pet_drink'
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for pet_vocals
-- ----------------------------
DROP TABLE IF EXISTS `pet_vocals`;
CREATE TABLE `pet_vocals`  (
                               `pet_id` int(0) NOT NULL DEFAULT 0 COMMENT 'Leave 0 to have it apply to all pet types.',
                               `type` enum('DISOBEY','DRINKING','EATING','GENERIC_HAPPY','GENERIC_NEUTRAL','GENERIC_SAD','GREET_OWNER','HUNGRY','LEVEL_UP','MUTED','PLAYFUL','SLEEPING','THIRSTY','TIRED','UNKNOWN_COMMAND') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'GENERIC_HAPPY',
                               `message` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pet_vocals
-- ----------------------------
INSERT INTO `pet_vocals` VALUES (0, 'GENERIC_HAPPY', 'Yay, lets play!');
INSERT INTO `pet_vocals` VALUES (0, 'GENERIC_HAPPY', '*Whistles*');
INSERT INTO `pet_vocals` VALUES (0, 'DISOBEY', 'Nope, ain\'t gonna do that for you.');
INSERT INTO `pet_vocals` VALUES (0, 'DISOBEY', 'Who do you think I am?');
INSERT INTO `pet_vocals` VALUES (0, 'DISOBEY', 'That ain\'t gonna happen mate.');
