-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 03 月 17 日 15:08
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `hnrb`
--

-- --------------------------------------------------------

--
-- 表的结构 `hnrb_aticle`
--

CREATE TABLE IF NOT EXISTS `hnrb_aticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `title` varchar(150) NOT NULL COMMENT '文章标题',
  `description` varchar(300) NOT NULL COMMENT '文章摘要',
  `text` text NOT NULL COMMENT '文章文本内容',
  `status` tinyint(2) NOT NULL COMMENT '文章状态',
  `attachment` varchar(200) NOT NULL COMMENT '附件',
  `title_en` varchar(150) NOT NULL COMMENT '英文标题',
  `description_en` varchar(300) NOT NULL COMMENT '英文摘要',
  `keyword` varchar(150) NOT NULL COMMENT '关键词',
  `keyword_en` varchar(150) NOT NULL COMMENT '英文关键词',
  `references` text NOT NULL COMMENT '参考文献',
  `message` varchar(200) NOT NULL COMMENT '留言信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `hnrb_comment`
--

CREATE TABLE IF NOT EXISTS `hnrb_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '用户名称',
  `aid` int(11) NOT NULL COMMENT '被评论文章名称',
  `content` text NOT NULL COMMENT '评论内容',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否通过审核',
  `time` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论列表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `hnrb_favorite_article`
--

CREATE TABLE IF NOT EXISTS `hnrb_favorite_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '喜欢的文章id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `aid` int(11) NOT NULL COMMENT 'aticle文章id',
  `title` varchar(150) NOT NULL COMMENT '文章标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏文章数据表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `hnrb_favorite_book`
--

CREATE TABLE IF NOT EXISTS `hnrb_favorite_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `phase` int(11) NOT NULL COMMENT '总期数',
  `time` int(11) NOT NULL COMMENT '收藏日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏的期刊' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `hnrb_message`
--

CREATE TABLE IF NOT EXISTS `hnrb_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '站内信',
  `from_uid` int(11) NOT NULL COMMENT '发送消息用户idid',
  `content` text NOT NULL COMMENT '消息内容',
  `time` int(11) NOT NULL COMMENT '发送时间',
  `ischecked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已查看',
  `reply` text NOT NULL COMMENT '回复',
  `to_uid` int(11) NOT NULL COMMENT '接收消息用户id',
  `replied` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已经回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站内消息' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `hnrb_user`
--

CREATE TABLE IF NOT EXISTS `hnrb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(150) NOT NULL,
  `isauthor` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是作者',
  `pass_notice` varchar(50) NOT NULL COMMENT '密码提示问题',
  `pass_answer` varchar(50) NOT NULL COMMENT '密码提示答案',
  `ch` varchar(4) NOT NULL COMMENT '称呼，如先生，女士',
  `region` int(2) NOT NULL COMMENT '民族',
  `tel` varchar(15) NOT NULL COMMENT '电话',
  `mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `eaddress` varchar(150) NOT NULL COMMENT '邮寄地址',
  `ecode` varchar(20) NOT NULL COMMENT '邮编',
  `sa` varchar(50) NOT NULL COMMENT '研究领域',
  `sd` varchar(50) NOT NULL COMMENT '研究方向',
  `ptittle` varchar(15) NOT NULL COMMENT '职称',
  `agentadd` varchar(150) NOT NULL COMMENT '单位地址',
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
