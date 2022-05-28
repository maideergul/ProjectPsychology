/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : psy_scale_db

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 28/05/2022 21:40:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add answers', 7, 'add_answers');
INSERT INTO `auth_permission` VALUES (26, 'Can change answers', 7, 'change_answers');
INSERT INTO `auth_permission` VALUES (27, 'Can delete answers', 7, 'delete_answers');
INSERT INTO `auth_permission` VALUES (28, 'Can view answers', 7, 'view_answers');
INSERT INTO `auth_permission` VALUES (29, 'Can add result_ of_ user', 8, 'add_result_of_user');
INSERT INTO `auth_permission` VALUES (30, 'Can change result_ of_ user', 8, 'change_result_of_user');
INSERT INTO `auth_permission` VALUES (31, 'Can delete result_ of_ user', 8, 'delete_result_of_user');
INSERT INTO `auth_permission` VALUES (32, 'Can view result_ of_ user', 8, 'view_result_of_user');
INSERT INTO `auth_permission` VALUES (33, 'Can add questions', 9, 'add_questions');
INSERT INTO `auth_permission` VALUES (34, 'Can change questions', 9, 'change_questions');
INSERT INTO `auth_permission` VALUES (35, 'Can delete questions', 9, 'delete_questions');
INSERT INTO `auth_permission` VALUES (36, 'Can view questions', 9, 'view_questions');
INSERT INTO `auth_permission` VALUES (37, 'Can add answers', 10, 'add_answers');
INSERT INTO `auth_permission` VALUES (38, 'Can change answers', 10, 'change_answers');
INSERT INTO `auth_permission` VALUES (39, 'Can delete answers', 10, 'delete_answers');
INSERT INTO `auth_permission` VALUES (40, 'Can view answers', 10, 'view_answers');
INSERT INTO `auth_permission` VALUES (41, 'Can add result_ of_ users', 11, 'add_result_of_users');
INSERT INTO `auth_permission` VALUES (42, 'Can change result_ of_ users', 11, 'change_result_of_users');
INSERT INTO `auth_permission` VALUES (43, 'Can delete result_ of_ users', 11, 'delete_result_of_users');
INSERT INTO `auth_permission` VALUES (44, 'Can view result_ of_ users', 11, 'view_result_of_users');
INSERT INTO `auth_permission` VALUES (45, 'Can add answers', 12, 'add_answers');
INSERT INTO `auth_permission` VALUES (46, 'Can change answers', 12, 'change_answers');
INSERT INTO `auth_permission` VALUES (47, 'Can delete answers', 12, 'delete_answers');
INSERT INTO `auth_permission` VALUES (48, 'Can view answers', 12, 'view_answers');
INSERT INTO `auth_permission` VALUES (49, 'Can add questions', 13, 'add_questions');
INSERT INTO `auth_permission` VALUES (50, 'Can change questions', 13, 'change_questions');
INSERT INTO `auth_permission` VALUES (51, 'Can delete questions', 13, 'delete_questions');
INSERT INTO `auth_permission` VALUES (52, 'Can view questions', 13, 'view_questions');
INSERT INTO `auth_permission` VALUES (53, 'Can add results_of_users', 14, 'add_results_of_users');
INSERT INTO `auth_permission` VALUES (54, 'Can change results_of_users', 14, 'change_results_of_users');
INSERT INTO `auth_permission` VALUES (55, 'Can delete results_of_users', 14, 'delete_results_of_users');
INSERT INTO `auth_permission` VALUES (56, 'Can view results_of_users', 14, 'view_results_of_users');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$320000$Oko38uiYSXqVdrsFTx0X3E$1Wx4eJtN+U5KxU6p+VLPvQr/vdt7jJOwuJCkKa/K67k=', '2022-05-27 23:30:58.773706', 1, 'mai', '', '', 'maideergul@yahoo.com', 1, 1, '2022-05-11 21:57:47.789838');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$320000$LmZqHng2xMZZKHhKMFZFYA$YE6TmrlqCmA/LWWRqoGXcUxxS8se06eMjvt3Gc351WY=', '2022-05-25 15:33:20.415129', 0, 'TestUser', 'deneme123', '', '', 1, 1, '2022-05-11 22:02:27.000000');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$320000$4WaSa8AQtDsFfVuotNt49r$slkhtw59fYyspFS3rDEFCwXZG+Hjgs9fmGi+9dCdv9E=', '2022-05-27 20:43:06.856680', 0, 'NewUser', '', '', '', 0, 1, '2022-05-13 20:58:03.663968');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$320000$3hggqyWuiz7gZvxyDt5Qxk$6UCkt4aoeQmoiYFFc6RteLy5xsPkNnXRYTUtoQqNA/w=', '2022-05-25 16:22:00.707544', 0, 'NewUser2', '', '', 'newuser2@mail.com', 0, 1, '2022-05-13 21:27:39.965922');
INSERT INTO `auth_user` VALUES (5, 'pbkdf2_sha256$320000$mJUQarK8tfXfNKE6ZKrYf2$xc2Lg+rs0seKEmJas6uNre9lKzDF+gVWX2dH52uGPZ4=', '2022-05-25 20:06:38.372156', 0, 'TestUser2', '', '', 'testuser2@mail.com', 0, 1, '2022-05-25 13:52:37.026146');
INSERT INTO `auth_user` VALUES (6, 'pbkdf2_sha256$320000$arWxhQKqsP6vNFs5HyV5xQ$NlqKou3l/0OSTeBOaEKeSd0zc2bpeSYOYJ2qKbU1vZQ=', '2022-05-25 20:49:32.297154', 0, 'TestUser3', '', '', 'testuser3@mail.com', 0, 1, '2022-05-25 13:56:39.077258');
INSERT INTO `auth_user` VALUES (7, 'pbkdf2_sha256$320000$u7Gnq7O3Cn0rBbtMXpAj2x$Q9hAjE2fFODP2KiZToZ8Ed7kaGC4yt3hwBAslddcrpY=', '2022-05-27 21:10:33.107672', 0, 'TestUser4', '', '', 'testuser4@mail.com', 0, 1, '2022-05-25 13:57:39.327739');
INSERT INTO `auth_user` VALUES (8, 'pbkdf2_sha256$320000$p7AAaBAy5HooOYT1BLtEus$i949JJOFYh4GUD1HmtctsZxTxXyH7CuXA7OXR5YyUBg=', NULL, 0, 'deneme1', '', '', 'deneme1@mail.com', 0, 1, '2022-05-25 13:59:01.925293');
INSERT INTO `auth_user` VALUES (9, 'pbkdf2_sha256$320000$aLBnsDpAmpmRqHsfykOHD4$3V7faG2JeHKm27WXDC0ph3g2C8FRVIrosbB0jyYwEJM=', '2022-05-25 16:58:13.561788', 0, 'NewUser4', '', '', 'newuser4@mail.com', 0, 1, '2022-05-25 14:08:58.984900');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for bai_answers
-- ----------------------------
DROP TABLE IF EXISTS `bai_answers`;
CREATE TABLE `bai_answers`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `answer_point` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bai_answers
-- ----------------------------
INSERT INTO `bai_answers` VALUES (1, 'Not at all', 0);
INSERT INTO `bai_answers` VALUES (2, 'Mildly, but it didn\'t bother me much', 1);
INSERT INTO `bai_answers` VALUES (3, 'Moderately - it wasn\'t pleasant at times', 2);
INSERT INTO `bai_answers` VALUES (4, 'Severely - it bothered me a lot', 3);

-- ----------------------------
-- Table structure for bai_questions
-- ----------------------------
DROP TABLE IF EXISTS `bai_questions`;
CREATE TABLE `bai_questions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bai_questions
-- ----------------------------
INSERT INTO `bai_questions` VALUES (1, 'Numbness or tingling');
INSERT INTO `bai_questions` VALUES (2, 'Feeling hot');
INSERT INTO `bai_questions` VALUES (3, 'Wobbliness in legs');
INSERT INTO `bai_questions` VALUES (4, 'Unable to relax');
INSERT INTO `bai_questions` VALUES (5, 'Fear of worst happening');
INSERT INTO `bai_questions` VALUES (6, 'Dizzy or lightheaded');
INSERT INTO `bai_questions` VALUES (7, 'Heart pounding / racing');
INSERT INTO `bai_questions` VALUES (8, 'Unsteady');
INSERT INTO `bai_questions` VALUES (9, 'Terrified or afraid');
INSERT INTO `bai_questions` VALUES (10, 'Nervous');
INSERT INTO `bai_questions` VALUES (11, 'Feeling of choking');
INSERT INTO `bai_questions` VALUES (12, 'Hands trembling');
INSERT INTO `bai_questions` VALUES (13, 'Shaky / unstead');
INSERT INTO `bai_questions` VALUES (14, 'Fear of losing control');
INSERT INTO `bai_questions` VALUES (15, 'Difficulty in breathing');
INSERT INTO `bai_questions` VALUES (16, 'Fear of dying');
INSERT INTO `bai_questions` VALUES (17, 'Scared');
INSERT INTO `bai_questions` VALUES (18, 'Indigestion');
INSERT INTO `bai_questions` VALUES (19, 'Faint / lightheaded');
INSERT INTO `bai_questions` VALUES (20, 'Face flushed');
INSERT INTO `bai_questions` VALUES (21, 'Hot / cold sweats');

-- ----------------------------
-- Table structure for bai_result_of_user
-- ----------------------------
DROP TABLE IF EXISTS `bai_result_of_user`;
CREATE TABLE `bai_result_of_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `result_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bai_result_of_user_user_id_9d259577_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `bai_result_of_user_user_id_9d259577_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bai_result_of_user
-- ----------------------------
INSERT INTO `bai_result_of_user` VALUES (1, 'Low Anxiety', '2022-05-13 01:52:49.000000', 1, 20);
INSERT INTO `bai_result_of_user` VALUES (2, 'Moderate Anxiety', '2022-05-12 01:52:55.000000', 1, 32);
INSERT INTO `bai_result_of_user` VALUES (3, 'Low Anxiety', '2022-05-14 00:18:12.037982', 1, 12);
INSERT INTO `bai_result_of_user` VALUES (4, 'Potentially Concerning Levels Of Anxiety', '2022-05-14 00:19:23.398395', 1, 36);
INSERT INTO `bai_result_of_user` VALUES (5, 'Moderate Anxiety', '2022-05-14 20:58:47.611967', 2, 23);
INSERT INTO `bai_result_of_user` VALUES (6, 'Moderate Anxiety', '2022-05-18 19:26:20.954775', 3, 25);
INSERT INTO `bai_result_of_user` VALUES (7, 'Moderate Anxiety', '2022-05-21 23:54:26.136793', 1, 24);
INSERT INTO `bai_result_of_user` VALUES (8, 'Moderate Anxiety', '2022-05-21 23:55:06.942001', 1, 27);
INSERT INTO `bai_result_of_user` VALUES (9, 'Low Anxiety', '2022-05-21 23:57:20.354935', 1, 21);
INSERT INTO `bai_result_of_user` VALUES (10, 'Moderate Anxiety', '2022-05-21 23:58:04.271331', 1, 22);
INSERT INTO `bai_result_of_user` VALUES (11, 'Moderate Anxiety', '2022-05-21 23:58:38.460764', 1, 35);
INSERT INTO `bai_result_of_user` VALUES (12, 'Low Anxiety', '2022-05-25 03:01:22.228985', 2, 2);
INSERT INTO `bai_result_of_user` VALUES (13, 'Low Anxiety', '2022-05-25 18:52:24.805651', 5, 0);
INSERT INTO `bai_result_of_user` VALUES (14, 'Low Anxiety', '2022-05-25 18:55:21.579934', 5, 21);
INSERT INTO `bai_result_of_user` VALUES (15, 'Potentially Concerning Levels Of Anxiety', '2022-05-25 19:00:11.249270', 5, 42);
INSERT INTO `bai_result_of_user` VALUES (17, 'Moderate Anxiety', '2022-05-25 19:01:22.439387', 5, 31);
INSERT INTO `bai_result_of_user` VALUES (18, 'Potentially Concerning Levels Of Anxiety', '2022-05-25 19:04:22.780188', 5, 63);
INSERT INTO `bai_result_of_user` VALUES (19, 'Low Anxiety', '2022-05-25 19:36:44.421011', 9, 15);
INSERT INTO `bai_result_of_user` VALUES (20, 'Potentially Concerning Levels Of Anxiety', '2022-05-25 19:41:29.421426', 9, 50);
INSERT INTO `bai_result_of_user` VALUES (21, 'Moderate Anxiety', '2022-05-25 19:42:35.023415', 9, 33);
INSERT INTO `bai_result_of_user` VALUES (22, 'Low Anxiety', '2022-05-25 19:43:00.722993', 9, 7);
INSERT INTO `bai_result_of_user` VALUES (23, 'Potentially Concerning Levels Of Anxiety', '2022-05-25 19:43:53.225248', 3, 56);
INSERT INTO `bai_result_of_user` VALUES (24, 'Potentially Concerning Levels Of Anxiety', '2022-05-25 19:44:42.993064', 3, 47);
INSERT INTO `bai_result_of_user` VALUES (25, 'Potentially Concerning Levels Of Anxiety', '2022-05-25 19:46:29.306256', 3, 40);
INSERT INTO `bai_result_of_user` VALUES (26, 'Low Anxiety', '2022-05-25 19:47:02.858686', 3, 17);
INSERT INTO `bai_result_of_user` VALUES (27, 'Moderate Anxiety', '2022-05-25 19:48:07.803004', 6, 30);
INSERT INTO `bai_result_of_user` VALUES (28, 'Potentially Concerning Levels Of Anxiety', '2022-05-25 19:49:13.408577', 6, 55);
INSERT INTO `bai_result_of_user` VALUES (29, 'Low Anxiety', '2022-05-25 19:49:52.531716', 6, 9);
INSERT INTO `bai_result_of_user` VALUES (30, 'Potentially Concerning Levels Of Anxiety', '2022-05-25 19:51:50.630715', 6, 37);
INSERT INTO `bai_result_of_user` VALUES (31, 'Low Anxiety', '2022-05-25 19:52:51.328940', 7, 20);
INSERT INTO `bai_result_of_user` VALUES (32, 'Moderate Anxiety', '2022-05-25 19:53:34.190929', 7, 29);
INSERT INTO `bai_result_of_user` VALUES (33, 'Potentially Concerning Levels Of Anxiety', '2022-05-25 19:54:15.072685', 7, 43);
INSERT INTO `bai_result_of_user` VALUES (34, 'Moderate Anxiety', '2022-05-25 19:56:46.236485', 7, 35);
INSERT INTO `bai_result_of_user` VALUES (35, 'Potentially Concerning Levels Of Anxiety', '2022-05-25 19:57:53.697941', 7, 44);
INSERT INTO `bai_result_of_user` VALUES (36, 'Low Anxiety', '2022-05-25 19:58:32.779243', 9, 3);
INSERT INTO `bai_result_of_user` VALUES (37, 'Low Anxiety', '2022-05-25 19:59:03.382220', 9, 19);
INSERT INTO `bai_result_of_user` VALUES (38, 'Potentially Concerning Levels Of Anxiety', '2022-05-25 20:00:18.932103', 9, 42);
INSERT INTO `bai_result_of_user` VALUES (39, 'Low Anxiety', '2022-05-25 20:00:53.694075', 9, 6);
INSERT INTO `bai_result_of_user` VALUES (40, 'Low Anxiety', '2022-05-25 20:02:02.683250', 9, 19);

-- ----------------------------
-- Table structure for bdi_answers
-- ----------------------------
DROP TABLE IF EXISTS `bdi_answers`;
CREATE TABLE `bdi_answers`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `answer_text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `answer_point` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bdi_answers
-- ----------------------------
INSERT INTO `bdi_answers` VALUES (1, 1, 'I do not feel sad.', 0);
INSERT INTO `bdi_answers` VALUES (2, 1, 'I feel sad.', 1);
INSERT INTO `bdi_answers` VALUES (3, 1, 'I am sad all the time and I can\'t snap out of it.', 2);
INSERT INTO `bdi_answers` VALUES (4, 1, 'I am so sad and unhappy that I can\'t stand it.', 3);
INSERT INTO `bdi_answers` VALUES (5, 2, 'I am not particularly discouraged about the future.', 0);
INSERT INTO `bdi_answers` VALUES (6, 2, 'I feel discouraged about the future.', 1);
INSERT INTO `bdi_answers` VALUES (7, 2, 'I feel I have nothing to look forward to.', 2);
INSERT INTO `bdi_answers` VALUES (8, 2, 'I feel the future is hopeless and that things cannot improve.', 3);
INSERT INTO `bdi_answers` VALUES (9, 3, 'I do not feel like a failure.', 0);
INSERT INTO `bdi_answers` VALUES (10, 3, 'I feel I have failed more than the average person.', 1);
INSERT INTO `bdi_answers` VALUES (11, 3, 'As I look back on my life, all I can see is a lot of failures.', 2);
INSERT INTO `bdi_answers` VALUES (12, 3, 'I feel I am a complete failure as a person.', 3);
INSERT INTO `bdi_answers` VALUES (13, 4, 'I get as much satisfaction out of things as I used to.', 0);
INSERT INTO `bdi_answers` VALUES (14, 4, 'I don\'t enjoy things the way I used to.', 1);
INSERT INTO `bdi_answers` VALUES (15, 4, 'I don\'t get real satisfaction out of anything anymore.', 2);
INSERT INTO `bdi_answers` VALUES (16, 4, 'I am dissatisfied or bored with everything.', 3);
INSERT INTO `bdi_answers` VALUES (17, 5, 'I don\'t feel particularly guilty.', 0);
INSERT INTO `bdi_answers` VALUES (18, 5, 'I feel guilty a good part of the time.', 1);
INSERT INTO `bdi_answers` VALUES (19, 5, 'I feel quite guilty most of the time.', 2);
INSERT INTO `bdi_answers` VALUES (20, 5, 'I feel guilty all of the time.', 3);
INSERT INTO `bdi_answers` VALUES (21, 6, 'I don\'t feel I am being punished.', 0);
INSERT INTO `bdi_answers` VALUES (22, 6, 'I feel I may be punished.', 1);
INSERT INTO `bdi_answers` VALUES (23, 6, 'I expect to be punished.', 2);
INSERT INTO `bdi_answers` VALUES (24, 6, 'I feel I am being punished.', 3);
INSERT INTO `bdi_answers` VALUES (25, 7, 'I don\'t feel disappointed in myself.', 0);
INSERT INTO `bdi_answers` VALUES (26, 7, 'I am disappointed in myself.', 1);
INSERT INTO `bdi_answers` VALUES (27, 7, 'I am disgusted with myself.', 2);
INSERT INTO `bdi_answers` VALUES (28, 7, 'I hate myself.', 3);
INSERT INTO `bdi_answers` VALUES (29, 8, 'I don\'t feel I am any worse than anybody else.', 0);
INSERT INTO `bdi_answers` VALUES (30, 8, 'I am critical of myself for my weaknesses or mistakes.', 1);
INSERT INTO `bdi_answers` VALUES (31, 8, 'I blame myself all the time for my faults.', 2);
INSERT INTO `bdi_answers` VALUES (32, 8, 'I blame myself for everything bad that happens.', 3);
INSERT INTO `bdi_answers` VALUES (33, 9, 'I don\'t have any thoughts of killing myself.', 0);
INSERT INTO `bdi_answers` VALUES (34, 9, 'I have thoughts of killing myself, but I would not carry them out.', 1);
INSERT INTO `bdi_answers` VALUES (35, 9, 'I would like to kill myself.', 2);
INSERT INTO `bdi_answers` VALUES (36, 9, 'I would kill myself if I had the chance.', 3);
INSERT INTO `bdi_answers` VALUES (37, 10, 'I don\'t cry any more than usual.', 0);
INSERT INTO `bdi_answers` VALUES (38, 10, 'I cry more now than I used to.', 1);
INSERT INTO `bdi_answers` VALUES (39, 10, 'I cry all the time now.', 2);
INSERT INTO `bdi_answers` VALUES (40, 10, 'I used to be able to cry, but now I can\'t cry even though I want to.', 3);
INSERT INTO `bdi_answers` VALUES (41, 11, 'I am no more irritated by things than I ever was.', 0);
INSERT INTO `bdi_answers` VALUES (42, 11, 'I am slightly more irritated now than usual.', 1);
INSERT INTO `bdi_answers` VALUES (43, 11, 'I am quite annoyed or irritated a good deal of the time.', 2);
INSERT INTO `bdi_answers` VALUES (44, 11, 'I feel irritated all the time.', 3);
INSERT INTO `bdi_answers` VALUES (45, 12, 'I have not lost interest in other people.', 0);
INSERT INTO `bdi_answers` VALUES (46, 12, 'I am less interested in other people than I used to be.', 1);
INSERT INTO `bdi_answers` VALUES (47, 12, 'I have lost most of my interest in other people.', 2);
INSERT INTO `bdi_answers` VALUES (48, 12, 'I have lost all of my interest in other people.', 3);
INSERT INTO `bdi_answers` VALUES (49, 13, 'I make decisions about as well as I ever could.', 0);
INSERT INTO `bdi_answers` VALUES (50, 13, 'I put off making decisions more than I used to.', 1);
INSERT INTO `bdi_answers` VALUES (51, 13, 'I have greater difficulty in making decisions more than I used to.', 2);
INSERT INTO `bdi_answers` VALUES (52, 13, 'I can\'t make decisions at all anymore.', 3);
INSERT INTO `bdi_answers` VALUES (53, 14, 'I don\'t feel that I look any worse than I used to.', 0);
INSERT INTO `bdi_answers` VALUES (54, 14, 'I am worried that I am looking old or unattractive.', 1);
INSERT INTO `bdi_answers` VALUES (55, 14, 'I feel there are permanent changes in my appearance that make me look unattractive.', 2);
INSERT INTO `bdi_answers` VALUES (56, 14, 'I believe that I look ugly.', 3);
INSERT INTO `bdi_answers` VALUES (57, 15, 'I can work about as well as before.', 0);
INSERT INTO `bdi_answers` VALUES (58, 15, 'It takes an extra effort to get started at doing something.', 1);
INSERT INTO `bdi_answers` VALUES (59, 15, 'I have to push myself very hard to do anything.', 2);
INSERT INTO `bdi_answers` VALUES (60, 15, 'I can\'t do any work at all.', 3);
INSERT INTO `bdi_answers` VALUES (61, 16, 'I can sleep as well as usual.', 0);
INSERT INTO `bdi_answers` VALUES (62, 16, 'I don\'t sleep as well as I used to.', 1);
INSERT INTO `bdi_answers` VALUES (63, 16, 'I wake up 1-2 hours earlier than usual and find it hard to get back to sleep.', 2);
INSERT INTO `bdi_answers` VALUES (64, 16, 'I wake up several hours earlier than I used to and cannot get back to sleep.', 3);
INSERT INTO `bdi_answers` VALUES (65, 17, 'I don\'t get more tired than usual.', 0);
INSERT INTO `bdi_answers` VALUES (66, 17, 'I get tired more easily than I used to.', 1);
INSERT INTO `bdi_answers` VALUES (67, 17, 'I get tired from doing almost anything.', 2);
INSERT INTO `bdi_answers` VALUES (68, 17, 'I am too tired to do anything.', 3);
INSERT INTO `bdi_answers` VALUES (69, 18, 'My appetite is no worse than usual.', 0);
INSERT INTO `bdi_answers` VALUES (70, 18, 'My appetite is not as good as it used to be.', 1);
INSERT INTO `bdi_answers` VALUES (71, 18, 'My appetite is much worse now.', 2);
INSERT INTO `bdi_answers` VALUES (72, 18, 'I have no appetite at all anymore.', 3);
INSERT INTO `bdi_answers` VALUES (73, 19, 'I haven\'t lost much weight, if any, lately.', 0);
INSERT INTO `bdi_answers` VALUES (74, 19, 'I have lost more than five pounds.', 1);
INSERT INTO `bdi_answers` VALUES (75, 19, 'I have lost more than ten pounds.', 2);
INSERT INTO `bdi_answers` VALUES (76, 19, 'I have lost more than fifteen pounds.', 3);
INSERT INTO `bdi_answers` VALUES (77, 20, 'I am no more worried about my health than usual.', 0);
INSERT INTO `bdi_answers` VALUES (78, 20, 'I am worried about physical problems like aches, pains, upset stomach, or\r\n constipation.', 1);
INSERT INTO `bdi_answers` VALUES (79, 20, 'I am very worried about physical problems and it\'s hard to think of much else.', 2);
INSERT INTO `bdi_answers` VALUES (80, 20, 'I am so worried about my physical problems that I cannot think of anything else.', 3);
INSERT INTO `bdi_answers` VALUES (81, 21, 'I have not noticed any recent change in my interest in sex.', 0);
INSERT INTO `bdi_answers` VALUES (82, 21, 'I am less interested in sex than I used to be.', 1);
INSERT INTO `bdi_answers` VALUES (83, 21, 'I have almost no interest in sex.', 2);
INSERT INTO `bdi_answers` VALUES (84, 21, 'I have lost interest in sex completely.', 3);

-- ----------------------------
-- Table structure for bdi_result_of_users
-- ----------------------------
DROP TABLE IF EXISTS `bdi_result_of_users`;
CREATE TABLE `bdi_result_of_users`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `score` int NOT NULL,
  `result_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bdi_result_of_users_user_id_74188c95_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `bdi_result_of_users_user_id_74188c95_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bdi_result_of_users
-- ----------------------------
INSERT INTO `bdi_result_of_users` VALUES (1, 22, 'Moderate depression', '2022-05-18 23:50:25.616319', 1);
INSERT INTO `bdi_result_of_users` VALUES (2, 0, 'No depression', '2022-05-18 23:51:19.417155', 3);
INSERT INTO `bdi_result_of_users` VALUES (3, 9, 'These ups and downs are considered normal', '2022-05-18 23:52:26.483680', 3);
INSERT INTO `bdi_result_of_users` VALUES (4, 7, 'These ups and downs are considered normal', '2022-05-18 23:52:59.564682', 3);
INSERT INTO `bdi_result_of_users` VALUES (5, 30, 'Moderate depression', '2022-05-18 23:53:25.384645', 3);
INSERT INTO `bdi_result_of_users` VALUES (6, 8, 'These ups and downs are considered normal', '2022-05-19 00:06:06.665153', 1);
INSERT INTO `bdi_result_of_users` VALUES (7, 9, 'These ups and downs are considered normal', '2022-05-22 00:00:58.173898', 1);
INSERT INTO `bdi_result_of_users` VALUES (8, 10, 'These ups and downs are considered normal', '2022-05-22 00:01:32.569324', 1);
INSERT INTO `bdi_result_of_users` VALUES (9, 16, 'Mild mood disturbance', '2022-05-22 00:02:11.510018', 1);
INSERT INTO `bdi_result_of_users` VALUES (10, 20, 'Borderline clinical depression', '2022-05-22 00:02:46.695233', 1);
INSERT INTO `bdi_result_of_users` VALUES (11, 38, 'Severe depression', '2022-05-22 23:33:48.014732', 1);
INSERT INTO `bdi_result_of_users` VALUES (12, 45, 'Extreme depression', '2022-05-22 23:43:21.705186', 1);
INSERT INTO `bdi_result_of_users` VALUES (13, 40, 'Severe depression', '2022-05-22 23:46:32.799012', 1);
INSERT INTO `bdi_result_of_users` VALUES (14, 3, 'These ups and downs are considered normal', '2022-05-25 03:09:51.502159', 2);
INSERT INTO `bdi_result_of_users` VALUES (15, 63, 'Extreme depression', '2022-05-25 19:06:44.119646', 5);
INSERT INTO `bdi_result_of_users` VALUES (16, 20, 'Borderline clinical depression', '2022-05-25 19:07:49.522628', 5);
INSERT INTO `bdi_result_of_users` VALUES (17, 34, 'Severe depression', '2022-05-25 19:08:38.967507', 5);
INSERT INTO `bdi_result_of_users` VALUES (18, 28, 'Moderate depression', '2022-05-25 19:09:27.957310', 5);
INSERT INTO `bdi_result_of_users` VALUES (19, 15, 'Mild mood disturbance', '2022-05-25 19:10:07.279246', 5);
INSERT INTO `bdi_result_of_users` VALUES (20, 10, 'These ups and downs are considered normal', '2022-05-25 19:11:11.918309', 6);
INSERT INTO `bdi_result_of_users` VALUES (21, 4, 'These ups and downs are considered normal', '2022-05-25 19:12:10.910134', 6);
INSERT INTO `bdi_result_of_users` VALUES (22, 15, 'Mild mood disturbance', '2022-05-25 19:13:11.251034', 6);
INSERT INTO `bdi_result_of_users` VALUES (23, 43, 'Extreme depression', '2022-05-25 19:13:43.674006', 6);
INSERT INTO `bdi_result_of_users` VALUES (24, 18, 'Borderline clinical depression', '2022-05-25 19:14:41.455370', 7);
INSERT INTO `bdi_result_of_users` VALUES (25, 17, 'Borderline clinical depression', '2022-05-25 19:15:46.241179', 7);
INSERT INTO `bdi_result_of_users` VALUES (26, 27, 'Moderate depression', '2022-05-25 19:16:22.539299', 7);
INSERT INTO `bdi_result_of_users` VALUES (27, 35, 'Severe depression', '2022-05-25 19:20:01.919415', 7);
INSERT INTO `bdi_result_of_users` VALUES (28, 52, 'Extreme depression', '2022-05-25 19:20:52.964764', 7);
INSERT INTO `bdi_result_of_users` VALUES (29, 12, 'Mild mood disturbance', '2022-05-25 19:21:37.995936', 7);
INSERT INTO `bdi_result_of_users` VALUES (30, 5, 'These ups and downs are considered normal', '2022-05-25 19:22:36.408004', 4);
INSERT INTO `bdi_result_of_users` VALUES (31, 12, 'Mild mood disturbance', '2022-05-25 19:23:09.133117', 4);
INSERT INTO `bdi_result_of_users` VALUES (32, 19, 'Borderline clinical depression', '2022-05-25 19:24:19.611768', 4);
INSERT INTO `bdi_result_of_users` VALUES (33, 33, 'Severe depression', '2022-05-25 19:24:43.979025', 4);
INSERT INTO `bdi_result_of_users` VALUES (34, 29, 'Moderate depression', '2022-05-25 19:25:19.907410', 4);
INSERT INTO `bdi_result_of_users` VALUES (35, 51, 'Extreme depression', '2022-05-25 19:26:09.005895', 4);
INSERT INTO `bdi_result_of_users` VALUES (36, 4, 'These ups and downs are considered normal', '2022-05-25 19:27:33.100018', 5);
INSERT INTO `bdi_result_of_users` VALUES (37, 60, 'Extreme depression', '2022-05-25 19:28:01.637114', 5);
INSERT INTO `bdi_result_of_users` VALUES (38, 25, 'Moderate depression', '2022-05-25 19:28:30.567238', 5);
INSERT INTO `bdi_result_of_users` VALUES (39, 12, 'Mild mood disturbance', '2022-05-25 19:30:18.841052', 5);
INSERT INTO `bdi_result_of_users` VALUES (40, 18, 'Borderline clinical depression', '2022-05-25 19:30:58.396344', 5);
INSERT INTO `bdi_result_of_users` VALUES (41, 39, 'Severe depression', '2022-05-25 19:31:40.967749', 5);
INSERT INTO `bdi_result_of_users` VALUES (42, 26, 'Moderate depression', '2022-05-25 19:33:44.638900', 9);
INSERT INTO `bdi_result_of_users` VALUES (43, 8, 'These ups and downs are considered normal', '2022-05-25 19:34:17.854434', 9);
INSERT INTO `bdi_result_of_users` VALUES (44, 53, 'Extreme depression', '2022-05-25 19:35:23.281581', 9);
INSERT INTO `bdi_result_of_users` VALUES (45, 34, 'Severe depression', '2022-05-25 19:36:08.916682', 9);
INSERT INTO `bdi_result_of_users` VALUES (46, 14, 'Mild mood disturbance', '2022-05-25 19:37:19.259252', 9);
INSERT INTO `bdi_result_of_users` VALUES (47, 19, 'Borderline clinical depression', '2022-05-25 19:37:54.391883', 9);
INSERT INTO `bdi_result_of_users` VALUES (48, 22, 'Moderate depression', '2022-05-25 19:38:31.019401', 9);
INSERT INTO `bdi_result_of_users` VALUES (49, 39, 'Severe depression', '2022-05-25 19:39:36.802918', 9);
INSERT INTO `bdi_result_of_users` VALUES (50, 11, 'Mild mood disturbance', '2022-05-25 19:40:32.086667', 9);
INSERT INTO `bdi_result_of_users` VALUES (51, 8, 'These ups and downs are considered normal', '2022-05-26 18:05:50.876127', 1);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2022-05-11 22:02:27.344021', '2', 'TestUser', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (2, '2022-05-13 20:37:50.872217', '2', 'TestUser', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (3, '2022-05-24 18:43:19.782992', '2', 'TestUser', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (4, '2022-05-24 18:44:06.286399', '2', 'TestUser', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (7, 'bai', 'answers');
INSERT INTO `django_content_type` VALUES (9, 'bai', 'questions');
INSERT INTO `django_content_type` VALUES (8, 'bai', 'result_of_user');
INSERT INTO `django_content_type` VALUES (10, 'bdi', 'answers');
INSERT INTO `django_content_type` VALUES (11, 'bdi', 'result_of_users');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (12, 'sa45', 'answers');
INSERT INTO `django_content_type` VALUES (13, 'sa45', 'questions');
INSERT INTO `django_content_type` VALUES (14, 'sa45', 'results_of_users');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2022-05-11 21:54:20.096152');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2022-05-11 21:54:20.783030');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2022-05-11 21:54:20.909703');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-05-11 21:54:20.917683');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-11 21:54:20.925659');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2022-05-11 21:54:20.987528');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2022-05-11 21:54:21.046371');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2022-05-11 21:54:21.061331');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2022-05-11 21:54:21.069337');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2022-05-11 21:54:21.111223');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2022-05-11 21:54:21.113197');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-11 21:54:21.121170');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2022-05-11 21:54:21.135396');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-11 21:54:21.149364');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2022-05-11 21:54:21.164293');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2022-05-11 21:54:21.172296');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-11 21:54:21.186291');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2022-05-11 21:54:21.220205');
INSERT INTO `django_migrations` VALUES (19, 'bai', '0001_initial', '2022-05-12 21:41:04.772261');
INSERT INTO `django_migrations` VALUES (20, 'bai', '0002_answers_answer_point_result_of_user_score', '2022-05-12 21:49:18.703651');
INSERT INTO `django_migrations` VALUES (21, 'bai', '0003_questions', '2022-05-13 14:27:04.729149');
INSERT INTO `django_migrations` VALUES (22, 'bdi', '0001_initial', '2022-05-14 15:33:10.396256');
INSERT INTO `django_migrations` VALUES (23, 'bdi', '0002_answers_question_id', '2022-05-14 15:46:14.146256');
INSERT INTO `django_migrations` VALUES (24, 'bdi', '0003_alter_answers_question_id', '2022-05-14 15:56:18.477662');
INSERT INTO `django_migrations` VALUES (25, 'bdi', '0004_delete_answers', '2022-05-14 16:18:19.642751');
INSERT INTO `django_migrations` VALUES (26, 'bdi', '0005_initial', '2022-05-14 16:18:19.680650');
INSERT INTO `django_migrations` VALUES (27, 'bdi', '0006_delete_answers', '2022-05-14 16:18:19.697605');
INSERT INTO `django_migrations` VALUES (28, 'bdi', '0007_initial', '2022-05-14 16:18:19.741266');
INSERT INTO `django_migrations` VALUES (29, 'bdi', '0008_result_of_users', '2022-05-14 17:43:22.513299');
INSERT INTO `django_migrations` VALUES (30, 'bai', '0004_alter_result_of_user_options', '2022-05-18 13:49:35.686210');
INSERT INTO `django_migrations` VALUES (31, 'bdi', '0009_alter_result_of_users_options', '2022-05-18 13:49:35.696190');
INSERT INTO `django_migrations` VALUES (32, 'sa45', '0001_initial', '2022-05-18 13:49:35.819162');
INSERT INTO `django_migrations` VALUES (33, 'sa45', '0002_remove_questions_question_id', '2022-05-18 13:54:26.049161');
INSERT INTO `django_migrations` VALUES (34, 'sa45', '0003_results_of_users_avg_gsi', '2022-05-18 20:30:39.047158');
INSERT INTO `django_migrations` VALUES (35, 'sa45', '0004_alter_results_of_users_global_severity_index_and_more', '2022-05-22 23:32:41.401832');
INSERT INTO `django_migrations` VALUES (36, 'sa45', '0005_alter_results_of_users_global_severity_index_and_more', '2022-05-22 23:53:34.987442');
INSERT INTO `django_migrations` VALUES (37, 'sa45', '0006_results_of_users_raw_anx_results_of_users_raw_dep_and_more', '2022-05-24 20:33:16.592089');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('dc577k2do69is6zz7ipwnk2g6cx1l5db', '.eJxVjDsOwjAQBe_iGlnxP6ak5wzWeneNA8iR4qRC3B0ipYD2zcx7iQTbWtPWeUkTibNQ4vS7ZcAHtx3QHdptlji3dZmy3BV50C6vM_Hzcrh_BxV6_dZ5yN4oVULIDG4E9spFz7Y41HYwZBU6x441ZI2FOAbDSKMvHBkNefH-APAkOMo:1nouLj:zUmzrOgI72T4VwFenmGDEuUZnkvb3cK2SL3AbibBUk8', '2022-05-25 21:58:27.160380');
INSERT INTO `django_session` VALUES ('jhtdh7822h4fid7kt0y28reytdqnbx7l', '.eJxVjDsOwjAQBe_iGlnxP6ak5wzWeneNA8iR4qRC3B0ipYD2zcx7iQTbWtPWeUkTibNQ4vS7ZcAHtx3QHdptlji3dZmy3BV50C6vM_Hzcrh_BxV6_dZ5yN4oVULIDG4E9spFz7Y41HYwZBU6x441ZI2FOAbDSKMvHBkNefH-APAkOMo:1nugfQ:VleTryWp86jBMZX8MFlBu4rRqmzYevbygDUk0FE4uf8', '2022-06-10 20:34:40.998281');
INSERT INTO `django_session` VALUES ('rpp7pgnuqxom92s1wy0ss7u8dr7u8u9f', '.eJxVjDsOwjAQBe_iGlnxP6ak5wzWeneNA8iR4qRC3B0ipYD2zcx7iQTbWtPWeUkTibNQ4vS7ZcAHtx3QHdptlji3dZmy3BV50C6vM_Hzcrh_BxV6_dZ5yN4oVULIDG4E9spFz7Y41HYwZBU6x441ZI2FOAbDSKMvHBkNefH-APAkOMo:1nugvp:OqQf_uE6UralutNDaTew1sbwMe1Df-EDyX_z0yQlaM0', '2022-06-10 20:51:37.217822');

-- ----------------------------
-- Table structure for sa45_answers
-- ----------------------------
DROP TABLE IF EXISTS `sa45_answers`;
CREATE TABLE `sa45_answers`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer_text` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `answer_point` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sa45_answers
-- ----------------------------
INSERT INTO `sa45_answers` VALUES (1, 'Not at all', 1);
INSERT INTO `sa45_answers` VALUES (2, 'A little bit', 2);
INSERT INTO `sa45_answers` VALUES (3, 'Moderately', 3);
INSERT INTO `sa45_answers` VALUES (4, 'Quite a bit', 4);
INSERT INTO `sa45_answers` VALUES (5, 'Extremely', 5);

-- ----------------------------
-- Table structure for sa45_questions
-- ----------------------------
DROP TABLE IF EXISTS `sa45_questions`;
CREATE TABLE `sa45_questions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sa45_questions
-- ----------------------------
INSERT INTO `sa45_questions` VALUES (1, 'Feeling lonely', 'Depression');
INSERT INTO `sa45_questions` VALUES (2, 'Feeling blue', 'Depression');
INSERT INTO `sa45_questions` VALUES (3, 'Feeling no interest in things', 'Depression');
INSERT INTO `sa45_questions` VALUES (4, 'Feeling fearful', 'Phobic Anxiety');
INSERT INTO `sa45_questions` VALUES (5, 'The idea that someone else can control your thoughts', 'Psychoticism');
INSERT INTO `sa45_questions` VALUES (6, 'Feeling others are to blame for most of your troubles', 'Paranoid Ideation');
INSERT INTO `sa45_questions` VALUES (7, 'Feeling afraid in open spaces or in the streets', 'Phobic Anxiety');
INSERT INTO `sa45_questions` VALUES (8, 'Hearing voices that other people do not hear', 'Psychoticism');
INSERT INTO `sa45_questions` VALUES (9, 'Feeling that most people cannot be trusted', 'Paranoid Ideation');
INSERT INTO `sa45_questions` VALUES (10, 'Suddenly scared for no reason', 'Phobic Anxiety');
INSERT INTO `sa45_questions` VALUES (11, 'Temper outburst that you could not control', 'Hostility ');
INSERT INTO `sa45_questions` VALUES (12, 'Feeling afraid to go out of your house alone', 'Phobic Anxiety');
INSERT INTO `sa45_questions` VALUES (13, 'Other people being aware of your private thoughts', 'Psychoticism');
INSERT INTO `sa45_questions` VALUES (14, 'Feeling others do not understand you or are unsympathetic', 'Interpersonal Sensitivity');
INSERT INTO `sa45_questions` VALUES (15, 'Feeling that people are unfriendly or dislike you', 'Paranoid Ideation');
INSERT INTO `sa45_questions` VALUES (16, 'Having to do things very slowly to ensure correctness', 'Obsessive Compulsion ');
INSERT INTO `sa45_questions` VALUES (17, 'Feeling inferior to others', 'Interpersonal Sensitivity');
INSERT INTO `sa45_questions` VALUES (18, 'Soreness of your muscles', 'Somatization ');
INSERT INTO `sa45_questions` VALUES (19, 'Feeling that you are watched or talked about by others', 'Paranoid Ideation');
INSERT INTO `sa45_questions` VALUES (20, 'Having to check and double-check what you do', 'Obsessive Compulsion ');
INSERT INTO `sa45_questions` VALUES (21, 'Difficulty making decisions', 'Obsessive Compulsion ');
INSERT INTO `sa45_questions` VALUES (22, 'Feeling afraid to travel on buses, subways, or trains', 'Phobic Anxiety');
INSERT INTO `sa45_questions` VALUES (23, 'Hot or cold spells', 'Somatization ');
INSERT INTO `sa45_questions` VALUES (24, 'Having to avoid certain things, places, or activities because they frighten you', 'Anxiety');
INSERT INTO `sa45_questions` VALUES (25, 'Your mind going blank', 'Psychoticism');
INSERT INTO `sa45_questions` VALUES (26, 'Numbness or tingling in parts of your body', 'Somatization ');
INSERT INTO `sa45_questions` VALUES (27, 'Feeling hopeless about the future', 'Depression');
INSERT INTO `sa45_questions` VALUES (28, 'Trouble concentrating', 'Depression');
INSERT INTO `sa45_questions` VALUES (29, 'Feeling weak in parts of your body', 'Somatization ');
INSERT INTO `sa45_questions` VALUES (30, 'Feeling tense or keyed up', 'Anxiety');
INSERT INTO `sa45_questions` VALUES (31, 'Heavy feelings in your arms or legs', 'Somatization ');
INSERT INTO `sa45_questions` VALUES (32, 'Feeling uneasy when people are watching or talking about you', 'Anxiety');
INSERT INTO `sa45_questions` VALUES (33, 'Having thoughts that are not your own', 'Psychoticism');
INSERT INTO `sa45_questions` VALUES (34, 'Having urges to beat, injure, or harm someone', 'Hostility ');
INSERT INTO `sa45_questions` VALUES (35, 'Having urges to break or smash things', 'Hostility ');
INSERT INTO `sa45_questions` VALUES (36, 'Feeling very self-conscious with others', 'Anxiety');
INSERT INTO `sa45_questions` VALUES (37, 'Feeling uneasy in crowds, such as shopping or at a movie', 'Anxiety');
INSERT INTO `sa45_questions` VALUES (38, 'Spells of terror or panic', 'Phobic Anxiety');
INSERT INTO `sa45_questions` VALUES (39, 'Getting into frequent arguments', 'Hostility');
INSERT INTO `sa45_questions` VALUES (40, 'Others not giving you proper credit for your achievements', 'Interpersonal Sensitivity');
INSERT INTO `sa45_questions` VALUES (41, 'Feeling so restless you couldn’t sit still', 'Paranoid Ideation');
INSERT INTO `sa45_questions` VALUES (42, 'Feeling of worthlessness', 'Depression');
INSERT INTO `sa45_questions` VALUES (43, 'Shouting or throwing things', 'Hostility');
INSERT INTO `sa45_questions` VALUES (44, 'Feeling that people will take advantage of you if you let them', 'Interpersonal Sensitivity');
INSERT INTO `sa45_questions` VALUES (45, 'The idea that you should be punished for your sins', 'Obsessive Compulsion');

-- ----------------------------
-- Table structure for sa45_results_of_users
-- ----------------------------
DROP TABLE IF EXISTS `sa45_results_of_users`;
CREATE TABLE `sa45_results_of_users`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `global_severity_index` int NOT NULL,
  `positive_symptom_total` int NOT NULL,
  `somatization_p` double NOT NULL,
  `obsessive_compulsion_p` double NOT NULL,
  `interpersonal_sensitivity_p` double NOT NULL,
  `depression_p` double NOT NULL,
  `anxiety_p` double NOT NULL,
  `hostility_p` double NOT NULL,
  `phobic_anxiety_p` double NOT NULL,
  `paranoid_ideation_p` double NOT NULL,
  `psychoticism_p` double NOT NULL,
  `date` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  `avg_gsi` double NOT NULL,
  `raw_anx` int NOT NULL,
  `raw_dep` int NOT NULL,
  `raw_hos` int NOT NULL,
  `raw_int` int NOT NULL,
  `raw_oc` int NOT NULL,
  `raw_par` int NOT NULL,
  `raw_pho` int NOT NULL,
  `raw_psy` int NOT NULL,
  `raw_som` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sa45_results_of_users_user_id_f5a5f595_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `sa45_results_of_users_user_id_f5a5f595_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sa45_results_of_users
-- ----------------------------
INSERT INTO `sa45_results_of_users` VALUES (27, 101, 24, 1.8, 1.25, 2.75, 1.5, 2, 3, 3, 2.6, 2.2, '2022-05-25 00:48:24.423339', 1, 0.45, 10, 9, 15, 11, 5, 13, 18, 11, 9);
INSERT INTO `sa45_results_of_users` VALUES (28, 99, 24, 1.8, 1.25, 2.75, 1.5, 2, 3, 3, 2.2, 2.2, '2022-05-25 01:22:28.903320', 1, 0.44, 10, 9, 15, 11, 5, 11, 18, 11, 9);
INSERT INTO `sa45_results_of_users` VALUES (29, 225, 45, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2022-05-25 01:24:56.435162', 1, 1, 25, 30, 25, 20, 20, 25, 30, 25, 25);
INSERT INTO `sa45_results_of_users` VALUES (30, 45, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-05-25 01:27:39.563196', 1, 0.2, 5, 6, 5, 4, 4, 5, 6, 5, 5);
INSERT INTO `sa45_results_of_users` VALUES (31, 126, 34, 2, 3.5, 3.25, 2.67, 3.8, 1.4, 3.17, 3.8, 1.8, '2022-05-25 01:35:08.478072', 1, 0.56, 19, 16, 7, 13, 14, 19, 19, 9, 10);
INSERT INTO `sa45_results_of_users` VALUES (32, 135, 36, 1.8, 4, 1.75, 3.67, 1.8, 1.4, 3.83, 4.6, 3.8, '2022-05-25 01:55:25.449250', 1, 0.59, 9, 22, 7, 7, 16, 23, 23, 19, 9);
INSERT INTO `sa45_results_of_users` VALUES (33, 48, 3, 1, 1.5, 1, 1, 1, 1, 1, 1.2, 1, '2022-05-25 02:17:51.170173', 2, 0.22, 5, 6, 5, 4, 6, 6, 6, 5, 5);
INSERT INTO `sa45_results_of_users` VALUES (34, 180, 45, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2022-05-25 15:48:27.508776', 2, 0.8, 20, 24, 20, 16, 16, 20, 24, 20, 20);
INSERT INTO `sa45_results_of_users` VALUES (35, 135, 40, 2.6, 2, 1.75, 4.33, 1.8, 3.8, 3.83, 3.4, 2.6, '2022-05-25 21:20:19.039962', 9, 0.58, 9, 26, 19, 7, 8, 17, 23, 13, 13);
INSERT INTO `sa45_results_of_users` VALUES (36, 148, 43, 3.4, 2.75, 2.75, 3.33, 3.6, 3.4, 3.33, 3.2, 3.6, '2022-05-25 21:26:36.859734', 9, 0.65, 18, 20, 17, 11, 11, 16, 20, 18, 17);
INSERT INTO `sa45_results_of_users` VALUES (37, 76, 26, 1.6, 2.5, 2, 1.83, 1.6, 1.4, 1.5, 1.8, 1.2, '2022-05-25 22:57:09.093104', 9, 0.34, 8, 11, 7, 8, 10, 9, 9, 6, 8);
INSERT INTO `sa45_results_of_users` VALUES (38, 90, 27, 1.6, 2, 2, 3, 2.2, 1.8, 2.33, 1.8, 1, '2022-05-25 23:16:29.111269', 5, 0.39, 11, 18, 9, 8, 8, 9, 14, 5, 8);
INSERT INTO `sa45_results_of_users` VALUES (39, 90, 45, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2022-05-25 23:35:32.227455', 5, 0.4, 10, 12, 10, 8, 8, 10, 12, 10, 10);
INSERT INTO `sa45_results_of_users` VALUES (40, 135, 45, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2022-05-25 23:39:17.304939', 5, 0.6, 15, 18, 15, 12, 12, 15, 18, 15, 15);
INSERT INTO `sa45_results_of_users` VALUES (41, 100, 31, 2.2, 2.75, 2.5, 2.17, 2.4, 2, 2, 2, 2.2, '2022-05-25 23:48:09.953989', 5, 0.45, 12, 13, 10, 10, 11, 10, 12, 11, 11);
INSERT INTO `sa45_results_of_users` VALUES (42, 66, 19, 1.8, 1.25, 1.75, 1.17, 1.2, 1.6, 1.83, 1.4, 1.2, '2022-05-25 23:57:45.357587', 6, 0.29, 6, 7, 8, 7, 5, 7, 11, 6, 9);
INSERT INTO `sa45_results_of_users` VALUES (43, 122, 38, 1.4, 3.75, 4, 2.5, 3.8, 2.8, 2.17, 2.4, 2.2, '2022-05-26 00:20:24.095658', 6, 0.56, 19, 15, 14, 16, 15, 12, 13, 11, 7);
INSERT INTO `sa45_results_of_users` VALUES (44, 84, 30, 2.2, 2.5, 1.5, 1.67, 2, 2, 1.67, 1.8, 1.6, '2022-05-26 00:35:50.060641', 6, 0.38, 10, 10, 10, 6, 10, 9, 10, 8, 11);
INSERT INTO `sa45_results_of_users` VALUES (45, 83, 24, 3.2, 1.75, 1.75, 1.33, 2.6, 1.6, 1.67, 1.4, 1.4, '2022-05-27 23:34:34.773246', 3, 0.37, 13, 8, 8, 7, 7, 7, 10, 7, 16);
INSERT INTO `sa45_results_of_users` VALUES (46, 108, 31, 4.4, 2.5, 1.75, 3.5, 1.8, 1.8, 2.17, 1.8, 1.6, '2022-05-27 23:51:27.985048', 3, 0.47, 9, 21, 9, 7, 10, 9, 13, 8, 22);
INSERT INTO `sa45_results_of_users` VALUES (47, 101, 27, 3.6, 2.75, 1.75, 1.67, 2.8, 2.4, 1.67, 1.6, 2.2, '2022-05-28 00:05:20.195964', 3, 0.45, 14, 10, 12, 7, 11, 8, 10, 11, 18);
INSERT INTO `sa45_results_of_users` VALUES (48, 122, 36, 4.2, 3, 2.25, 1.5, 2.6, 3, 2.17, 2.8, 3.2, '2022-05-28 00:18:45.034540', 7, 0.55, 13, 9, 15, 9, 12, 14, 13, 16, 21);
INSERT INTO `sa45_results_of_users` VALUES (49, 127, 38, 4.2, 3.5, 2.5, 2.33, 2.6, 2.8, 2.17, 3.2, 2.4, '2022-05-28 00:33:22.245726', 7, 0.57, 13, 14, 14, 10, 14, 16, 13, 12, 21);
INSERT INTO `sa45_results_of_users` VALUES (50, 133, 35, 1.4, 4.75, 4, 4.33, 3.8, 1.2, 2.83, 1.8, 2.8, '2022-05-28 00:58:56.928877', 7, 0.6, 19, 26, 6, 16, 19, 9, 17, 14, 7);

SET FOREIGN_KEY_CHECKS = 1;
