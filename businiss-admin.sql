/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : business

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 06/12/2021 21:21:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(0) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(0) NOT NULL DEFAULT 1 COMMENT '-1: 删除  0：禁用 1：启用',
  `type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '权限类型 0：接口路径 1：菜单 2：按钮',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `flag` tinyint(0) NOT NULL DEFAULT 0 COMMENT '-1：删除 0：正常',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES (1, 0, '系统管理', 'System', NULL, 1, 1, NULL, 0, NULL, NULL);
INSERT INTO `tb_menu` VALUES (2, 1, '用户管理', 'SystemUser', NULL, 1, 1, NULL, 0, NULL, NULL);
INSERT INTO `tb_menu` VALUES (3, 2, '查看用户', 'SystemUserView', NULL, 1, 1, NULL, 0, NULL, NULL);
INSERT INTO `tb_menu` VALUES (4, 2, '新增用户', 'SystemUserInsert', NULL, 1, 1, NULL, 0, NULL, NULL);
INSERT INTO `tb_menu` VALUES (5, 2, '编辑用户', 'SystemUserUpdate', NULL, 1, 1, NULL, 0, NULL, NULL);
INSERT INTO `tb_menu` VALUES (6, 2, '删除用户', 'SystemUserDelete', NULL, 1, 1, NULL, 0, NULL, NULL);
INSERT INTO `tb_menu` VALUES (7, 1, '内容管理', 'SystemContent', NULL, 1, 1, NULL, 0, NULL, NULL);
INSERT INTO `tb_menu` VALUES (8, 7, '查看内容', 'SystemContentView', NULL, 1, 1, NULL, 0, NULL, NULL);
INSERT INTO `tb_menu` VALUES (9, 7, '新增内容', 'SystemContentInsert', NULL, 1, 1, NULL, 0, NULL, NULL);
INSERT INTO `tb_menu` VALUES (10, 7, '编辑内容', 'SystemContentUpdate', NULL, 1, 1, NULL, 0, NULL, NULL);
INSERT INTO `tb_menu` VALUES (11, 7, '删除内容', 'SystemContentDelete', NULL, 1, 1, NULL, 0, NULL, NULL);
INSERT INTO `tb_menu` VALUES (13, NULL, '2121321', NULL, NULL, 1, 1, NULL, 0, '2021-10-29 12:24:34', '2021-10-29 12:24:34');
INSERT INTO `tb_menu` VALUES (14, NULL, '111111', NULL, NULL, 1, 1, NULL, 0, '2021-10-29 12:25:44', '2021-10-29 12:25:44');
INSERT INTO `tb_menu` VALUES (15, NULL, '111111', NULL, NULL, 1, 1, NULL, 0, '2021-10-29 12:27:23', '2021-10-29 12:27:23');
INSERT INTO `tb_menu` VALUES (22, NULL, '2121321', NULL, NULL, 1, 1, NULL, 0, '2021-10-29 13:14:48', '2021-10-29 13:14:48');
INSERT INTO `tb_menu` VALUES (23, NULL, '2121321', NULL, NULL, 1, 1, NULL, 0, '2021-10-29 13:16:21', '2021-10-29 13:16:21');
INSERT INTO `tb_menu` VALUES (24, NULL, '2121321', NULL, NULL, 1, 1, NULL, 0, '2021-10-29 13:19:36', '2021-10-29 13:19:36');
INSERT INTO `tb_menu` VALUES (25, NULL, '2121321', NULL, NULL, 1, 1, NULL, 0, '2021-10-29 13:20:33', '2021-10-29 13:20:33');
INSERT INTO `tb_menu` VALUES (26, NULL, '2121321', NULL, NULL, 1, 1, NULL, 0, '2021-10-29 14:16:07', '2021-10-29 14:16:07');

-- ----------------------------
-- Table structure for tb_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_permission`;
CREATE TABLE `tb_permission`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(0) NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(0) NOT NULL DEFAULT 1 COMMENT '0：禁用 1：启用',
  `type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '0：放行路径  1：鉴权路径',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `flag` tinyint(0) NOT NULL DEFAULT 0 COMMENT '-1：删除 0：正常',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_permission
-- ----------------------------
INSERT INTO `tb_permission` VALUES (1, 0, '全量菜单', '/auth/admin/menu/all/list', 1, 1, NULL, 0, '2021-10-28 16:56:34', NULL);
INSERT INTO `tb_permission` VALUES (2, 0, '菜单列表', '/auth/admin/menu/list', 1, 1, NULL, 0, '2021-10-28 16:56:34', NULL);
INSERT INTO `tb_permission` VALUES (4, 0, '刷新', '/refresh/**', 1, 0, NULL, 0, '2021-10-28 16:56:34', NULL);
INSERT INTO `tb_permission` VALUES (6, 0, '配置', '/config/**', 1, 0, NULL, 0, '2021-10-28 16:56:34', NULL);

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(0) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT 1,
  `flag` tinyint(0) NOT NULL DEFAULT 0 COMMENT '-1：删除 0：正常',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, 0, '超级管理员', 'SUPER_ADMIN', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_role` VALUES (2, 0, '管理员', 'ADMIN', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_role` VALUES (3, 0, '运维', 'CUSTOMER', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_role` VALUES (4, 0, '普通用户', 'USER', NULL, 1, 0, NULL, NULL);

-- ----------------------------
-- Table structure for tb_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_menu`;
CREATE TABLE `tb_role_menu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(0) NOT NULL,
  `menu_id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `r_p`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role_menu
-- ----------------------------
INSERT INTO `tb_role_menu` VALUES (1, 1, 1);
INSERT INTO `tb_role_menu` VALUES (2, 1, 2);
INSERT INTO `tb_role_menu` VALUES (3, 1, 3);
INSERT INTO `tb_role_menu` VALUES (4, 1, 4);
INSERT INTO `tb_role_menu` VALUES (5, 1, 5);
INSERT INTO `tb_role_menu` VALUES (6, 1, 6);
INSERT INTO `tb_role_menu` VALUES (7, 1, 7);
INSERT INTO `tb_role_menu` VALUES (8, 1, 8);
INSERT INTO `tb_role_menu` VALUES (9, 1, 9);
INSERT INTO `tb_role_menu` VALUES (10, 1, 10);
INSERT INTO `tb_role_menu` VALUES (11, 1, 11);
INSERT INTO `tb_role_menu` VALUES (12, 2, 1);
INSERT INTO `tb_role_menu` VALUES (13, 2, 2);
INSERT INTO `tb_role_menu` VALUES (14, 2, 3);
INSERT INTO `tb_role_menu` VALUES (15, 2, 4);
INSERT INTO `tb_role_menu` VALUES (16, 2, 5);
INSERT INTO `tb_role_menu` VALUES (17, 2, 6);
INSERT INTO `tb_role_menu` VALUES (18, 3, 1);
INSERT INTO `tb_role_menu` VALUES (19, 3, 7);
INSERT INTO `tb_role_menu` VALUES (20, 3, 8);
INSERT INTO `tb_role_menu` VALUES (21, 3, 9);
INSERT INTO `tb_role_menu` VALUES (22, 3, 10);
INSERT INTO `tb_role_menu` VALUES (23, 3, 11);
INSERT INTO `tb_role_menu` VALUES (24, 4, 1);
INSERT INTO `tb_role_menu` VALUES (25, 4, 2);
INSERT INTO `tb_role_menu` VALUES (26, 4, 3);
INSERT INTO `tb_role_menu` VALUES (27, 4, 7);
INSERT INTO `tb_role_menu` VALUES (28, 4, 8);

-- ----------------------------
-- Table structure for tb_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_permission`;
CREATE TABLE `tb_role_permission`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(0) NOT NULL,
  `permission_id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `r_p`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role_permission
-- ----------------------------
INSERT INTO `tb_role_permission` VALUES (1, 1, 2);
INSERT INTO `tb_role_permission` VALUES (2, 2, 2);
INSERT INTO `tb_role_permission` VALUES (3, 3, 2);
INSERT INTO `tb_role_permission` VALUES (4, 4, 2);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT 1,
  `flag` tinyint(0) NOT NULL DEFAULT 0 COMMENT '-1：删除 0：正常',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'superAdmin', '$2a$10$R68ivjtaRhqzQ4VSJ3QYMe2LQMnv4PWpKJy1tAQzdofht1jz0w3ky', NULL, NULL, 1, 0, '2021-10-13 13:46:44', '2021-10-13 13:46:46');
INSERT INTO `tb_user` VALUES (2, 'admin', '$2a$10$R68ivjtaRhqzQ4VSJ3QYMe2LQMnv4PWpKJy1tAQzdofht1jz0w3ky', NULL, NULL, 1, 0, '2021-10-13 13:46:44', '2021-10-13 13:46:44');
INSERT INTO `tb_user` VALUES (3, 'customer', '$2a$10$R68ivjtaRhqzQ4VSJ3QYMe2LQMnv4PWpKJy1tAQzdofht1jz0w3ky', NULL, NULL, 1, 0, '2021-10-13 13:46:44', '2021-10-13 13:46:44');
INSERT INTO `tb_user` VALUES (4, 'user', '$2a$10$R68ivjtaRhqzQ4VSJ3QYMe2LQMnv4PWpKJy1tAQzdofht1jz0w3ky', NULL, NULL, 1, 0, '2021-10-13 13:46:44', '2021-10-13 13:46:44');
INSERT INTO `tb_user` VALUES (5, 'abc', '$2a$10$R68ivjtaRhqzQ4VSJ3QYMe2LQMnv4PWpKJy1tAQzdofht1jz0w3ky', NULL, NULL, 1, 0, NULL, NULL);

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) NOT NULL,
  `role_id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `u_r`(`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES (1, 1, 1);
INSERT INTO `tb_user_role` VALUES (2, 2, 2);
INSERT INTO `tb_user_role` VALUES (3, 3, 3);

SET FOREIGN_KEY_CHECKS = 1;
