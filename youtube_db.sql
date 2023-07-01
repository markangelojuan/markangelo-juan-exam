-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2023 at 05:48 AM
-- Server version: 8.0.32
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` varchar(100) NOT NULL,
  `profile_picture` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `profile_picture`, `name`, `description`) VALUES
('NBA', 'https://yt3.ggpht.com/urNLBJGryDamao5r0jmlTg84mIBOoaeJd6XR67j4nuRd0iRvv5g-MUgaowsWKCs8V_t4KwST=s88-c-k-c0x00ffffff-no-rj', 'NBA', 'The NBA is the premier professional basketball league in the United States and Canada. The league is truly global, with games and programming in 215 countries and territories in 47 languages. The NBA consists of 30 teams. The NBA offers real time access to live regular season NBA games with a subscription to NBA LEAGUE PASS, available globally for TV, broadband, and mobile.  Real-time Stats, Scores, Highlights and more are available to fans on web and mobile with the NBA App. \n\nFor news, stories, highlights and more, go to our official website at https://app.link.nba.com/e/NBA_site\n');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int NOT NULL,
  `video_link` varchar(200) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `publish_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `video_link`, `title`, `description`, `thumbnail`, `publish_date`) VALUES
(1, 'ii1hOUUbc5o', 'Portland Trail Blazers Rookie Rayan Rupert reflects on his childhood pic! #NBARooks', 'We surprised a number of draftees with a childhood photo and caught their reactions! Listen in as Rayan Rupert gets emotional ...', 'https://i.ytimg.com/vi/ii1hOUUbc5o/hqdefault.jpg', '2023-06-30 17:00:22'),
(2, 'wFNAtJPUNgk', 'Charlotte Hornets Rookie Brandon Miller reflects on his childhood pic! #NBARooks', 'We surprised a number of draftees with a childhood photo and caught their reactions! Listen in as Brandon Miller talks about his ...', 'https://i.ytimg.com/vi/wFNAtJPUNgk/hqdefault.jpg', '2023-06-30 14:48:55'),
(3, 'JCczmArw1lk', '“I’m excited to play with two Hall Of Famers” - Brad Beal talks playing with KD &amp; Book! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/JCczmArw1lk/hqdefault.jpg', '2023-06-29 20:11:01'),
(4, 'ZRBbPK5izeY', '&quot;I&#39;m excited to play with two Hall Of Famers&quot; - Bradley Beal&#39;s Suns Introductory Press Conference', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ZRBbPK5izeY/hqdefault.jpg', '2023-06-29 20:09:47'),
(5, 'KwP92-8kprg', 'Toronto Raptors Rookie Gradey Dick reflects on his childhood pic! #NBARooks', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/KwP92-8kprg/hqdefault.jpg', '2023-06-29 20:05:26'),
(6, 'uHOe-bpYLs0', 'Donovan Mitchell working on elevating his BAG with trainer Chris Brickley. 🕷️| #Shorts', '', 'https://i.ytimg.com/vi/uHOe-bpYLs0/hqdefault.jpg', '2023-06-29 15:06:55'),
(7, '8kzOiiYlHn0', '#NYvsNY🗽tipped off its 5th year in Harlem with some special guests 👀 | #Shorts', '', 'https://i.ytimg.com/vi/8kzOiiYlHn0/hqdefault.jpg', '2023-06-28 14:33:40'),
(8, '4uDKhPRjIu8', 'Jayson Tatum Pulled Up To #NYvsNY 👀 | #Shorts', '', 'https://i.ytimg.com/vi/4uDKhPRjIu8/hqdefault.jpg', '2023-06-28 00:19:46'),
(9, 'wG29Il-RdUs', 'Another PRICELESS Wemby moment! 🥹🤝| #Shorts', '', 'https://i.ytimg.com/vi/wG29Il-RdUs/hqdefault.jpg', '2023-06-27 16:36:31'),
(10, '6M11q1JrLgA', 'Victor Wembanyama’s Spurs Introductory Press Conference', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/6M11q1JrLgA/hqdefault.jpg', '2023-06-24 18:16:53'),
(11, 'nJ7KDvq6NfY', 'Victor Wembanyama Talks Dinner With David Robinson, Tim Duncan &amp; Manu Ginobili! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/nJ7KDvq6NfY/hqdefault.jpg', '2023-06-24 18:11:57'),
(12, '-wLWjHDeOwQ', 'Victor Wembanyama Gets Asked The Big Question 🤔| #Shorts', '', 'https://i.ytimg.com/vi/-wLWjHDeOwQ/hqdefault.jpg', '2023-06-24 16:54:38'),
(13, 'QtcpB2m28S0', 'All-Access: 2023 NBA Draft', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/QtcpB2m28S0/hqdefault.jpg', '2023-06-24 16:45:39'),
(14, 'C_fX7JUVvDg', 'Every #1 Pick Since 1980 | Victor Wembanyama, LeBron, Shaq and MORE', 'Check out every first overall pick since 1980 following the 2023 #NBADraft presented by State Farm Never miss a moment with ...', 'https://i.ytimg.com/vi/C_fX7JUVvDg/hqdefault.jpg', '2023-06-23 22:05:39'),
(15, '8PZDjqLJhTo', 'Inside the Spurs War Room while drafting Wemby! 👏 | #Shorts', '', 'https://i.ytimg.com/vi/8PZDjqLJhTo/hqdefault.jpg', '2023-06-23 18:06:03'),
(16, '12V5b7yedow', 'Jett Howard &amp; Juwan Howard! 😬📸| #Shorts', '', 'https://i.ytimg.com/vi/12V5b7yedow/hqdefault.jpg', '2023-06-23 04:18:47'),
(17, 'O0M6CqM7s9E', 'The Thompson Twins are the first brothers taken in the top 5 of the #NBADraft! 📸| #Shorts', '', 'https://i.ytimg.com/vi/O0M6CqM7s9E/hqdefault.jpg', '2023-06-23 04:15:39'),
(18, 'MwoFguoxnq4', '2023 #NBADraft presented by State Farm Press Conference', 'The 2023 #NBADraft presented by State Farm press conference. Hear from the future of the NBA! Never miss a moment with the ...', 'https://i.ytimg.com/vi/MwoFguoxnq4/hqdefault.jpg', '2023-06-23 04:16:10'),
(19, 'GoWa2-8VykU', 'The Wemby Crew. 🇫🇷🙌| #Shorts', '', 'https://i.ytimg.com/vi/GoWa2-8VykU/hqdefault.jpg', '2023-06-23 04:12:03'),
(20, 'U7bKiCWTyGU', 'Jett Howard reacts to his former teammate Kobe Bufkin getting drafted! Michigan Connection🤝| #Short', '', 'https://i.ytimg.com/vi/U7bKiCWTyGU/hqdefault.jpg', '2023-06-23 03:59:18'),
(21, '80S-vj4iQzc', 'Gradey is looking forward to link with Drake in the 6! 🦉| #Shorts', '', 'https://i.ytimg.com/vi/80S-vj4iQzc/hqdefault.jpg', '2023-06-23 03:39:38'),
(22, 'aeXPv4cvBko', 'All 30 First Round Picks Of The 2023 #NBADraft', 'Check out all 30 first round picks of the 2023 #NBADraft presented by State Farm! Never miss a moment with the latest news, ...', 'https://i.ytimg.com/vi/aeXPv4cvBko/hqdefault.jpg', '2023-06-23 03:33:52'),
(23, 'c0rYPWWV08c', 'Wemby receives a call from coach Pop! 📲| #Shorts', '', 'https://i.ytimg.com/vi/c0rYPWWV08c/hqdefault.jpg', '2023-06-23 03:09:45'),
(24, 'kUcWXi8gFBs', 'Victor Wembanyama keeps it real! 😂🌮| #Shorts', '', 'https://i.ytimg.com/vi/kUcWXi8gFBs/hqdefault.jpg', '2023-06-23 02:02:06'),
(25, 'jguHFWEEPiI', 'Former teammates Victor Wembanyama &amp; Bilal Coulibaly share a moment after being drafted! |#Shorts', '', 'https://i.ytimg.com/vi/jguHFWEEPiI/hqdefault.jpg', '2023-06-23 01:57:52'),
(26, 'D5ho8lg3eDY', 'National Champion &amp; now a Lottery Pick! Jordan Hawkins is headed to New Orleans! 🥹| #Shorts', '', 'https://i.ytimg.com/vi/D5ho8lg3eDY/hqdefault.jpg', '2023-06-23 01:48:34'),
(27, 'uUbUG8zGpMQ', 'That feeling after being drafted! Dance Scoot 🕺| #Shorts', '', 'https://i.ytimg.com/vi/uUbUG8zGpMQ/hqdefault.jpg', '2023-06-23 01:40:49'),
(28, 'Vf9HFIDHPns', 'Jett Howard the son of NBA Legend Juwan Howard is headed to Orlando! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/Vf9HFIDHPns/hqdefault.jpg', '2023-06-23 01:39:24'),
(29, 'a91FF9bWKHE', 'Wemby is excited as for his former teammate Bilal Coulibaly was drafted 7th! 😧| #Shorts', '', 'https://i.ytimg.com/vi/a91FF9bWKHE/hqdefault.jpg', '2023-06-23 01:35:26'),
(30, 'fIjLizGDxrM', 'Scoot Henderson Full Presser After Being Selected #3 Overall In The 2023 #NBADraft', 'The Portland Trail Blazers select Scoot Henderson with the #3 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/fIjLizGDxrM/hqdefault.jpg', '2023-06-23 01:34:44'),
(31, 'Tncd-w2Dz_0', 'Victor Wembanyama Full Presser After Being Selected #1 Overall In The 2023 #NBADraft', 'The San Antonio Spurs select Victor Wembanyama with the #1 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/Tncd-w2Dz_0/hqdefault.jpg', '2023-06-23 01:22:57'),
(32, 'tSkW_MzvMEI', 'Victor Wembanyama overcome with emotion as he holds his Spurs jersey for the 1st time! 🥹| #Shorts', '', 'https://i.ytimg.com/vi/tSkW_MzvMEI/hqdefault.jpg', '2023-06-23 01:23:49'),
(33, 'kYcPagdyIfs', 'Anthony Black is headed to Orlando! 🥶| #Shorts', '', 'https://i.ytimg.com/vi/kYcPagdyIfs/hqdefault.jpg', '2023-06-23 01:18:57'),
(34, 'lCJS41nmJxM', 'All the hard work led to this moment for Victor Wembanyama…let the tears flow! 🥹| #Shorts', '', 'https://i.ytimg.com/vi/lCJS41nmJxM/hqdefault.jpg', '2023-06-23 01:12:33'),
(35, '8soOlgFOc0Q', 'Ausar Thompson is headed to Detroit! The Thompson twins go back-2-back! 🤝| #Shorts', '', 'https://i.ytimg.com/vi/8soOlgFOc0Q/hqdefault.jpg', '2023-06-23 00:59:38'),
(36, 'jrQrWfyk44s', 'Ausar Thompson Goes #5 Overall In The 2023 #NBADraft', 'The Detroit Pistons select Ausar Thompson with the #5 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/jrQrWfyk44s/hqdefault.jpg', '2023-06-23 00:53:46'),
(37, 'K-zkVkn_VtY', 'Amen Thompson is headed to Houston! 🚀| #Shorts', '', 'https://i.ytimg.com/vi/K-zkVkn_VtY/hqdefault.jpg', '2023-06-23 00:50:51'),
(38, '_QZGbTSjXvo', 'Amen Thompson Goes #4 Overall In The 2023 #NBADraft', 'The Houston Rockets select Amen Thompson with the #4 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/_QZGbTSjXvo/hqdefault.jpg', '2023-06-23 00:45:37'),
(39, 'ufd1byHl7Bc', 'Scoot Henderson is headed to Portland! 🙌 #NBADraft | #Shorts', '', 'https://i.ytimg.com/vi/ufd1byHl7Bc/hqdefault.jpg', '2023-06-23 00:45:43'),
(40, 'QQbnNAjfng0', 'Brandon Miller is headed to Charlotte! #NBADraft 🙌| #Shorts', '', 'https://i.ytimg.com/vi/QQbnNAjfng0/hqdefault.jpg', '2023-06-23 00:37:39'),
(41, 'djYSWh2mEjs', '“I’m a damn Spur!” - Victor Wembanyama overcome with emotion after being drafted number 1! | #Shorts', '', 'https://i.ytimg.com/vi/djYSWh2mEjs/hqdefault.jpg', '2023-06-23 00:34:08'),
(42, '9gNUXmSfyh4', 'Scoot Henderson Goes #3 Overall In The 2023 #NBADraft', 'The Portland Trail Blazers select Scoot Henderson with the #3 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/9gNUXmSfyh4/hqdefault.jpg', '2023-06-23 00:33:35'),
(43, '5MPSFthKI-I', 'Victor Wembanyama Goes #1 Overall In The 2023 #NBADraft', 'The San Antonio Spurs select Victor Wembanyama with the #1 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/5MPSFthKI-I/hqdefault.jpg', '2023-06-23 00:30:26'),
(44, 'XNPfly4TtaE', 'Victor Wembanyama Interview After Being Selected #1 Overall In The 2023 #NBADraft', 'The San Antonio Spurs select Victor Wembanyama with the #1 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/XNPfly4TtaE/hqdefault.jpg', '2023-06-23 00:29:12'),
(45, 'CoA0kuNKQVc', 'With the 1st pick of 2023 #NBADraft the Spurs Select…Victor Wembanyama! 🙌|#Shorts', '', 'https://i.ytimg.com/vi/CoA0kuNKQVc/hqdefault.jpg', '2023-06-23 00:24:38'),
(46, 'uOdm1AlIElM', 'Proud Mom of the Thompson Twins at the #NBADraft! 💕| #Shorts', '', 'https://i.ytimg.com/vi/uOdm1AlIElM/hqdefault.jpg', '2023-06-22 23:52:58'),
(47, 'B8NEeF-37ZE', 'Gradey Dick breaks down the top 3 features of his #NBADraft fit! 😎| #Shorts', '', 'https://i.ytimg.com/vi/B8NEeF-37ZE/hqdefault.jpg', '2023-06-22 23:41:39'),
(48, 'fJJHmh6qlaQ', 'Victor Wembanyama breaks down the top 3 features of his #NBADraft fit! 🇫🇷| #Shorts', '', 'https://i.ytimg.com/vi/fJJHmh6qlaQ/hqdefault.jpg', '2023-06-22 23:02:18'),
(49, 'g57T-2I_5V4', 'Ladies &amp; Gentleman Presenting The Class of 2023! #NBADraft 🙌| #Shorts', '', 'https://i.ytimg.com/vi/g57T-2I_5V4/hqdefault.jpg', '2023-06-22 22:51:27'),
(50, 'D3pWYSm1kpo', 'Scoot Henderson breaks down the top 3 features of his #NBADraft Fit! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/D3pWYSm1kpo/hqdefault.jpg', '2023-06-22 22:20:14'),
(51, 'LP55ReGws1c', 'Designed &amp; inspired by Family…Scoot Henderson breaks down his Draft Fit! 🔥| #Shorts', '', 'https://i.ytimg.com/vi/LP55ReGws1c/hqdefault.jpg', '2023-06-22 21:59:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
