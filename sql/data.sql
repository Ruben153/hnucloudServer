-- -------------------
-- 创建一个后端服务数据库
-- -------------------
DROP DATABASE IF EXISTS `hnucloudDB`;
CREATE DATABASE `hnucloudDB`;
USE `hnucloudDB`;

-- -------------------
-- 创建一个user表
-- -------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
                        user_id            bigint(20)       not null auto_increment    comment '用户id',
                        user_account       varchar(30)      not null                   comment '用户帐号',
                        user_password      varchar(100)     not null                   comment '用户密码',
                        user_role          tinyint(1)       default 1                  comment '用户觉色',
                        create_time        datetime                                    comment '创建时间',
                        update_time		   datetime                                    comment '更新时间',
                        primary key (user_id)
) ENGINE = innodb AUTO_INCREMENT = 1 COMMENT = '用户信息表';

-- -------------------
-- 创建一个post表
-- -------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
                        post_id            bigint(20)       not null auto_increment    comment '贴子id',
                        post_title         varchar(30)      not null                   comment '帖子标题',
                        post_owner         bigint(20)       not null                   comment '帖子发布者',
                        post_updater       bigint(20)                                  comment '帖子更新者',
                        create_time        datetime                                    comment '创建时间',
                        update_time		   datetime                                    comment '更新时间',
                        primary key (post_id)
) ENGINE = innodb AUTO_INCREMENT = 1 COMMENT = '帖子信息表';

-- -------------------
-- 创建一个material表
-- -------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
                            material_id        bigint(20)       not null auto_increment    comment '资料id',
                            material_title     varchar(30)      not null                   comment '资料标题',
                            material_owner     bigint(20)       not null                   comment '资料发布者',
                            material_updater   bigint(20)                                  comment '资料更新者',
                            create_time        datetime                                    comment '创建时间',
                            update_time		   datetime                                    comment '更新时间',
                            primary key (material_id)
) ENGINE = innodb AUTO_INCREMENT = 1 COMMENT = '资料信息表';