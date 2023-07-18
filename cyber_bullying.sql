-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2022 at 12:45 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cyber_bullying`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `ftype` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `request_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--


-- --------------------------------------------------------

--
-- Table structure for table `keyword_neg`
--

CREATE TABLE `keyword_neg` (
  `id` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keyword_neg`
--

INSERT INTO `keyword_neg` (`id`, `keyword`) VALUES
(1, 'kill'),
(2, 'murder'),
(3, 'kidnap'),
(4, 'attack');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL default '0',
  `name` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `secret_key` varchar(50) NOT NULL,
  `photo` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `question` varchar(75) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `like_st` text NOT NULL,
  `block_cnt` int(11) NOT NULL,
  `dstatus` int(11) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  PRIMARY KEY  (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `gender`, `dob`, `mobile`, `email`, `city`, `profession`, `aadhar`, `uname`, `pass`, `secret_key`, `photo`, `status`, `question`, `answer`, `like_st`, `block_cnt`, `dstatus`, `rdate`) VALUES
(2, 'Dinesh', 'Male', '15-08-1992', 8856733472, 'dinesh@gmail.com', 'Salem', 'Software', '567843215678', 'dinesh', '1234', '', 1, 0, '', '', '', 0, 0, 'Feb-15-2022'),
(3, 'Ram', 'Male', '1997-04-02', 9054621096, 'ram@gmail.com', 'Chennai', 'Software', '432156784321', 'ram', '1234', '', 0, 0, '', '', '', 0, 0, '13-05-2022'),
(1, 'Siva', 'Male', '14-08-1990', 8856733472, 'siva@gmail.com', 'Chennai', 'Software', '456743214567', 'siva', '1234', '', 1, 0, '', '', '', 0, 0, 'Feb-15-2022');

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `text_post` varchar(200) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_post`
--

