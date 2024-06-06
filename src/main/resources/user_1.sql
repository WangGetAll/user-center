# 创建库user1
create database user_1;
# user_1创建表user 16~31
use user_1;

CREATE TABLE `t_user_16`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_17`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_18`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_19`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_20`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_21`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_22`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_23`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_24`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_25`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_26`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_27`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_28`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_29`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_30`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

CREATE TABLE `t_user_31`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '用户名',
    `password`      varchar(512) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '密码',
    `real_name`     varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '真实姓名',
    `region`        varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT '0' COMMENT '国家/地区',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '证件号',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '手机号',
    `telephone`     varchar(128) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '固定电话',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci  DEFAULT NULL COMMENT '邮箱',
    `user_type`     int(3) DEFAULT NULL COMMENT '旅客类型',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `post_code`     varchar(64) COLLATE utf8mb4_unicode_ci   DEFAULT NULL COMMENT '邮编',
    `address`       varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                 DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                 DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_username` (`username`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';


# user1库中 创建表t_user_mail_16~31
CREATE TABLE `t_user_mail_16`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_17`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_18`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_19`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_20`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_21`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_22`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_23`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_24`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_25`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_26`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_27`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_28`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_29`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_30`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1683025552452648961 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

CREATE TABLE `t_user_mail_31`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `mail`          varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_mail` (`mail`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户邮箱表';

# user_1创建t_user_phone_16~31
CREATE TABLE `t_user_phone_16`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_17`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1683025552431677441 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_18`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_19`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_20`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_21`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_22`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_23`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_24`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_25`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_26`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_27`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_28`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_29`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_30`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';

CREATE TABLE `t_user_phone_31`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `deletion_time` bigint(20) DEFAULT '0' COMMENT '注销时间戳',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_phone` (`phone`,`deletion_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户号码表';


# 创建t_passenger_16~31
CREATE TABLE `t_passenger_16`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_17`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_18`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_19`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_20`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_21`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_22`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_23`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1683029597561061377 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_24`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_25`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_26`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_27`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_28`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_29`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_30`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';

CREATE TABLE `t_passenger_31`
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `username`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `real_name`     varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
    `id_type`       int(3) DEFAULT NULL COMMENT '证件类型',
    `id_card`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
    `discount_type` int(3) DEFAULT NULL COMMENT '优惠类型',
    `phone`         varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
    `create_date`   datetime                                DEFAULT NULL COMMENT '添加日期',
    `verify_status` int(3) DEFAULT NULL COMMENT '审核状态',
    `create_time`   datetime                                DEFAULT NULL COMMENT '创建时间',
    `update_time`   datetime                                DEFAULT NULL COMMENT '修改时间',
    `del_flag`      tinyint(1) DEFAULT NULL COMMENT '删除标识',
    PRIMARY KEY (`id`),
    KEY             `idx_id_card` (`id_card`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='乘车人表';


