-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 
-- サーバのバージョン： 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress コメントの投稿者', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-21 13:38:34', '2018-06-21 04:38:34', 'こんにちは、これはコメントです。\nコメントの承認、編集、削除を始めるにはダッシュボードの「コメント画面」にアクセスしてください。\nコメントのアバターは「<a href=\"https://gravatar.com\">Gravatar</a>」から取得されます。', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Grant marriage', 'yes'),
(4, 'blogdescription', 'The best partner to you', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'tanagojin@au.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y年n月j日', 'yes'),
(24, 'time_format', 'g:i A', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日 g:i A', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:25:\"usc-e-shop/usc-e-shop.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:25:\"wp-members/wp-members.php\";i:3;s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:59:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/flash/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'flash', 'yes'),
(41, 'stylesheet', 'flash', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Asia/Tokyo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:9:\"wc_author\";a:2:{s:4:\"name\";s:45:\"編集者（マネジメント権限無し）\";s:12:\"capabilities\";a:31:{s:17:\"moderate_comments\";i:1;s:17:\"manage_categories\";i:1;s:12:\"manage_links\";i:1;s:12:\"upload_files\";i:1;s:15:\"unfiltered_html\";i:1;s:10:\"edit_posts\";i:1;s:17:\"edit_others_posts\";i:1;s:20:\"edit_published_posts\";i:1;s:13:\"publish_posts\";i:1;s:10:\"edit_pages\";i:1;s:4:\"read\";i:1;s:7:\"level_4\";i:1;s:7:\"level_3\";i:1;s:7:\"level_2\";i:1;s:7:\"level_1\";i:1;s:7:\"level_0\";i:1;s:17:\"edit_others_pages\";i:1;s:20:\"edit_published_pages\";i:1;s:13:\"publish_pages\";i:1;s:12:\"delete_pages\";i:1;s:19:\"delete_others_pages\";i:1;s:22:\"delete_published_pages\";i:1;s:12:\"delete_posts\";i:1;s:19:\"delete_others_posts\";i:1;s:22:\"delete_published_posts\";i:1;s:20:\"delete_private_posts\";i:1;s:18:\"edit_private_posts\";i:1;s:18:\"read_private_posts\";i:1;s:20:\"delete_private_pages\";i:1;s:18:\"edit_private_pages\";i:1;s:18:\"read_private_pages\";i:1;}}s:13:\"wc_management\";a:2:{s:4:\"name\";s:33:\"編集者（設定権限無し）\";s:12:\"capabilities\";a:32:{s:17:\"moderate_comments\";i:1;s:17:\"manage_categories\";i:1;s:12:\"manage_links\";i:1;s:12:\"upload_files\";i:1;s:15:\"unfiltered_html\";i:1;s:10:\"edit_posts\";i:1;s:17:\"edit_others_posts\";i:1;s:20:\"edit_published_posts\";i:1;s:13:\"publish_posts\";i:1;s:10:\"edit_pages\";i:1;s:4:\"read\";i:1;s:7:\"level_5\";i:1;s:7:\"level_4\";i:1;s:7:\"level_3\";i:1;s:7:\"level_2\";i:1;s:7:\"level_1\";i:1;s:7:\"level_0\";i:1;s:17:\"edit_others_pages\";i:1;s:20:\"edit_published_pages\";i:1;s:13:\"publish_pages\";i:1;s:12:\"delete_pages\";i:1;s:19:\"delete_others_pages\";i:1;s:22:\"delete_published_pages\";i:1;s:12:\"delete_posts\";i:1;s:19:\"delete_others_posts\";i:1;s:22:\"delete_published_posts\";i:1;s:20:\"delete_private_posts\";i:1;s:18:\"edit_private_posts\";i:1;s:18:\"read_private_posts\";i:1;s:20:\"delete_private_pages\";i:1;s:18:\"edit_private_pages\";i:1;s:18:\"read_private_pages\";i:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'ja', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"flash_right_sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"flash_left_sidebar\";a:0:{}s:21:\"flash_footer_sidebar1\";a:0:{}s:21:\"flash_footer_sidebar2\";a:0:{}s:21:\"flash_footer_sidebar3\";a:0:{}s:21:\"flash_footer_sidebar4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:8:{i:1530772715;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1530773534;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1530802643;a:1:{s:9:\"wc_cron_w\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1530808715;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530813600;a:1:{s:7:\"wc_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530851940;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530854207;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529556088;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(146, 'current_theme', 'Flash', 'yes'),
(147, 'theme_mods_flash', 'a:17:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:6:\"social\";i:0;s:6:\"footer\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:6:\"002938\";s:10:\"link_color\";s:7:\"#1b2d09\";s:15:\"main_text_color\";s:7:\"#000000\";s:16:\"background_image\";s:81:\"http://localhost/wordpress/wp-content/uploads/2018/06/346b4793-e1529908210211.jpg\";s:17:\"background_preset\";s:3:\"fit\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_position_y\";s:3:\"top\";s:15:\"background_size\";s:7:\"contain\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:12:\"header_image\";s:13:\"remove-header\";s:11:\"custom_logo\";i:64;s:12:\"color_scheme\";s:7:\"default\";s:20:\"secondary_text_color\";s:7:\"#686868\";}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(149, 'flash_admin_notice_welcome', '1', 'yes'),
(154, 'recently_activated', 'a:0:{}', 'yes'),
(157, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(164, 'new_admin_email', 'tanagojin@au.com', 'yes'),
(189, 'swpm_db_version', '1.2', 'yes'),
(191, 'swpm-settings', 'a:33:{i:0;b:0;s:16:\"join-us-page-url\";s:43:\"http://localhost/wordpress/membership-join/\";s:21:\"registration-page-url\";s:67:\"http://localhost/wordpress/membership-join/membership-registration/\";s:14:\"login-page-url\";s:44:\"http://localhost/wordpress/membership-login/\";s:16:\"profile-page-url\";s:63:\"http://localhost/wordpress/membership-login/membership-profile/\";s:14:\"reset-page-url\";s:59:\"http://localhost/wordpress/membership-login/password-reset/\";s:25:\"reg-complete-mail-subject\";s:29:\"Your registration is complete\";s:22:\"reg-complete-mail-body\";s:211:\"Dear {first_name} {last_name}\n\nYour registration is now complete!\n\nRegistration details:\nUsername: {user_name}\nPassword: {password}\n\nPlease login to the member area at the following URL:\n\n{login_link}\n\nThank You\";s:32:\"reg-prompt-complete-mail-subject\";s:26:\"Complete your registration\";s:29:\"reg-prompt-complete-mail-body\";s:146:\"Dear {first_name} {last_name}\n\nThank you for joining us!\n\nPlease complete your registration by visiting the following link:\n\n{reg_link}\n\nThank You\";s:29:\"upgrade-complete-mail-subject\";s:44:\"Subject for email sent after account upgrade\";s:26:\"upgrade-complete-mail-body\";s:73:\"Dear {first_name} {last_name}\n\nYour Account Has Been Upgraded.\n\nThank You\";s:18:\"reset-mail-subject\";s:18:\"HOME: New Password\";s:15:\"reset-mail-body\";s:213:\"Dear {first_name} {last_name}\n\nHere is your new password:\n\nUsername: {user_name}\nPassword: {password}\n\nYou can change the password from the edit profile section of the site (after you log into the site)\n\nThank You\";s:28:\"account-change-email-subject\";s:16:\"Account Updated!\";s:25:\"account-change-email-body\";s:149:\"Dear {first_name} {last_name},\n\nYour account status has been updated! Please login to the member area at the following URL:\n\n {login_link}\n\nThank You\";s:10:\"email-from\";s:16:\"tanagojin@au.com\";s:31:\"reg-complete-mail-subject-admin\";s:39:\"Notification of New Member Registration\";s:28:\"reg-complete-mail-body-admin\";s:242:\"A new member has completed the registration.\n\nUsername: {user_name}\nEmail: {email}\n\nPlease login to the admin dashboard to view details of this user.\n\nYou can customize this email message from the Email Settings menu of the plugin.\n\nThank You\";s:33:\"bulk-activate-notify-mail-subject\";s:18:\"Account Activated!\";s:30:\"bulk-activate-notify-mail-body\";s:87:\"Hi,\n\nYour account has been activated!\n\nYou can now login to the member area.\n\nThank You\";s:19:\"swpm-active-version\";s:5:\"3.6.6\";s:13:\"hide-adminbar\";s:27:\"checked=&#039;checked&#039;\";s:24:\"show-adminbar-admin-only\";s:0:\"\";s:30:\"disable-access-to-wp-dashboard\";s:0:\"\";s:18:\"protect-everything\";s:0:\"\";s:22:\"enable-free-membership\";s:27:\"checked=&#039;checked&#039;\";s:14:\"enable-moretag\";s:27:\"checked=&#039;checked&#039;\";s:12:\"enable-debug\";s:0:\"\";s:22:\"enable-sandbox-testing\";s:0:\"\";s:18:\"free-membership-id\";i:2;s:22:\"default-account-status\";s:6:\"active\";s:24:\"members-login-to-comment\";s:0:\"\";}', 'yes'),
(192, 'swpm_private_key_one', '5b2b471e062361.87250203', 'yes'),
(194, 'swpm-messages', 'a:0:{}', 'yes'),
(205, 'widget_theme-my-login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, '_tml_installed_at', '1529596805', 'no'),
(207, '_tml_updated_at', '1529596805', 'no'),
(208, '_tml_version', '7.0.5', 'no'),
(209, 'tml_login_type', 'default', 'yes'),
(210, 'tml_registration_type', 'default', 'yes'),
(211, 'tml_user_passwords', '1', 'yes'),
(212, 'tml_auto_login', '', 'yes'),
(213, 'tml_login_slug', 'login', 'yes'),
(214, 'tml_logout_slug', 'logout', 'yes'),
(215, 'tml_register_slug', 'register', 'yes'),
(216, 'tml_lostpassword_slug', 'lostpassword', 'yes'),
(217, 'tml_resetpass_slug', 'resetpass', 'yes'),
(264, 'wpmembers_settings', 'a:20:{s:7:\"version\";s:7:\"3.1.9.3\";s:6:\"notify\";s:1:\"0\";s:7:\"mod_reg\";s:1:\"0\";s:7:\"captcha\";s:1:\"0\";s:7:\"use_exp\";s:1:\"0\";s:9:\"use_trial\";s:1:\"0\";s:8:\"warnings\";s:1:\"0\";s:7:\"dropins\";s:1:\"0\";s:10:\"user_pages\";a:3:{s:7:\"profile\";s:0:\"\";s:8:\"register\";s:2:\"32\";s:5:\"login\";s:2:\"36\";}s:6:\"cssurl\";s:81:\"http://localhost/wordpress/wp-content/plugins/wp-members/css/generic-no-float.css\";s:5:\"style\";s:81:\"http://localhost/wordpress/wp-content/plugins/wp-members/css/generic-no-float.css\";s:6:\"attrib\";s:1:\"0\";s:10:\"post_types\";a:0:{}s:9:\"form_tags\";a:1:{s:7:\"default\";s:20:\"Registration Default\";}s:5:\"email\";a:2:{s:4:\"from\";s:17:\"i14024@yuge.ac.jp\";s:9:\"from_name\";s:9:\"田名後\";}s:5:\"block\";a:2:{s:4:\"post\";s:1:\"0\";s:4:\"page\";s:1:\"1\";}s:12:\"show_excerpt\";a:2:{s:4:\"post\";i:0;s:4:\"page\";i:0;}s:10:\"show_login\";a:2:{s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";}s:8:\"show_reg\";a:2:{s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";}s:6:\"autoex\";a:2:{s:4:\"post\";a:3:{s:7:\"enabled\";i:0;s:6:\"length\";i:0;s:4:\"text\";s:0:\"\";}s:4:\"page\";a:3:{s:7:\"enabled\";i:0;s:6:\"length\";i:0;s:4:\"text\";s:0:\"\";}}}', 'yes'),
(265, 'wpmembers_fields', 'a:16:{i:0;a:7:{i:0;i:1;i:1;s:10:\"First Name\";i:2;s:10:\"first_name\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:1;a:7:{i:0;i:2;i:1;s:9:\"Last Name\";i:2;s:9:\"last_name\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:2;a:7:{i:0;i:3;i:1;s:9:\"Address 1\";i:2;s:5:\"addr1\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:3;a:7:{i:0;i:4;i:1;s:9:\"Address 2\";i:2;s:5:\"addr2\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:0:\"\";i:6;s:1:\"n\";}i:4;a:7:{i:0;i:5;i:1;s:4:\"City\";i:2;s:4:\"city\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:5;a:7:{i:0;i:6;i:1;s:5:\"State\";i:2;s:8:\"thestate\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:6;a:7:{i:0;i:7;i:1;s:3:\"Zip\";i:2;s:3:\"zip\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:7;a:7:{i:0;i:8;i:1;s:7:\"Country\";i:2;s:7:\"country\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:8;a:7:{i:0;i:9;i:1;s:9:\"Day Phone\";i:2;s:6:\"phone1\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:9;a:7:{i:0;i:10;i:1;s:5:\"Email\";i:2;s:10:\"user_email\";i:3;s:5:\"email\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:10;a:7:{i:0;i:11;i:1;s:13:\"Confirm Email\";i:2;s:13:\"confirm_email\";i:3;s:5:\"email\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"n\";}i:11;a:7:{i:0;i:12;i:1;s:7:\"Website\";i:2;s:8:\"user_url\";i:3;s:3:\"url\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"y\";}i:12;a:7:{i:0;i:13;i:1;s:17:\"Biographical Info\";i:2;s:11:\"description\";i:3;s:8:\"textarea\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"y\";}i:13;a:7:{i:0;i:14;i:1;s:8:\"Password\";i:2;s:8:\"password\";i:3;s:8:\"password\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:14;a:7:{i:0;i:15;i:1;s:16:\"Confirm Password\";i:2;s:16:\"confirm_password\";i:3;s:8:\"password\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:15;a:9:{i:0;i:16;i:1;s:3:\"TOS\";i:2;s:3:\"tos\";i:3;s:8:\"checkbox\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:1:\"n\";i:7;s:5:\"agree\";i:8;s:1:\"n\";}}', 'yes'),
(266, 'wpmembers_tos', 'Put your TOS (Terms of Service) text here.  You can use HTML markup.', 'yes'),
(267, 'wpmembers_dialogs', 'a:9:{s:14:\"restricted_msg\";s:119:\"This content is restricted to site members.  If you are an existing user, please log in.  New users may register below.\";s:4:\"user\";s:50:\"Sorry, that username is taken, please try another.\";s:5:\"email\";s:74:\"Sorry, that email address already has an account.<br />Please try another.\";s:7:\"success\";s:124:\"Congratulations! Your registration was successful.<br /><br />You may now log in using the password that was emailed to you.\";s:11:\"editsuccess\";s:29:\"Your information was updated!\";s:11:\"pwdchangerr\";s:53:\"Passwords did not match.<br /><br />Please try again.\";s:16:\"pwdchangesuccess\";s:30:\"Password successfully changed!\";s:11:\"pwdreseterr\";s:65:\"Either the username or email address do not exist in our records.\";s:15:\"pwdresetsuccess\";s:135:\"Password successfully reset!<br /><br />An email containing a new password has been sent to the email address on file for your account.\";}', 'yes'),
(268, 'wpmembers_email_newreg', 'a:2:{s:4:\"subj\";s:37:\"Your registration info for [blogname]\";s:4:\"body\";s:269:\"Thank you for registering for [blogname]\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may log in here:\r\n[reglink]\r\n\r\nYou may change your password here:\r\n[user-profile]\r\n\";}', 'no'),
(269, 'wpmembers_email_newmod', 'a:2:{s:4:\"subj\";s:40:\"Thank you for registering for [blogname]\";s:4:\"body\";s:173:\"Thank you for registering for [blogname]. \r\nYour registration has been received and is pending approval.\r\nYou will receive login instructions upon approval of your account\r\n\";}', 'no'),
(270, 'wpmembers_email_appmod', 'a:2:{s:4:\"subj\";s:50:\"Your registration for [blogname] has been approved\";s:4:\"body\";s:300:\"Your registration for [blogname] has been approved.\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may log in and change your password here:\r\n[user-profile]\r\n\r\nYou originally registered at:\r\n[reglink]\r\n\";}', 'no'),
(271, 'wpmembers_email_repass', 'a:2:{s:4:\"subj\";s:34:\"Your password reset for [blogname]\";s:4:\"body\";s:157:\"Your password for [blogname] has been reset\r\n\r\nYour new password is included below. You may wish to retain a copy for your records.\r\n\r\npassword: [password]\r\n\";}', 'no'),
(272, 'wpmembers_email_notify', 'a:2:{s:4:\"subj\";s:36:\"New user registration for [blogname]\";s:4:\"body\";s:194:\"The following user registered for [blogname]:\r\n\r\nusername: [username]\r\nemail: [email]\r\n\r\n[fields]\r\nThis user registered here:\r\n[reglink]\r\n\r\nuser IP: [user-ip]\r\n\r\nactivate user: [activate-user]\r\n\";}', 'no'),
(273, 'wpmembers_email_footer', '----------------------------------\r\nThis is an automated message from [blogname]\r\nPlease do not reply to this address', 'no'),
(274, 'wpmembers_email_getuser', 'a:2:{s:4:\"subj\";s:23:\"Username for [blogname]\";s:4:\"body\";s:64:\"Your username for [blogname] is below.\r\n\r\nusername: [username]\r\n\";}', 'no'),
(275, 'wpmembers_style', 'http://localhost/wordpress/wp-content/plugins/wp-members/css/generic-no-float.css', 'yes'),
(276, 'widget_widget_wpmemwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'wpmembers_utfields', 'a:0:{}', 'yes'),
(305, 'wpmembers_usfields', 'a:0:{}', 'yes'),
(424, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-4.9.6.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-4.9.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1530770181;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(426, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1530770183;s:7:\"checked\";a:4:{s:5:\"flash\";s:5:\"1.2.2\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(427, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1530538032;s:7:\"version\";s:5:\"5.0.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(456, '_transient_timeout_feed_2c2fe0099a2578688413800ea68677d6', '1530807040', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(457, '_transient_feed_2c2fe0099a2578688413800ea68677d6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"ButlerBlog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"http://www.butlerblog.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"chad butler\'s weblog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Sep 2017 14:04:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wordpress.org/?v=4.8.6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"StudioPress Special Pricing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://feedproxy.google.com/~r/butlerblog/~3/XFD-ef-D9Uk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://www.butlerblog.com/2017/09/28/studiopress-special-pricing/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Sep 2017 14:04:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:13:\"Blogging Tips\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"design\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:6:\"themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://www.butlerblog.com/?p=3836\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1771:\"Have you ever wanted to get the Genesis Framework or a theme from StudioPress?  Now is the time to consider getting their &#8220;Pro-Plus Pack&#8221; which includes every theme they make now and...<br/>\n<br/>\n[[ This is a content summary only. Visit my website for full links, other content, and more! ]]<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=XFD-ef-D9Uk:qxqfwiO_YV8:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=XFD-ef-D9Uk:qxqfwiO_YV8:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=XFD-ef-D9Uk:qxqfwiO_YV8:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=XFD-ef-D9Uk:qxqfwiO_YV8:dnMXMwOfBR0\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=dnMXMwOfBR0\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=XFD-ef-D9Uk:qxqfwiO_YV8:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=XFD-ef-D9Uk:qxqfwiO_YV8:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=XFD-ef-D9Uk:qxqfwiO_YV8:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=XFD-ef-D9Uk:qxqfwiO_YV8:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=XFD-ef-D9Uk:qxqfwiO_YV8:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=XFD-ef-D9Uk:qxqfwiO_YV8:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/butlerblog/~4/XFD-ef-D9Uk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Chad Butler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://www.butlerblog.com/2017/09/28/studiopress-special-pricing/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3836\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://www.butlerblog.com/2017/09/28/studiopress-special-pricing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:48:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"9 Landing Page Goofs That Make You Lose Business [Infographic]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://feedproxy.google.com/~r/butlerblog/~3/yxE_Nxvk06c/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"http://www.butlerblog.com/2017/08/16/9-landing-page-goofs-make-lose-business-infographic/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Aug 2017 14:41:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:13:\"Blogging Tips\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"blogging\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:17:\"content-marketing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:6:\"design\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"freelance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://www.butlerblog.com/?p=3445\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1751:\"Like this infographic? Get landing page advice that works from Copyblogger.\n\nThe post 9 Landing Page Goofs That Make You Lose Business [Infographic] appeared first on ButlerBlog.<br/>\n<br/>\n[[ This is a content summary only. Visit my website for full links, other content, and more! ]]<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=yxE_Nxvk06c:1tr2x5reWCs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=yxE_Nxvk06c:1tr2x5reWCs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=yxE_Nxvk06c:1tr2x5reWCs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=yxE_Nxvk06c:1tr2x5reWCs:dnMXMwOfBR0\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=dnMXMwOfBR0\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=yxE_Nxvk06c:1tr2x5reWCs:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=yxE_Nxvk06c:1tr2x5reWCs:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=yxE_Nxvk06c:1tr2x5reWCs:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=yxE_Nxvk06c:1tr2x5reWCs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=yxE_Nxvk06c:1tr2x5reWCs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=yxE_Nxvk06c:1tr2x5reWCs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/butlerblog/~4/yxE_Nxvk06c\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Chad Butler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"http://www.butlerblog.com/2017/08/16/9-landing-page-goofs-make-lose-business-infographic/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3445\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"http://www.butlerblog.com/2017/08/16/9-landing-page-goofs-make-lose-business-infographic/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:54:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"5 reasons I use WP-Members for building membership sites\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://feedproxy.google.com/~r/butlerblog/~3/37QtL4rtpoA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://www.butlerblog.com/2017/08/15/membership-sites-wp-members/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Aug 2017 14:00:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:13:\"Blogging Tips\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"WP-Members\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:8:\"blogging\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:17:\"content-marketing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:7:\"plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:7:\"Reviews\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://www.butlerblog.com/?p=3407\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1775:\"WP-Members is arguably the first membership plugin that was available for WordPress. It started as a simple project so I could publish my own membership sites on the WordPress platform.  More than a...<br/>\n<br/>\n[[ This is a content summary only. Visit my website for full links, other content, and more! ]]<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=37QtL4rtpoA:pfj5Qj2yVUg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=37QtL4rtpoA:pfj5Qj2yVUg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=37QtL4rtpoA:pfj5Qj2yVUg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=37QtL4rtpoA:pfj5Qj2yVUg:dnMXMwOfBR0\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=dnMXMwOfBR0\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=37QtL4rtpoA:pfj5Qj2yVUg:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=37QtL4rtpoA:pfj5Qj2yVUg:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=37QtL4rtpoA:pfj5Qj2yVUg:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=37QtL4rtpoA:pfj5Qj2yVUg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=37QtL4rtpoA:pfj5Qj2yVUg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=37QtL4rtpoA:pfj5Qj2yVUg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/butlerblog/~4/37QtL4rtpoA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Chad Butler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://www.butlerblog.com/2017/08/15/membership-sites-wp-members/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3407\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://www.butlerblog.com/2017/08/15/membership-sites-wp-members/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"The Risk of Relying on Free Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://feedproxy.google.com/~r/butlerblog/~3/Ui6qtL2DSn4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"http://www.butlerblog.com/2017/08/14/risk-relying-on-free-plugins/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Aug 2017 14:30:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Editorial\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://www.butlerblog.com/?p=3523\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1772:\"As a WordPress power user and developer for more than 12 years, I have seen a lot of changes in the WordPress universe. One thing that has not changed (thank goodness) is that the platform remains...<br/>\n<br/>\n[[ This is a content summary only. Visit my website for full links, other content, and more! ]]<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=Ui6qtL2DSn4:Da66rn8GyZE:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=Ui6qtL2DSn4:Da66rn8GyZE:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=Ui6qtL2DSn4:Da66rn8GyZE:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=Ui6qtL2DSn4:Da66rn8GyZE:dnMXMwOfBR0\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=dnMXMwOfBR0\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=Ui6qtL2DSn4:Da66rn8GyZE:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=Ui6qtL2DSn4:Da66rn8GyZE:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=Ui6qtL2DSn4:Da66rn8GyZE:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=Ui6qtL2DSn4:Da66rn8GyZE:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=Ui6qtL2DSn4:Da66rn8GyZE:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=Ui6qtL2DSn4:Da66rn8GyZE:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/butlerblog/~4/Ui6qtL2DSn4\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Chad Butler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"http://www.butlerblog.com/2017/08/14/risk-relying-on-free-plugins/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3523\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"http://www.butlerblog.com/2017/08/14/risk-relying-on-free-plugins/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"Creativity Extortion Part 2 – Turning Negative into Positive as a Freelancer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://feedproxy.google.com/~r/butlerblog/~3/EqrS_xLjPu0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"http://www.butlerblog.com/2017/08/11/freelance-creativity-stay-positive/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 11 Aug 2017 14:12:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Editorial\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://www.butlerblog.com/?p=3758\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1776:\"In Part 1 of this series, we addressed how to identify two types of users who bleed your creativity through various actions.  Now in Part 2 we will look at ways to deal with them in a positive manner...<br/>\n<br/>\n[[ This is a content summary only. Visit my website for full links, other content, and more! ]]<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=EqrS_xLjPu0:_rhZH8ffUCU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=EqrS_xLjPu0:_rhZH8ffUCU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=EqrS_xLjPu0:_rhZH8ffUCU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=EqrS_xLjPu0:_rhZH8ffUCU:dnMXMwOfBR0\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=dnMXMwOfBR0\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=EqrS_xLjPu0:_rhZH8ffUCU:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=EqrS_xLjPu0:_rhZH8ffUCU:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=EqrS_xLjPu0:_rhZH8ffUCU:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=EqrS_xLjPu0:_rhZH8ffUCU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=EqrS_xLjPu0:_rhZH8ffUCU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=EqrS_xLjPu0:_rhZH8ffUCU:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/butlerblog/~4/EqrS_xLjPu0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Chad Butler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"http://www.butlerblog.com/2017/08/11/freelance-creativity-stay-positive/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3758\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"http://www.butlerblog.com/2017/08/11/freelance-creativity-stay-positive/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"Creativity Extortion Working as a Freelance Designer, Developer, or Writer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://feedproxy.google.com/~r/butlerblog/~3/kbf3i9Nz1mo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"http://www.butlerblog.com/2017/08/10/freelance-creativity-extortion/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 10 Aug 2017 16:47:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Editorial\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://www.butlerblog.com/?p=3642\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1774:\"As a freelance creative designer, developer, or writer working either self employed, towards being self employed, or simply with a good side hustle, you will often run into people who seek to extort...<br/>\n<br/>\n[[ This is a content summary only. Visit my website for full links, other content, and more! ]]<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=kbf3i9Nz1mo:jRVI82Joptk:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=kbf3i9Nz1mo:jRVI82Joptk:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=kbf3i9Nz1mo:jRVI82Joptk:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=kbf3i9Nz1mo:jRVI82Joptk:dnMXMwOfBR0\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=dnMXMwOfBR0\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=kbf3i9Nz1mo:jRVI82Joptk:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=kbf3i9Nz1mo:jRVI82Joptk:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=kbf3i9Nz1mo:jRVI82Joptk:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=kbf3i9Nz1mo:jRVI82Joptk:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=kbf3i9Nz1mo:jRVI82Joptk:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=kbf3i9Nz1mo:jRVI82Joptk:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/butlerblog/~4/kbf3i9Nz1mo\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Chad Butler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://www.butlerblog.com/2017/08/10/freelance-creativity-extortion/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3642\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"http://www.butlerblog.com/2017/08/10/freelance-creativity-extortion/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"New StudioPress Sites Offers Simplicity in a Powerful Hosted Package\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://feedproxy.google.com/~r/butlerblog/~3/UYt5OIF7M4A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"http://www.butlerblog.com/2017/01/31/new-studiopress-sites-offers-simplicity-powerful-hosted-package/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Jan 2017 21:08:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Editorial\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://www.butlerblog.com/?p=3659\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1770:\"I am excited to share with you a new product from StudioPress.  StudioPress is not just another WordPress company.  The founder, my friend Brian Gardner, was arguably the first person to begin...<br/>\n<br/>\n[[ This is a content summary only. Visit my website for full links, other content, and more! ]]<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=UYt5OIF7M4A:qVo19aW2DTc:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=UYt5OIF7M4A:qVo19aW2DTc:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=UYt5OIF7M4A:qVo19aW2DTc:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=UYt5OIF7M4A:qVo19aW2DTc:dnMXMwOfBR0\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=dnMXMwOfBR0\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=UYt5OIF7M4A:qVo19aW2DTc:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=UYt5OIF7M4A:qVo19aW2DTc:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=UYt5OIF7M4A:qVo19aW2DTc:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=UYt5OIF7M4A:qVo19aW2DTc:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=UYt5OIF7M4A:qVo19aW2DTc:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=UYt5OIF7M4A:qVo19aW2DTc:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/butlerblog/~4/UYt5OIF7M4A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Chad Butler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"http://www.butlerblog.com/2017/01/31/new-studiopress-sites-offers-simplicity-powerful-hosted-package/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3659\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"http://www.butlerblog.com/2017/01/31/new-studiopress-sites-offers-simplicity-powerful-hosted-package/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Premium Support Business Model\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://feedproxy.google.com/~r/butlerblog/~3/L66h2uKB77Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"http://www.butlerblog.com/2016/08/24/the-premium-support-business-model/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 24 Aug 2016 19:47:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Editorial\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://www.butlerblog.com/?p=3579\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1775:\"With the growth of WordPress in the Internet ecosystem, we have also seen a variety of business models grow up around it.  Some work, some don&#8217;t.  I want to share with you my current business...<br/>\n<br/>\n[[ This is a content summary only. Visit my website for full links, other content, and more! ]]<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=L66h2uKB77Q:7vMT6Nwaze8:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=L66h2uKB77Q:7vMT6Nwaze8:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=L66h2uKB77Q:7vMT6Nwaze8:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=L66h2uKB77Q:7vMT6Nwaze8:dnMXMwOfBR0\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=dnMXMwOfBR0\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=L66h2uKB77Q:7vMT6Nwaze8:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=L66h2uKB77Q:7vMT6Nwaze8:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=L66h2uKB77Q:7vMT6Nwaze8:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=L66h2uKB77Q:7vMT6Nwaze8:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=L66h2uKB77Q:7vMT6Nwaze8:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=L66h2uKB77Q:7vMT6Nwaze8:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/butlerblog/~4/L66h2uKB77Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Chad Butler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"http://www.butlerblog.com/2016/08/24/the-premium-support-business-model/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3579\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"http://www.butlerblog.com/2016/08/24/the-premium-support-business-model/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Word-based Passwords Plugin for WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://feedproxy.google.com/~r/butlerblog/~3/LT6rAuGlTqo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"http://www.butlerblog.com/2016/06/13/word-based-passwords-plugin-for-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Jun 2016 13:29:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://www.butlerblog.com/?p=3563\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1775:\"Word-based passwords are not a new thing, but they have not readily been available for WordPress.  Over the course of time supporting my WP-Members membership plugin, I have gotten a lot of requests...<br/>\n<br/>\n[[ This is a content summary only. Visit my website for full links, other content, and more! ]]<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=LT6rAuGlTqo:I28em8w_dQs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=LT6rAuGlTqo:I28em8w_dQs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=LT6rAuGlTqo:I28em8w_dQs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=LT6rAuGlTqo:I28em8w_dQs:dnMXMwOfBR0\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=dnMXMwOfBR0\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=LT6rAuGlTqo:I28em8w_dQs:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=LT6rAuGlTqo:I28em8w_dQs:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=LT6rAuGlTqo:I28em8w_dQs:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=LT6rAuGlTqo:I28em8w_dQs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=LT6rAuGlTqo:I28em8w_dQs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=LT6rAuGlTqo:I28em8w_dQs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/butlerblog/~4/LT6rAuGlTqo\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Chad Butler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"http://www.butlerblog.com/2016/06/13/word-based-passwords-plugin-for-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3563\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"http://www.butlerblog.com/2016/06/13/word-based-passwords-plugin-for-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"A Great Way to Get Free Gold\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://feedproxy.google.com/~r/butlerblog/~3/ijf0cDmn5Ek/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://www.butlerblog.com/2016/02/03/free-gold/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Feb 2016 15:24:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Editorial\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://www.butlerblog.com/?p=3518\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1773:\"Who doesn&#8217;t like free?  What&#8217;s better than free?  Free without a catch.  Nobody likes fine print and unrealistic hurdles to overcome. So with that in mind, consider this &#8211; Free...<br/>\n<br/>\n[[ This is a content summary only. Visit my website for full links, other content, and more! ]]<div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=ijf0cDmn5Ek:qrAHf60MP9I:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=ijf0cDmn5Ek:qrAHf60MP9I:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=ijf0cDmn5Ek:qrAHf60MP9I:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=ijf0cDmn5Ek:qrAHf60MP9I:dnMXMwOfBR0\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=dnMXMwOfBR0\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=ijf0cDmn5Ek:qrAHf60MP9I:F7zBnMyn0Lo\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=ijf0cDmn5Ek:qrAHf60MP9I:F7zBnMyn0Lo\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=ijf0cDmn5Ek:qrAHf60MP9I:7Q72WNTAKBA\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=7Q72WNTAKBA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=ijf0cDmn5Ek:qrAHf60MP9I:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/butlerblog?a=ijf0cDmn5Ek:qrAHf60MP9I:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/butlerblog?i=ijf0cDmn5Ek:qrAHf60MP9I:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/butlerblog/~4/ijf0cDmn5Ek\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Chad Butler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"http://www.butlerblog.com/2016/02/03/free-gold/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3518\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"http://www.butlerblog.com/2016/02/03/free-gold/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"23349228\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:38:\"http://feeds.feedburner.com/butlerblog\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:3:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:10:\"butlerblog\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"butlerblog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:10:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"W8hzEa0EuTZHyk+81jorz75NhGs\";s:13:\"last-modified\";s:29:\"Thu, 05 Jul 2018 03:44:12 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Thu, 05 Jul 2018 04:10:37 GMT\";s:7:\"expires\";s:29:\"Thu, 05 Jul 2018 04:10:37 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";}}s:5:\"build\";s:14:\"20130910190210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(458, '_transient_timeout_feed_mod_2c2fe0099a2578688413800ea68677d6', '1530807041', 'no'),
(459, '_transient_feed_mod_2c2fe0099a2578688413800ea68677d6', '1530763841', 'no'),
(460, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1530814102', 'no'),
(461, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Ogijima\";s:3:\"url\";s:33:\"https://2018.ogijima.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-07-15 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Ogijima, Japan\";s:7:\"country\";s:2:\"JP\";s:8:\"latitude\";d:34.4200879;s:9:\"longitude\";d:134.0568121;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"[岡山] WordBench倉敷 第4回勉強会\";s:3:\"url\";s:50:\"https://www.meetup.com/WordBench/events/251259493/\";s:6:\"meetup\";s:9:\"WordBench\";s:10:\"meetup_url\";s:33:\"https://www.meetup.com/WordBench/\";s:4:\"date\";s:19:\"2018-08-04 10:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"岡山県, Japan\";s:7:\"country\";s:2:\"jp\";s:8:\"latitude\";d:34.597229;s:9:\"longitude\";d:133.770111;}}}}', 'no'),
(462, '_transient_timeout_feed_ab995de7a5278071ed721c721c891aed', '1530807043', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(463, '_transient_feed_ab995de7a5278071ed721c721c891aed', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"日本語\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://ja.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 日本語ローカルサイトブログ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Tue, 03 Jul 2018 23:42:36 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-43388\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"今月の WordPress: 2018年6月\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://ja.wordpress.org/2018/07/04/the-month-in-wordpress-june-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Jul 2018 23:42:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5058\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"以下は、Hugh Lashbrooke が書いた WordPress.org 公式ブログの記事、「The Mo [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6447:\"<p>以下は、<a href=\"https://profiles.wordpress.org/hlashbrooke\">Hugh Lashbrooke</a> が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2018/04/the-month-in-wordpress-march-2018/\">The Month in WordPress: March 2018</a>」を訳したものです。</p>\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.forums.wordpress.org/forum/7\">フォーラムまでお知らせください</a>。</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>先月は WordCamp の2つのフラッグシップイベントのうちの1つが開催され、いくつか重要な WordPress プロジェクトの告知があるなど、ニュースには事欠かない月となりました。6月に WordPress のグローバルコミュニティで何が起きたかについて、詳しくお読みください。</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>今年も成功した WordCamp ヨーロッパ</h2>\n\n<p>セルビア共和国ベオグラードで6月14日から3日間、学びと貢献のイベントである WordCamp Europe が行われました。2,000人以上が会場に参加し、さらに数百人がセッションのライブストリームを視聴しました。</p>\n\n<p>この WordCamp には多くのイベント初参加者と、初めて WordPress プロジェクトやコミュニティに参加・貢献した方々が来場し、大きな成功を収めました。65名のスピーカーによるセッションは録画され、今後数週間で WordPress.tv 上で見られるようになる予定です。それまでの間、<a href=\"https://www.flickr.com/photos/wceu/albums\">イベントの写真をご覧ください</a>。</p>\n\n<p><a href=\"https://2018.europe.wordcamp.org/2018/06/16/wordcamp-europe-2019/\">次回の WordCamp Europe</a> はドイツのベルリンにて2019年6月20〜22日に行われます。ヨーロッパにお住まいで、運営チームに参加したい方は<a href=\"https://2019.europe.wordcamp.org/2018/06/16/call-wordcamp-europe-2019-organizers/\">申請フォームにご記入ください</a>。</p>\n\n<h2>新 WordPress コンテンツエディターのロードマップを更新</h2>\n\n<p>WordCamp Europe での基調講演において、マット・マレンウェッグはWordPress 5.0 に含まれる新しいコンテンツエディター (編集ツール) である <a href=\"https://wordpress.org/gutenberg/\">Gutenberg</a> の<a href=\"https://gutenbergtimes.com/mullenweg-on-gutenberg-roll-out-plan/\">更新済みロードマップ</a>を提示しました。</p>\n\n<p>このエディターは急速な開発が進められていますが、<a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\">v3.1 がつい先月リリースされ</a>、チームは2018年8月に Gutenberg を WordPress コアへ統合することを目指しています。これはまだ確定ではなく、リリース日は開発が進むにつれて変更される可能性もあります。しかし、この目標のおかげで、エディターのリリースがいつ頃になるかの現実的な見解を初めて得られることとなりました。</p>\n\n<p>Gutenberg の開発に貢献したい方は、<a href=\"https://wordpress.org/gutenberg/handbook/\">ハンドブック</a>を読み、<a href=\"https://make.wordpress.org/core/\">コアチームのブログ</a>をフォローし、﻿<a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack グループ</a>﻿の #core-editor チャンネルに参加してください。</p>\n\n<h2>WordCamp インキュベーターシティの発表</h2>\n\n<p>WordCamp インキュベータープログラムは、WordCamp を初めて開催するための運営サポートを提供することによって WordPress が十分リーチできていないコミュニティに広まるようにするものです。このプログラムの最初のイテレーションは2016年に運用され、3つの都市が WordPress コミュニティを開始するのをお手伝いすることに成功しました。</p>\n\n<p>今年、コミュニティチームはインキュベータープログラムを再び実行します。104のコミュニティからの申請があり、モンテビデオ (ウルグアイ) とコタキナバル (マレーシア) がプログラム参加都市として<a href=\"https://make.wordpress.org/community/2018/06/26/wordcamp-incubator-program-2018-locations-announcement/\">採択されました</a>。両都市は、WordPress コミュニティの立ち上げを支援する手段として、初めての WordCamp を実行するための直接的なヘルプを経験豊富な WordCamp 主催者から受けます。</p>\n\n<p>インキュベータープログラムをについて詳しくは<a href=\"https://make.wordpress.org/community/\">コミュニティチームのブログ</a>をフォローし、<a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack グループ</a>の #community-events チャンネルに参加してください。</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>さらに読む</h2>\n\n<ul>\n	<li>スペインの WordPress コミュニティは最近、国内最高のオープンソースコミュニティとしての﻿<a href=\"https://twitter.com/wp_es/status/1004681694660603904\">賞を受賞</a>しました。</li>\n	<li>今月、WordPress は <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">Web サイトシェアの31%を占めるというマイルストーン</a>を達成しました。</li>\n	<li><a href=\"https://wprig.io/introducing-wprig-wordpress/\">WP Rig</a> は、WordPress 開発者がより良いテーマを構築するための新しいツールです。</li>\n	<li><a href=\"https://richtabor.com/gutenberg-block-unit-test/\">Block Unit Test</a> は、テーマ開発者が Gutenberg に向けての準備に使える新しいプラグインです。</li>\n	<li>月末に、Zac Gordon が WordPress での JavaScript 開発にフォーカスした<a href=\"https://javascriptforwp.com/conference/\">オンラインカンファレンス</a>を開催しました。セッション動画は近日 YouTube で見られるようになります。<br /></li>\n</ul>\n\n<p>次回の「今月の WordPress」に含めるべき記事があれば、<a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">こちらに提出</a>してください。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.6 プライバシー・メンテナンスリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://ja.wordpress.org/2018/05/19/wordpress-4-9-6-privacy-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 19 May 2018 07:27:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5020\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:261:\"WordPress 4.9.6 がご利用いただけるようになりました。これは<strong>プライバシーとメンテナンス</strong>についてのリリースです。サイトの更新を行い、新しいプライバシー機能をご利用ください。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:12838:\"<p>以下は、<a href=\"https://profiles.wordpress.org/allendav\">Allen Snook</a> が書いた WordPress.org 公式ブログの記事、<a href=\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\">「WordPress 4.9.6 Privacy and Maintenance Release」</a>を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/feedback/\">フォーラムまでお知らせください</a>。</p>\n<hr>\nWordPress 4.9.6 がご利用いただけるようになりました。これは<strong>プライバシーとメンテナンス</strong>についてのリリースです。サイトの更新を行い、新しいプライバシー機能をご利用ください。</p>\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=632&amp;ssl=1\" alt=\"A decorative header featuring the text &quot;GDPR&quot; and a lock inside of a blue shield, on multicolor green background.\" class=\"wp-image-5988\" height=\"316\" width=\"632\"></figure>\n<h2 style=\"text-align:left\">プライバシー</h2>\n<p>欧州連合（EU）の一般データ保護規則（<strong>GDPR</strong>）が5月25日に発効となります。GDPR は、個人情報の収集・使用・共有の方法について、企業とサイト所有者に透明性を要求します。また、個人には、自身の<br />\n個人情報が、収集・使用・共有される際により多くのアクセスと選択肢を提供します。</p>\n<p>GDPR は欧州の規則ですが、その要件は、ビシネスの拠点にかかわらず、EU 住民の個人情報を収集・保管・処理するすべてのサイトとオンラインビジネスに適用されるということを理解することが重要です。</p>\n<p>GDPR の詳細については、欧州委員会の<a href=\"http://ec.europa.eu/justice/smedataprotect/index_en.htm\">データ保護ページ</a>を参照してください。</p>\n<p>私たちは、この重要な法律を遵守するために世界中のサイト運営者を支援する努力をしており、その取り組みの一環として、本リリースでは多数の新しいプライバシー機能を追加しました。</p>\n<h2 style=\"text-align:left\">コメント</h2>\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=632&amp;ssl=1\" alt=\"A screenshot of a comment form, where the new &quot;Save my name, email, and website in this browser for the next time I comment&quot; checkbox is featured.\" class=\"wp-image-5986\" height=\"612\" width=\"632\"></figure>\n<p>ログアウト状態のコメント投稿者は、自身の名前、メールアドレス、ウェブサイトをブラウザーの Cookie に保存するかどうか選択できます。</p>\n<h2 style=\"text-align:left\">プライバシーポリシーページ</h2>\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=632&amp;ssl=1\" alt=\"A screenshot of the new Privacy Settings page.\" class=\"wp-image-5995\" height=\"373\" width=\"632\"></figure>\n<p>サイト所有者がプライバシーポリシーページを指定できるようになりました。このページはログインページと登録ページに表示されます。ポリシーへのリンクは、ウェブサイトのすべてのページに手動で追加する必要があります。フッターメニューがあるなら、プライバシーポリシーを含める場所として最適です。</p>\n<p>加えて、私たちは WordPress からの提案テキストとプラグインの個人データ取り扱いを含むガイドを作成しました。これらの提案テキストをコピーアンドペーストしてサイトのプライバシーポリシーを書き始めるのもよいでしょう。</p>\n<p>データを収集するプラグインを開発している場合は、その情報を WordPress のプライバシーポリシーガイドに含めることをおすすめします。詳しくは、<a href=\"https://developer.wordpress.org/plugins/privacy/\">プラグインハンドブックのプライバシーセクション</a>をご覧ください。</p>\n<h2 style=\"text-align:left\">データの取り扱い</h2>\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=632&amp;ssl=1\" alt=\"A screenshot of the new Export Personal Data tools page. Several export requests are listed on the page, to demonstrate how the new feature will work.\" class=\"wp-image-5999\" height=\"465\" width=\"632\"></figure>\n<h3 class=\"layout-column-1\">データエクスポート</h3>\n<p>サイト所有者は、WordPress とプラグインによって収集されたユーザーの個人データ・利用データを含む ZIP ファイルをエクスポートできます。</p>\n<h3 class=\"layout-column-2\">データ消去</h3>\n<p>サイト所有者は、プラ​​グインによって収集されたデータ含むユーザーの個人データを消去することができます。</p>\n<blockquote class=\"wp-block-quote\"><p>\nこんにちは。</p>\n<p>お持ちのアカウントに対し、次の操作を実行するようリクエストがありました。</p>\n<p><strong>個人データのエクスポート</strong></p>\n<p>確認のため、下記のリンクをクリックしてください。<br />\n<a href=\"#\">https://.wordpress.org/wp-login.php?action=confirmaction…</a></p>\n<p>この操作を希望しない場合は、このメールを無視し、削除してかまいません。</p>\n<p>このメールは <a href=\"#\">you@example.com</a> へ送信されました。</p>\n<p>よろしくお願いします。<br />\n<em>WordPress 運営者一同</em><br />\n<a href=\"#\"><em>https://wordpress.org</em></a></p>\n</blockquote>\n<p>サイト所有者には、個人データリクエストを確認するための新しい電子メールベースの方法が用意されています。このリクエスト確認ツールは、エクスポートと消去リクエストの両方に、また、登録ユーザーとコメント投稿者の両方に機能します。</p>\n<hr class=\"wp-block-separator\">\n<h2 style=\"text-align: left\">メンテナンス</h2>\n<p>WordPress 4.9.6 では、上記以外に95個の更新が行われました。特筆すべきは、次となります。</p>\n<ul>\n<li>「所有」フィルターがメディアライブラリに追加されました。</li>\n<li>管理画面プラグインページで PHP の最低必要バージョンが表示されるようになりました。</li>\n<li>前方互換と適切な変数検証のため、新しい PHP polyfill が追加されました。</li>\n<li>TinyMCE が最新版（4.7.11）に更新されました。</li>\n</ul>\n<p><a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">4.9.6 で修正されたすべての問題の詳細情報を知りたい場合は、こちらの記事をご覧ください</a>。</p>\n<p><a href=\"https://ja.wordpress.org/download/\">WordPress 4.9.6 (日本語版) をダウンロード</a>、または、「ダッシュボード」 → 「更新」へ行き「今すぐ更新」をクリックしてください。自動バックグラウンド更新をサポートするサイトでは、すでに自動更新が始まっています。</p>\n<p class=\"has-background has-very-light-gray-background-color\">現在 WordPress 4.9.3 をご使用の場合は、ただちにサイトを手動で更新してください。</p>\n<hr class=\"wp-block-separator\">\n<p>WordPress 4.9.6 に貢献してくださったすべての方に感謝いたします:</p>\n<p><a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/allendav/\">allendav</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/burlingtonbytes/\">Burlington Bytes</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/claudiu/\">claudiu</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ericdaams/\">Eric Daams</a>, <a href=\"https://profiles.wordpress.org/fclaussen/\">Fernando Claussen</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/idea15/\">Heather Burns</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jesperher/\">Jesper V Nielsen</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/dejliglama/\">Kåre Mulvad Steffensen</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/macbookandrew/\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbarthmaier/\">pbrocks</a>, <a href=\"https://profiles.wordpress.org/postphotos/\">postphotos</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/presstigers/\">PressTigers</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/littlerchicken/\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/satollo/\">Stefano Lissa</a>, <a href=\"https://profiles.wordpress.org/stephdau/\">Stephane Daury (stephdau)</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/teddytime/\">teddytime</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">thomasplevy</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/voneff/\">voneff</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, and <a href=\"https://profiles.wordpress.org/xkon/\">Xenos (xkon) Konstantinos</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"5月27日、WordPress の15周年を祝いましょう\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://ja.wordpress.org/2018/04/27/celebrate-the-wordpress-15th-anniversary-on-may-27/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 09:00:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=4972\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:274:\"2018年5月27日は、WordPress の最初のリリースから15年目の記念日です。世界中でお祝いのイベントが開催される予定ですが、皆さんも参加・企画してみませんか ? 記念のスペシャルグッズご紹介もあります。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5952:\"<p>以下は、<a href=\"https://profiles.wordpress.org/andreamiddleton\">Andrea Middleton</a> が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">Celebrate the WordPress 15th Anniversary on May 27</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.forums.wordpress.org/forum/7\">フォーラムまでお知らせください</a>。</p>\n<hr />\n<p>2018年5月27日は、<a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">WordPress の最初のリリース</a>から<strong>15年目の記念日</strong>です。お祝いするのがとても楽しみです !</p>\n<figure class=\"wp-block-image aligncenter\"><img class=\"wp-image-5841 aligncenter\" src=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=342%2C268&amp;ssl=1\" alt=\"\" width=\"342\" height=\"268\" /></figure>\n<h2>パーティタイム !</h2>\n<p>お近くでパーティを計画し、世界中の WordPress ファンと共に15周年記念をお祝いしませんか。やり方は以下のとおりです。</p>\n<ol>\n<li>すでにあなたの町でイベントが企画されているかどうか、<a href=\"https://wp15.wordpress.net/about/\">WordPress 15th アニバーサリーサイト</a>で確認しましょう。もしあるなら、参加登録して知り合いも誘ってみましょう。</li>\n<li>まだないようなら、人が集まってワイワイやれる会場をどこか選びましょう。公園、居酒屋、誰かの家の庭など、どんな年代の人も歓迎される場所ならどこでもかまいません。</li>\n<li>イベントを <a href=\"https://www.meetup.com/pro/wordpress/\">Meetup.com に掲載し</a> (下記訳注参照)、他の地域勉強会、IT 系・ブログ系グループ、プレスなどに告知して集客しましょう。</li>\n<li>15周年記念スペシャル WordPress グッズを<a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/wordpress-15th-anniversary-celebrations/#request-wordpress-15th-anniversary-swag\">リクエスト</a>しましょう (注: 締切が4月27日までになっています。少量なら予備がある可能性もあるため、<a href=\"https://wpdocs.osdn.jp/WordSlack%E3%81%B8%E3%81%AE%E5%8F%82%E5%8A%A0%E6%96%B9%E6%B3%95\">WordSlack</a> #community チャンネルでお問い合わせください)。</li>\n<li>パーティの参加者に、#WP15 ハッシュタグを使って写真や動画などを投稿してもらいましょう。そして、世界中の人たちがシェアしているお祝いコンテンツを<a href=\"https://wp15.wordpress.net/live/\">アニバーサリーサイトのソーシャルメディアストリーム</a>で見てしょう。</li>\n</ol>\n<p>グローバルな WordPress のお祝いに参加するこのチャンスをお見逃しなく !</p>\n<p><strong>訳注:</strong> 上記のステップ3について、日本の場合では<a href=\"https://www.meetup.com/WordBench/events\">こちらの Meetup.com アカウン</a>トに集約しています。開催予定の場合は<a href=\"/contact\">こちらからご連絡ください</a>。日本国内では現時点において、<a href=\"https://ogijima.connpass.com/event/86185/\">WordBench 男木島</a>、<a href=\"https://wbtokyo.doorkeeper.jp/events/73452\">WordBench 東京</a>、<a href=\"https://wbsaitama.doorkeeper.jp/events/73533\">WordBench 埼玉</a>、<a href=\"https://wbhaneda.connpass.com/event/84771/\">WordBench 羽田</a>、<a href=\"https://wbnagano.connpass.com/event/86000/\">WordBench 長野</a>、<a href=\"https://wbgifu.connpass.com/event/85002/\">WordBench岐阜</a>、WordBench 三重、<a href=\"https://wbosaka.connpass.com/event/86016/\">WordBench 大阪</a>、WordBench 神戸、<a href=\"https://wordbenchfukui.connpass.com/event/85904/\">WordBench 福井</a>、WordBench 長崎が記念イベントを開催予定です。</p>\n<h2>スペシャルグッズ</h2>\n<p>15周年記念に敬意を表して、<a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\">スペシャルアイテム</a>をグッズストアに追加しています。クーポンコード <strong>CELEBRATEWP15</strong> を使えば、2018年末までこれらのアイテム (およびストア上のすべての商品) を15%オフで購入できます !</p>\n<p>これから数週間の間に新しいグッズも追加していく予定です。</p>\n<p><a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\"><img class=\"aligncenter size-medium wp-image-4982\" src=\"https://ja.wordpress.org/files/2018/04/wp15_03_womens-300x300.jpg\" alt=\"WordPress 15周年記念の T シャツ\" width=\"300\" height=\"300\" srcset=\"https://ja.wordpress.org/files/2018/04/wp15_03_womens-300x300.jpg 300w, https://ja.wordpress.org/files/2018/04/wp15_03_womens-150x150.jpg 150w, https://ja.wordpress.org/files/2018/04/wp15_03_womens-768x768.jpg 768w, https://ja.wordpress.org/files/2018/04/wp15_03_womens.jpg 1024w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>\n<h2>シェアしよう</h2>\n<p><a href=\"https://wp15.wordpress.net/about/\">パーティ</a>、<a href=\"https://wp15.wordpress.net/swag/\">記念グッズ</a>、<a href=\"https://wp15.wordpress.net/live/\">WordPress があなたにとってどんな意味を持つのかについて投稿すること</a>など、どんな形でお祝いするにしても、シェアする際には #WP15 ハッシュタグを必ずつけましょう。そして、<a href=\"https://wp15.wordpress.net/live/\">WordPress 15周年記念投稿</a>をチェックすることもお忘れなく。</p>\n<p><a href=\"https://venturebeat.com/2018/03/05/wordpress-now-powers-30-of-websites/\">インターネットの30%で使われているソフトウェア</a>の特別な日は、きっとすばらしいものになるはずです。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WordPress の GDPR コンプライアンスツール\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://ja.wordpress.org/2018/04/24/gdpr-compliance-tools-in-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Apr 2018 03:00:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=4970\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:259:\"2018年5月25日から施行される EU 一般データ保護規則に WordPress サイトを対応させるための各種ツールが今後登場する予定です。その大まかな概要と、開発・テストへの参加方法をご紹介します。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5844:\"<p>以下は、<a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a> が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2018/04/gdpr-compliance-tools-in-wordpress/\">GDPR Compliance Tools in WordPress</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.forums.wordpress.org/forum/7\">フォーラムまでお知らせください</a>。</p>\n<hr />\nGDPR の遵守は、すべての WordPress サイトにとって重要な考慮事項です。GDPR コンプライアンスチームは、現在コア内で開発中のプライバシーテストをテストするためのヘルプを求めています。</p>\n<h2>GDPR とは</h2>\n<p>GDPR は「<a href=\"https://ja.wikipedia.org/wiki/EU%E4%B8%80%E8%88%AC%E3%83%87%E3%83%BC%E3%82%BF%E4%BF%9D%E8%AD%B7%E8%A6%8F%E5%89%87\">EU一般データ保護規則</a>」の略語であり、欧州連合 (EU) 内のすべての個人のためにデータ保護を強化し統一することを目的としています。その主な目的は、EU の住民が再び自分の個人情報をコントロールできるようにすることです。</p>\n<div class=\"gtx-body\">なぜ急ぐ必要があるのかというと、GDPR は2年前に発表されましたが、2018年5月25日から施行されるからです。</div>\n<h2>Make WordPress GDPR コンプライアンスチーム</h2>\n<p>現在 GDPR コンプライアンスチームは、WordPress ベースのサイトの同法遵守を手助けすることが大規模かつ継続的な課題であることを理解しています。チームは、包括的なコアポリシー、プラグインガイドライン、プライバシーツール、およびドキュメントの作成に集中しています。これらのすべてで、皆さんの助けを必要としています。</p>\n<p>GDPRコンプライアンスチームは以下の4つのエリアにフォーカスしています。</p>\n<ul>\n<li>サイト所有者がサイトの包括的なプライバシーポリシーを作成するのを助けるための機能を追加する。</li>\n<li>プラグインを GDPR 対応にするためのガイドラインを作成する。</li>\n<li>コンプライアンスを容易にし、一般的にユーザーのプライバシーを奨励するための管理ツールを追加する。</li>\n<li>サイト所有者にプライバシーおよび GDPR の主要な要件を教えるためのドキュメントや、新しいプライバシーツールの使用方法を追加する。</li>\n</ul>\n<h2>すでにプライバシーポリシーがあったのでは ?</h2>\n<p>そうですが、そうでない部分もあります。とは言え、GDPR はより厳しいガイドラインと制限を課すことになります。プライバシーページを作成する多くのプラグインがありますが、統一された包括的なプライバシーポリシーを生成する手段が必要です。ユーザーが容易にコンプライアンスに対応できるツールが必要になります。</p>\n<p>サイト所有者は、GDPR に準拠したプライバシーポリシーを3つのステップで作成することができるようになります。</p>\n<ol>\n<li>ポリシー向けの専用ページを追加する。</li>\n<li>プライバシー情報をプラグインから追加する。</li>\n<li>ポリシーをレビューし、公開する。</li>\n</ol>\n<p>ポリシーを編集する際には、新しい「投稿ボックス」がページ編集画面に追加されます。ユーザーデータを収集または格納するすべてのプラグインは、そこにプライバシー情報を追加できます。さらに、プラグインの有効化、無効化、または更新後にプライバシー情報が変更された場合、サイト所有者に注意喚起します。</p>\n<p>メールアドレスによってユーザーのリクエストを確認する機能が追加される予定です。これは、サイト所有者がユーザーからの個人データの表示、ダウンロード、または匿名化のリクエストを確認できるようにするためのものです。</p>\n<p>新しい「プライバシー」ページが「ツール」メニューの下に追加されます。ここにはユーザーからの新しい確認済みのリクエストとすでに完了したリクエストが表示されます。また、個人データのエクスポートや匿名化のためのツールや、不正試行を防止するためメールによる確認を依頼するためのツールも含まれています。</p>\n<p>プライバシーに関する新しいセクションが<a href=\"https://developer.wordpress.org/plugins/\">プラグインハンドブック</a>に追加されます。これには、ユーザープライバシーに関する一般情報、プラグインが準拠するために必要なこと、WordPress の新しいプライバシー関連機能を使用するためのヒントと例が含まれています。</p>\n<p>新しいプライバシーツールは、4月末または2018年5月初旬にリリースされる予定です。</p>\n<h2>参加・貢献するには</h2>\n<p>皆さんにぜひ手伝っていただきたいです。最初の一歩は、認識と教育です。今後のプライバシーツールの詳細については、<a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">ロードマップ</a>を参照してください。</p>\n<p>WordPress コアの開発やと新しいプライバシーツールのテストに参加したい場合は、<a href=\"https://make.wordpress.org/chat/\">Make WordPress</a> Slack グループの #gdpr-compliance チャンネルに参加してください。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"今月の WordPress: 2018年3月\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://ja.wordpress.org/2018/04/11/the-month-in-wordpress-march-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Apr 2018 02:55:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=4911\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:220:\"3月には、WordPress のシェアが Web 全体の3割に拡大。コミュニティチームによる WordPress 専門用語集の公開、プライバシー関連の取り組みの強化などが行われました。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5830:\"<p>以下は、<a href=\"https://profiles.wordpress.org/hlashbrooke\">Hugh Lashbrooke</a> が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2018/07/the-month-in-wordpress-june-2018/\">The Month in WordPress: June 2018</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたらフォーラムまでお知らせください。</p>\n<hr />\n<p>重要な新しいマイルストーンと、プラットフォームとしての WordPress のいくつかの大きな改善があった先月は、プロジェクトにとって重要な月でした。3月の間に何が起こったのかを知りたい方は、この記事をご覧ください。</p>\n<hr class=\"wp-block-separator\" />\n<h2>WordPress が Web 全体の30%で使われるようになりました</h2>\n<p>過去15年間、WordPress の人気と利用率は着実に増加し続けてきました。今月、<a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">W3Techs が WordPress が Web 上のサイトの30％以上を占めると報告</a>したことで、その成長は大きなマイルストーンを迎えました。</p>\n<p>この割合は W3Techs が Web 上のトップ1000万サイトを審査した結果に基づいて決定されており、WordPress のプラットフォームとしての人気と柔軟性の強力な指標となっています。</p>\n<p>WordPress をさらに成長させるために手助けをしたい方は、<a href=\"https://make.wordpress.org/\">参加・貢献</a> (<a href=\"https://ja.wordpress.org/get-involved/\">日本語コンテンツ</a>) してみましょう。</p>\n<h2>WordPress 専門用語集の公開</h2>\n<p>WordPress マーケティングチームはこのところ、<a href=\"https://make.wordpress.org/marketing/2018/02/28/wordpress-jargon-glossary/\">WordPress 用語の包括的な用語集</a>の作成に精力的に取り組んできました。これは、プロジェクトの新規参加者の理解を助けるためのものです。</p>\n<p>用語集は、<a href=\"https://make.wordpress.org/marketing/2018/02/28/wordpress-jargon-glossary/\">こちら</a>にあり、オフラインでも簡単に参照できるダウンロード可能な PDF もあります。</p>\n<p>このリソースを公開することは、プロジェクトにあまり慣れていない人が WordPress に簡単にアクセスできるようにするための全体的な取り組みの一環です。マーケティングチームを助けたい場合は、<a href=\"https://make.wordpress.org/marketing/\">チームブログをフォロー</a>し、<a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack グループ</a>の #marketing チャンネルに参加できます。</p>\n<h2>WordPress でのプライバシーへのフォーカス</h2>\n<p>オンラインプライバシーは先月、さまざまな間違った理由でニュースとして取り上げられていました。そのような動きは、GDPR コンプライアンスチームがコミットメントをさらに強化することにつながりました。同チームは、サイト所有者がプライバシー基準を向上できるようにするため、WordPress コアの強化に引き続き取り組んでいます。</p>\n<p>このチームの仕事とさらに広範なプライバシープロジェクトは、4つの領域にわたっています。サイト管理者が自分のサイトについての必要な情報を収集するツールの追加、プライバシーを考慮したプラグインガイドラインの検討、WordPress コアのプライバシー基準の強化、オンラインプライバシーのベストプラクティスに重点を置いたドキュメントの作成です。</p>\n<p>プロジェクトに参加するには、<a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">ロードマップを読み</a>、<a href=\"https://make.wordpress.org/core/tag/gdpr-compliance/\">更新情報をフォローし</a>、<a href=\"https://core.trac.wordpress.org/query?status=!closed&amp;keywords=~gdpr\">パッチを提出し</a>、<a href=\"https://make.wordpress.org/chat\">Making WordPress Slack グループ</a>の #gdpr-compliance チャンネルに入ってください。オフィスアワー (相談時間) は、水曜日の 15:00 UTC です。</p>\n<hr class=\"wp-block-separator\" />\n<h2>さらに読む</h2>\n<ul>\n<li>WordPress ファウンデーションは、コミュニティが去年いかに成長したかを示す<a href=\"https://wordpressfoundation.org/2017-annual-report/\">2017年のアニュアルレポート</a>を公開しました。</li>\n<li>WordCamp US の日程が<a href=\"https://2018.us.wordcamp.org/2018/03/13/announcing-wordcamp-us-2018/\">発表されました</a>。このフラッグシップ的 WordCamp イベントは、今年の12月7日から9日の間、テネシー州ナシュビルで行われます。</li>\n<li>WordPress 4.9.5 が4月3日にリリースされました。<a href=\"https://make.wordpress.org/core/2018/03/21/wordpress-4-9-5-beta/\">詳細はこちら</a>。</li>\n<li>多くの改善を含む Gutenberg のバージョン 2.5 が<a href=\"https://make.wordpress.org/core/2018/03/29/whats-new-in-gutenberg-29th-march/\">先月リリースされました</a>。Gutenberg は、WordPress コアに同梱予定の新しいビジュアルエディターです。</li>\n<li>バーチャル WordPress カンファレンスの「WordSesh」が<a href=\"http://wordsesh.com/\">今年7月に再び開催される予定</a>です。</li>\n</ul>\n<p>次回の「今月の WordPress」に含めるべき記事があれば、<a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">こちらからお知らせください</a>。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.5 セキュリティ・メンテナンスリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://ja.wordpress.org/2018/04/04/wordpress-4-9-5-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Apr 2018 14:12:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=4908\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:306:\"WordPress 4.9.5 がご利用いただけるようになりました。これは WordPress 3.7 以降のすべてのバージョンに対する<strong>セキュリティ・メンテナンスリリース</strong>となります。今すぐにサイトの更新を行うことを強くおすすめします。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7508:\"<p>以下は、<a href=\"https://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a> が書いた WordPress.org 公式ブログの記事、<a href=\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\">「WordPress 4.9.5 Security and Maintenance Release」</a>を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/feedback/\">フォーラムまでお知らせください</a>。</p>\n<hr>\nWordPress 4.9.5 がご利用いただけるようになりました。これは WordPress 3.7 以降のすべてのバージョンに対する<strong>セキュリティ・メンテナンスリリース</strong>となります。今すぐにサイトの更新を行うことを強くおすすめします。</p>\n<p>バージョン 4.9.4 以前の WordPress は、3つのセキュリティ問題の影響を受けます。コアチームの継続的なセキュリティ強化の取り組みにより、4.9.5 では、次の修正が実装されました。</p>\n<ol>\n<li>デフォルトで localhost を同じホストとして扱わない。</li>\n<li>SSL が強制されている場合に、ログインページのリダイレクトに安全なリダイレクトを使用する。</li>\n<li>ジェネレータータグでバージョン文字列が正しくエスケープされていることを確認する。</li>\n</ol>\n<p>これらの問題について、<a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">連携したセキュリティ情報開示</a>を実践してくださった報告者、WordPress セキュリティチームの <a href=\"https://profiles.wordpress.org/xknown\">xknown</a>、<a href=\"https://hackerone.com/nitstorm\">Nitin Venkatesh（nitstorm）</a>、WordPress セキュリティチームの <a href=\"https://twitter.com/voldemortensen\">Garth Mortensen</a> に感謝いたします。</p>\n<p>WordPress 4.9.5 では、その他25個のバグが修正されました。特筆すべきは、以下となります。</p>\n<ul>\n<li>キャプションショートコードで以前のスタイルが復元されました。</li>\n<li>タッチスクリーンデバイスでクロッピングがサポートされるようになりました。</li>\n<li>エラーメッセージなどの文字列がより明解となるよう更新されました。</li>\n<li>アップロード中の添付ファイルのプレースホルダーの位置が修正されました。</li>\n<li>REST API JavaScript クライアントのカスタムノンス機能が、コードベース全体で一貫したものとなりました。</li>\n<li>PHP 7.2 との互換性が向上しました。</li>\n</ul>\n<p><a href=\"https://make.wordpress.org/core/2018/04/03/wordpress-4-9-5/\">4.9.5 で修正されたすべての問題の詳細情報を知りたい場合は、こちらの記事をご覧ください</a>。</p>\n<p><a href=\"https://ja.wordpress.org/download/\">WordPress 4.9.5 (日本語版) をダウンロード</a>、または、「ダッシュボード」 → 「更新」へ行き「今すぐ更新」をクリックしてください。自動バックグラウンド更新をサポートするサイトでは、すでに自動更新が始まっています。</p>\n<p>WordPress 4.9.5 に貢献してくださったすべての方に感謝いたします:</p>\n<p><a href=\"https://profiles.wordpress.org/1265578519-1/\">1265578519</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/alexgso/\">alexgso</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andrei0x309/\">andrei0x309</a>, <a href=\"https://profiles.wordpress.org/antipole/\">antipole</a>, <a href=\"https://profiles.wordpress.org/aranwer104/\">Anwer AR</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/blair-jersyer/\">Blair jersyer</a>, <a href=\"https://profiles.wordpress.org/bandonrandon/\">Brooke.</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/codegrau/\">codegrau</a>, <a href=\"https://profiles.wordpress.org/conner_bw/\">conner_bw</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/designsimply/\">designsimply</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/electricfeet/\">ElectricFeet</a>, <a href=\"https://profiles.wordpress.org/ericmeyer/\">ericmeyer</a>, <a href=\"https://profiles.wordpress.org/fpcsjames/\">FPCSJames</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">johnpgreen</a>, <a href=\"https://profiles.wordpress.org/junaidkbr/\">Junaid Ahmed</a>, <a href=\"https://profiles.wordpress.org/kristastevens/\">kristastevens</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/lancewillett/\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/leemon/\">leemon</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mrmadhat/\">mrmadhat</a>, <a href=\"https://profiles.wordpress.org/nandorsky/\">nandorsky</a>, <a href=\"https://profiles.wordpress.org/jainnidhi/\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/qcmiao/\">qcmiao</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/ravanh/\">RavanH</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sebastienthivinfocom/\">Sebastien SERRE</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/thomas-vitale/\">Thomas Vitale</a>, <a href=\"https://profiles.wordpress.org/kwonye/\">Will Kwon</a>, and <a href=\"https://profiles.wordpress.org/yahil/\">Yahil Madakiya</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WordPress 4.9.4 メンテナンスリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://ja.wordpress.org/2018/02/07/wordpress-4-9-4-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Feb 2018 14:15:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=4688\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:257:\"WordPress 4.9.4 がご利用いただけるようになりました。このメンテナンスリリースは、自動バックグラウンド更新をサポートするサイトが自動更新されなくなる 4.9.3 の重大なバグを修正します。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2751:\"<p>以下は、<a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a> が書いた WordPress.org 公式ブログの記事、<a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-4-maintenance-release/\">「WordPress 4.9.4 Maintenance Release」</a>を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/feedback/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 4.9.4 がご利用いただけるようになりました。</p>\n<p>このメンテナンスリリースは、自動バックグラウンド更新をサポートするサイトが自動更新されなくなる 4.9.3 の重大なバグを修正します。4.9.4 への更新は、ご自身（または、ホスティング会社）によるアクションを必要とします。</p>\n<p>我々は、<a href=\"https://ja.wordpress.org/2013/10/25/wordpress-3-7-basie/\">WordPress 3.7「Basie」</a>で、ユーザー自身が行うことなくウェブサイトを安全かつバグフリーに保つ WordPress 自己更新機能を追加しました。その機能は、4年間にわたり、ほとんど問題もなく何百万もの更新インストールを助けてきました。残念なことに、<a href=\"https://ja.wordpress.org/2018/02/07/wordpress-4-9-3-maintenance-release/\">昨日の 4.9.3</a> に深刻なバグが含まれていることがリリースの後にわかりました。このバグは、WordPress が 4.9.4 へ自己更新を行う際にエラーを発生させるため、WordPress のダッシュボード、または、ホスティング環境の更新ツールから更新を実行する必要があります。</p>\n<p>顧客向けにアップデート版を自動インストールしている WordPress のマネージドホスティング会社では、通常どおりアップデート版をインストールできるでしょう。その他のホスティング会社については、可能な限り多くの顧客が WordPress 4.9.4 に自動更新できるよう協力したいと思います。</p>\n<p>この問題の技術的詳細については、<a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">コア開発ブログの記事</a>をご覧ください。全ての変更点については、<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.4&amp;group=component\">チケットのリスト</a>を参照してください。</p>\n<p><a href=\"https://ja.wordpress.org/download/\">WordPress 4.9.4 (日本語版) をダウンロード</a>、または、「ダッシュボード」 → 「更新」へ行き「今すぐ更新」をクリックしてください。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WordPress 4.9.3 メンテナンスリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://ja.wordpress.org/2018/02/07/wordpress-4-9-3-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Feb 2018 14:13:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=4678\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:263:\"WordPress 4.9.3 が公開されました。このメンテナンスリリースでは、カスタマイザーチェンジセット、ウィジェット、ビジュアルエディター、PHP 7.2 互換性の修正を含む34個のバグが修正されました。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4173:\"<p>以下は、<a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a> が書いた WordPress.org 公式ブログの記事、<a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-3-maintenance-release/\">「WordPress 4.9.3 Maintenance Release」</a>を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/feedback/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 4.9.3 が公開されました。</p>\n<p>このメンテナンスリリースでは、カスタマイザーチェンジセット、ウィジェット、ビジュアルエディター、PHP 7.2 互換性の修正を含む34個のバグが修正されました。すべての変更点については、<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.3&amp;group=component\">チケットリスト</a>と<a href=\"https://core.trac.wordpress.org/log/branches/4.9?rev=42630&amp;stop_rev=42521\">変更履歴</a>をご覧ください。</p>\n<p><a href=\"https://ja.wordpress.org/download/\">WordPress 4.9.3 (日本語版) をダウンロード</a>、または、「ダッシュボード」 → 「更新」へ行き「今すぐ更新」をクリックしてください。自動バックグラウンド更新が有効なサイトでは、すでに WordPress 4.9.3 への自動更新が始まっています。</p>\n<p>WordPress 4.9.3 に貢献してくださったすべての方に感謝いたします:</p>\n<p><a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreiglingeanu/\">andreiglingeanu</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/bpayton/\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/coleh/\">coleh</a>, <a href=\"https://profiles.wordpress.org/darko-a7/\">Darko A7</a>, <a href=\"https://profiles.wordpress.org/desertsnowman/\">David Cramer</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/lizkarkoski/\">lizkarkoski</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/monikarao/\">Monika Rao</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/ndavison/\">ndavison</a>, <a href=\"https://profiles.wordpress.org/nickmomrik/\">Nick Momrik</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rishishah/\">rishishah</a>, <a href=\"https://profiles.wordpress.org/othellobloke/\">Ryan Paul</a>, <a href=\"https://profiles.wordpress.org/sasiddiqui/\">Sami Ahmed Siddiqui</a>, <a href=\"https://profiles.wordpress.org/sayedwp/\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shooper/\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a>, and <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.2 セキュリティ・メンテナンスリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://ja.wordpress.org/2018/01/18/wordpress-4-9-2-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Jan 2018 20:24:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=4612\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:279:\"WordPress 4.9.2 が公開されました。これは WordPress 3.7 以降のすべてのバージョンに対する<strong>セキュリティ・メンテナンスリリース</strong>となります。今すぐにサイトの更新を行うことを強くおすすめします。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4853:\"<p>以下は、<a href=\"https://profiles.wordpress.org/iandunn\">Ian Dunn</a> が書いた WordPress.org 公式ブログの記事、<a href=\"https://wordpress.org/news/2018/01/wordpress-4-9-2-security-and-maintenance-release/\">「WordPress 4.9.2 Security and Maintenance Release」</a>を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/feedback/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 4.9.2 が公開されました。これは WordPress 3.7 以降のすべてのバージョンに対する<strong>セキュリティ・メンテナンスリリース</strong>となります。今すぐにサイトの更新を行うことを強くおすすめします。</p>\n<p>WordPress に含まれる MediaElement ライブラリの Flash フォールバックファイル内で XSS 脆弱性が発見されました。 Flash のファイルは、ほとんどのケースで不要となったため、WordPress から削除されました。</p>\n<p>MediaElement は、バグ修正を含む新しいバージョンをリリースしました。<a href=\"https://wordpress.org/plugins/mediaelement-flash-fallbacks/\">こちらの修正ファイルを含む WordPress プラグイン</a>が、プラグインリポジトリから入手できます。</p>\n<p>これらの問題について、<a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">責任あるセキュリティ情報開示</a>を実践してくださった報告者、<a href=\"https://opnsec.com/\">Enguerran Gillier</a> と <a href=\"https://widiz.com/\">Widiz﻿</a> に感謝いたします。</p>\n<p>WordPress 4.9.2では、その他の21個のバグが修正されました。特筆すべきは次となります。</p>\n<ul>\n<li>Firefox で投稿が保存できない JavaScript のエラーが修正されました。</li>\n<li><code>get_category_link()</code> と <code>category_description()</code> で以前の taxonomy にとらわれない挙動が復元されました。</li>\n<li>テーマの切り替え時に、対応するサイドバーがない場合でも、以前のウィジェット配置の復元を試みるようになりました。</li>\n</ul>\n<p><a href=\"https://codex.wordpress.org/Version_4.9.2\">4.9.2 で修正されたすべての問題の詳細情報</a>については、Codex をご覧ください。</p>\n<p><a href=\"https://ja.wordpress.org/download/\">WordPress 4.9.2 (日本語版) をダウンロード</a>、または、「ダッシュボード」 → 「更新」へ行き「今すぐ更新」をクリックしてください。自動バックグラウンド更新が有効なサイトでは、すでに WordPress 4.9.2 への自動更新が始まっています。</p>\n<p>WordPress 4.9.2 に貢献してくださったすべての方に感謝いたします:</p>\n<p><a href=\"https://profiles.wordpress.org/0x6f0/\">0x6f0</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/icaleb/\">Caleb Burks</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/chasewg/\">chasewg</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/hardik-amipara/\">Hardik Amipara</a>, <a href=\"https://profiles.wordpress.org/ionvv/\">ionvv</a>, <a href=\"https://profiles.wordpress.org/jaswrks/\">Jason Caldwell</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnschulz/\">johnschulz</a>, <a href=\"https://profiles.wordpress.org/juiiee8487/\">Juhi Patel</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/rabmalin/\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999/\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, and <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.﻿</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.1 セキュリティ・メンテナンスリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://ja.wordpress.org/2017/12/01/wordpress-4-9-1-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Dec 2017 13:47:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=4409\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:279:\"WordPress 4.9.1 が公開されました。これは WordPress 3.7 以降のすべてのバージョンに対する<strong>セキュリティ・メンテナンスリリース</strong>となります。今すぐにサイトの更新を行うことを強くおすすめします。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5234:\"<p>以下は、<a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a> が書いた WordPress.org 公式ブログの記事、<a href=\"https://wordpress.org/news/2017/11/wordpress-4-9-1-security-and-maintenance-release/\">「WordPress 4.9.1 Security and Maintenance Release」</a>を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/feedback/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 4.9.1 が公開されました。これは WordPress 3.7 以降のすべてのバージョンに対する<strong>セキュリティ・メンテナンスリリース</strong>となります。今すぐにサイトの更新を行うことを強くおすすめします。</p>\n<p>WordPress 4.9 とそれ以前のバージョンは、マルチベクター攻撃の対象となり得る4つのセキュリティ問題の影響を受けます。コアチームの継続的なセキュリティ強化の取り組みにより、4.9.1 には、次の修正が行われました。</p>\n<ol>\n<li>特定の部分文字列の代わりに、正しく生成されたハッシュを <code>newbloguser</code> キーに使用。</li>\n<li><code>html</code> 要素の言語属性にエスケープ処理を追加。</li>\n<li>RSS と Atom フィードで enclosure の属性が正しくエスケープされていることを確認。</li>\n<li><code>unfiltered_html</code> 権限を持たないユーザーの JavaScript ファイルのアップロード機能を削除。</li>\n</ol>\n<p>これらの問題について、<a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">責任あるセキュリティ情報開示</a>を実践してくださった報告者、<a href=\"https://twitter.com/0x62626262\">Rahul Pratap Singh</a> と John Blackbourn に感謝いたします。</p>\n<p>WordPress 4.9.1 では、その他に11個のバグが修正されました。特筆すべきは以下です。</p>\n<ul>\n<li>テーマテンプレートファイルのキャッシュに関する問題。</li>\n<li>MediaElement の JavaScript エラーが特定言語のユーザーのファイルアップロードを阻害する問題。</li>\n<li>Windows ベースのサーバーでテーマとプラグインファイルが編集できない問題。</li>\n</ul>\n<p><a href=\"https://make.wordpress.org/core/2017/11/28/wordpress-4-9-1-scheduled-for-november-29th/\">こちらの記事に 4.9.1 で修正されたすべての問題についての詳細情報が書かれています</a>。</p>\n<p><a href=\"https://ja.wordpress.org/txt-download/\">WordPress 4.9.1 (日本語版) をダウンロード</a>、または「ダッシュボード」 → 「更新」へ行き「今すぐ更新」をクリックしてください。自動バックグラウンド更新が有効なサイトでは、すでに WordPress 4.9.1 への自動更新が始まっています。</p>\n<p>WordPress 4.9.1 に貢献してくださったすべての方々に感謝いたします:</p>\n<p><a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/la-geek/\">Angelika Reisiger</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/edo888/\">edo888</a>, <a href=\"https://profiles.wordpress.org/erich_k4wp/\">Erich Munz</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/ibenic/\">Igor Benic</a>, <a href=\"https://profiles.wordpress.org/jfarthing84/\">Jeff Farthing</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyescott/\">jeremyescott</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">johnpgreen</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/lenasterg/\">lenasterg</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mariovalney/\">Mário Valney</a>, <a href=\"https://profiles.wordpress.org/natacado/\">natacado</a>, <a href=\"https://profiles.wordpress.org/odysseygate/\">odyssey</a>, <a href=\"https://profiles.wordpress.org/precies/\">precies</a>, <a href=\"https://profiles.wordpress.org/stodorovic/\">Saša</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, and <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:30:\"https://ja.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 05 Jul 2018 04:10:39 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Tue, 03 Jul 2018 23:42:36 GMT\";s:4:\"link\";s:61:\"<https://ja.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20130910190210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(464, '_transient_timeout_feed_mod_ab995de7a5278071ed721c721c891aed', '1530807043', 'no'),
(465, '_transient_feed_mod_ab995de7a5278071ed721c721c891aed', '1530763843', 'no'),
(466, '_transient_timeout_feed_6f409681938158427d2ded6eb1b9ea27', '1530807044', 'no'),
(467, '_transient_feed_6f409681938158427d2ded6eb1b9ea27', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n\n	\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:141:\"\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n					\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n					\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress | サポートフォーラム » 返信一覧\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 13:09:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://bbpress.org/?v=2.6-alpha-6091\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:169:\"https://ja.wordpress.org/support/topic/%e3%82%b5%e3%82%a4%e3%83%88%e3%81%8c%e9%96%8b%e3%81%91%e3%81%aa%e3%81%8f%e3%81%aa%e3%82%8a%e3%81%be%e3%81%97%e3%81%9f/#post-228522\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"返信先: サイトが開けなくなりました\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:169:\"https://ja.wordpress.org/support/topic/%e3%82%b5%e3%82%a4%e3%83%88%e3%81%8c%e9%96%8b%e3%81%91%e3%81%aa%e3%81%8f%e3%81%aa%e3%82%8a%e3%81%be%e3%81%97%e3%81%9f/#post-228522\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 02:44:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:919:\"\n						\n						<p>こんにちは。<br />\nエックスサーバーの場合、自動バックアップ機能が用意されていると思います。<br />\n<a href=\"https://www.xserver.ne.jp/functions/service_backup.php\" rel=\"nofollow\">https://www.xserver.ne.jp/functions/service_backup.php</a></p>\n<p>バックアップデータを復元するためには、（料金が必要ですが・・・）<br />\n正常な状態のデータに戻せば良いのでは。<br />\nそれが一番近道かもしれません。</p>\n\n\n<ul id=\"bbp-reply-revision-log-228522\" class=\"bbp-reply-revision-log\">\n\n	<li id=\"bbp-reply-revision-log-228522-item-228523\" class=\"bbp-reply-revision-log-item\">\n		この返信は1 時間、 21 分前に <a href=\"https://ja.wordpress.org/support/users/yukinobu/\" title=\"Yukinobu Asakawa のプロフィールを表示\">Yukinobu Asakawa</a> さんが編集しました。\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yukinobu Asakawa\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:169:\"https://ja.wordpress.org/support/topic/%e3%82%b5%e3%82%a4%e3%83%88%e3%81%8c%e9%96%8b%e3%81%91%e3%81%aa%e3%81%8f%e3%81%aa%e3%82%8a%e3%81%be%e3%81%97%e3%81%9f/#post-228519\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"サイトが開けなくなりました\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:169:\"https://ja.wordpress.org/support/topic/%e3%82%b5%e3%82%a4%e3%83%88%e3%81%8c%e9%96%8b%e3%81%91%e3%81%aa%e3%81%8f%e3%81%aa%e3%82%8a%e3%81%be%e3%81%97%e3%81%9f/#post-228519\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 01:48:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2151:\"\n						\n						<p>サイトが開けなくなったまでの経緯をまず説明致します。<br />\n知識不足のため、説明力が無いことをお詫びします。</p>\n<p>先日<br />\nhttpsからhttpにしようと、<br />\n.htaccessを編集したら、トップページが404エラーが出て開けなくなりました。<br />\n（記事のページなどは開けました。）</p>\n<p>バックアッププラグインで、たしかデータベースの復元しようとしたら<br />\n復元失敗？（不明）かなんかで、ダッシュボードすら開けなくなりました。</p>\n<p>そのあと、FTPを編集などしてみたが<br />\n状態はむしろ悪くなっていく一方でどうしようもなくなってしまいました。</p>\n<p>現在の状況は<br />\nサイト接続→「データベース接続確立エラー」<br />\nダッシュボード→「使用できないテーブルがあります。データベースの修復が必要かもしれません。」</p>\n<p>ダッシュボードでの修復をしようと、FTPソフトを使用して試みましたが<br />\n編集すらできない状態です。<br />\ndefine(&#8216;WP_ALLOW_REPAIR&#8217;, true);を入力しても、何も解決しませんでした。</p>\n<p>もはや手のつけられない状況のため手を貸していただけると幸いです。<br />\n宜しくお願い致します。</p>\n<p>サーバー「エックスサーバー」</p>\n\n\n<ul id=\"bbp-topic-revision-log-228519\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-228519-item-228520\" class=\"bbp-topic-revision-log-item\">\n		このトピックは<a href=\"https://ja.wordpress.org/support/users/jrkjyf6597/\" title=\"jrkjyf6597 のプロフィールを表示\">jrkjyf6597</a>が2 時間、 16 分前に変更しました。\n	</li>\n	<li id=\"bbp-topic-revision-log-228519-item-228521\" class=\"bbp-topic-revision-log-item\">\n		このトピックは<a href=\"https://ja.wordpress.org/support/users/jrkjyf6597/\" title=\"jrkjyf6597 のプロフィールを表示\">jrkjyf6597</a>が2 時間、 12 分前に変更しました。\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"jrkjyf6597\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:139:\"https://ja.wordpress.org/support/topic/iphone-8%e3%81%a7%e7%b7%a8%e9%9b%86%e6%99%82%e3%81%ae%e4%b8%8d%e5%85%b7%e5%90%88/page/2/#post-228518\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"返信先: iPhone 8で編集時の不具合\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:139:\"https://ja.wordpress.org/support/topic/iphone-8%e3%81%a7%e7%b7%a8%e9%9b%86%e6%99%82%e3%81%ae%e4%b8%8d%e5%85%b7%e5%90%88/page/2/#post-228518\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 01:38:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:321:\"\n						\n						<p>役に立たない情報ですが、以前ご紹介した</p>\n<p>Twenty Seventeen: Can’t scroll on iPhone 4<br />\n<a href=\"https://core.trac.wordpress.org/ticket/39598\" rel=\"nofollow\">https://core.trac.wordpress.org/ticket/39598</a></p>\n<p>は、まったく進展がないですね。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"gblsm\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e5%85%b1%e9%80%9a%e3%82%bf%e3%82%af%e3%82%bd%e3%83%8e%e3%83%9f%e3%83%bc%e3%81%ae%e3%82%bf%e3%83%bc%e3%83%a0%e4%b8%80%e8%a6%a7%e3%82%92%e3%82%ab%e3%82%b9%e3%82%bf%e3%83%a0%e6%8a%95%e7%a8%bf%e5%88%a5/#post-228517\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"返信先: 共通タクソノミーのターム一覧をカスタム投稿別に表示したい\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e5%85%b1%e9%80%9a%e3%82%bf%e3%82%af%e3%82%bd%e3%83%8e%e3%83%9f%e3%83%bc%e3%81%ae%e3%82%bf%e3%83%bc%e3%83%a0%e4%b8%80%e8%a6%a7%e3%82%92%e3%82%ab%e3%82%b9%e3%82%bf%e3%83%a0%e6%8a%95%e7%a8%bf%e5%88%a5/#post-228517\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 01:35:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:430:\"\n						\n						<p>gblsm 様</p>\n<p>&gt;index.php は「他に適切なテンプレートがないときに最終的に使われる」テンプレートなので、特定のタクソノミーや投稿タイプだけしか表示できないのはお勧めしません。</p>\n<p>そうなのですね。</p>\n<p>pre_get_posts アクションフック、やってみます。</p>\n<p>ありがとうございました。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"tamaki75\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e5%85%b1%e9%80%9a%e3%82%bf%e3%82%af%e3%82%bd%e3%83%8e%e3%83%9f%e3%83%bc%e3%81%ae%e3%82%bf%e3%83%bc%e3%83%a0%e4%b8%80%e8%a6%a7%e3%82%92%e3%82%ab%e3%82%b9%e3%82%bf%e3%83%a0%e6%8a%95%e7%a8%bf%e5%88%a5/#post-228516\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"返信先: 共通タクソノミーのターム一覧をカスタム投稿別に表示したい\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e5%85%b1%e9%80%9a%e3%82%bf%e3%82%af%e3%82%bd%e3%83%8e%e3%83%9f%e3%83%bc%e3%81%ae%e3%82%bf%e3%83%bc%e3%83%a0%e4%b8%80%e8%a6%a7%e3%82%92%e3%82%ab%e3%82%b9%e3%82%bf%e3%83%a0%e6%8a%95%e7%a8%bf%e5%88%a5/#post-228516\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 01:17:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:537:\"\n						\n						<p>index.php は「他に適切なテンプレートがないときに最終的に使われる」テンプレートなので、特定のタクソノミーや投稿タイプだけしか表示できないのはお勧めしません。</p>\n<p>標準的なコードに戻して pre_get_posts アクションフックの利用をお勧めします。</p>\n<p>参考記事<br />\n<a href=\"https://gatespace.jp/2012/09/10/modify_main_queries/\" rel=\"nofollow\">https://gatespace.jp/2012/09/10/modify_main_queries/</a></p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"gblsm\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e5%85%b1%e9%80%9a%e3%82%bf%e3%82%af%e3%82%bd%e3%83%8e%e3%83%9f%e3%83%bc%e3%81%ae%e3%82%bf%e3%83%bc%e3%83%a0%e4%b8%80%e8%a6%a7%e3%82%92%e3%82%ab%e3%82%b9%e3%82%bf%e3%83%a0%e6%8a%95%e7%a8%bf%e5%88%a5/#post-228515\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"返信先: 共通タクソノミーのターム一覧をカスタム投稿別に表示したい\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e5%85%b1%e9%80%9a%e3%82%bf%e3%82%af%e3%82%bd%e3%83%8e%e3%83%9f%e3%83%bc%e3%81%ae%e3%82%bf%e3%83%bc%e3%83%a0%e4%b8%80%e8%a6%a7%e3%82%92%e3%82%ab%e3%82%b9%e3%82%bf%e3%83%a0%e6%8a%95%e7%a8%bf%e5%88%a5/#post-228515\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 00:19:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1173:\"\n						\n						<p>gblsm 様</p>\n<p>返信ありがとうございます。<br />\n現在index.phpで表示させているのは、postとblogで取得できています。</p>\n<pre><code>\n&lt;?php\n$taxonomy = $wp_query-&gt;get_queried_object();\n$args = array(\n&#039;post_type&#039; =&gt; array(&#039;post&#039;,&#039;blog&#039;), // 複数のカスタム投稿タイプ名\n&#039;posts_per_page&#039; =&gt; 18,\n&#039;paged&#039; =&gt; $paged,\n&#039;tax_query&#039; =&gt; array(\narray(\n		&#039;taxonomy&#039; =&gt; &#039;category&#039;, // タクソノミー名\n		&#039;terms&#039; =&gt; array( $taxonomy-&gt;slug ),\n		&#039;field&#039;=&gt;&#039;slug&#039;\n)\n)\n);\n?&gt;\n&lt;?php $loop = new WP_Query( $args ); ?&gt;\n&lt;?php if($loop -&gt; have_posts()): ?&gt;\n&lt;?php while($loop -&gt; have_posts()): $loop-&gt;the_post();?&gt;\nループ内容\n&lt;?php endwhile; ?&gt; \n &lt;?php endif; ?&gt;\n</code></pre>\n<p><code>post_type&#039; =&gt; post</code>などで指定すれば1.　2.　3.の一覧表示は可能です。</p>\n<p>index.phpで表示するやり方が違うのかもしれませんが…。</p>\n<p>どうぞよろしくお願いいたします。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"tamaki75\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:223:\"https://ja.wordpress.org/support/topic/%e9%9a%8e%e5%b1%a4%e6%a7%8b%e9%80%a0%e3%81%ae%e4%bd%9c%e3%82%8a%e6%96%b9%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6%e6%95%99%e3%81%88%e3%81%a6%e3%81%8f%e3%81%a0%e3%81%95%e3%81%84/#post-228513\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"返信先: 階層構造の作り方について教えてください\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:223:\"https://ja.wordpress.org/support/topic/%e9%9a%8e%e5%b1%a4%e6%a7%8b%e9%80%a0%e3%81%ae%e4%bd%9c%e3%82%8a%e6%96%b9%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6%e6%95%99%e3%81%88%e3%81%a6%e3%81%8f%e3%81%a0%e3%81%95%e3%81%84/#post-228513\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Jul 2018 17:00:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1762:\"\n						\n						<p>こんにちは。</p>\n<p>すでに解決済みとされているようですが、補足させてください。<br />\nなお、対応済みであれば重複となりますことをご容赦ください。</p>\n<p>まず、WordPressでは、以下の分類があります。</p>\n<p>・固定ページ：塾の概要や塾長挨拶、プロフィールなどの常にメニューに表示させたい固定された情報<br />\n・投稿ページ：時系列的な情報（塾長のブログや、夏休みの夏期講習や模擬テストの日程、臨時休講日のお知らせなど）</p>\n<p>塾長のブログは投稿ページ、カテゴリーを「塾長ブログ」などのようにして扱ったほうが宜しいかと思います。<br />\nそして、ブログの一覧をグローバルメニューに設定すれば、以下のようになります。</p>\n<p>・塾の概要（固定ページ）<br />\n・塾長挨拶（固定ページ）<br />\n・塾長のプロフィール（固定ページ）</p>\n<p>・塾長ブログ（カテゴリー）<br />\n　（投稿する度に最新記事が上に増えていく・・・）<br />\n -塾長ブログ2018年5月1日<br />\n -塾長ブログ2018年4月15日<br />\n -塾長ブログ2018年4月1日<br />\n -塾長ブログ2018年３月15日<br />\n -塾長ブログ2018年３月1日</p>\n\n\n<ul id=\"bbp-reply-revision-log-228513\" class=\"bbp-reply-revision-log\">\n\n	<li id=\"bbp-reply-revision-log-228513-item-228514\" class=\"bbp-reply-revision-log-item\">\n		この返信は11 時間、 7 分前に <a href=\"https://ja.wordpress.org/support/users/yukinobu/\" title=\"Yukinobu Asakawa のプロフィールを表示\">Yukinobu Asakawa</a> さんが編集しました。\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yukinobu Asakawa\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/wp-all-import%e3%81%a7xpath%e3%81%ab%e3%82%88%e3%82%8b%e8%a6%aa%e3%83%9a%e3%83%bc%e3%82%b8%e3%81%ae%e6%8c%87%e5%ae%9a%e6%96%b9%e6%b3%95%e3%81%8c%e5%88%86%e3%81%8b%e3%82%8a%e3%81%be%e3%81%9b%e3%82%93/#post-228512\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"返信先: WP All ImportでXPathによる親ページの指定方法が分かりません\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/wp-all-import%e3%81%a7xpath%e3%81%ab%e3%82%88%e3%82%8b%e8%a6%aa%e3%83%9a%e3%83%bc%e3%82%b8%e3%81%ae%e6%8c%87%e5%ae%9a%e6%96%b9%e6%b3%95%e3%81%8c%e5%88%86%e3%81%8b%e3%82%8a%e3%81%be%e3%81%9b%e3%82%93/#post-228512\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Jul 2018 16:28:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:253:\"\n						\n						<p>こんにちは。<br />\n本件、解決済みなのでしょうか？<br />\nご質問の件ですが、親ページの指定はドロップダウンリストから指定できるようです。<br />\nご参考まで。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yukinobu Asakawa\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e5%85%b1%e9%80%9a%e3%82%bf%e3%82%af%e3%82%bd%e3%83%8e%e3%83%9f%e3%83%bc%e3%81%ae%e3%82%bf%e3%83%bc%e3%83%a0%e4%b8%80%e8%a6%a7%e3%82%92%e3%82%ab%e3%82%b9%e3%82%bf%e3%83%a0%e6%8a%95%e7%a8%bf%e5%88%a5/#post-228511\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"返信先: 共通タクソノミーのターム一覧をカスタム投稿別に表示したい\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e5%85%b1%e9%80%9a%e3%82%bf%e3%82%af%e3%82%bd%e3%83%8e%e3%83%9f%e3%83%bc%e3%81%ae%e3%82%bf%e3%83%bc%e3%83%a0%e4%b8%80%e8%a6%a7%e3%82%92%e3%82%ab%e3%82%b9%e3%82%bf%e3%83%a0%e6%8a%95%e7%a8%bf%e5%88%a5/#post-228511\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Jul 2018 15:28:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:786:\"\n						\n						<p>正確を期すために、下記のそれぞれが、できているか、まだできていないかを教えてください。</p>\n<ol>\n<li>投稿タイプ post のタクソノミー category の各タームの記事一覧を表示できている（blog と event の記事が混じらずに）（テンプレートは index.php）。</li>\n<li>投稿タイプ blog のタクソノミー category の各タームの記事一覧を表示できている（post と event の記事が混じらずに）（テンプレートは index.php）。</li>\n<li>投稿タイプ event のタクソノミー category の各タームの記事一覧を表示できている（post と blog の記事が混じらずに）（テンプレートは index.php）。</li>\n</ol>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"gblsm\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/wp-all-import%e3%81%a7xpath%e3%81%ab%e3%82%88%e3%82%8b%e8%a6%aa%e3%83%9a%e3%83%bc%e3%82%b8%e3%81%ae%e6%8c%87%e5%ae%9a%e6%96%b9%e6%b3%95%e3%81%8c%e5%88%86%e3%81%8b%e3%82%8a%e3%81%be%e3%81%9b%e3%82%93/#post-228510\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WP All ImportでXPathによる親ページの指定方法が分かりません\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/wp-all-import%e3%81%a7xpath%e3%81%ab%e3%82%88%e3%82%8b%e8%a6%aa%e3%83%9a%e3%83%bc%e3%82%b8%e3%81%ae%e6%8c%87%e5%ae%9a%e6%96%b9%e6%b3%95%e3%81%8c%e5%88%86%e3%81%8b%e3%82%8a%e3%81%be%e3%81%9b%e3%82%93/#post-228510\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Jul 2018 14:48:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:409:\"\n						\n						<p>WP All Importを使用して階層化した固定ページをインポートしようとしていますが、親ページの指定ができず困っています。</p>\n<p>XPathで指定できるようなのですが、当方にXPathの知識がなく調べても情報が見つかりません。</p>\n<p>どなたかお分かりの方がいたらご教示頂きたいです。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"webzaku\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:6:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 05 Jul 2018 04:10:40 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20130910190210\";}', 'no'),
(468, '_transient_timeout_feed_mod_6f409681938158427d2ded6eb1b9ea27', '1530807044', 'no'),
(469, '_transient_feed_mod_6f409681938158427d2ded6eb1b9ea27', '1530763844', 'no'),
(470, '_transient_timeout_dash_v2_45827e8e892dd0b85803a110fad8690f', '1530807044', 'no'),
(471, '_transient_dash_v2_45827e8e892dd0b85803a110fad8690f', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/2018/07/04/the-month-in-wordpress-june-2018/\'>今月の WordPress: 2018年6月</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/%E3%82%B5%E3%82%A4%E3%83%88%E3%81%8C%E9%96%8B%E3%81%91%E3%81%AA%E3%81%8F%E3%81%AA%E3%82%8A%E3%81%BE%E3%81%97%E3%81%9F/#post-228522\'>返信先: サイトが開けなくなりました</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/%E3%82%B5%E3%82%A4%E3%83%88%E3%81%8C%E9%96%8B%E3%81%91%E3%81%AA%E3%81%8F%E3%81%AA%E3%82%8A%E3%81%BE%E3%81%97%E3%81%9F/#post-228519\'>サイトが開けなくなりました</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/iphone-8%E3%81%A7%E7%B7%A8%E9%9B%86%E6%99%82%E3%81%AE%E4%B8%8D%E5%85%B7%E5%90%88/page/2/#post-228518\'>返信先: iPhone 8で編集時の不具合</a></li></ul></div>', 'no'),
(486, '_transient_timeout_plugin_slugs', '1530857527', 'no'),
(487, '_transient_plugin_slugs', 'a:8:{i:0;s:19:\"akismet/akismet.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:9:\"hello.php\";i:3;s:42:\"simple-membership/simple-wp-membership.php\";i:4;s:33:\"theme-my-login/theme-my-login.php\";i:5;s:25:\"usc-e-shop/usc-e-shop.php\";i:6;s:25:\"wp-members/wp-members.php\";i:7;s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";}', 'no'),
(491, '_site_transient_timeout_browser_17f3d26182d9fe752067c86c00b249fd', '1531374734', 'no'),
(492, '_site_transient_browser_17f3d26182d9fe752067c86c00b249fd', 'a:10:{s:4:\"name\";s:14:\"Microsoft Edge\";s:7:\"version\";s:8:\"17.17134\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:8:\"15.15063\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(493, '_site_transient_timeout_theme_roots', '1530771734', 'no'),
(494, '_site_transient_theme_roots', 'a:4:{s:5:\"flash\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(496, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1530780757', 'no'),
(497, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4473;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2863;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2566;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2439;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1875;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1662;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1656;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1458;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1399;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1393;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1391;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1322;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1286;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1222;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1112;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1067;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1027;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1027;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:903;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:883;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:829;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:806;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:804;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:724;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:694;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:694;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:686;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:676;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:663;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:659;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:655;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:642;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:641;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:640;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:611;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:611;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:607;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:603;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:600;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:591;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:569;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:549;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:542;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:538;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:525;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:524;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:510;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:508;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:505;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:504;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:494;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:487;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:485;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:483;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:475;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:475;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:459;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:457;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:446;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:439;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:434;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:434;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:421;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:417;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:415;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:414;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:409;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:404;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:402;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:388;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:386;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:369;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:365;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:363;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:360;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:360;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:354;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:352;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:348;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:348;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:344;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:342;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:342;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:335;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:334;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:334;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:327;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:319;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:307;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:306;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:305;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:303;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:301;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:301;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:301;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:298;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:297;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:294;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:293;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:289;}}', 'no'),
(499, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1530770202;s:7:\"checked\";a:8:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.2\";s:9:\"hello.php\";s:3:\"1.7\";s:42:\"simple-membership/simple-wp-membership.php\";s:5:\"3.6.6\";s:33:\"theme-my-login/theme-my-login.php\";s:5:\"7.0.5\";s:25:\"usc-e-shop/usc-e-shop.php\";s:6:\"1.9.11\";s:25:\"wp-members/wp-members.php\";s:7:\"3.1.9.3\";s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";s:5:\"2.8.1\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"theme-my-login/theme-my-login.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/theme-my-login\";s:4:\"slug\";s:14:\"theme-my-login\";s:6:\"plugin\";s:33:\"theme-my-login/theme-my-login.php\";s:11:\"new_version\";s:5:\"7.0.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/theme-my-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/theme-my-login.7.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/theme-my-login/assets/icon-256x256.png?rev=1891232\";s:2:\"1x\";s:67:\"https://ps.w.org/theme-my-login/assets/icon-128x128.png?rev=1891232\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/theme-my-login/assets/banner-1544x500.png?rev=1891232\";s:2:\"1x\";s:69:\"https://ps.w.org/theme-my-login/assets/banner-772x250.png?rev=1891232\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"simple-membership/simple-wp-membership.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/simple-membership\";s:4:\"slug\";s:17:\"simple-membership\";s:6:\"plugin\";s:42:\"simple-membership/simple-wp-membership.php\";s:11:\"new_version\";s:5:\"3.6.6\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/simple-membership/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/simple-membership.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/simple-membership/assets/icon-128x128.png?rev=974529\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/simple-membership/assets/banner-772x250.jpg?rev=923517\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"usc-e-shop/usc-e-shop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/usc-e-shop\";s:4:\"slug\";s:10:\"usc-e-shop\";s:6:\"plugin\";s:25:\"usc-e-shop/usc-e-shop.php\";s:11:\"new_version\";s:6:\"1.9.11\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/usc-e-shop/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/usc-e-shop.1.9.11.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:54:\"https://s.w.org/plugins/geopattern-icon/usc-e-shop.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:25:\"wp-members/wp-members.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/wp-members\";s:4:\"slug\";s:10:\"wp-members\";s:6:\"plugin\";s:25:\"wp-members/wp-members.php\";s:11:\"new_version\";s:7:\"3.1.9.3\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-members/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/wp-members.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-members/assets/icon-256x256.png?rev=1226414\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-members/assets/icon-128x128.png?rev=1226414\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/wp-members/assets/banner-772x250.png?rev=1195657\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wp-multibyte-patch\";s:4:\"slug\";s:18:\"wp-multibyte-patch\";s:6:\"plugin\";s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";s:11:\"new_version\";s:5:\"2.8.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-multibyte-patch/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wp-multibyte-patch.2.8.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/wp-multibyte-patch.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(500, 'usces_management_status', 'a:8:{s:8:\"estimate\";s:9:\"見積り\";s:10:\"adminorder\";s:12:\"管理受注\";s:9:\"noreceipt\";s:9:\"未入金\";s:9:\"receipted\";s:12:\"入金済み\";s:11:\"duringorder\";s:15:\"取り寄せ中\";s:6:\"cancel\";s:15:\"キャンセル\";s:10:\"completion\";s:12:\"発送済み\";s:7:\"pending\";s:7:\"Pending\";}', 'yes'),
(501, 'usces_zaiko_status', 'a:5:{i:0;s:12:\"在庫有り\";i:1;s:12:\"在庫僅少\";i:2;s:12:\"売り切れ\";i:3;s:12:\"入荷待ち\";i:4;s:6:\"廃盤\";}', 'yes'),
(502, 'usces_customer_status', 'a:4:{i:0;s:12:\"通常会員\";i:1;s:12:\"優良会員\";i:2;s:9:\"VIP会員\";i:99;s:12:\"不良会員\";}', 'yes'),
(503, 'usces_payment_structure', 'a:4:{s:6:\"acting\";s:18:\"代行業者決済\";s:15:\"transferAdvance\";s:24:\"振込み（前払い）\";s:16:\"transferDeferred\";s:24:\"振込み（後払い）\";s:3:\"COD\";s:12:\"代金引換\";}', 'yes'),
(504, 'usces_display_mode', 'a:3:{s:9:\"Usualsale\";s:15:\"通常営業中\";s:13:\"Promotionsale\";s:21:\"キャンペーン中\";s:15:\"Maintenancemode\";s:21:\"メンテナンス中\";}', 'yes'),
(505, 'usces_shipping_rule', 'a:10:{i:0;s:10:\"--選択--\";i:1;s:6:\"即日\";i:2;s:11:\"1～2日後\";i:3;s:11:\"2～3日後\";i:4;s:11:\"3～5日後\";i:5;s:11:\"4～6日後\";i:6;s:13:\"約1週間後\";i:7;s:13:\"約2週間後\";i:8;s:13:\"約3週間後\";i:9;s:15:\"商品入荷後\";}', 'yes'),
(506, 'usces_item_option_select', 'a:6:{i:0;s:24:\"シングルセレクト\";i:1;s:21:\"マルチセレクト\";i:2;s:12:\"テキスト\";i:3;s:18:\"ラジオボタン\";i:4;s:24:\"チェックボックス\";i:5;s:21:\"テキストエリア\";}', 'yes'),
(507, 'usces_custom_order_select', 'a:4:{i:0;s:24:\"シングルセレクト\";i:2;s:12:\"テキスト\";i:3;s:18:\"ラジオボタン\";i:4;s:24:\"チェックボックス\";}', 'yes'),
(508, 'usces_custom_customer_select', 'a:4:{i:0;s:24:\"シングルセレクト\";i:2;s:12:\"テキスト\";i:3;s:18:\"ラジオボタン\";i:4;s:24:\"チェックボックス\";}', 'yes'),
(509, 'usces_custom_delivery_select', 'a:4:{i:0;s:24:\"シングルセレクト\";i:2;s:12:\"テキスト\";i:3;s:18:\"ラジオボタン\";i:4;s:24:\"チェックボックス\";}', 'yes'),
(510, 'usces_custom_member_select', 'a:4:{i:0;s:24:\"シングルセレクト\";i:2;s:12:\"テキスト\";i:3;s:18:\"ラジオボタン\";i:4;s:24:\"チェックボックス\";}', 'yes'),
(511, 'usces_custom_field_position_select', 'a:3:{s:8:\"name_pre\";s:21:\"名前の前に挿入\";s:10:\"name_after\";s:21:\"名前の後に挿入\";s:9:\"fax_after\";s:24:\"FAX番号の後に挿入\";}', 'yes'),
(512, 'usces_currency_symbol', '￥', 'yes'),
(513, 'usces_wcid', '288abfc108782434a41bcecbc945951c', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(514, 'usces', 'a:72:{s:12:\"mail_default\";a:3:{s:5:\"title\";a:12:{s:8:\"thankyou\";s:30:\"【ご注文内容の確認】\";s:5:\"order\";s:18:\"【受注報告】\";s:7:\"inquiry\";s:36:\"【お問合せを承りました】\";s:9:\"returninq\";s:24:\"【お問合せの件】\";s:10:\"membercomp\";s:33:\"【ご入会完了のご連絡】\";s:14:\"completionmail\";s:30:\"【商品発送のご連絡】\";s:9:\"ordermail\";s:30:\"【ご注文内容の確認】\";s:10:\"changemail\";s:36:\"【ご注文内容変更の確認】\";s:11:\"receiptmail\";s:33:\"【ご入金確認のご連絡】\";s:12:\"mitumorimail\";s:18:\"【お見積り】\";s:10:\"cancelmail\";s:39:\"【ご注文キャンセルの確認】\";s:9:\"othermail\";s:2:\"[]\";}s:6:\"header\";a:12:{s:8:\"thankyou\";s:344:\"この度は Grant marriage をご利用下さいまして誠にありがとうございます。\r\n下記の通りご注文をお受けいたしましたのでご確認をお願いいたします。\r\n\r\n商品の準備ができ次第、メールにて発送のご案内をさせていただきます。よろしくお願いいたします。\r\n\r\n\";s:5:\"order\";s:47:\"Grant marriage の注文が入りました。\r\n\";s:7:\"inquiry\";s:281:\"この度は Grant marriage をご利用下さいまして誠にありがとうございます。\r\n下記の通りお問合せをお受けいたしました。\r\n\r\n準備ができ次第、メールにてご返答させていただきます。しばらくお待ちください。\r\n\r\n\";s:9:\"returninq\";s:0:\"\";s:10:\"membercomp\";s:186:\"この度は Grant marriage の会員にご登録下さいまして誠にありがとうございます。\r\n\r\n「会員情報」にて商品ご購入の履歴が確認できます。\r\n\r\n\";s:14:\"completionmail\";s:264:\"本日、ご注文の商品を発送いたしました。\r\n\r\n配送業者は○○運輸となっております。\r\n\r\n一両日中には到着する予定ですが、万が一届かない場合はご連絡ください。よろしくお願いいたします。\r\n\r\n\";s:9:\"ordermail\";s:344:\"この度は Grant marriage をご利用下さいまして誠にありがとうございます。\r\n下記の通りご注文をお受けいたしましたのでご確認をお願いいたします。\r\n\r\n商品の準備ができ次第、メールにて発送のご案内をさせていただきます。よろしくお願いいたします。\r\n\r\n\";s:10:\"changemail\";s:347:\"この度は Grant marriage をご利用下さいまして誠にありがとうございます。\r\n下記の通りご注文内容を変更いたしましたのでご確認をお願いいたします。\r\n\r\n商品の準備ができ次第、メールにて発送のご案内をさせていただきます。よろしくお願いいたします。\r\n\r\n\";s:11:\"receiptmail\";s:314:\"この度は Grant marriage をご利用下さいまして誠にありがとうございます。\r\nご入金の確認ができましたのでご連絡いたします。\r\n\r\n商品の準備ができ次第、メールにて発送のご案内をさせていただきます。よろしくお願いいたします。\r\n\r\n\";s:12:\"mitumorimail\";s:302:\"この度は Grant marriage をご利用下さいまして誠にありがとうございます。\r\n下記の通りお見積りいたしましたのでご確認をお願いいたします。\r\n\r\nお見積りの有効期限は一週間となっております。よろしくお願いいたします。\r\n\r\n\";s:10:\"cancelmail\";s:202:\"この度は Grant marriage をご利用下さいまして誠にありがとうございます。\r\nご注文のキャンセルを承りました。今後ともよろしくお願いいたします。\r\n\r\n\";s:9:\"othermail\";s:101:\"この度は Grant marriage をご利用下さいまして誠にありがとうございます。\r\n\r\n\";}s:6:\"footer\";a:12:{s:8:\"thankyou\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";s:5:\"order\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";s:7:\"inquiry\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";s:9:\"returninq\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";s:10:\"membercomp\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";s:14:\"completionmail\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";s:9:\"ordermail\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";s:10:\"changemail\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";s:11:\"receiptmail\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";s:12:\"mitumorimail\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";s:10:\"cancelmail\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";s:9:\"othermail\";s:177:\"=============================================\r\nGrant marriage\r\n\r\n〒 \r\n\r\n\r\nTEL \r\nFAX \r\nお問合せ \r\nhttp://localhost/wordpress\r\n=============================================\r\n\";}}s:25:\"usces_shipping_indication\";a:10:{i:0;i:0;i:1;i:0;i:2;i:2;i:3;i:3;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:14;i:8;i:21;i:9;i:0;}s:13:\"smtp_hostname\";s:9:\"localhost\";s:15:\"delivery_method\";a:0:{}s:15:\"shipping_charge\";a:0:{}s:18:\"membersystem_state\";s:8:\"activate\";s:18:\"membersystem_point\";s:8:\"activate\";s:7:\"use_ssl\";i:0;s:14:\"point_coverage\";i:0;s:14:\"use_javascript\";i:1;s:18:\"privilege_discount\";s:0:\"\";s:15:\"privilege_point\";s:0:\"\";s:18:\"campaign_privilege\";s:0:\"\";s:17:\"campaign_category\";i:0;s:17:\"campaign_schedule\";a:2:{s:5:\"start\";a:0:{}s:3:\"end\";a:0:{}}s:14:\"purchase_limit\";s:0:\"\";s:10:\"point_rate\";s:0:\"\";s:13:\"shipping_rule\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:8:\"address1\";s:0:\"\";s:8:\"address2\";s:0:\"\";s:8:\"zip_code\";s:0:\"\";s:10:\"tel_number\";s:0:\"\";s:10:\"fax_number\";s:0:\"\";s:10:\"order_mail\";s:0:\"\";s:12:\"inquiry_mail\";s:0:\"\";s:11:\"sender_mail\";s:0:\"\";s:10:\"error_mail\";s:0:\"\";s:9:\"copyright\";s:0:\"\";s:17:\"postage_privilege\";s:0:\"\";s:11:\"tax_display\";s:8:\"activate\";s:8:\"tax_rate\";s:0:\"\";s:10:\"tax_method\";s:7:\"cutting\";s:8:\"tax_mode\";s:7:\"include\";s:10:\"tax_target\";s:3:\"all\";s:10:\"transferee\";s:0:\"\";s:11:\"start_point\";s:0:\"\";s:12:\"point_assign\";i:1;s:8:\"cod_type\";s:3:\"fix\";s:14:\"address_search\";s:10:\"deactivate\";s:17:\"newmem_admin_mail\";i:0;s:17:\"updmem_admin_mail\";i:0;s:20:\"updmem_customer_mail\";i:0;s:17:\"delmem_admin_mail\";i:1;s:20:\"delmem_customer_mail\";i:1;s:17:\"put_customer_name\";s:1:\"0\";s:9:\"mail_data\";a:3:{s:5:\"title\";a:12:{s:8:\"thankyou\";s:0:\"\";s:5:\"order\";s:0:\"\";s:7:\"inquiry\";s:0:\"\";s:9:\"returninq\";s:0:\"\";s:10:\"membercomp\";s:0:\"\";s:14:\"completionmail\";s:0:\"\";s:9:\"ordermail\";s:0:\"\";s:10:\"changemail\";s:0:\"\";s:11:\"receiptmail\";s:0:\"\";s:12:\"mitumorimail\";s:0:\"\";s:10:\"cancelmail\";s:0:\"\";s:9:\"othermail\";s:0:\"\";}s:6:\"header\";a:12:{s:8:\"thankyou\";s:0:\"\";s:5:\"order\";s:0:\"\";s:7:\"inquiry\";s:0:\"\";s:9:\"returninq\";s:0:\"\";s:10:\"membercomp\";s:0:\"\";s:14:\"completionmail\";s:0:\"\";s:9:\"ordermail\";s:0:\"\";s:10:\"changemail\";s:0:\"\";s:11:\"receiptmail\";s:0:\"\";s:12:\"mitumorimail\";s:0:\"\";s:10:\"cancelmail\";s:0:\"\";s:9:\"othermail\";s:0:\"\";}s:6:\"footer\";a:12:{s:8:\"thankyou\";s:0:\"\";s:5:\"order\";s:0:\"\";s:7:\"inquiry\";s:0:\"\";s:9:\"returninq\";s:0:\"\";s:10:\"membercomp\";s:0:\"\";s:14:\"completionmail\";s:0:\"\";s:9:\"ordermail\";s:0:\"\";s:10:\"changemail\";s:0:\"\";s:11:\"receiptmail\";s:0:\"\";s:12:\"mitumorimail\";s:0:\"\";s:10:\"cancelmail\";s:0:\"\";s:9:\"othermail\";s:0:\"\";}}s:14:\"cart_page_data\";a:2:{s:6:\"header\";a:5:{s:4:\"cart\";s:0:\"\";s:8:\"customer\";s:0:\"\";s:8:\"delivery\";s:0:\"\";s:7:\"confirm\";s:0:\"\";s:10:\"completion\";s:0:\"\";}s:6:\"footer\";a:5:{s:4:\"cart\";s:0:\"\";s:8:\"customer\";s:0:\"\";s:8:\"delivery\";s:0:\"\";s:7:\"confirm\";s:0:\"\";s:10:\"completion\";s:0:\"\";}}s:16:\"member_page_data\";a:4:{s:6:\"header\";a:6:{s:5:\"login\";s:0:\"\";s:9:\"newmember\";s:0:\"\";s:7:\"newpass\";s:0:\"\";s:10:\"changepass\";s:0:\"\";s:10:\"memberinfo\";s:0:\"\";s:10:\"completion\";s:0:\"\";}s:6:\"footer\";a:6:{s:5:\"login\";s:0:\"\";s:9:\"newmember\";s:0:\"\";s:7:\"newpass\";s:0:\"\";s:10:\"changepass\";s:0:\"\";s:10:\"memberinfo\";s:0:\"\";s:10:\"completion\";s:0:\"\";}s:16:\"agree_member_exp\";s:0:\"\";s:17:\"agree_member_cont\";s:0:\"\";}s:12:\"agree_member\";s:0:\"\";s:22:\"shortest_delivery_time\";s:1:\"0\";s:19:\"delivery_after_days\";i:15;s:13:\"delivery_days\";a:0:{}s:19:\"delivery_time_limit\";a:2:{s:4:\"hour\";s:2:\"00\";s:3:\"min\";s:2:\"00\";}s:11:\"divide_item\";i:0;s:18:\"itemimg_anchor_rel\";s:0:\"\";s:23:\"fukugo_category_orderby\";s:2:\"ID\";s:21:\"fukugo_category_order\";s:3:\"ASC\";s:15:\"settlement_path\";s:67:\"C:\\xampp\\htdocs\\wordpress/wp-content/plugins/usc-e-shop/settlement/\";s:9:\"logs_path\";s:0:\"\";s:7:\"ssl_url\";s:0:\"\";s:13:\"ssl_url_admin\";s:0:\"\";s:10:\"inquiry_id\";s:0:\"\";s:6:\"system\";a:19:{s:15:\"orderby_itemsku\";i:0;s:15:\"orderby_itemopt\";i:0;s:10:\"front_lang\";s:2:\"ja\";s:8:\"currency\";s:2:\"JP\";s:11:\"addressform\";s:2:\"JP\";s:13:\"target_market\";a:1:{i:0;s:2:\"JP\";}s:11:\"no_cart_css\";i:0;s:16:\"dec_orderID_flag\";i:0;s:18:\"dec_orderID_prefix\";s:0:\"\";s:17:\"dec_orderID_digit\";i:8;s:13:\"subimage_rule\";i:1;s:12:\"pdf_delivery\";i:0;s:20:\"member_pass_rule_min\";i:6;s:20:\"member_pass_rule_max\";s:0:\"\";s:15:\"csv_encode_type\";i:0;s:19:\"csv_category_format\";i:0;s:17:\"settlement_backup\";i:0;s:12:\"base_country\";s:2:\"JP\";s:14:\"pointreduction\";i:1;}s:15:\"acting_settings\";a:6:{s:6:\"remise\";a:15:{s:8:\"activate\";s:0:\"\";s:4:\"plan\";s:0:\"\";s:6:\"SHOPCO\";s:0:\"\";s:6:\"HOSTID\";s:0:\"\";s:13:\"card_activate\";s:0:\"\";s:7:\"card_jb\";s:0:\"\";s:8:\"payquick\";s:0:\"\";s:6:\"howpay\";s:0:\"\";s:12:\"continuation\";s:0:\"\";s:11:\"card_pc_ope\";s:0:\"\";s:11:\"send_url_pc\";s:0:\"\";s:13:\"conv_activate\";s:0:\"\";s:9:\"S_PAYDATE\";s:0:\"\";s:11:\"conv_pc_ope\";s:0:\"\";s:15:\"send_url_cvs_pc\";s:0:\"\";}s:8:\"jpayment\";a:9:{s:8:\"activate\";s:0:\"\";s:3:\"aid\";s:0:\"\";s:13:\"card_activate\";s:0:\"\";s:7:\"card_jb\";s:0:\"\";s:13:\"conv_activate\";s:0:\"\";s:13:\"webm_activate\";s:0:\"\";s:13:\"bitc_activate\";s:0:\"\";s:14:\"suica_activate\";s:0:\"\";s:13:\"bank_activate\";s:0:\"\";}s:6:\"paypal\";a:7:{s:8:\"activate\";s:0:\"\";s:11:\"ec_activate\";s:0:\"\";s:7:\"sandbox\";s:0:\"\";s:4:\"user\";s:0:\"\";s:3:\"pwd\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:12:\"continuation\";s:0:\"\";}s:4:\"zeus\";a:26:{s:7:\"ipaddrs\";a:0:{}s:8:\"card_url\";s:0:\"\";s:14:\"card_secureurl\";s:0:\"\";s:13:\"card_tokenurl\";s:0:\"\";s:8:\"bank_url\";s:0:\"\";s:8:\"conv_url\";s:0:\"\";s:13:\"card_activate\";s:3:\"off\";s:8:\"clientip\";s:0:\"\";s:10:\"connection\";s:1:\"1\";s:7:\"3dsecur\";s:1:\"2\";s:8:\"security\";s:1:\"2\";s:7:\"authkey\";s:0:\"\";s:11:\"quickcharge\";s:0:\"\";s:5:\"batch\";s:0:\"\";s:6:\"howpay\";s:0:\"\";s:13:\"bank_activate\";s:3:\"off\";s:8:\"bank_ope\";s:0:\"\";s:13:\"clientip_bank\";s:0:\"\";s:11:\"testid_bank\";s:0:\"\";s:13:\"conv_activate\";s:3:\"off\";s:8:\"conv_ope\";s:0:\"\";s:13:\"clientip_conv\";s:0:\"\";s:11:\"testid_conv\";s:0:\"\";s:14:\"test_type_conv\";s:0:\"\";s:7:\"pay_cvs\";a:0:{}s:8:\"activate\";s:3:\"off\";}s:6:\"escott\";a:21:{s:11:\"merchant_id\";s:0:\"\";s:13:\"merchant_pass\";s:0:\"\";s:9:\"tenant_id\";s:4:\"0001\";s:3:\"ope\";s:4:\"test\";s:13:\"card_activate\";s:3:\"off\";s:5:\"seccd\";s:2:\"on\";s:10:\"token_code\";s:0:\"\";s:8:\"quickpay\";s:3:\"off\";s:9:\"operateid\";s:5:\"1Auth\";s:8:\"howtopay\";s:1:\"1\";s:13:\"conv_activate\";s:3:\"off\";s:10:\"conv_limit\";s:1:\"7\";s:13:\"conv_fee_type\";s:0:\"\";s:8:\"conv_fee\";s:0:\"\";s:21:\"conv_fee_limit_amount\";s:0:\"\";s:21:\"conv_fee_first_amount\";s:0:\"\";s:18:\"conv_fee_first_fee\";s:0:\"\";s:16:\"conv_fee_amounts\";a:0:{}s:13:\"conv_fee_fees\";a:0:{}s:16:\"conv_fee_end_fee\";s:0:\"\";s:8:\"activate\";s:3:\"off\";}s:7:\"welcart\";a:36:{s:11:\"merchant_id\";s:0:\"\";s:13:\"merchant_pass\";s:0:\"\";s:9:\"tenant_id\";s:4:\"0001\";s:8:\"auth_key\";s:0:\"\";s:3:\"ope\";s:4:\"test\";s:13:\"card_activate\";s:3:\"off\";s:16:\"foreign_activate\";s:3:\"off\";s:5:\"seccd\";s:2:\"on\";s:10:\"token_code\";s:0:\"\";s:8:\"quickpay\";s:3:\"off\";s:9:\"operateid\";s:5:\"1Auth\";s:18:\"operateid_dlseller\";s:10:\"1Gathering\";s:20:\"auto_settlement_mail\";s:2:\"on\";s:8:\"howtopay\";s:1:\"1\";s:13:\"conv_activate\";s:3:\"off\";s:10:\"conv_limit\";s:1:\"7\";s:13:\"conv_fee_type\";s:0:\"\";s:8:\"conv_fee\";s:0:\"\";s:21:\"conv_fee_limit_amount\";s:0:\"\";s:21:\"conv_fee_first_amount\";s:0:\"\";s:18:\"conv_fee_first_fee\";s:0:\"\";s:16:\"conv_fee_amounts\";a:0:{}s:13:\"conv_fee_fees\";a:0:{}s:16:\"conv_fee_end_fee\";s:0:\"\";s:16:\"atodene_activate\";s:3:\"off\";s:14:\"atodene_byitem\";s:3:\"off\";s:22:\"atodene_billing_method\";s:1:\"2\";s:16:\"atodene_fee_type\";s:0:\"\";s:11:\"atodene_fee\";s:0:\"\";s:24:\"atodene_fee_limit_amount\";s:0:\"\";s:24:\"atodene_fee_first_amount\";s:0:\"\";s:21:\"atodene_fee_first_fee\";s:0:\"\";s:19:\"atodene_fee_amounts\";a:0:{}s:16:\"atodene_fee_fees\";a:0:{}s:19:\"atodene_fee_end_fee\";s:0:\"\";s:8:\"activate\";s:3:\"off\";}}s:8:\"province\";a:1:{s:2:\"JP\";a:48:{i:0;s:10:\"--選択--\";i:1;s:9:\"北海道\";i:2;s:9:\"青森県\";i:3;s:9:\"岩手県\";i:4;s:9:\"宮城県\";i:5;s:9:\"秋田県\";i:6;s:9:\"山形県\";i:7;s:9:\"福島県\";i:8;s:9:\"茨城県\";i:9;s:9:\"栃木県\";i:10;s:9:\"群馬県\";i:11;s:9:\"埼玉県\";i:12;s:9:\"千葉県\";i:13;s:9:\"東京都\";i:14;s:12:\"神奈川県\";i:15;s:9:\"新潟県\";i:16;s:9:\"富山県\";i:17;s:9:\"石川県\";i:18;s:9:\"福井県\";i:19;s:9:\"山梨県\";i:20;s:9:\"長野県\";i:21;s:9:\"岐阜県\";i:22;s:9:\"静岡県\";i:23;s:9:\"愛知県\";i:24;s:9:\"三重県\";i:25;s:9:\"滋賀県\";i:26;s:9:\"京都府\";i:27;s:9:\"大阪府\";i:28;s:9:\"兵庫県\";i:29;s:9:\"奈良県\";i:30;s:12:\"和歌山県\";i:31;s:9:\"鳥取県\";i:32;s:9:\"島根県\";i:33;s:9:\"岡山県\";i:34;s:9:\"広島県\";i:35;s:9:\"山口県\";i:36;s:9:\"徳島県\";i:37;s:9:\"香川県\";i:38;s:9:\"愛媛県\";i:39;s:9:\"高知県\";i:40;s:9:\"福岡県\";i:41;s:9:\"佐賀県\";i:42;s:9:\"長崎県\";i:43;s:9:\"熊本県\";i:44;s:9:\"大分県\";i:45;s:9:\"宮崎県\";i:46;s:12:\"鹿児島県\";i:47;s:9:\"沖縄県\";}}s:14:\"indi_item_name\";a:4:{s:9:\"item_name\";i:1;s:9:\"item_code\";i:1;s:8:\"sku_name\";i:1;s:8:\"sku_code\";i:1;}s:13:\"pos_item_name\";a:4:{s:9:\"item_name\";i:1;s:9:\"item_code\";i:2;s:8:\"sku_name\";i:3;s:8:\"sku_code\";i:4;}s:22:\"order_acceptable_label\";s:9:\"注文可\";s:12:\"display_mode\";s:9:\"Usualsale\";s:9:\"usces_key\";s:15:\"uk5b3db31bdf143\";s:13:\"business_days\";a:2:{i:2018;a:6:{i:7;a:31:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;i:31;i:1;}i:8;a:31:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;i:31;i:1;}i:9;a:30:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;}i:10;a:31:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;i:31;i:1;}i:11;a:30:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;}i:12;a:31:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;i:31;i:1;}}i:2019;a:6:{i:1;a:31:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;i:31;i:1;}i:2;a:28:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;}i:3;a:31:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;i:31;i:1;}i:4;a:30:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;}i:5;a:31:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;i:31;i:1;}i:6;a:30:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:1;i:19;i:1;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:1;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;}}}}', 'yes'),
(515, 'usces_states', 'a:2:{s:2:\"JP\";a:48:{i:0;s:10:\"--選択--\";i:1;s:9:\"北海道\";i:2;s:9:\"青森県\";i:3;s:9:\"岩手県\";i:4;s:9:\"宮城県\";i:5;s:9:\"秋田県\";i:6;s:9:\"山形県\";i:7;s:9:\"福島県\";i:8;s:9:\"茨城県\";i:9;s:9:\"栃木県\";i:10;s:9:\"群馬県\";i:11;s:9:\"埼玉県\";i:12;s:9:\"千葉県\";i:13;s:9:\"東京都\";i:14;s:12:\"神奈川県\";i:15;s:9:\"新潟県\";i:16;s:9:\"富山県\";i:17;s:9:\"石川県\";i:18;s:9:\"福井県\";i:19;s:9:\"山梨県\";i:20;s:9:\"長野県\";i:21;s:9:\"岐阜県\";i:22;s:9:\"静岡県\";i:23;s:9:\"愛知県\";i:24;s:9:\"三重県\";i:25;s:9:\"滋賀県\";i:26;s:9:\"京都府\";i:27;s:9:\"大阪府\";i:28;s:9:\"兵庫県\";i:29;s:9:\"奈良県\";i:30;s:12:\"和歌山県\";i:31;s:9:\"鳥取県\";i:32;s:9:\"島根県\";i:33;s:9:\"岡山県\";i:34;s:9:\"広島県\";i:35;s:9:\"山口県\";i:36;s:9:\"徳島県\";i:37;s:9:\"香川県\";i:38;s:9:\"愛媛県\";i:39;s:9:\"高知県\";i:40;s:9:\"福岡県\";i:41;s:9:\"佐賀県\";i:42;s:9:\"長崎県\";i:43;s:9:\"熊本県\";i:44;s:9:\"大分県\";i:45;s:9:\"宮崎県\";i:46;s:12:\"鹿児島県\";i:47;s:9:\"沖縄県\";}s:2:\"US\";a:52:{i:0;s:12:\"-- Select --\";i:1;s:7:\"Alabama\";i:2;s:6:\"Alaska\";i:3;s:7:\"Arizona\";i:4;s:8:\"Arkansas\";i:5;s:10:\"California\";i:6;s:8:\"Colorado\";i:7;s:11:\"Connecticut\";i:8;s:8:\"Delaware\";i:9;s:20:\"District of Columbia\";i:10;s:7:\"Florida\";i:11;s:7:\"Georgia\";i:12;s:6:\"Hawaii\";i:13;s:5:\"Idaho\";i:14;s:8:\"Illinois\";i:15;s:7:\"Indiana\";i:16;s:4:\"Iowa\";i:17;s:6:\"Kansas\";i:18;s:8:\"Kentucky\";i:19;s:9:\"Louisiana\";i:20;s:5:\"Maine\";i:21;s:8:\"Maryland\";i:22;s:13:\"Massachusetts\";i:23;s:8:\"Michigan\";i:24;s:9:\"Minnesota\";i:25;s:11:\"Mississippi\";i:26;s:8:\"Missouri\";i:27;s:7:\"Montana\";i:28;s:8:\"Nebraska\";i:29;s:6:\"Nevada\";i:30;s:13:\"New Hampshire\";i:31;s:10:\"New Jersey\";i:32;s:10:\"New Mexico\";i:33;s:8:\"New York\";i:34;s:14:\"North Carolina\";i:35;s:12:\"North Dakota\";i:36;s:4:\"Ohio\";i:37;s:8:\"Oklahoma\";i:38;s:6:\"Oregon\";i:39;s:12:\"Pennsylvania\";i:40;s:12:\"Rhode Island\";i:41;s:14:\"South Carolina\";i:42;s:12:\"South Dakota\";i:43;s:9:\"Tennessee\";i:44;s:5:\"Texas\";i:45;s:4:\"Utah\";i:46;s:7:\"Vermont\";i:47;s:8:\"Virginia\";i:48;s:10:\"Washington\";i:49;s:13:\"West Virginia\";i:50;s:9:\"Wisconsin\";i:51;s:7:\"Wyoming\";}}', 'yes'),
(516, 'usces_noreceipt_status', 'a:18:{i:0;s:15:\"transferAdvance\";i:1;s:16:\"transferDeferred\";i:2;s:18:\"acting_remise_conv\";i:3;s:16:\"acting_zeus_bank\";i:4;s:16:\"acting_zeus_conv\";i:5;s:20:\"acting_jpayment_conv\";i:6;s:20:\"acting_jpayment_bank\";i:7;s:16:\"acting_sbps_conv\";i:8;s:19:\"acting_sbps_payeasy\";i:9;s:24:\"acting_digitalcheck_conv\";i:10;s:19:\"acting_mizuho_conv1\";i:11;s:19:\"acting_mizuho_conv2\";i:12;s:21:\"acting_veritrans_conv\";i:13;s:19:\"acting_paygent_conv\";i:14;s:18:\"acting_escott_conv\";i:15;s:19:\"acting_epsilon_conv\";i:16;s:19:\"acting_welcart_conv\";i:17;s:22:\"acting_welcart_atodene\";}', 'yes'),
(517, 'usces_available_settlement', 'a:17:{s:7:\"welcart\";s:10:\"WelcartPay\";s:4:\"zeus\";s:9:\"ゼウス\";s:6:\"remise\";s:12:\"ルミーズ\";s:8:\"jpayment\";s:13:\"Cloud Payment\";s:9:\"paypal_ec\";s:45:\"PayPalエクスプレスチェックアウト\";s:10:\"paypal_wpp\";s:39:\"PayPalウェブペイメントプラス\";s:4:\"sbps\";s:51:\"ソフトバンク・ペイメント・サービス\";s:7:\"telecom\";s:27:\"テレコムクレジット\";s:12:\"digitalcheck\";s:18:\"ペイデザイン\";s:6:\"mizuho\";s:24:\"みずほファクター\";s:11:\"anotherlane\";s:21:\"アナザーレーン\";s:9:\"veritrans\";s:26:\"ベリトランス Air-Web\";s:7:\"paygent\";s:18:\"ペイジェント\";s:3:\"dsk\";s:18:\"DSKペイメント\";s:6:\"escott\";s:13:\"e-SCOTT Smart\";s:5:\"yahoo\";s:21:\"Yahoo!ウォレット\";s:7:\"epsilon\";s:15:\"イプシロン\";}', 'yes'),
(519, 'usces_cart_number', '145', 'yes'),
(520, 'usces_member_number', '146', 'yes'),
(522, 'usces_item_cat_parent_id', '3', 'yes'),
(526, 'usces_db_access', '1.5', 'yes'),
(527, 'usces_db_member', '1.1', 'yes'),
(528, 'usces_db_member_meta', '1.1', 'yes'),
(529, 'usces_db_order', '2.0', 'yes'),
(530, 'usces_db_order_meta', '1.2', 'yes'),
(531, 'usces_db_ordercart', '1.0', 'yes'),
(532, 'usces_db_ordercart_meta', '1.0', 'yes'),
(533, 'usces_db_log', '1.1', 'yes'),
(534, 'usces_upgrade', '3', 'yes'),
(535, 'usces_upgrade2', '8', 'yes'),
(536, 'usces_upgrade3', '1', 'yes'),
(538, 'usces_welcartpay_keys', 'a:10:{i:0;s:32:\"c0778c9aefe850d5ac8efed5d62ed281\";i:1;s:32:\"d0771e4b42ef683223df03f9558c23fd\";i:2;s:32:\"dfef8e46f7231e7e8271f906582a4e1d\";i:3;s:32:\"ad6dbb5e26cc9db1fe5d876a75764559\";i:4;s:32:\"4fc1738fffa5aa33792ddf8e5c183f72\";i:5;s:32:\"d255b1cb2c4d20959e3c80e457e5274c\";i:6;s:32:\"479ffcfe47db920e972a8c7932e581d9\";i:7;s:32:\"43c7f4782379b05cf69bbbfb547e3312\";i:8;s:32:\"524047b0e0ad64d4f7b42c14c77758e2\";i:9;s:32:\"b848aed9c05cbf2c85d2889b274c18ec\";}', 'yes'),
(539, 'usces_ex', 'a:1:{s:6:\"system\";a:3:{s:7:\"ganbare\";a:1:{s:13:\"activate_flag\";i:0;}s:9:\"stocklink\";a:2:{s:14:\"orderedit_flag\";i:1;s:15:\"collective_flag\";i:1;}s:10:\"datalistup\";a:2:{s:14:\"orderlist_flag\";i:1;s:15:\"memberlist_flag\";i:1;}}}', 'yes'),
(540, 'widget_welcart_category', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(541, 'widget_welcart_bestseller', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(542, 'widget_welcart_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(543, 'widget_welcart_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(544, 'widget_welcart_featured', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(545, 'widget_welcart_page', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(546, 'widget_welcart_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(547, 'widget_welcart_login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(548, 'widget_welcart-blog-calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(559, 'usces_orderlist_option', 'a:2:{s:11:\"view_column\";a:39:{s:10:\"admin_memo\";i:0;s:2:\"ID\";i:0;s:7:\"deco_id\";i:1;s:10:\"order_date\";i:1;s:14:\"order_modified\";i:0;s:15:\"estimate_status\";i:0;s:14:\"process_status\";i:1;s:15:\"tracking_number\";i:0;s:12:\"payment_name\";i:1;s:11:\"wc_trans_id\";i:0;s:14:\"receipt_status\";i:1;s:16:\"item_total_price\";i:0;s:8:\"getpoint\";i:0;s:9:\"usedpoint\";i:0;s:8:\"discount\";i:0;s:15:\"shipping_charge\";i:0;s:7:\"cod_fee\";i:0;s:3:\"tax\";i:0;s:11:\"total_price\";i:1;s:11:\"deli_method\";i:1;s:9:\"deli_name\";i:0;s:9:\"deli_time\";i:0;s:9:\"deli_date\";i:0;s:12:\"delidue_date\";i:0;s:6:\"mem_id\";i:1;s:5:\"name1\";i:1;s:5:\"name2\";i:1;s:5:\"name3\";i:0;s:5:\"name4\";i:0;s:7:\"zipcode\";i:0;s:7:\"country\";i:0;s:4:\"pref\";i:1;s:8:\"address1\";i:0;s:8:\"address2\";i:0;s:8:\"address3\";i:0;s:3:\"tel\";i:0;s:3:\"fax\";i:0;s:5:\"email\";i:0;s:4:\"note\";i:0;}s:7:\"max_row\";i:50;}', 'yes'),
(599, 'category_children', 'a:1:{i:3;a:3:{i:0;i:4;i:1;i:5;i:2;i:6;}}', 'yes');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(12, 2, '_wp_trash_meta_status', 'publish'),
(13, 2, '_wp_trash_meta_time', '1529557396'),
(14, 2, '_wp_desired_post_slug', 'sample-page'),
(15, 7, '_edit_last', '1'),
(16, 7, '_wp_page_template', 'default'),
(17, 7, 'flash_page_layout', 'default-layout'),
(18, 7, 'flash_transparency', 'non-transparent'),
(19, 7, '_edit_lock', '1529558230:1'),
(20, 3, '_wp_trash_meta_status', 'draft'),
(21, 3, '_wp_trash_meta_time', '1529558302'),
(22, 3, '_wp_desired_post_slug', 'privacy-policy'),
(23, 10, '_edit_last', '1'),
(24, 10, '_wp_page_template', 'default'),
(25, 11, 'flash_page_layout', 'default-layout'),
(26, 11, 'flash_transparency', 'non-transparent'),
(27, 11, '_menu_item_type', 'post_type'),
(28, 11, '_menu_item_menu_item_parent', '0'),
(29, 11, '_menu_item_object_id', '10'),
(30, 11, '_menu_item_object', 'page'),
(31, 11, '_menu_item_target', ''),
(32, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 11, '_menu_item_xfn', ''),
(34, 11, '_menu_item_url', ''),
(35, 10, 'flash_page_layout', 'default-layout'),
(36, 10, 'flash_transparency', 'non-transparent'),
(37, 10, '_edit_lock', '1529902183:1'),
(38, 13, '_edit_last', '1'),
(39, 13, '_wp_page_template', 'default'),
(40, 14, 'flash_page_layout', 'default-layout'),
(41, 14, 'flash_transparency', 'non-transparent'),
(42, 14, '_menu_item_type', 'post_type'),
(43, 14, '_menu_item_menu_item_parent', '0'),
(44, 14, '_menu_item_object_id', '13'),
(45, 14, '_menu_item_object', 'page'),
(46, 14, '_menu_item_target', ''),
(47, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 14, '_menu_item_xfn', ''),
(49, 14, '_menu_item_url', ''),
(50, 13, 'flash_page_layout', 'default-layout'),
(51, 13, 'flash_transparency', 'non-transparent'),
(52, 13, '_edit_lock', '1530766637:1'),
(53, 7, '_wp_trash_meta_status', 'draft'),
(54, 7, '_wp_trash_meta_time', '1529558746'),
(55, 7, '_wp_desired_post_slug', ''),
(56, 17, '_edit_last', '1'),
(57, 17, '_wp_page_template', 'default'),
(58, 18, 'flash_page_layout', 'default-layout'),
(59, 18, 'flash_transparency', 'non-transparent'),
(60, 18, '_menu_item_type', 'post_type'),
(61, 18, '_menu_item_menu_item_parent', '0'),
(62, 18, '_menu_item_object_id', '17'),
(63, 18, '_menu_item_object', 'page'),
(64, 18, '_menu_item_target', ''),
(65, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 18, '_menu_item_xfn', ''),
(67, 18, '_menu_item_url', ''),
(68, 17, 'flash_page_layout', 'default-layout'),
(69, 17, 'flash_transparency', 'non-transparent'),
(70, 17, '_edit_lock', '1530510499:1'),
(71, 1, '_edit_lock', '1530515312:1'),
(72, 1, '_edit_last', '1'),
(75, 1, 'flash_page_layout', 'default-layout'),
(78, 25, '_menu_item_type', 'post_type'),
(79, 25, '_menu_item_menu_item_parent', '0'),
(80, 25, '_menu_item_object_id', '24'),
(81, 25, '_menu_item_object', 'page'),
(82, 25, '_menu_item_target', ''),
(83, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 25, '_menu_item_xfn', ''),
(85, 25, '_menu_item_url', ''),
(86, 28, '_menu_item_type', 'post_type'),
(87, 28, '_menu_item_menu_item_parent', '0'),
(88, 28, '_menu_item_object_id', '27'),
(89, 28, '_menu_item_object', 'page'),
(90, 28, '_menu_item_target', ''),
(91, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 28, '_menu_item_xfn', ''),
(93, 28, '_menu_item_url', ''),
(95, 32, '_edit_lock', '1530506379:1'),
(96, 32, '_edit_last', '1'),
(97, 32, '_wp_page_template', 'default'),
(98, 33, 'flash_page_layout', 'default-layout'),
(99, 33, 'flash_transparency', 'non-transparent'),
(100, 33, '_menu_item_type', 'post_type'),
(101, 33, '_menu_item_menu_item_parent', '0'),
(102, 33, '_menu_item_object_id', '32'),
(103, 33, '_menu_item_object', 'page'),
(104, 33, '_menu_item_target', ''),
(105, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 33, '_menu_item_xfn', ''),
(107, 33, '_menu_item_url', ''),
(108, 32, 'flash_page_layout', 'default-layout'),
(109, 32, 'flash_transparency', 'non-transparent'),
(110, 36, '_edit_lock', '1530510653:1'),
(111, 36, '_edit_last', '1'),
(112, 36, '_wp_page_template', 'default'),
(113, 37, 'flash_page_layout', 'default-layout'),
(114, 37, 'flash_transparency', 'non-transparent'),
(115, 37, '_menu_item_type', 'post_type'),
(116, 37, '_menu_item_menu_item_parent', '0'),
(117, 37, '_menu_item_object_id', '36'),
(118, 37, '_menu_item_object', 'page'),
(119, 37, '_menu_item_target', ''),
(120, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 37, '_menu_item_xfn', ''),
(122, 37, '_menu_item_url', ''),
(123, 36, 'flash_page_layout', 'default-layout'),
(124, 36, 'flash_transparency', 'non-transparent'),
(125, 24, '_wp_trash_meta_status', 'publish'),
(126, 24, '_wp_trash_meta_time', '1529902225'),
(127, 24, '_wp_desired_post_slug', 'membership-join'),
(131, 10, '_wp_trash_meta_status', 'publish'),
(132, 10, '_wp_trash_meta_time', '1529902226'),
(133, 10, '_wp_desired_post_slug', '%e3%83%ad%e3%82%b0%e3%82%a4%e3%83%b3'),
(134, 26, '_wp_trash_meta_status', 'publish'),
(135, 26, '_wp_trash_meta_time', '1529902245'),
(136, 26, '_wp_desired_post_slug', 'membership-registration'),
(137, 42, '_edit_lock', '1529902608:1'),
(138, 42, '_edit_last', '1'),
(139, 42, '_wp_page_template', 'default'),
(140, 43, 'flash_page_layout', 'default-layout'),
(141, 43, 'flash_transparency', 'non-transparent'),
(142, 43, '_menu_item_type', 'post_type'),
(143, 43, '_menu_item_menu_item_parent', '0'),
(144, 43, '_menu_item_object_id', '42'),
(145, 43, '_menu_item_object', 'page'),
(146, 43, '_menu_item_target', ''),
(147, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 43, '_menu_item_xfn', ''),
(149, 43, '_menu_item_url', ''),
(150, 42, 'flash_page_layout', 'default-layout'),
(151, 42, 'flash_transparency', 'non-transparent'),
(152, 47, '_edit_lock', '1529903650:1'),
(153, 47, '_edit_last', '1'),
(154, 47, 'block', 'true'),
(155, 47, '_wp_page_template', 'default'),
(156, 47, 'flash_page_layout', 'default-layout'),
(157, 47, 'flash_transparency', 'non-transparent'),
(158, 13, 'unblock', 'true'),
(159, 13, '_wpmem_block', '0'),
(162, 55, '_edit_lock', '1529906935:1'),
(163, 56, '_wp_attached_file', '2018/06/346b4793-e1529908210211.jpg'),
(164, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:116;s:4:\"file\";s:35:\"2018/06/346b4793-e1529908210211.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 56, '_wp_attachment_is_custom_background', 'flash'),
(166, 55, '_wp_trash_meta_status', 'publish'),
(167, 55, '_wp_trash_meta_time', '1529906937'),
(168, 57, '_wp_trash_meta_status', 'publish'),
(169, 57, '_wp_trash_meta_time', '1529907004'),
(170, 57, '_edit_lock', '1529907016:1'),
(171, 58, '_wp_trash_meta_status', 'publish'),
(172, 58, '_wp_trash_meta_time', '1529907047'),
(173, 59, '_wp_attached_file', '2018/06/cropped-346b4793-e1529908210211-2.jpg'),
(174, 59, '_wp_attachment_context', 'custom-header'),
(175, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:116;s:4:\"file\";s:45:\"2018/06/cropped-346b4793-e1529908210211-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"cropped-346b4793-e1529908210211-2-150x116.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:56;}'),
(176, 59, '_wp_attachment_custom_header_last_used_flash', '1529908304'),
(177, 59, '_wp_attachment_is_custom_header', 'flash'),
(178, 60, '_edit_lock', '1529907105:1'),
(179, 60, '_wp_trash_meta_status', 'publish'),
(180, 60, '_wp_trash_meta_time', '1529907121'),
(181, 61, '_edit_lock', '1529909015:1'),
(182, 62, '_wp_attached_file', '2018/06/cropped-346b4793-1.jpg'),
(183, 62, '_wp_attachment_context', 'custom-logo'),
(184, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:594;s:6:\"height\";i:594;s:4:\"file\";s:30:\"2018/06/cropped-346b4793-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-346b4793-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-346b4793-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"flash-square\";a:4:{s:4:\"file\";s:30:\"cropped-346b4793-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"flash-big\";a:4:{s:4:\"file\";s:30:\"cropped-346b4793-1-594x400.jpg\";s:5:\"width\";i:594;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"flash-grid\";a:4:{s:4:\"file\";s:30:\"cropped-346b4793-1-370x270.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 56, '_edit_lock', '1529908213:1'),
(186, 56, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1024;s:6:\"height\";i:594;s:4:\"file\";s:12:\"346b4793.jpg\";}s:18:\"full-1529908077341\";a:3:{s:5:\"width\";i:100;s:6:\"height\";i:58;s:4:\"file\";s:27:\"346b4793-e1529907956249.jpg\";}s:18:\"full-1529908105314\";a:3:{s:5:\"width\";i:100;s:6:\"height\";i:58;s:4:\"file\";s:27:\"346b4793-e1529908077341.jpg\";}}'),
(187, 56, '_edit_last', '1'),
(188, 63, '_wp_attached_file', '2018/06/cropped-346b4793-e1529907956249.jpg'),
(189, 63, '_wp_attachment_context', 'custom-logo'),
(190, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:58;s:6:\"height\";i:58;s:4:\"file\";s:43:\"2018/06/cropped-346b4793-e1529907956249.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 64, '_wp_attached_file', '2018/06/cropped-346b4793-e1529908210211.jpg'),
(192, 64, '_wp_attachment_context', 'custom-logo'),
(193, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:116;s:6:\"height\";i:116;s:4:\"file\";s:43:\"2018/06/cropped-346b4793-e1529908210211.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 61, '_wp_trash_meta_status', 'publish'),
(195, 61, '_wp_trash_meta_time', '1529908273'),
(196, 65, '_wp_trash_meta_status', 'publish'),
(197, 65, '_wp_trash_meta_time', '1529908329'),
(198, 65, '_edit_lock', '1529908334:1'),
(199, 66, '_wp_trash_meta_status', 'publish'),
(200, 66, '_wp_trash_meta_time', '1529908382'),
(201, 67, '_edit_lock', '1529908645:1'),
(202, 67, '_wp_trash_meta_status', 'publish'),
(203, 67, '_wp_trash_meta_time', '1529908672'),
(204, 68, '_wp_trash_meta_status', 'publish'),
(205, 68, '_wp_trash_meta_time', '1529908750'),
(209, 69, '_wp_attached_file', '2018/06/cropped-346b4793-e1529908210211-3.jpg'),
(210, 69, '_wp_attachment_context', 'custom-logo'),
(211, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:116;s:6:\"height\";i:116;s:4:\"file\";s:45:\"2018/06/cropped-346b4793-e1529908210211-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 73, '_form', '<label> お名前 (必須)\n    [text* your-name] </label>\n\n<label> メールアドレス (必須)\n    [email* your-email] </label>\n\n<label> 題名\n    [text your-subject] </label>\n\n<label> メッセージ本文\n    [textarea your-message] </label>\n\n[submit \"送信\"]'),
(213, 73, '_mail', 'a:8:{s:7:\"subject\";s:31:\"Grant marriage \"[your-subject]\"\";s:6:\"sender\";s:30:\"[your-name] <tanagojin@au.com>\";s:4:\"body\";s:228:\"差出人: [your-name] <[your-email]>\n題名: [your-subject]\n\nメッセージ本文:\n[your-message]\n\n-- \nこのメールは Grant marriage (http://localhost/wordpress) のお問い合わせフォームから送信されました\";s:9:\"recipient\";s:16:\"tanagojin@au.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(214, 73, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:31:\"Grant marriage \"[your-subject]\"\";s:6:\"sender\";s:33:\"Grant marriage <tanagojin@au.com>\";s:4:\"body\";s:166:\"メッセージ本文:\n[your-message]\n\n-- \nこのメールは Grant marriage (http://localhost/wordpress) のお問い合わせフォームから送信されました\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:26:\"Reply-To: tanagojin@au.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(215, 73, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:75:\"ありがとうございます。メッセージは送信されました。\";s:12:\"mail_sent_ng\";s:84:\"メッセージの送信に失敗しました。後でまたお試しください。\";s:16:\"validation_error\";s:81:\"入力内容に問題があります。確認して再度お試しください。\";s:4:\"spam\";s:84:\"メッセージの送信に失敗しました。後でまたお試しください。\";s:12:\"accept_terms\";s:66:\"メッセージを送信する前に承諾確認が必要です。\";s:16:\"invalid_required\";s:42:\"必須項目に入力してください。\";s:16:\"invalid_too_long\";s:48:\"入力されたテキストが長すぎます。\";s:17:\"invalid_too_short\";s:48:\"入力されたテキストが短すぎます。\";}'),
(216, 73, '_additional_settings', NULL),
(217, 73, '_locale', 'ja'),
(218, 75, '_wp_attached_file', '2018/07/346b4793.jpg'),
(219, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:594;s:4:\"file\";s:20:\"2018/07/346b4793.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"346b4793-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"346b4793-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"346b4793-768x446.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"346b4793-1024x594.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:594;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"flash-square\";a:4:{s:4:\"file\";s:20:\"346b4793-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"flash-big\";a:4:{s:4:\"file\";s:20:\"346b4793-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"flash-grid\";a:4:{s:4:\"file\";s:20:\"346b4793-370x270.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 36, '_oembed_75fa3d42d18413c143a070f1d1abe2c6', '<blockquote class=\"wp-embedded-content\" data-secret=\"hVmiPIuFtR\"><a href=\"http://localhost/wordpress/%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b/\">お問い合わせ</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"http://localhost/wordpress/%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b/embed/#?secret=hVmiPIuFtR\" data-secret=\"hVmiPIuFtR\" width=\"600\" height=\"338\" title=\"&#8220;お問い合わせ&#8221; &#8212; Grant marriage\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>'),
(221, 36, '_oembed_time_75fa3d42d18413c143a070f1d1abe2c6', '1530510604'),
(222, 79, '_edit_lock', '1530765551:1'),
(223, 79, '_edit_last', '1'),
(224, 79, '_wp_page_template', 'default'),
(225, 80, 'flash_page_layout', 'default-layout'),
(226, 80, 'flash_transparency', 'non-transparent'),
(227, 80, '_menu_item_type', 'post_type'),
(228, 80, '_menu_item_menu_item_parent', '0'),
(229, 80, '_menu_item_object_id', '79'),
(230, 80, '_menu_item_object', 'page'),
(231, 80, '_menu_item_target', ''),
(232, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(233, 80, '_menu_item_xfn', ''),
(234, 80, '_menu_item_url', ''),
(235, 79, 'flash_page_layout', 'default-layout'),
(236, 79, 'flash_transparency', 'non-transparent'),
(237, 82, '_edit_lock', '1530514205:1'),
(238, 82, '_edit_last', '1'),
(239, 82, '_wp_page_template', 'default'),
(240, 83, 'flash_page_layout', 'default-layout'),
(241, 83, 'flash_transparency', 'non-transparent'),
(242, 83, '_menu_item_type', 'post_type'),
(243, 83, '_menu_item_menu_item_parent', '0'),
(244, 83, '_menu_item_object_id', '82'),
(245, 83, '_menu_item_object', 'page'),
(246, 83, '_menu_item_target', ''),
(247, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(248, 83, '_menu_item_xfn', ''),
(249, 83, '_menu_item_url', ''),
(250, 82, 'flash_page_layout', 'default-layout'),
(251, 82, 'flash_transparency', 'non-transparent'),
(252, 79, '_oembed_ac33c87593810fcfb91323eba2d3856d', '<blockquote class=\"wp-embedded-content\" data-secret=\"pcHVIS7x57\"><a href=\"http://localhost/wordpress/%e3%83%9d%e3%82%a4%e3%83%b3%e3%83%88%e8%b3%bc%e5%85%a5/\">ポイント購入</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"http://localhost/wordpress/%e3%83%9d%e3%82%a4%e3%83%b3%e3%83%88%e8%b3%bc%e5%85%a5/embed/#?secret=pcHVIS7x57\" data-secret=\"pcHVIS7x57\" width=\"600\" height=\"338\" title=\"&#8220;ポイント購入&#8221; &#8212; Grant marriage\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>'),
(253, 79, '_oembed_time_ac33c87593810fcfb91323eba2d3856d', '1530510820'),
(254, 86, '_edit_lock', '1530511120:1'),
(255, 86, '_edit_last', '1'),
(256, 86, '_wp_page_template', 'default'),
(257, 87, 'flash_page_layout', 'default-layout'),
(258, 87, 'flash_transparency', 'non-transparent'),
(259, 87, '_menu_item_type', 'post_type'),
(260, 87, '_menu_item_menu_item_parent', '0'),
(261, 87, '_menu_item_object_id', '86'),
(262, 87, '_menu_item_object', 'page'),
(263, 87, '_menu_item_target', ''),
(264, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(265, 87, '_menu_item_xfn', ''),
(266, 87, '_menu_item_url', ''),
(267, 86, 'flash_page_layout', 'default-layout'),
(268, 86, 'flash_transparency', 'non-transparent'),
(269, 79, '_oembed_57a2f2a96f64abc2a7b80db74f5de6e0', '<blockquote class=\"wp-embedded-content\" data-secret=\"6Pw3Nw3G2K\"><a href=\"http://localhost/wordpress/%e5%a5%b3%e6%80%a7%e3%81%a8%e3%81%ae%e3%83%a1%e3%83%bc%e3%83%ab/\">女性とのメール</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"http://localhost/wordpress/%e5%a5%b3%e6%80%a7%e3%81%a8%e3%81%ae%e3%83%a1%e3%83%bc%e3%83%ab/embed/#?secret=6Pw3Nw3G2K\" data-secret=\"6Pw3Nw3G2K\" width=\"600\" height=\"338\" title=\"&#8220;女性とのメール&#8221; &#8212; Grant marriage\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>'),
(270, 79, '_oembed_time_57a2f2a96f64abc2a7b80db74f5de6e0', '1530511201'),
(271, 91, '_edit_lock', '1530511257:1'),
(272, 91, '_edit_last', '1'),
(273, 91, '_wp_page_template', 'default'),
(274, 92, 'flash_page_layout', 'default-layout'),
(275, 92, 'flash_transparency', 'non-transparent'),
(276, 92, '_menu_item_type', 'post_type'),
(277, 92, '_menu_item_menu_item_parent', '0'),
(278, 92, '_menu_item_object_id', '91'),
(279, 92, '_menu_item_object', 'page'),
(280, 92, '_menu_item_target', ''),
(281, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(282, 92, '_menu_item_xfn', ''),
(283, 92, '_menu_item_url', ''),
(284, 91, 'flash_page_layout', 'default-layout'),
(285, 91, 'flash_transparency', 'non-transparent'),
(286, 79, '_oembed_3b41748b884edf90c30ba0deecce2782', '<blockquote class=\"wp-embedded-content\" data-secret=\"uotd5KQ0oR\"><a href=\"http://localhost/wordpress/%e3%83%9e%e3%82%a4%e3%83%9a%e3%83%bc%e3%82%b8/\">マイページ</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"http://localhost/wordpress/%e3%83%9e%e3%82%a4%e3%83%9a%e3%83%bc%e3%82%b8/embed/#?secret=uotd5KQ0oR\" data-secret=\"uotd5KQ0oR\" width=\"600\" height=\"338\" title=\"&#8220;マイページ&#8221; &#8212; Grant marriage\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>'),
(287, 79, '_oembed_time_3b41748b884edf90c30ba0deecce2782', '1530511293'),
(288, 95, '_edit_lock', '1530511319:1'),
(289, 95, '_edit_last', '1'),
(290, 95, '_wp_page_template', 'default'),
(291, 96, 'flash_page_layout', 'default-layout'),
(292, 96, 'flash_transparency', 'non-transparent'),
(293, 96, '_menu_item_type', 'post_type'),
(294, 96, '_menu_item_menu_item_parent', '0'),
(295, 96, '_menu_item_object_id', '95'),
(296, 96, '_menu_item_object', 'page'),
(297, 96, '_menu_item_target', ''),
(298, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(299, 96, '_menu_item_xfn', ''),
(300, 96, '_menu_item_url', ''),
(301, 95, 'flash_page_layout', 'default-layout'),
(302, 95, 'flash_transparency', 'non-transparent'),
(303, 79, '_oembed_3e5db08be1d362d830605e202c84022a', '<blockquote class=\"wp-embedded-content\" data-secret=\"vZG7e3Ofyh\"><a href=\"http://localhost/wordpress/%e6%9b%b8%e9%a1%9e%e4%bd%9c%e6%88%90%e4%be%8bdl/\">書類作成例DL</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"http://localhost/wordpress/%e6%9b%b8%e9%a1%9e%e4%bd%9c%e6%88%90%e4%be%8bdl/embed/#?secret=vZG7e3Ofyh\" data-secret=\"vZG7e3Ofyh\" width=\"600\" height=\"338\" title=\"&#8220;書類作成例DL&#8221; &#8212; Grant marriage\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>'),
(304, 79, '_oembed_time_3e5db08be1d362d830605e202c84022a', '1530511334'),
(305, 99, '_edit_lock', '1530765698:1'),
(306, 99, '_edit_last', '1'),
(307, 99, '_wp_page_template', 'default'),
(308, 100, 'flash_page_layout', 'default-layout'),
(309, 100, 'flash_transparency', 'non-transparent'),
(310, 100, '_menu_item_type', 'post_type'),
(311, 100, '_menu_item_menu_item_parent', '0'),
(312, 100, '_menu_item_object_id', '99'),
(313, 100, '_menu_item_object', 'page'),
(314, 100, '_menu_item_target', ''),
(315, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(316, 100, '_menu_item_xfn', ''),
(317, 100, '_menu_item_url', ''),
(318, 99, 'flash_page_layout', 'default-layout'),
(319, 99, 'flash_transparency', 'non-transparent'),
(320, 108, '_edit_lock', '1530765787:1'),
(321, 108, '_edit_last', '1'),
(322, 108, '_wp_page_template', 'default'),
(323, 109, 'flash_page_layout', 'default-layout'),
(324, 109, 'flash_transparency', 'non-transparent'),
(325, 109, '_menu_item_type', 'post_type'),
(326, 109, '_menu_item_menu_item_parent', '0'),
(327, 109, '_menu_item_object_id', '108'),
(328, 109, '_menu_item_object', 'page'),
(329, 109, '_menu_item_target', ''),
(330, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(331, 109, '_menu_item_xfn', ''),
(332, 109, '_menu_item_url', ''),
(333, 108, 'flash_page_layout', 'default-layout'),
(334, 108, 'flash_transparency', 'non-transparent'),
(335, 111, '_edit_lock', '1530766011:1'),
(336, 111, '_edit_last', '1'),
(337, 111, '_wp_page_template', 'default'),
(338, 112, 'flash_page_layout', 'default-layout'),
(339, 112, 'flash_transparency', 'non-transparent'),
(340, 112, '_menu_item_type', 'post_type'),
(341, 112, '_menu_item_menu_item_parent', '0'),
(342, 112, '_menu_item_object_id', '111'),
(343, 112, '_menu_item_object', 'page'),
(344, 112, '_menu_item_target', ''),
(345, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(346, 112, '_menu_item_xfn', ''),
(347, 112, '_menu_item_url', ''),
(348, 111, 'flash_page_layout', 'default-layout'),
(349, 111, 'flash_transparency', 'non-transparent'),
(350, 114, '_edit_lock', '1530764309:1'),
(351, 116, '_edit_lock', '1530764828:1'),
(352, 116, '_edit_last', '1'),
(353, 116, '_wp_page_template', 'default'),
(354, 117, 'flash_page_layout', 'default-layout'),
(355, 117, 'flash_transparency', 'non-transparent'),
(356, 117, '_menu_item_type', 'post_type'),
(357, 117, '_menu_item_menu_item_parent', '0'),
(358, 117, '_menu_item_object_id', '116'),
(359, 117, '_menu_item_object', 'page'),
(360, 117, '_menu_item_target', ''),
(361, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(362, 117, '_menu_item_xfn', ''),
(363, 117, '_menu_item_url', ''),
(364, 116, 'flash_page_layout', 'default-layout'),
(365, 116, 'flash_transparency', 'non-transparent'),
(366, 119, '_edit_lock', '1530764874:1'),
(367, 119, '_edit_last', '1'),
(368, 119, '_wp_page_template', 'default'),
(369, 120, 'flash_page_layout', 'default-layout'),
(370, 120, 'flash_transparency', 'non-transparent'),
(371, 120, '_menu_item_type', 'post_type'),
(372, 120, '_menu_item_menu_item_parent', '0'),
(373, 120, '_menu_item_object_id', '119'),
(374, 120, '_menu_item_object', 'page'),
(375, 120, '_menu_item_target', ''),
(376, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(377, 120, '_menu_item_xfn', ''),
(378, 120, '_menu_item_url', ''),
(379, 119, 'flash_page_layout', 'default-layout'),
(380, 119, 'flash_transparency', 'non-transparent'),
(381, 122, '_edit_lock', '1530764898:1'),
(382, 122, '_edit_last', '1'),
(383, 122, '_wp_page_template', 'default'),
(384, 123, 'flash_page_layout', 'default-layout'),
(385, 123, 'flash_transparency', 'non-transparent'),
(386, 123, '_menu_item_type', 'post_type'),
(387, 123, '_menu_item_menu_item_parent', '0'),
(388, 123, '_menu_item_object_id', '122'),
(389, 123, '_menu_item_object', 'page'),
(390, 123, '_menu_item_target', ''),
(391, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(392, 123, '_menu_item_xfn', ''),
(393, 123, '_menu_item_url', ''),
(394, 122, 'flash_page_layout', 'default-layout'),
(395, 122, 'flash_transparency', 'non-transparent'),
(396, 125, '_edit_lock', '1530764930:1'),
(397, 125, '_edit_last', '1'),
(398, 125, '_wp_page_template', 'default'),
(399, 126, 'flash_page_layout', 'default-layout'),
(400, 126, 'flash_transparency', 'non-transparent'),
(401, 126, '_menu_item_type', 'post_type'),
(402, 126, '_menu_item_menu_item_parent', '0'),
(403, 126, '_menu_item_object_id', '125'),
(404, 126, '_menu_item_object', 'page'),
(405, 126, '_menu_item_target', ''),
(406, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(407, 126, '_menu_item_xfn', ''),
(408, 126, '_menu_item_url', ''),
(409, 125, 'flash_page_layout', 'default-layout'),
(410, 125, 'flash_transparency', 'non-transparent'),
(411, 119, '_wp_trash_meta_status', 'publish'),
(412, 119, '_wp_trash_meta_time', '1530765152'),
(413, 119, '_wp_desired_post_slug', '%e3%82%af%e3%83%ac%e3%82%b8%e3%83%83%e3%83%88%e3%82%ab%e3%83%bc%e3%83%89'),
(414, 116, '_wp_trash_meta_status', 'publish'),
(415, 116, '_wp_trash_meta_time', '1530765152'),
(416, 116, '_wp_desired_post_slug', '%e3%83%97%e3%83%ad%e3%83%95%e3%82%a3%e3%83%bc%e3%83%ab%ef%bc%88%e7%bf%bb%e8%a8%b3%ef%bc%89'),
(417, 82, '_wp_trash_meta_status', 'publish'),
(418, 82, '_wp_trash_meta_time', '1530765152'),
(419, 82, '_wp_desired_post_slug', '%e3%83%9d%e3%82%a4%e3%83%b3%e3%83%88%e8%b3%bc%e5%85%a5'),
(420, 122, '_wp_trash_meta_status', 'publish'),
(421, 122, '_wp_trash_meta_time', '1530765152'),
(422, 122, '_wp_desired_post_slug', '%e3%83%a1%e3%83%bc%e3%83%ab%ef%bc%88%e7%bf%bb%e8%a8%b3%ef%bc%89'),
(423, 42, '_wp_trash_meta_status', 'publish'),
(424, 42, '_wp_trash_meta_time', '1530765152'),
(425, 42, '_wp_desired_post_slug', '%e3%83%a1%e3%83%b3%e3%83%90%e3%83%bc%e3%82%ba%e3%83%9a%e3%83%bc%e3%82%b8'),
(426, 47, '_wp_trash_meta_status', 'publish'),
(427, 47, '_wp_trash_meta_time', '1530765153'),
(428, 47, '_wp_desired_post_slug', '%e4%bc%9a%e5%93%a1%e3%81%98%e3%82%83%e3%81%aa%e3%81%84%e3%81%a8%e8%a6%8b%e3%82%8c%e3%81%aa%e3%81%84%e3%83%9a%e3%83%bc%e3%82%b8'),
(429, 86, '_wp_trash_meta_status', 'publish'),
(430, 86, '_wp_trash_meta_time', '1530765153'),
(431, 86, '_wp_desired_post_slug', '%e5%a5%b3%e6%80%a7%e3%81%a8%e3%81%ae%e3%83%a1%e3%83%bc%e3%83%ab'),
(432, 95, '_wp_trash_meta_status', 'publish'),
(433, 95, '_wp_trash_meta_time', '1530765153'),
(434, 95, '_wp_desired_post_slug', '%e6%9b%b8%e9%a1%9e%e4%bd%9c%e6%88%90%e4%be%8bdl'),
(435, 125, '_wp_trash_meta_status', 'publish'),
(436, 125, '_wp_trash_meta_time', '1530765153'),
(437, 125, '_wp_desired_post_slug', '%e8%ba%ab%e5%88%86%e8%a8%bc%e6%98%8e%e5%b9%b4%e5%8f%8e%e8%a8%bc%e6%98%8e%e3%82%a2%e3%83%83%e3%83%97%ef%bc%88%e5%af%a9%e6%9f%bb%ef%bc%89'),
(438, 91, '_wp_trash_meta_status', 'publish'),
(439, 91, '_wp_trash_meta_time', '1530765225'),
(440, 91, '_wp_desired_post_slug', '%e3%83%9e%e3%82%a4%e3%83%9a%e3%83%bc%e3%82%b8'),
(441, 134, '_edit_lock', '1530767955:1'),
(442, 134, '_edit_last', '1'),
(443, 134, '_wp_page_template', 'default'),
(444, 135, 'flash_page_layout', 'default-layout'),
(445, 135, 'flash_transparency', 'non-transparent'),
(446, 135, '_menu_item_type', 'post_type'),
(447, 135, '_menu_item_menu_item_parent', '0'),
(448, 135, '_menu_item_object_id', '134'),
(449, 135, '_menu_item_object', 'page'),
(450, 135, '_menu_item_target', ''),
(451, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(452, 135, '_menu_item_xfn', ''),
(453, 135, '_menu_item_url', ''),
(454, 134, 'flash_page_layout', 'default-layout'),
(455, 134, 'flash_transparency', 'non-transparent'),
(456, 137, '_edit_lock', '1530765771:1'),
(457, 137, '_edit_last', '1'),
(458, 137, '_wp_page_template', 'default'),
(459, 138, 'flash_page_layout', 'default-layout'),
(460, 138, 'flash_transparency', 'non-transparent'),
(461, 138, '_menu_item_type', 'post_type'),
(462, 138, '_menu_item_menu_item_parent', '0'),
(463, 138, '_menu_item_object_id', '137'),
(464, 138, '_menu_item_object', 'page'),
(465, 138, '_menu_item_target', ''),
(466, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(467, 138, '_menu_item_xfn', ''),
(468, 138, '_menu_item_url', ''),
(469, 137, 'flash_page_layout', 'default-layout'),
(470, 137, 'flash_transparency', 'non-transparent'),
(471, 140, '_edit_lock', '1530765842:1'),
(472, 140, '_edit_last', '1'),
(473, 140, '_wp_page_template', 'default'),
(474, 141, 'flash_page_layout', 'default-layout'),
(475, 141, 'flash_transparency', 'non-transparent'),
(476, 141, '_menu_item_type', 'post_type'),
(477, 141, '_menu_item_menu_item_parent', '0'),
(478, 141, '_menu_item_object_id', '140'),
(479, 141, '_menu_item_object', 'page'),
(480, 141, '_menu_item_target', ''),
(481, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(482, 141, '_menu_item_xfn', ''),
(483, 141, '_menu_item_url', ''),
(484, 140, 'flash_page_layout', 'default-layout'),
(485, 140, 'flash_transparency', 'non-transparent'),
(486, 145, '_wp_page_template', 'uscescart.php'),
(487, 146, '_wp_page_template', 'uscesmember.php'),
(488, 149, '_edit_lock', '1530770938:1'),
(489, 149, '_edit_last', '1'),
(490, 149, '_wp_page_template', 'default'),
(491, 150, 'flash_page_layout', 'default-layout'),
(492, 150, 'flash_transparency', 'non-transparent'),
(493, 150, '_menu_item_type', 'post_type'),
(494, 150, '_menu_item_menu_item_parent', '0'),
(495, 150, '_menu_item_object_id', '149'),
(496, 150, '_menu_item_object', 'page'),
(497, 150, '_menu_item_target', ''),
(498, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(499, 150, '_menu_item_xfn', ''),
(500, 150, '_menu_item_url', ''),
(501, 149, 'flash_page_layout', 'default-layout'),
(502, 149, 'flash_transparency', 'non-transparent');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-21 13:38:34', '2018-06-21 04:38:34', '当サイトでは、日本人男性とロシア人の結婚を支援します。\r\n\r\n&nbsp;', '日本人男性と外国人女性の結婚を支援します。', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-25 15:50:27', '2018-06-25 06:50:27', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-21 13:38:34', '2018-06-21 04:38:34', 'これはサンプルページです。同じ位置に固定され、(多くのテーマでは) サイトナビゲーションメニューに含まれるため、ブログ投稿とは異なります。サイト訪問者に対して自分のことを説明する自己紹介ページを作成するのが一般的です。たとえば以下のようなものです。\n\n<blockquote>はじめまして。昼間はバイク便のメッセンジャーとして働いていますが、俳優志望でもあります。これは僕のサイトです。ロサンゼルスに住み、ジャックという名前のかわいい犬を飼っています。好きなものはピニャコラーダ、そして通り雨に濡れること。</blockquote>\n\nまたは、このようなものです。\n\n<blockquote>XYZ 小道具株式会社は1971年の創立以来、高品質の小道具を皆様にご提供させていただいています。ゴッサム・シティに所在する当社では2,000名以上の社員が働いており、様々な形で地域のコミュニティへ貢献しています。</blockquote>\n\n新しく WordPress ユーザーになった方は、<a href=\"http://localhost/wordpress/wp-admin/\">ダッシュボード</a>へ行ってこのページを削除し、独自のコンテンツを含む新しいページを作成してください。それでは、お楽しみください !', 'サンプルページ', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-06-21 14:03:16', '2018-06-21 05:03:16', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-21 13:38:34', '2018-06-21 04:38:34', '<h2>私たちについて</h2><p>私たちのサイトアドレスは http://localhost/wordpress です。</p><h2>このサイトが収集する個人データと収集の理由</h2><h3>コメント</h3><p>訪問者がこのサイトにコメントを残す際、コメントフォームに表示されているデータ、そしてスパム検出に役立てるための IP アドレスとブラウザーユーザーエージェント文字列を収集します。</p><p>メールアドレスから作成される匿名化された (「ハッシュ」とも呼ばれる) 文字列は、あなたが Gravatar サービスを使用中かどうか確認するため同サービスに提供されることがあります。同サービスのプライバシーポリシーは https://automattic.com/privacy/ にあります。コメントが承認されると、プロフィール画像がコメントとともに一般公開されます。</p><h3>メディア</h3><p>サイトに画像をアップロードする際、位置情報 (EXIF GPS) を含む画像をアップロードするべきではありません。サイトの訪問者は、サイトから画像をダウンロードして位置データを抽出することができます。</p><h3>お問い合わせフォーム</h3><h3>Cookie</h3><p>サイトにコメントを残す際、お名前、メールアドレス、サイトを Cookie に保存することにオプトインできます。これはあなたの便宜のためであり、他のコメントを残す際に詳細情報を再入力する手間を省きます。この Cookie は1年間保持されます。</p><p>もしあなたがアカウントを持っており、このサイトにログインすると、私たちはあなたのブラウザーが Cookie を受け入れられるかを判断するために一時 Cookie を設定します。この Cookie は個人データを含んでおらず、ブラウザーを閉じた時に廃棄されます。</p><p>ログインの際さらに、ログイン情報と画面表示情報を保持するため、私たちはいくつかの Cookie を設定します。ログイン Cookie は2日間、画面表示オプション Cookie は1年間保持されます。「ログイン状態を保存する」を選択した場合、ログイン情報は2週間維持されます。ログアウトするとログイン Cookie は消去されます。</p><p>もし投稿を編集または公開すると、さらなる Cookie がブラウザーに保存されます。この Cookie は個人データを含まず、単に変更した投稿の ID を示すものです。1日で有効期限が切れます。</p><h3>他サイトからの埋め込みコンテンツ</h3><p>このサイトの投稿には埋め込みコンテンツ (動画、画像、投稿など) が含まれます。他サイトからの埋め込みコンテンツは、訪問者がそのサイトを訪れた場合とまったく同じように振る舞います。</p><p>これらのサイトは、あなたのデータを収集したり、Cookie を使ったり、サードパーティによる追加トラッキングを埋め込んだり、あなたと埋め込みコンテンツとのやりとりを監視したりすることがあります。アカウントを使ってそのサイトにログイン中の場合、埋め込みコンテンツとのやりとりのトラッキングも含まれます。</p><h3>アナリティクス</h3><h2>あなたのデータの共有先</h2><h2>データを保存する期間</h2><p>あなたがコメントを残すと、コメントとそのメタデータが無期限に保持されます。これは、モデレーションキューにコメントを保持しておく代わりに、フォローアップのコメントを自動的に認識し承認できるようにするためです。</p><p>このサイトに登録したユーザーがいる場合、その方がユーザープロフィールページで提供した個人情報を保存します。すべてのユーザーは自分の個人情報を表示、編集、削除することができます (ただしユーザー名は変更することができません)。サイト管理者もそれらの情報を表示、編集できます。</p><h2>データに対するあなたの権利</h2><p>このサイトのアカウントを持っているか、サイトにコメントを残したことがある場合、私たちが保持するあなたについての個人データ (提供したすべてのデータを含む) をエクスポートファイルとして受け取るリクエストを行うことができます。また、個人データの消去リクエストを行うこともできます。これには、管理、法律、セキュリティ目的のために保持する義務があるデータは含まれません。</p><h2>あなたのデータの送信先</h2><p>訪問者によるコメントは、自動スパム検出サービスを通じて確認を行う場合があります。</p><h2>あなたの連絡先情報</h2><h2>追加情報</h2><h3>データの保護方法</h3><h3>データ漏洩対策手順</h3><h3>データ送信元のサードパーティ</h3><h3>ユーザーデータに対して行う自動的な意思決定およびプロファイリング</h3><h3>業界規制の開示要件</h3>', 'プライバシーポリシー', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-06-21 14:18:22', '2018-06-21 05:18:22', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(6, 1, '2018-06-21 14:03:16', '2018-06-21 05:03:16', 'これはサンプルページです。同じ位置に固定され、(多くのテーマでは) サイトナビゲーションメニューに含まれるため、ブログ投稿とは異なります。サイト訪問者に対して自分のことを説明する自己紹介ページを作成するのが一般的です。たとえば以下のようなものです。\n\n<blockquote>はじめまして。昼間はバイク便のメッセンジャーとして働いていますが、俳優志望でもあります。これは僕のサイトです。ロサンゼルスに住み、ジャックという名前のかわいい犬を飼っています。好きなものはピニャコラーダ、そして通り雨に濡れること。</blockquote>\n\nまたは、このようなものです。\n\n<blockquote>XYZ 小道具株式会社は1971年の創立以来、高品質の小道具を皆様にご提供させていただいています。ゴッサム・シティに所在する当社では2,000名以上の社員が働いており、様々な形で地域のコミュニティへ貢献しています。</blockquote>\n\n新しく WordPress ユーザーになった方は、<a href=\"http://localhost/wordpress/wp-admin/\">ダッシュボード</a>へ行ってこのページを削除し、独自のコンテンツを含む新しいページを作成してください。それでは、お楽しみください !', 'サンプルページ', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-21 14:03:16', '2018-06-21 05:03:16', '', 2, 'http://localhost/wordpress/2018/06/21/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-06-21 14:25:46', '2018-06-21 05:25:46', '', 'ログイン', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-06-21 14:25:46', '2018-06-21 05:25:46', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-06-21 14:17:09', '2018-06-21 05:17:09', '', 'ログイン', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-06-21 14:17:09', '2018-06-21 05:17:09', '', 7, 'http://localhost/wordpress/2018/06/21/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-06-21 14:18:22', '2018-06-21 05:18:22', '<h2>私たちについて</h2><p>私たちのサイトアドレスは http://localhost/wordpress です。</p><h2>このサイトが収集する個人データと収集の理由</h2><h3>コメント</h3><p>訪問者がこのサイトにコメントを残す際、コメントフォームに表示されているデータ、そしてスパム検出に役立てるための IP アドレスとブラウザーユーザーエージェント文字列を収集します。</p><p>メールアドレスから作成される匿名化された (「ハッシュ」とも呼ばれる) 文字列は、あなたが Gravatar サービスを使用中かどうか確認するため同サービスに提供されることがあります。同サービスのプライバシーポリシーは https://automattic.com/privacy/ にあります。コメントが承認されると、プロフィール画像がコメントとともに一般公開されます。</p><h3>メディア</h3><p>サイトに画像をアップロードする際、位置情報 (EXIF GPS) を含む画像をアップロードするべきではありません。サイトの訪問者は、サイトから画像をダウンロードして位置データを抽出することができます。</p><h3>お問い合わせフォーム</h3><h3>Cookie</h3><p>サイトにコメントを残す際、お名前、メールアドレス、サイトを Cookie に保存することにオプトインできます。これはあなたの便宜のためであり、他のコメントを残す際に詳細情報を再入力する手間を省きます。この Cookie は1年間保持されます。</p><p>もしあなたがアカウントを持っており、このサイトにログインすると、私たちはあなたのブラウザーが Cookie を受け入れられるかを判断するために一時 Cookie を設定します。この Cookie は個人データを含んでおらず、ブラウザーを閉じた時に廃棄されます。</p><p>ログインの際さらに、ログイン情報と画面表示情報を保持するため、私たちはいくつかの Cookie を設定します。ログイン Cookie は2日間、画面表示オプション Cookie は1年間保持されます。「ログイン状態を保存する」を選択した場合、ログイン情報は2週間維持されます。ログアウトするとログイン Cookie は消去されます。</p><p>もし投稿を編集または公開すると、さらなる Cookie がブラウザーに保存されます。この Cookie は個人データを含まず、単に変更した投稿の ID を示すものです。1日で有効期限が切れます。</p><h3>他サイトからの埋め込みコンテンツ</h3><p>このサイトの投稿には埋め込みコンテンツ (動画、画像、投稿など) が含まれます。他サイトからの埋め込みコンテンツは、訪問者がそのサイトを訪れた場合とまったく同じように振る舞います。</p><p>これらのサイトは、あなたのデータを収集したり、Cookie を使ったり、サードパーティによる追加トラッキングを埋め込んだり、あなたと埋め込みコンテンツとのやりとりを監視したりすることがあります。アカウントを使ってそのサイトにログイン中の場合、埋め込みコンテンツとのやりとりのトラッキングも含まれます。</p><h3>アナリティクス</h3><h2>あなたのデータの共有先</h2><h2>データを保存する期間</h2><p>あなたがコメントを残すと、コメントとそのメタデータが無期限に保持されます。これは、モデレーションキューにコメントを保持しておく代わりに、フォローアップのコメントを自動的に認識し承認できるようにするためです。</p><p>このサイトに登録したユーザーがいる場合、その方がユーザープロフィールページで提供した個人情報を保存します。すべてのユーザーは自分の個人情報を表示、編集、削除することができます (ただしユーザー名は変更することができません)。サイト管理者もそれらの情報を表示、編集できます。</p><h2>データに対するあなたの権利</h2><p>このサイトのアカウントを持っているか、サイトにコメントを残したことがある場合、私たちが保持するあなたについての個人データ (提供したすべてのデータを含む) をエクスポートファイルとして受け取るリクエストを行うことができます。また、個人データの消去リクエストを行うこともできます。これには、管理、法律、セキュリティ目的のために保持する義務があるデータは含まれません。</p><h2>あなたのデータの送信先</h2><p>訪問者によるコメントは、自動スパム検出サービスを通じて確認を行う場合があります。</p><h2>あなたの連絡先情報</h2><h2>追加情報</h2><h3>データの保護方法</h3><h3>データ漏洩対策手順</h3><h3>データ送信元のサードパーティ</h3><h3>ユーザーデータに対して行う自動的な意思決定およびプロファイリング</h3><h3>業界規制の開示要件</h3>', 'プライバシーポリシー', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-06-21 14:18:22', '2018-06-21 05:18:22', '', 3, 'http://localhost/wordpress/2018/06/21/3-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-06-21 14:24:20', '2018-06-21 05:24:20', '', 'ログイン', '', 'trash', 'closed', 'closed', '', '%e3%83%ad%e3%82%b0%e3%82%a4%e3%83%b3__trashed', '', '', '2018-06-25 13:50:26', '2018-06-25 04:50:26', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-06-21 14:24:20', '2018-06-21 05:24:20', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2018-06-21 14:28:05', '2018-06-21 05:28:05', '', 0, 'http://localhost/wordpress/2018/06/21/11/', 2, 'nav_menu_item', '', 0),
(12, 1, '2018-06-21 14:24:20', '2018-06-21 05:24:20', '', 'ログイン', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-06-21 14:24:20', '2018-06-21 05:24:20', '', 10, 'http://localhost/wordpress/2018/06/21/10-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-06-21 14:24:59', '2018-06-21 05:24:59', '[contact-form-7 id=\"73\" title=\"コンタクトフォーム 1\"]\r\n\r\nFAQ\r\n\r\nメールフォーム', 'お問い合わせ', '', 'publish', 'closed', 'closed', '', '%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b', '', '', '2018-07-05 13:57:16', '2018-07-05 04:57:16', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-06-21 14:24:59', '2018-06-21 05:24:59', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2018-06-21 14:28:05', '2018-06-21 05:28:05', '', 0, 'http://localhost/wordpress/2018/06/21/14/', 3, 'nav_menu_item', '', 0),
(15, 1, '2018-06-21 14:24:59', '2018-06-21 05:24:59', '', 'サイト概要', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-06-21 14:24:59', '2018-06-21 05:24:59', '', 13, 'http://localhost/wordpress/2018/06/21/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-06-21 14:25:16', '2018-06-21 05:25:16', '', 'お問い合わせ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-06-21 14:25:16', '2018-06-21 05:25:16', '', 13, 'http://localhost/wordpress/2018/06/21/13-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-06-21 14:26:14', '2018-06-21 05:26:14', '外国人女性に魅力を感じている方へ！\r\n\r\n日本人女性の彼女ができないあなたへ\r\n\r\n&nbsp;\r\n\r\n知っていますか？日本人男性の約３割が未婚のまま生涯を終えます。\r\n\r\nそんなあなたへ！\r\n\r\n私たちが全力でサポートします！\r\n\r\n\r\n\r\n\r\nシステム<img src=\"http://localhost/wordpress/wp-content/uploads/2018/07/346b4793-300x174.jpg\" alt=\"\" width=\"300\" height=\"174\" class=\"alignnone size-medium wp-image-75\" />', 'サイト概要', '', 'publish', 'closed', 'closed', '', '%e3%82%b5%e3%82%a4%e3%83%88%e6%a6%82%e8%a6%81', '', '', '2018-07-02 14:36:55', '2018-07-02 05:36:55', '', 0, 'http://localhost/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-06-21 14:26:14', '2018-06-21 05:26:14', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-06-21 14:28:05', '2018-06-21 05:28:05', '', 0, 'http://localhost/wordpress/2018/06/21/18/', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-06-21 14:26:14', '2018-06-21 05:26:14', '', 'サイト概要', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-06-21 14:26:14', '2018-06-21 05:26:14', '', 17, 'http://localhost/wordpress/2018/06/21/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-06-25 14:49:18', '2018-06-25 05:49:18', '当サイトでは、日本人男性とロシア人の結婚を支援します。\n\n&nbsp;', '日本人男性と外国人女性の結婚を支援します。', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-06-25 14:49:18', '2018-06-25 05:49:18', '', 1, 'http://localhost/wordpress/2018/06/21/1-autosave-v1/', 0, 'revision', '', 0),
(21, 1, '2018-06-21 15:00:37', '2018-06-21 06:00:37', '日本人男性とロシア人の結婚を支援します。', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-06-21 15:00:37', '2018-06-21 06:00:37', '', 1, 'http://localhost/wordpress/2018/06/21/1-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-06-21 15:02:30', '2018-06-21 06:02:30', '当サイトでは、日本人男性とロシア人の結婚を支援します。\r\n\r\n&nbsp;', '日本人男性とロシア人の結婚を支援します。', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-06-21 15:02:30', '2018-06-21 06:02:30', '', 1, 'http://localhost/wordpress/2018/06/21/1-revision-v1/', 0, 'revision', '', 0),
(24, 2, '2018-06-21 15:35:07', '2018-06-21 06:35:07', '<p style=\"color:red;font-weight:bold;\">This page and the content has been automatically generated for you to give you a basic idea of how a \"Join Us\" page should look like. You can customize this page however you like it by editing this page from your WordPress page editor.</p><p style=\"font-weight:bold;\">If you end up changing the URL of this page then make sure to update the URL value in the settings menu of the plugin.</p><p style=\"border-top:1px solid #ccc;padding-top:10px;margin-top:10px;\"></p>\r\n			<strong>Free Membership</strong>\r\n			<br />\r\n			You get unlimited access to free membership content\r\n			<br />\r\n			<em><strong>Price: Free!</strong></em>\r\n			<br /><br />Link the following image to go to the Registration Page if you want your visitors to be able to create a free membership account<br /><br />\r\n			<img title=\"Join Now\" src=\"http://localhost/wordpress/wp-content/plugins/simple-membership/images/join-now-button-image.gif\" alt=\"Join Now Button\" width=\"277\" height=\"82\" />\r\n			<p style=\"border-bottom:1px solid #ccc;padding-bottom:10px;margin-bottom:10px;\"></p><p><strong>You can register for a Free Membership or pay for one of the following membership options</strong></p><p style=\"border-top:1px solid #ccc;padding-top:10px;margin-top:10px;\"></p>\r\n			[ ==> Insert Payment Button For Your Paid Membership Levels Here <== ]\r\n			<p style=\"border-bottom:1px solid #ccc;padding-bottom:10px;margin-bottom:10px;\"></p>', 'Join Us', '', 'trash', 'closed', 'closed', '', 'membership-join__trashed', '', '', '2018-06-25 13:50:25', '2018-06-25 04:50:25', '', 0, 'http://localhost/wordpress/membership-join/', 0, 'page', '', 0),
(25, 2, '2018-06-21 15:35:08', '2018-06-21 06:35:08', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-06-21 15:35:08', '2018-06-21 06:35:08', '', 0, 'http://localhost/wordpress/2018/06/21/25/', 4, 'nav_menu_item', '', 0),
(26, 2, '2018-06-21 15:35:08', '2018-06-21 06:35:08', '[swpm_registration_form]', '登録', '', 'trash', 'closed', 'closed', '', 'membership-registration__trashed', '', '', '2018-06-25 13:50:45', '2018-06-25 04:50:45', '', 24, 'http://localhost/wordpress/membership-join/membership-registration/', 0, 'page', '', 0),
(27, 2, '2018-06-21 15:35:08', '2018-06-21 06:35:08', '[swpm_login_form]', 'メンバーログイン', '', 'publish', 'closed', 'closed', '', 'membership-login', '', '', '2018-07-05 13:48:02', '2018-07-05 04:48:02', '', 0, 'http://localhost/wordpress/membership-login/', 0, 'page', '', 0),
(28, 2, '2018-06-21 15:35:09', '2018-06-21 06:35:09', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-06-21 15:35:09', '2018-06-21 06:35:09', '', 0, 'http://localhost/wordpress/2018/06/21/28/', 5, 'nav_menu_item', '', 0),
(29, 2, '2018-06-21 15:35:09', '2018-06-21 06:35:09', '[swpm_profile_form]', 'プロフィール', '', 'publish', 'closed', 'closed', '', 'membership-profile', '', '', '2018-06-21 15:35:09', '2018-06-21 06:35:09', '', 27, 'http://localhost/wordpress/membership-login/membership-profile/', 0, 'page', '', 0),
(30, 2, '2018-06-21 15:35:09', '2018-06-21 06:35:09', '[swpm_reset_form]', 'パスワードのリセット', '', 'publish', 'closed', 'closed', '', 'password-reset', '', '', '2018-06-21 15:35:09', '2018-06-21 06:35:09', '', 27, 'http://localhost/wordpress/membership-login/password-reset/', 0, 'page', '', 0),
(32, 1, '2018-06-25 13:42:40', '2018-06-25 04:42:40', '新規会員登録はこちらから\r\n\r\n[wp-members page=\"register\"]', '新規会員登録', '', 'publish', 'closed', 'closed', '', '%e6%96%b0%e8%a6%8f%e4%bc%9a%e5%93%a1%e7%99%bb%e9%8c%b2', '', '', '2018-06-25 15:51:27', '2018-06-25 06:51:27', '', 0, 'http://localhost/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-06-25 13:42:41', '2018-06-25 04:42:41', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2018-06-25 13:42:41', '2018-06-25 04:42:41', '', 0, 'http://localhost/wordpress/2018/06/25/33/', 6, 'nav_menu_item', '', 0),
(34, 1, '2018-06-25 13:42:40', '2018-06-25 04:42:40', '新規登録ありがとうございます\r\n\r\n&nbsp;\r\n\r\n[wp-members page=\"register\"]', '新規会員登録', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-06-25 13:42:40', '2018-06-25 04:42:40', '', 32, 'http://localhost/wordpress/2018/06/25/32-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-06-25 13:48:20', '2018-06-25 04:48:20', 'こちらからログイン\r\n\r\n[wp-members page=\"login\"]\r\n\r\n&nbsp;\r\n\r\n', 'ログイン', '', 'publish', 'closed', 'closed', '', '%e3%83%ad%e3%82%b0%e3%82%a4%e3%83%b3', '', '', '2018-07-02 14:50:52', '2018-07-02 05:50:52', '', 0, 'http://localhost/wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-06-25 13:48:20', '2018-06-25 04:48:20', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-06-25 13:48:20', '2018-06-25 04:48:20', '', 0, 'http://localhost/wordpress/2018/06/25/37/', 7, 'nav_menu_item', '', 0),
(38, 1, '2018-06-25 13:48:20', '2018-06-25 04:48:20', 'ログインしゃす\r\n\r\n[wp-members page=\"login\"]', 'ログイン', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-06-25 13:48:20', '2018-06-25 04:48:20', '', 36, 'http://localhost/wordpress/2018/06/25/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-06-25 13:50:25', '2018-06-25 04:50:25', '<p style=\"color:red;font-weight:bold;\">This page and the content has been automatically generated for you to give you a basic idea of how a \"Join Us\" page should look like. You can customize this page however you like it by editing this page from your WordPress page editor.</p><p style=\"font-weight:bold;\">If you end up changing the URL of this page then make sure to update the URL value in the settings menu of the plugin.</p><p style=\"border-top:1px solid #ccc;padding-top:10px;margin-top:10px;\"></p>\r\n			<strong>Free Membership</strong>\r\n			<br />\r\n			You get unlimited access to free membership content\r\n			<br />\r\n			<em><strong>Price: Free!</strong></em>\r\n			<br /><br />Link the following image to go to the Registration Page if you want your visitors to be able to create a free membership account<br /><br />\r\n			<img title=\"Join Now\" src=\"http://localhost/wordpress/wp-content/plugins/simple-membership/images/join-now-button-image.gif\" alt=\"Join Now Button\" width=\"277\" height=\"82\" />\r\n			<p style=\"border-bottom:1px solid #ccc;padding-bottom:10px;margin-bottom:10px;\"></p><p><strong>You can register for a Free Membership or pay for one of the following membership options</strong></p><p style=\"border-top:1px solid #ccc;padding-top:10px;margin-top:10px;\"></p>\r\n			[ ==> Insert Payment Button For Your Paid Membership Levels Here <== ]\r\n			<p style=\"border-bottom:1px solid #ccc;padding-bottom:10px;margin-bottom:10px;\"></p>', 'Join Us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-06-25 13:50:25', '2018-06-25 04:50:25', '', 24, 'http://localhost/wordpress/2018/06/25/24-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-06-25 13:50:25', '2018-06-25 04:50:25', '[swpm_login_form]', 'メンバーログイン', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-06-25 13:50:25', '2018-06-25 04:50:25', '', 27, 'http://localhost/wordpress/2018/06/25/27-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-06-25 13:50:45', '2018-06-25 04:50:45', '[swpm_registration_form]', '登録', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-06-25 13:50:45', '2018-06-25 04:50:45', '', 26, 'http://localhost/wordpress/2018/06/25/26-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-06-25 13:54:02', '2018-06-25 04:54:02', '登録情報の変更や、パスワードの変更はこちらから\r\n\r\n[wp-members page=\"members-area\"]', 'メンバーズページ', '', 'trash', 'closed', 'closed', '', '%e3%83%a1%e3%83%b3%e3%83%90%e3%83%bc%e3%82%ba%e3%83%9a%e3%83%bc%e3%82%b8__trashed', '', '', '2018-07-05 13:32:32', '2018-07-05 04:32:32', '', 0, 'http://localhost/wordpress/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-06-25 13:54:02', '2018-06-25 04:54:02', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-06-25 13:54:02', '2018-06-25 04:54:02', '', 0, 'http://localhost/wordpress/2018/06/25/43/', 8, 'nav_menu_item', '', 0),
(44, 1, '2018-06-25 13:54:02', '2018-06-25 04:54:02', '登録情報の変更や、パスワードの変更はこちらから\r\n\r\n[wp-members page=\"members-area\"]', 'メンバーズページ', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-06-25 13:54:02', '2018-06-25 04:54:02', '', 42, 'http://localhost/wordpress/2018/06/25/42-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-06-25 13:55:26', '2018-06-25 04:55:26', 'こちらからログイン\r\n\r\n[wp-members page=\"login\"]', 'ログイン', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-06-25 13:55:26', '2018-06-25 04:55:26', '', 36, 'http://localhost/wordpress/2018/06/25/36-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-06-25 14:13:24', '2018-06-25 05:13:24', '', '会員じゃないと見れないページ', '', 'trash', 'closed', 'closed', '', '%e4%bc%9a%e5%93%a1%e3%81%98%e3%82%83%e3%81%aa%e3%81%84%e3%81%a8%e8%a6%8b%e3%82%8c%e3%81%aa%e3%81%84%e3%83%9a%e3%83%bc%e3%82%b8__trashed', '', '', '2018-07-05 13:32:33', '2018-07-05 04:32:33', '', 42, 'http://localhost/wordpress/?page_id=47', 0, 'page', '', 0),
(48, 1, '2018-06-25 14:13:24', '2018-06-25 05:13:24', '', '会員じゃないと見れないページ', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-06-25 14:13:24', '2018-06-25 05:13:24', '', 47, 'http://localhost/wordpress/2018/06/25/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-06-25 14:51:16', '2018-06-25 05:51:16', '', 'お問い合わせ', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2018-06-25 14:51:16', '2018-06-25 05:51:16', '', 13, 'http://localhost/wordpress/2018/06/25/13-autosave-v1/', 0, 'revision', '', 0),
(50, 1, '2018-06-25 14:17:10', '2018-06-25 05:17:10', '[contact-form-7 id=\"34\" title=\"お問い合わせ\"]', 'お問い合わせ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-06-25 14:17:10', '2018-06-25 05:17:10', '', 13, 'http://localhost/wordpress/2018/06/25/13-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-06-25 14:49:37', '2018-06-25 05:49:37', '当サイトでは、日本人男性とロシア人の結婚を支援します。\r\n\r\n&nbsp;', '日本人男性と外国人女性の結婚を支援します。', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-06-25 14:49:37', '2018-06-25 05:49:37', '', 1, 'http://localhost/wordpress/2018/06/25/1-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-06-25 14:51:54', '2018-06-25 05:51:54', '', 'お問い合わせ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-06-25 14:51:54', '2018-06-25 05:51:54', '', 13, 'http://localhost/wordpress/2018/06/25/13-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-06-25 15:03:04', '2018-06-25 06:03:04', '外国人女性に魅力を感じている方へ！\n\n日本人女性の彼女ができないあなたへ\n\n&nbsp;\n\n知っていますか？日本人男性の約３割が未婚のまま生涯を終えます。\n\nそんなあなたへ！\n\n私たちが全力でサポートします！\n\nシステム', 'サイト概要', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2018-06-25 15:03:04', '2018-06-25 06:03:04', '', 17, 'http://localhost/wordpress/2018/06/25/17-autosave-v1/', 0, 'revision', '', 0),
(54, 1, '2018-06-25 15:04:02', '2018-06-25 06:04:02', '外国人女性に魅力を感じている方へ！\r\n\r\n日本人女性の彼女ができないあなたへ\r\n\r\n&nbsp;\r\n\r\n知っていますか？日本人男性の約３割が未婚のまま生涯を終えます。\r\n\r\nそんなあなたへ！\r\n\r\n私たちが全力でサポートします！\r\n\r\nシステム', 'サイト概要', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-06-25 15:04:02', '2018-06-25 06:04:02', '', 17, 'http://localhost/wordpress/2018/06/25/17-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-06-25 15:08:57', '2018-06-25 06:08:57', '{\n    \"flash::background_color\": {\n        \"value\": \"#8224e3\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:06:08\"\n    },\n    \"flash::link_color\": {\n        \"value\": \"#260904\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:06:08\"\n    },\n    \"flash::main_text_color\": {\n        \"value\": \"#151621\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:06:08\"\n    },\n    \"flash::background_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/06/346b4793.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:08:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '740a1bd2-83de-462e-84aa-0b84e5e97c76', '', '', '2018-06-25 15:08:57', '2018-06-25 06:08:57', '', 0, 'http://localhost/wordpress/?p=55', 0, 'customize_changeset', '', 0),
(56, 1, '2018-06-25 15:08:41', '2018-06-25 06:08:41', '', '346b4793', '', 'inherit', 'open', 'closed', '', '346b4793', '', '', '2018-06-25 15:30:11', '2018-06-25 06:30:11', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/346b4793.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-06-25 15:10:04', '2018-06-25 06:10:04', '{\n    \"flash::background_preset\": {\n        \"value\": \"fit\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:10:04\"\n    },\n    \"flash::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:10:04\"\n    },\n    \"flash::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:10:04\"\n    },\n    \"flash::background_size\": {\n        \"value\": \"contain\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:10:04\"\n    },\n    \"flash::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:10:04\"\n    },\n    \"flash::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:10:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5f9f1a54-7076-4faf-8a7c-f1b7ba5b29b0', '', '', '2018-06-25 15:10:04', '2018-06-25 06:10:04', '', 0, 'http://localhost/wordpress/2018/06/25/5f9f1a54-7076-4faf-8a7c-f1b7ba5b29b0/', 0, 'customize_changeset', '', 0),
(58, 1, '2018-06-25 15:10:46', '2018-06-25 06:10:46', '{\n    \"flash::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:10:46\"\n    },\n    \"flash::background_position_x\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:10:46\"\n    },\n    \"flash::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:10:46\"\n    },\n    \"flash::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:10:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '25d710fc-57de-47f7-97fa-1d505f96684a', '', '', '2018-06-25 15:10:46', '2018-06-25 06:10:46', '', 0, 'http://localhost/wordpress/2018/06/25/25d710fc-57de-47f7-97fa-1d505f96684a/', 0, 'customize_changeset', '', 0),
(59, 1, '2018-06-25 15:31:43', '2018-06-25 06:31:43', '', 'cropped-346b4793-e1529908210211-2.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-346b4793-jpg', '', '', '2018-06-25 15:31:43', '2018-06-25 06:31:43', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-346b4793.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-06-25 15:12:01', '2018-06-25 06:12:01', '{\n    \"flash::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:11:45\"\n    },\n    \"flash::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:11:45\"\n    },\n    \"flash::background_position_x\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:11:45\"\n    },\n    \"flash::background_position_y\": {\n        \"value\": \"bottom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:11:45\"\n    },\n    \"flash::background_preset\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:12:01\"\n    },\n    \"flash::background_repeat\": {\n        \"value\": \"repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:12:01\"\n    },\n    \"flash::background_attachment\": {\n        \"value\": \"scroll\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:12:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c55a8fc-073a-4843-9882-0e4e7742e6ce', '', '', '2018-06-25 15:12:01', '2018-06-25 06:12:01', '', 0, 'http://localhost/wordpress/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2018-06-25 15:31:13', '2018-06-25 06:31:13', '{\n    \"flash::background_color\": {\n        \"value\": \"#209954\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:13:45\"\n    },\n    \"flash::custom_logo\": {\n        \"value\": 64,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:30:59\"\n    },\n    \"flash::color_scheme\": {\n        \"value\": \"default\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:13:45\"\n    },\n    \"flash::link_color\": {\n        \"value\": \"#1b2d09\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:13:45\"\n    },\n    \"flash::main_text_color\": {\n        \"value\": \"#313b48\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:13:45\"\n    },\n    \"flash::secondary_text_color\": {\n        \"value\": \"#666666\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:13:45\"\n    },\n    \"flash::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:13:45\"\n    },\n    \"flash::nav_menu_locations[footer]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:13:45\"\n    },\n    \"blogname\": {\n        \"value\": \"Grant marriage\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:25:09\"\n    },\n    \"blogdescription\": {\n        \"value\": \"The best partner to you\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:17:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd5ecffab-99b2-43b1-a802-7a114f4ea6b3', '', '', '2018-06-25 15:31:13', '2018-06-25 06:31:13', '', 0, 'http://localhost/wordpress/?p=61', 0, 'customize_changeset', '', 0),
(62, 1, '2018-06-25 15:13:41', '2018-06-25 06:13:41', 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-346b4793-1.jpg', 'cropped-346b4793-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-346b4793-1-jpg', '', '', '2018-06-25 15:13:41', '2018-06-25 06:13:41', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-346b4793-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-06-25 15:27:26', '2018-06-25 06:27:26', 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-346b4793-e1529907956249.jpg', 'cropped-346b4793-e1529907956249.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-346b4793-e1529907956249-jpg', '', '', '2018-06-25 15:27:26', '2018-06-25 06:27:26', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-346b4793-e1529907956249.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-06-25 15:30:35', '2018-06-25 06:30:35', 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-346b4793-e1529908210211.jpg', 'cropped-346b4793-e1529908210211.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-346b4793-e1529908210211-jpg', '', '', '2018-06-25 15:30:35', '2018-06-25 06:30:35', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-346b4793-e1529908210211.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-06-25 15:32:09', '2018-06-25 06:32:09', '{\n    \"flash::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:32:09\"\n    },\n    \"flash::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:32:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1eaba3cf-258b-4806-845d-6dd843a266f9', '', '', '2018-06-25 15:32:09', '2018-06-25 06:32:09', '', 0, 'http://localhost/wordpress/2018/06/25/1eaba3cf-258b-4806-845d-6dd843a266f9/', 0, 'customize_changeset', '', 0),
(66, 1, '2018-06-25 15:33:02', '2018-06-25 06:33:02', '{\n    \"flash::background_color\": {\n        \"value\": \"#26bbcc\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:33:02\"\n    },\n    \"flash::background_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/06/346b4793-e1529908210211.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:33:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0dcd33a4-f202-4c0a-8931-655c1699b843', '', '', '2018-06-25 15:33:02', '2018-06-25 06:33:02', '', 0, 'http://localhost/wordpress/2018/06/25/0dcd33a4-f202-4c0a-8931-655c1699b843/', 0, 'customize_changeset', '', 0),
(67, 1, '2018-06-25 15:37:51', '2018-06-25 06:37:51', '{\n    \"flash::background_color\": {\n        \"value\": \"#002938\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:36:25\"\n    },\n    \"flash::main_text_color\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:36:25\"\n    },\n    \"flash::secondary_text_color\": {\n        \"value\": \"#686868\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:37:25\"\n    },\n    \"flash::background_size\": {\n        \"value\": \"auto\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:37:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7bff5516-78e6-4ed6-a60d-30e85492765c', '', '', '2018-06-25 15:37:51', '2018-06-25 06:37:51', '', 0, 'http://localhost/wordpress/?p=67', 0, 'customize_changeset', '', 0),
(68, 1, '2018-06-25 15:39:10', '2018-06-25 06:39:10', '{\n    \"flash::background_preset\": {\n        \"value\": \"fit\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:39:10\"\n    },\n    \"flash::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:39:10\"\n    },\n    \"flash::background_size\": {\n        \"value\": \"contain\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:39:10\"\n    },\n    \"flash::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:39:10\"\n    },\n    \"flash::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-25 06:39:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c5bbfab4-d551-4fa8-b24c-2a14fdee45b3', '', '', '2018-06-25 15:39:10', '2018-06-25 06:39:10', '', 0, 'http://localhost/wordpress/2018/06/25/c5bbfab4-d551-4fa8-b24c-2a14fdee45b3/', 0, 'customize_changeset', '', 0),
(69, 1, '2018-06-25 15:43:16', '2018-06-25 06:43:16', 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-346b4793-e1529908210211-3.jpg', 'cropped-346b4793-e1529908210211-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-346b4793-e1529908210211-3-jpg', '', '', '2018-06-25 15:43:16', '2018-06-25 06:43:16', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-346b4793-e1529908210211-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-06-25 15:51:27', '2018-06-25 06:51:27', '新規会員登録はこちらから\r\n\r\n[wp-members page=\"register\"]', '新規会員登録', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-06-25 15:51:27', '2018-06-25 06:51:27', '', 32, 'http://localhost/wordpress/2018/06/25/32-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-06-28 14:30:28', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-28 14:30:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=72', 0, 'post', '', 0),
(73, 1, '2018-07-02 13:27:12', '2018-07-02 04:27:12', '<label> お名前 (必須)\n    [text* your-name] </label>\n\n<label> メールアドレス (必須)\n    [email* your-email] </label>\n\n<label> 題名\n    [text your-subject] </label>\n\n<label> メッセージ本文\n    [textarea your-message] </label>\n\n[submit \"送信\"]\nGrant marriage \"[your-subject]\"\n[your-name] <tanagojin@au.com>\n差出人: [your-name] <[your-email]>\n題名: [your-subject]\n\nメッセージ本文:\n[your-message]\n\n-- \nこのメールは Grant marriage (http://localhost/wordpress) のお問い合わせフォームから送信されました\ntanagojin@au.com\nReply-To: [your-email]\n\n0\n0\n\nGrant marriage \"[your-subject]\"\nGrant marriage <tanagojin@au.com>\nメッセージ本文:\n[your-message]\n\n-- \nこのメールは Grant marriage (http://localhost/wordpress) のお問い合わせフォームから送信されました\n[your-email]\nReply-To: tanagojin@au.com\n\n0\n0\nありがとうございます。メッセージは送信されました。\nメッセージの送信に失敗しました。後でまたお試しください。\n入力内容に問題があります。確認して再度お試しください。\nメッセージの送信に失敗しました。後でまたお試しください。\nメッセージを送信する前に承諾確認が必要です。\n必須項目に入力してください。\n入力されたテキストが長すぎます。\n入力されたテキストが短すぎます。', 'コンタクトフォーム 1', '', 'publish', 'closed', 'closed', '', '%e3%82%b3%e3%83%b3%e3%82%bf%e3%82%af%e3%83%88%e3%83%95%e3%82%a9%e3%83%bc%e3%83%a0-1', '', '', '2018-07-02 13:27:12', '2018-07-02 04:27:12', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=73', 0, 'wpcf7_contact_form', '', 0),
(74, 1, '2018-07-02 13:35:48', '2018-07-02 04:35:48', '[contact-form-7 id=\"73\" title=\"コンタクトフォーム 1\"]', 'お問い合わせ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-07-02 13:35:48', '2018-07-02 04:35:48', '', 13, 'http://localhost/wordpress/2018/07/02/13-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-07-02 14:36:40', '2018-07-02 05:36:40', '', '346b4793', '', 'inherit', 'open', 'closed', '', '346b4793-2', '', '', '2018-07-02 14:36:40', '2018-07-02 05:36:40', '', 17, 'http://localhost/wordpress/wp-content/uploads/2018/07/346b4793.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-07-02 14:36:55', '2018-07-02 05:36:55', '外国人女性に魅力を感じている方へ！\r\n\r\n日本人女性の彼女ができないあなたへ\r\n\r\n&nbsp;\r\n\r\n知っていますか？日本人男性の約３割が未婚のまま生涯を終えます。\r\n\r\nそんなあなたへ！\r\n\r\n私たちが全力でサポートします！\r\n\r\n\r\n\r\n\r\nシステム<img src=\"http://localhost/wordpress/wp-content/uploads/2018/07/346b4793-300x174.jpg\" alt=\"\" width=\"300\" height=\"174\" class=\"alignnone size-medium wp-image-75\" />', 'サイト概要', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-07-02 14:36:55', '2018-07-02 05:36:55', '', 17, 'http://localhost/wordpress/2018/07/02/17-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-07-02 14:50:11', '2018-07-02 05:50:11', 'こちらからログイン\r\n\r\n[wp-members page=\"login\"]\r\n\r\n&nbsp;\r\n\r\nhttp://localhost/wordpress/%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b/', 'ログイン', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-07-02 14:50:11', '2018-07-02 05:50:11', '', 36, 'http://localhost/wordpress/2018/07/02/36-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-07-02 14:50:52', '2018-07-02 05:50:52', 'こちらからログイン\r\n\r\n[wp-members page=\"login\"]\r\n\r\n&nbsp;\r\n\r\n', 'ログイン', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-07-02 14:50:52', '2018-07-02 05:50:52', '', 36, 'http://localhost/wordpress/2018/07/02/36-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-07-02 14:52:16', '2018-07-02 05:52:16', 'こちら男性用ページ\r\n\r\n\r\n\r\nポイント購入\r\n\r\n女性とのメール\r\n\r\nマイページ\r\n\r\n書類作成例DL\r\n\r\n', 'パートナーが欲しい男性（ログイン後）', '', 'publish', 'closed', 'closed', '', '%e7%94%b7%e6%80%a7%e3%83%9a%e3%83%bc%e3%82%b8', '', '', '2018-07-05 13:38:49', '2018-07-05 04:38:49', '', 0, 'http://localhost/wordpress/?page_id=79', 0, 'page', '', 0),
(80, 1, '2018-07-02 14:52:16', '2018-07-02 05:52:16', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2018-07-02 14:52:16', '2018-07-02 05:52:16', '', 0, 'http://localhost/wordpress/2018/07/02/80/', 9, 'nav_menu_item', '', 0),
(81, 1, '2018-07-02 14:52:16', '2018-07-02 05:52:16', 'こちら男性用ページ\r\n', '男性ページ', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-07-02 14:52:16', '2018-07-02 05:52:16', '', 79, 'http://localhost/wordpress/2018/07/02/79-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-07-02 14:53:19', '2018-07-02 05:53:19', 'ポイント購入できます', 'ポイント購入', '', 'trash', 'closed', 'closed', '', '%e3%83%9d%e3%82%a4%e3%83%b3%e3%83%88%e8%b3%bc%e5%85%a5__trashed', '', '', '2018-07-05 13:32:32', '2018-07-05 04:32:32', '', 0, 'http://localhost/wordpress/?page_id=82', 0, 'page', '', 0),
(83, 1, '2018-07-02 14:53:20', '2018-07-02 05:53:20', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2018-07-02 14:53:20', '2018-07-02 05:53:20', '', 0, 'http://localhost/wordpress/2018/07/02/83/', 10, 'nav_menu_item', '', 0),
(84, 1, '2018-07-02 14:53:19', '2018-07-02 05:53:19', 'ポイント購入できます', 'ポイント購入', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-07-02 14:53:19', '2018-07-02 05:53:19', '', 82, 'http://localhost/wordpress/2018/07/02/82-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-07-02 14:53:38', '2018-07-02 05:53:38', 'こちら男性用ページ\r\n\r\nhttp://localhost/wordpress/%e3%83%9d%e3%82%a4%e3%83%b3%e3%83%88%e8%b3%bc%e5%85%a5/', '男性ページ', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-07-02 14:53:38', '2018-07-02 05:53:38', '', 79, 'http://localhost/wordpress/2018/07/02/79-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-07-02 14:58:38', '2018-07-02 05:58:38', '', '女性とのメール', '', 'trash', 'closed', 'closed', '', '%e5%a5%b3%e6%80%a7%e3%81%a8%e3%81%ae%e3%83%a1%e3%83%bc%e3%83%ab__trashed', '', '', '2018-07-05 13:32:33', '2018-07-05 04:32:33', '', 0, 'http://localhost/wordpress/?page_id=86', 0, 'page', '', 0),
(87, 1, '2018-07-02 14:58:39', '2018-07-02 05:58:39', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2018-07-02 14:58:39', '2018-07-02 05:58:39', '', 0, 'http://localhost/wordpress/2018/07/02/87/', 11, 'nav_menu_item', '', 0),
(88, 1, '2018-07-02 14:58:38', '2018-07-02 05:58:38', '', '女性とのメール', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-07-02 14:58:38', '2018-07-02 05:58:38', '', 86, 'http://localhost/wordpress/2018/07/02/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-07-05 13:35:18', '2018-07-05 04:35:18', 'こちら男性用ページ\n\nポイント購入\n\n女性とのメール\n\n書類作成例DL\n\n', 'パートナーが欲しい男性（ｒｐ）', '', 'inherit', 'closed', 'closed', '', '79-autosave-v1', '', '', '2018-07-05 13:35:18', '2018-07-05 04:35:18', '', 79, 'http://localhost/wordpress/2018/07/02/79-autosave-v1/', 0, 'revision', '', 0),
(90, 1, '2018-07-02 15:00:00', '2018-07-02 06:00:00', 'こちら男性用ページ\r\n\r\nポイント購入\r\nhttp://localhost/wordpress/%e3%83%9d%e3%82%a4%e3%83%b3%e3%83%88%e8%b3%bc%e5%85%a5/\r\n女性とのメール\r\nhttp://localhost/wordpress/%e5%a5%b3%e6%80%a7%e3%81%a8%e3%81%ae%e3%83%a1%e3%83%bc%e3%83%ab/\r\nマイページ\r\n\r\n\r\n', '男性ページ', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-07-02 15:00:00', '2018-07-02 06:00:00', '', 79, 'http://localhost/wordpress/2018/07/02/79-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-07-02 15:00:56', '2018-07-02 06:00:56', '男性用マイページ', 'マイページ', '', 'trash', 'closed', 'closed', '', '%e3%83%9e%e3%82%a4%e3%83%9a%e3%83%bc%e3%82%b8__trashed', '', '', '2018-07-05 13:33:45', '2018-07-05 04:33:45', '', 0, 'http://localhost/wordpress/?page_id=91', 0, 'page', '', 0),
(92, 1, '2018-07-02 15:00:56', '2018-07-02 06:00:56', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2018-07-02 15:00:56', '2018-07-02 06:00:56', '', 0, 'http://localhost/wordpress/2018/07/02/92/', 12, 'nav_menu_item', '', 0),
(93, 1, '2018-07-02 15:00:56', '2018-07-02 06:00:56', '男性用マイページ', 'マイページ', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-07-02 15:00:56', '2018-07-02 06:00:56', '', 91, 'http://localhost/wordpress/2018/07/02/91-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-07-02 15:01:32', '2018-07-02 06:01:32', 'こちら男性用ページ\r\n\r\nポイント購入\r\nhttp://localhost/wordpress/%e3%83%9d%e3%82%a4%e3%83%b3%e3%83%88%e8%b3%bc%e5%85%a5/\r\n女性とのメール\r\nhttp://localhost/wordpress/%e5%a5%b3%e6%80%a7%e3%81%a8%e3%81%ae%e3%83%a1%e3%83%bc%e3%83%ab/\r\nマイページ\r\nhttp://localhost/wordpress/%e3%83%9e%e3%82%a4%e3%83%9a%e3%83%bc%e3%82%b8/\r\n書類作成例DL\r\n\r\n\r\n', '男性ページ', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-07-02 15:01:32', '2018-07-02 06:01:32', '', 79, 'http://localhost/wordpress/2018/07/02/79-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-07-02 15:01:57', '2018-07-02 06:01:57', '', '書類作成例DL', '', 'trash', 'closed', 'closed', '', '%e6%9b%b8%e9%a1%9e%e4%bd%9c%e6%88%90%e4%be%8bdl__trashed', '', '', '2018-07-05 13:32:33', '2018-07-05 04:32:33', '', 0, 'http://localhost/wordpress/?page_id=95', 0, 'page', '', 0),
(96, 1, '2018-07-02 15:01:57', '2018-07-02 06:01:57', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2018-07-02 15:01:57', '2018-07-02 06:01:57', '', 0, 'http://localhost/wordpress/2018/07/02/96/', 13, 'nav_menu_item', '', 0),
(97, 1, '2018-07-02 15:01:57', '2018-07-02 06:01:57', '', '書類作成例DL', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-07-02 15:01:57', '2018-07-02 06:01:57', '', 95, 'http://localhost/wordpress/2018/07/02/95-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-07-02 15:02:12', '2018-07-02 06:02:12', 'こちら男性用ページ\r\n\r\nポイント購入\r\nhttp://localhost/wordpress/%e3%83%9d%e3%82%a4%e3%83%b3%e3%83%88%e8%b3%bc%e5%85%a5/\r\n女性とのメール\r\nhttp://localhost/wordpress/%e5%a5%b3%e6%80%a7%e3%81%a8%e3%81%ae%e3%83%a1%e3%83%bc%e3%83%ab/\r\nマイページ\r\nhttp://localhost/wordpress/%e3%83%9e%e3%82%a4%e3%83%9a%e3%83%bc%e3%82%b8/\r\n書類作成例DL\r\nhttp://localhost/wordpress/%e6%9b%b8%e9%a1%9e%e4%bd%9c%e6%88%90%e4%be%8bdl/\r\n\r\n', '男性ページ', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-07-02 15:02:12', '2018-07-02 06:02:12', '', 79, 'http://localhost/wordpress/2018/07/02/79-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-07-02 15:36:02', '2018-07-02 06:36:02', 'パートナーが欲しい女性\r\n\r\nプロフィール\r\n\r\nメール\r\n\r\n身分証明アップ（審査）', 'Женщина, которая хочет партнера(パートナーが欲しい女性：登録)', '', 'publish', 'closed', 'closed', '', '%e5%a5%b3%e6%80%a7%e3%83%9a%e3%83%bc%e3%82%b8', '', '', '2018-07-05 13:38:21', '2018-07-05 04:38:21', '', 0, 'http://localhost/wordpress/?page_id=99', 0, 'page', '', 0),
(100, 1, '2018-07-02 15:36:02', '2018-07-02 06:36:02', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2018-07-02 15:36:02', '2018-07-02 06:36:02', '', 0, 'http://localhost/wordpress/2018/07/02/100/', 14, 'nav_menu_item', '', 0),
(101, 1, '2018-07-02 15:36:02', '2018-07-02 06:36:02', '', '女性ページ', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-07-02 15:36:02', '2018-07-02 06:36:02', '', 99, 'http://localhost/wordpress/2018/07/02/99-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-07-02 15:50:12', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-02 15:50:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=102', 0, 'page', '', 0),
(103, 1, '2018-07-02 15:50:12', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-02 15:50:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=103', 0, 'page', '', 0),
(104, 1, '2018-07-02 15:58:57', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-02 15:58:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=104', 0, 'page', '', 0),
(105, 1, '2018-07-02 16:03:47', '2018-07-02 07:03:47', '', 'Женщина, которая хочет партнера', '', 'inherit', 'closed', 'closed', '', '99-autosave-v1', '', '', '2018-07-02 16:03:47', '2018-07-02 07:03:47', '', 99, 'http://localhost/wordpress/2018/07/02/99-autosave-v1/', 0, 'revision', '', 0),
(106, 1, '2018-07-02 16:03:59', '2018-07-02 07:03:59', 'パートナーが欲しい女性', 'Женщина, которая хочет партнера', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-07-02 16:03:59', '2018-07-02 07:03:59', '', 99, 'http://localhost/wordpress/2018/07/02/99-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-07-02 16:05:03', '2018-07-02 07:05:03', 'こちら男性用ページ\r\n\r\nポイント購入\r\nhttp://localhost/wordpress/%e3%83%9d%e3%82%a4%e3%83%b3%e3%83%88%e8%b3%bc%e5%85%a5/\r\n女性とのメール\r\nhttp://localhost/wordpress/%e5%a5%b3%e6%80%a7%e3%81%a8%e3%81%ae%e3%83%a1%e3%83%bc%e3%83%ab/\r\nマイページ\r\nhttp://localhost/wordpress/%e3%83%9e%e3%82%a4%e3%83%9a%e3%83%bc%e3%82%b8/\r\n書類作成例DL\r\nhttp://localhost/wordpress/%e6%9b%b8%e9%a1%9e%e4%bd%9c%e6%88%90%e4%be%8bdl/\r\n\r\n', 'パートナーが欲しい男性', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-07-02 16:05:03', '2018-07-02 07:05:03', '', 79, 'http://localhost/wordpress/2018/07/02/79-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-07-02 16:06:09', '2018-07-02 07:06:09', '\r\n\r\n\r\n翻訳リストの閲覧と承諾\r\n\r\nマイページ\r\n\r\n翻訳リストに追加があると、メールでお知らせ\r\n', '翻訳の仕事が欲しい方　（ログイン後）', '', 'publish', 'closed', 'closed', '', '%e7%bf%bb%e8%a8%b3%e3%81%ae%e4%bb%95%e4%ba%8b%e3%81%8c%e6%ac%b2%e3%81%97%e3%81%84%e6%96%b9', '', '', '2018-07-05 13:37:15', '2018-07-05 04:37:15', '', 0, 'http://localhost/wordpress/?page_id=108', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(109, 1, '2018-07-02 16:06:09', '2018-07-02 07:06:09', ' ', '', '', 'publish', 'closed', 'closed', '', '109', '', '', '2018-07-02 16:06:09', '2018-07-02 07:06:09', '', 0, 'http://localhost/wordpress/2018/07/02/109/', 15, 'nav_menu_item', '', 0),
(110, 1, '2018-07-02 16:06:09', '2018-07-02 07:06:09', '', '翻訳の仕事が欲しい方', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-07-02 16:06:09', '2018-07-02 07:06:09', '', 108, 'http://localhost/wordpress/2018/07/02/108-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-07-02 16:07:12', '2018-07-02 07:07:12', '管理者', 'менеджер（管理者）', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b5%d0%bd%d0%b5%d0%b4%d0%b6%d0%b5%d1%80', '', '', '2018-07-05 13:46:51', '2018-07-05 04:46:51', '', 0, 'http://localhost/wordpress/?page_id=111', 0, 'page', '', 0),
(112, 1, '2018-07-02 16:07:12', '2018-07-02 07:07:12', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2018-07-02 16:07:12', '2018-07-02 07:07:12', '', 0, 'http://localhost/wordpress/2018/07/02/112/', 16, 'nav_menu_item', '', 0),
(113, 1, '2018-07-02 16:07:12', '2018-07-02 07:07:12', '管理者', 'менеджер', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-07-02 16:07:12', '2018-07-02 07:07:12', '', 111, 'http://localhost/wordpress/2018/07/02/111-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-07-05 13:17:13', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-05 13:17:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=114', 0, 'page', '', 0),
(115, 1, '2018-07-05 13:19:30', '2018-07-05 04:19:30', 'パートナーが欲しい女性', 'Женщина, которая хочет партнера(パートナーが欲しい女性)', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-07-05 13:19:30', '2018-07-05 04:19:30', '', 99, 'http://localhost/wordpress/2018/07/05/99-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-07-05 13:26:50', '2018-07-05 04:26:50', '', 'プロフィール（翻訳）', '', 'trash', 'closed', 'closed', '', '%e3%83%97%e3%83%ad%e3%83%95%e3%82%a3%e3%83%bc%e3%83%ab%ef%bc%88%e7%bf%bb%e8%a8%b3%ef%bc%89__trashed', '', '', '2018-07-05 13:32:32', '2018-07-05 04:32:32', '', 0, 'http://localhost/wordpress/?page_id=116', 0, 'page', '', 0),
(117, 1, '2018-07-05 13:26:51', '2018-07-05 04:26:51', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2018-07-05 13:26:51', '2018-07-05 04:26:51', '', 0, 'http://localhost/wordpress/2018/07/05/117/', 17, 'nav_menu_item', '', 0),
(118, 1, '2018-07-05 13:26:50', '2018-07-05 04:26:50', '', 'プロフィール（翻訳）', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-07-05 13:26:50', '2018-07-05 04:26:50', '', 116, 'http://localhost/wordpress/2018/07/05/116-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-07-05 13:27:52', '2018-07-05 04:27:52', '', 'クレジットカード', '', 'trash', 'closed', 'closed', '', '%e3%82%af%e3%83%ac%e3%82%b8%e3%83%83%e3%83%88%e3%82%ab%e3%83%bc%e3%83%89__trashed', '', '', '2018-07-05 13:32:32', '2018-07-05 04:32:32', '', 0, 'http://localhost/wordpress/?page_id=119', 0, 'page', '', 0),
(120, 1, '2018-07-05 13:27:53', '2018-07-05 04:27:53', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2018-07-05 13:27:53', '2018-07-05 04:27:53', '', 0, 'http://localhost/wordpress/2018/07/05/120/', 18, 'nav_menu_item', '', 0),
(121, 1, '2018-07-05 13:27:52', '2018-07-05 04:27:52', '', 'クレジットカード', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-07-05 13:27:52', '2018-07-05 04:27:52', '', 119, 'http://localhost/wordpress/2018/07/05/119-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-07-05 13:28:17', '2018-07-05 04:28:17', '', 'メール（翻訳）', '', 'trash', 'closed', 'closed', '', '%e3%83%a1%e3%83%bc%e3%83%ab%ef%bc%88%e7%bf%bb%e8%a8%b3%ef%bc%89__trashed', '', '', '2018-07-05 13:32:32', '2018-07-05 04:32:32', '', 0, 'http://localhost/wordpress/?page_id=122', 0, 'page', '', 0),
(123, 1, '2018-07-05 13:28:17', '2018-07-05 04:28:17', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2018-07-05 13:28:17', '2018-07-05 04:28:17', '', 0, 'http://localhost/wordpress/2018/07/05/123/', 19, 'nav_menu_item', '', 0),
(124, 1, '2018-07-05 13:28:17', '2018-07-05 04:28:17', '', 'メール（翻訳）', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2018-07-05 13:28:17', '2018-07-05 04:28:17', '', 122, 'http://localhost/wordpress/2018/07/05/122-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-07-05 13:28:48', '2018-07-05 04:28:48', '', '身分証明年収証明アップ（審査）', '', 'trash', 'closed', 'closed', '', '%e8%ba%ab%e5%88%86%e8%a8%bc%e6%98%8e%e5%b9%b4%e5%8f%8e%e8%a8%bc%e6%98%8e%e3%82%a2%e3%83%83%e3%83%97%ef%bc%88%e5%af%a9%e6%9f%bb%ef%bc%89__trashed', '', '', '2018-07-05 13:32:33', '2018-07-05 04:32:33', '', 0, 'http://localhost/wordpress/?page_id=125', 0, 'page', '', 0),
(126, 1, '2018-07-05 13:28:48', '2018-07-05 04:28:48', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2018-07-05 13:28:48', '2018-07-05 04:28:48', '', 0, 'http://localhost/wordpress/2018/07/05/126/', 20, 'nav_menu_item', '', 0),
(127, 1, '2018-07-05 13:28:48', '2018-07-05 04:28:48', '', '身分証明年収証明アップ（審査）', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-07-05 13:28:48', '2018-07-05 04:28:48', '', 125, 'http://localhost/wordpress/2018/07/05/125-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-07-05 13:34:07', '2018-07-05 04:34:07', 'パートナーが欲しい女性', 'Женщина, которая хочет партнера(パートナーが欲しい女性：登録)', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-07-05 13:34:07', '2018-07-05 04:34:07', '', 99, 'http://localhost/wordpress/2018/07/05/99-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-07-05 13:35:25', '2018-07-05 04:35:25', 'こちら男性用ページ\r\n\r\nポイント購入\r\n\r\n女性とのメール\r\n\r\n書類作成例DL\r\n\r\n', 'パートナーが欲しい男性（ログイン後）', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-07-05 13:35:25', '2018-07-05 04:35:25', '', 79, 'http://localhost/wordpress/2018/07/05/79-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-07-05 13:36:56', '2018-07-05 04:36:56', '\n\n\n翻訳リストの閲覧と承諾\n\nマイページ\n\nほんｙ', '翻訳の仕事が欲しい方　（ログイン後）', '', 'inherit', 'closed', 'closed', '', '108-autosave-v1', '', '', '2018-07-05 13:36:56', '2018-07-05 04:36:56', '', 108, 'http://localhost/wordpress/2018/07/05/108-autosave-v1/', 0, 'revision', '', 0),
(131, 1, '2018-07-05 13:37:15', '2018-07-05 04:37:15', '\r\n\r\n\r\n翻訳リストの閲覧と承諾\r\n\r\nマイページ\r\n\r\n翻訳リストに追加があると、メールでお知らせ\r\n', '翻訳の仕事が欲しい方　（ログイン後）', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-07-05 13:37:15', '2018-07-05 04:37:15', '', 108, 'http://localhost/wordpress/2018/07/05/108-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-07-05 13:38:21', '2018-07-05 04:38:21', 'パートナーが欲しい女性\r\n\r\nプロフィール\r\n\r\nメール\r\n\r\n身分証明アップ（審査）', 'Женщина, которая хочет партнера(パートナーが欲しい女性：登録)', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-07-05 13:38:21', '2018-07-05 04:38:21', '', 99, 'http://localhost/wordpress/2018/07/05/99-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-07-05 13:38:49', '2018-07-05 04:38:49', 'こちら男性用ページ\r\n\r\n\r\n\r\nポイント購入\r\n\r\n女性とのメール\r\n\r\nマイページ\r\n\r\n書類作成例DL\r\n\r\n', 'パートナーが欲しい男性（ログイン後）', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-07-05 13:38:49', '2018-07-05 04:38:49', '', 79, 'http://localhost/wordpress/2018/07/05/79-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2018-07-05 13:41:10', '2018-07-05 04:41:10', '\r\n\r\n身分証明・年収証明アップ（審査）\r\n\r\n入金手続きとポイント\r\n\r\nプロフィール作成\r\n\r\nメール', 'パートナーが欲しい男性（登録）', '', 'publish', 'closed', 'closed', '', '%e3%83%91%e3%83%bc%e3%83%88%e3%83%8a%e3%83%bc%e3%81%8c%e6%ac%b2%e3%81%97%e3%81%84%e7%94%b7%e6%80%a7%ef%bc%88%e7%99%bb%e9%8c%b2%ef%bc%89', '', '', '2018-07-05 13:41:10', '2018-07-05 04:41:10', '', 0, 'http://localhost/wordpress/?page_id=134', 0, 'page', '', 0),
(135, 1, '2018-07-05 13:41:10', '2018-07-05 04:41:10', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2018-07-05 13:41:10', '2018-07-05 04:41:10', '', 0, 'http://localhost/wordpress/2018/07/05/135/', 21, 'nav_menu_item', '', 0),
(136, 1, '2018-07-05 13:41:10', '2018-07-05 04:41:10', '\r\n\r\n身分証明・年収証明アップ（審査）\r\n\r\n入金手続きとポイント\r\n\r\nプロフィール作成\r\n\r\nメール', 'パートナーが欲しい男性（登録）', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-07-05 13:41:10', '2018-07-05 04:41:10', '', 134, 'http://localhost/wordpress/2018/07/05/134-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-07-05 13:42:50', '2018-07-05 04:42:50', '\r\n\r\n\r\nマイページ\r\n\r\n男性とのメールの受け取り（翻訳）\r\n\r\n日本語学習アプリのDL\r\n', 'Женщина, которая хочет партнера(パートナーが欲しい女性：ログイン後)', '', 'publish', 'closed', 'closed', '', '%d0%b6%d0%b5%d0%bd%d1%89%d0%b8%d0%bd%d0%b0-%d0%ba%d0%be%d1%82%d0%be%d1%80%d0%b0%d1%8f-%d1%85%d0%be%d1%87%d0%b5%d1%82-%d0%bf%d0%b0%d1%80%d1%82%d0%bd%d0%b5%d1%80%d0%b0%e3%83%91%e3%83%bc%e3%83%88', '', '', '2018-07-05 13:42:50', '2018-07-05 04:42:50', '', 0, 'http://localhost/wordpress/?page_id=137', 0, 'page', '', 0),
(138, 1, '2018-07-05 13:42:50', '2018-07-05 04:42:50', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2018-07-05 13:42:50', '2018-07-05 04:42:50', '', 0, 'http://localhost/wordpress/2018/07/05/138/', 22, 'nav_menu_item', '', 0),
(139, 1, '2018-07-05 13:42:50', '2018-07-05 04:42:50', '\r\n\r\n\r\nマイページ\r\n\r\n男性とのメールの受け取り（翻訳）\r\n\r\n日本語学習アプリのDL\r\n', 'Женщина, которая хочет партнера(パートナーが欲しい女性：ログイン後)', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2018-07-05 13:42:50', '2018-07-05 04:42:50', '', 137, 'http://localhost/wordpress/2018/07/05/137-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2018-07-05 13:44:01', '2018-07-05 04:44:01', '\r\n\r\nプロフィール\r\n\r\nクレジットカード\r\n\r\nメール\r\n\r\n身分証明・年収証明アップ（審査）', '翻訳の仕事が欲しい方（登録）', '', 'publish', 'closed', 'closed', '', '%e7%bf%bb%e8%a8%b3%e3%81%ae%e4%bb%95%e4%ba%8b%e3%81%8c%e6%ac%b2%e3%81%97%e3%81%84%e6%96%b9%ef%bc%88%e7%99%bb%e9%8c%b2%ef%bc%89', '', '', '2018-07-05 13:44:01', '2018-07-05 04:44:01', '', 0, 'http://localhost/wordpress/?page_id=140', 0, 'page', '', 0),
(141, 1, '2018-07-05 13:44:01', '2018-07-05 04:44:01', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2018-07-05 13:44:01', '2018-07-05 04:44:01', '', 0, 'http://localhost/wordpress/2018/07/05/141/', 23, 'nav_menu_item', '', 0),
(142, 1, '2018-07-05 13:44:01', '2018-07-05 04:44:01', '\r\n\r\nプロフィール\r\n\r\nクレジットカード\r\n\r\nメール\r\n\r\n身分証明・年収証明アップ（審査）', '翻訳の仕事が欲しい方（登録）', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2018-07-05 13:44:01', '2018-07-05 04:44:01', '', 140, 'http://localhost/wordpress/2018/07/05/140-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-07-05 13:46:51', '2018-07-05 04:46:51', '管理者', 'менеджер（管理者）', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-07-05 13:46:51', '2018-07-05 04:46:51', '', 111, 'http://localhost/wordpress/2018/07/05/111-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-07-05 13:57:16', '2018-07-05 04:57:16', '[contact-form-7 id=\"73\" title=\"コンタクトフォーム 1\"]\r\n\r\nFAQ\r\n\r\nメールフォーム', 'お問い合わせ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-07-05 13:57:16', '2018-07-05 04:57:16', '', 13, 'http://localhost/wordpress/2018/07/05/13-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-07-05 14:56:44', '2018-07-05 05:56:44', '', 'カート', '', 'publish', 'closed', 'closed', '', 'usces-cart', '', '', '2018-07-05 14:56:44', '2018-07-05 05:56:44', '', 0, '', 0, 'page', '', 0),
(146, 1, '2018-07-05 14:56:44', '2018-07-05 05:56:44', '', 'メンバー', '', 'publish', 'closed', 'closed', '', 'usces-member', '', '', '2018-07-05 14:56:44', '2018-07-05 05:56:44', '', 0, '', 0, 'page', '', 0),
(147, 1, '2018-07-05 15:03:15', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-05 15:03:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=147', 0, 'post', '', 0),
(148, 1, '2018-07-05 15:03:16', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-05 15:03:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=148', 0, 'post', '', 0),
(149, 1, '2018-07-05 15:08:56', '2018-07-05 06:08:56', '', 'ポイント購入ページ（welcart）', '', 'publish', 'closed', 'closed', '', '%e3%83%9d%e3%82%a4%e3%83%b3%e3%83%88%e8%b3%bc%e5%85%a5%e3%83%9a%e3%83%bc%e3%82%b8%ef%bc%88welcart%ef%bc%89', '', '', '2018-07-05 15:08:56', '2018-07-05 06:08:56', '', 0, 'http://localhost/wordpress/?page_id=149', 0, 'page', '', 0),
(150, 1, '2018-07-05 15:08:56', '2018-07-05 06:08:56', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2018-07-05 15:08:56', '2018-07-05 06:08:56', '', 0, 'http://localhost/wordpress/2018/07/05/150/', 24, 'nav_menu_item', '', 0),
(151, 1, '2018-07-05 15:08:56', '2018-07-05 06:08:56', '', 'ポイント購入ページ（welcart）', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-07-05 15:08:56', '2018-07-05 06:08:56', '', 149, 'http://localhost/wordpress/2018/07/05/149-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2018-07-05 15:10:56', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-05 15:10:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=152', 0, 'post', '', 0),
(153, 1, '2018-07-05 15:10:56', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-05 15:10:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=153', 0, 'post', '', 0),
(154, 1, '2018-07-05 15:11:03', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-05 15:11:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=154', 0, 'post', '', 0),
(155, 1, '2018-07-05 15:11:03', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-05 15:11:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=155', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_swpm_membership_meta_tbl`
--

DROP TABLE IF EXISTS `wp_swpm_membership_meta_tbl`;
CREATE TABLE `wp_swpm_membership_meta_tbl` (
  `id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `meta_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `meta_default` text COLLATE utf8mb4_unicode_ci,
  `meta_context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_swpm_membership_tbl`
--

DROP TABLE IF EXISTS `wp_swpm_membership_tbl`;
CREATE TABLE `wp_swpm_membership_tbl` (
  `id` int(11) NOT NULL,
  `alias` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscriber',
  `permissions` tinyint(4) NOT NULL DEFAULT '0',
  `subscription_period` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `subscription_duration_type` tinyint(4) NOT NULL DEFAULT '0',
  `subscription_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loginredirect_page` text COLLATE utf8mb4_unicode_ci,
  `category_list` longtext COLLATE utf8mb4_unicode_ci,
  `page_list` longtext COLLATE utf8mb4_unicode_ci,
  `post_list` longtext COLLATE utf8mb4_unicode_ci,
  `comment_list` longtext COLLATE utf8mb4_unicode_ci,
  `attachment_list` longtext COLLATE utf8mb4_unicode_ci,
  `custom_post_list` longtext COLLATE utf8mb4_unicode_ci,
  `disable_bookmark_list` longtext COLLATE utf8mb4_unicode_ci,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `protect_older_posts` tinyint(1) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_swpm_membership_tbl`
--

INSERT INTO `wp_swpm_membership_tbl` (`id`, `alias`, `role`, `permissions`, `subscription_period`, `subscription_duration_type`, `subscription_unit`, `loginredirect_page`, `category_list`, `page_list`, `post_list`, `comment_list`, `attachment_list`, `custom_post_list`, `disable_bookmark_list`, `options`, `protect_older_posts`, `campaign_name`) VALUES
(1, 'Content Protection', 'administrator', 15, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, ''),
(2, '無料プラン', 'subscriber', 63, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, ''),
(3, 'シルバープラン', 'subscriber', 0, '1', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_swpm_members_tbl`
--

DROP TABLE IF EXISTS `wp_swpm_members_tbl`;
CREATE TABLE `wp_swpm_members_tbl` (
  `member_id` int(12) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_since` date NOT NULL DEFAULT '0000-00-00',
  `membership_level` smallint(6) NOT NULL,
  `more_membership_levels` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_state` enum('active','inactive','expired','pending','unsubscribed') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `last_accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_accessed_from_ip` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','not specified') COLLATE utf8mb4_unicode_ci DEFAULT 'not specified',
  `referrer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8mb4_unicode_ci,
  `reg_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_starts` date DEFAULT NULL,
  `initial_membership_level` smallint(6) DEFAULT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `subscr_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `flags` int(11) DEFAULT '0',
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_swpm_payments_tbl`
--

DROP TABLE IF EXISTS `wp_swpm_payments_tbl`;
CREATE TABLE `wp_swpm_payments_tbl` (
  `id` int(12) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `member_id` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `membership_level` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `txn_date` date NOT NULL DEFAULT '0000-00-00',
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subscr_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_amount` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gateway` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ip_address` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分類', '%e6%9c%aa%e5%88%86%e9%a1%9e', 0),
(2, 'メインメニュー', '%e3%83%a1%e3%82%a4%e3%83%b3%e3%83%a1%e3%83%8b%e3%83%a5%e3%83%bc', 0),
(3, '商品', 'item', 0),
(4, 'お勧め商品', 'itemreco', 0),
(5, '新商品', 'itemnew', 0),
(6, '商品ジャンル', 'itemgenre', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(14, 2, 0),
(18, 2, 0),
(25, 2, 0),
(28, 2, 0),
(33, 2, 0),
(37, 2, 0),
(43, 2, 0),
(80, 2, 0),
(83, 2, 0),
(87, 2, 0),
(92, 2, 0),
(96, 2, 0),
(100, 2, 0),
(109, 2, 0),
(112, 2, 0),
(117, 2, 0),
(120, 2, 0),
(123, 2, 0),
(126, 2, 0),
(135, 2, 0),
(138, 2, 0),
(141, 2, 0),
(150, 2, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 24),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 3, 0),
(5, 5, 'category', '', 3, 0),
(6, 6, 'category', '', 3, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usces_access`
--

DROP TABLE IF EXISTS `wp_usces_access`;
CREATE TABLE `wp_usces_access` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `acc_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_value` longtext COLLATE utf8mb4_unicode_ci,
  `acc_date` date NOT NULL DEFAULT '0000-00-00',
  `acc_num1` int(11) NOT NULL DEFAULT '0',
  `acc_num2` int(11) NOT NULL DEFAULT '0',
  `acc_str1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_str2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usces_log`
--

DROP TABLE IF EXISTS `wp_usces_log`;
CREATE TABLE `wp_usces_log` (
  `ID` bigint(20) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log` longtext COLLATE utf8mb4_unicode_ci,
  `log_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_usces_log`
--

INSERT INTO `wp_usces_log` (`ID`, `datetime`, `log`, `log_type`, `log_key`) VALUES
(1, '2018-07-05 14:56:46', 'USCES_UP07 : Array\n(\n)\n', '', ''),
(2, '2018-07-05 14:56:46', 'USCES_UP11 : Array\n(\n)\n', '', ''),
(3, '2018-07-05 14:56:46', 'USCES_UP14 : Completed : from 0', '', ''),
(4, '2018-07-05 14:56:46', 'USCES_UP141 : Completed : from 3', '', ''),
(5, '2018-07-05 14:56:46', 'USCES_UP143 : Completed', '', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usces_member`
--

DROP TABLE IF EXISTS `wp_usces_member`;
CREATE TABLE `wp_usces_member` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `mem_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mem_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mem_status` int(11) NOT NULL DEFAULT '0',
  `mem_cookie` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mem_point` int(11) NOT NULL DEFAULT '0',
  `mem_name1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mem_name2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mem_name3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mem_name4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mem_zip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mem_pref` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mem_address1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mem_address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mem_address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mem_tel` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mem_fax` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mem_delivery_flag` tinyint(1) DEFAULT NULL,
  `mem_delivery` longtext COLLATE utf8mb4_unicode_ci,
  `mem_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mem_nicename` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usces_member_meta`
--

DROP TABLE IF EXISTS `wp_usces_member_meta`;
CREATE TABLE `wp_usces_member_meta` (
  `mmeta_id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usces_order`
--

DROP TABLE IF EXISTS `wp_usces_order`;
CREATE TABLE `wp_usces_order` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `mem_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_name1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_name2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_name3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_name4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_zip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_pref` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_tel` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_fax` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivery` longtext COLLATE utf8mb4_unicode_ci,
  `order_cart` longtext COLLATE utf8mb4_unicode_ci,
  `order_note` text COLLATE utf8mb4_unicode_ci,
  `order_delivery_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_payment_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_condition` text COLLATE utf8mb4_unicode_ci,
  `order_item_total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_getpoint` int(10) NOT NULL DEFAULT '0',
  `order_usedpoint` int(10) NOT NULL DEFAULT '0',
  `order_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_shipping_charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_cod_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_modified` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_check` text COLLATE utf8mb4_unicode_ci,
  `order_delidue_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivery_method` int(10) NOT NULL DEFAULT '-1',
  `order_delivery_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usces_ordercart`
--

DROP TABLE IF EXISTS `wp_usces_ordercart`;
CREATE TABLE `wp_usces_ordercart` (
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `group_id` int(3) NOT NULL DEFAULT '0',
  `row_index` int(3) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `item_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cprice` decimal(15,2) DEFAULT NULL,
  `sku_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(13,2) DEFAULT NULL,
  `destination_id` int(10) DEFAULT NULL,
  `cart_serial` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usces_ordercart_meta`
--

DROP TABLE IF EXISTS `wp_usces_ordercart_meta`;
CREATE TABLE `wp_usces_ordercart_meta` (
  `cartmeta_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usces_order_meta`
--

DROP TABLE IF EXISTS `wp_usces_order_meta`;
CREATE TABLE `wp_usces_order_meta` (
  `ometa_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'tanagojin'),
(2, 1, 'first_name', '田名後'),
(3, 1, 'last_name', '迅'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '72'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 2, 'nickname', 'miyamoto'),
(22, 2, 'first_name', '宮本'),
(23, 2, 'last_name', '将利'),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(33, 2, 'wp_user_level', '10'),
(34, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(35, 2, 'session_tokens', 'a:1:{s:64:\"3ba24a8339379a9f3e8cbcbadb9c111b6830cb8469107daad5ba37efd0b93046\";a:4:{s:10:\"expiration\";i:1529734958;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134\";s:5:\"login\";i:1529562158;}}'),
(36, 2, 'wp_dashboard_quick_press_last_post_id', '23'),
(38, 1, 'addr1', '愛媛県越智郡上島町岩城1833-2'),
(39, 1, 'addr2', ''),
(40, 1, 'city', '上島町'),
(41, 1, 'thestate', '愛媛'),
(42, 1, 'zip', '7942410'),
(43, 1, 'country', '日本'),
(44, 1, 'phone1', '08063280499'),
(46, 1, 'closedpostboxes_page', 'a:0:{}'),
(47, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}'),
(49, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&mfold=o'),
(50, 1, 'wp_user-settings-time', '1530510648'),
(53, 3, 'nickname', 'masatosi'),
(54, 3, 'first_name', '宮本'),
(55, 3, 'last_name', '将利'),
(56, 3, 'description', ''),
(57, 3, 'rich_editing', 'true'),
(58, 3, 'syntax_highlighting', 'true'),
(59, 3, 'comment_shortcuts', 'false'),
(60, 3, 'admin_color', 'midnight'),
(61, 3, 'use_ssl', '0'),
(62, 3, 'show_admin_bar_front', 'true'),
(63, 3, 'locale', 'ja'),
(64, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(65, 3, 'wp_user_level', '0'),
(66, 3, 'addr1', '愛媛県'),
(67, 3, 'addr2', ''),
(68, 3, 'city', '越智郡'),
(69, 3, 'thestate', '愛媛県'),
(70, 3, 'zip', '９９９９'),
(71, 3, 'country', '日本'),
(72, 3, 'phone1', '０８０'),
(73, 3, 'wpmem_reg_ip', '::1'),
(74, 3, 'wpmem_reg_url', 'http://localhost/wordpress/%e6%96%b0%e8%a6%8f%e4%bc%9a%e5%93%a1%e7%99%bb%e9%8c%b2/'),
(76, 3, 'tos', ''),
(77, 3, 'wp_user-settings', 'mfold=o'),
(78, 3, 'wp_user-settings-time', '1529910037'),
(79, 1, 'session_tokens', 'a:1:{s:64:\"9fd54d45164490ff98666b9de23d2806a044d72f5ee148c3bb6eec06d232aa94\";a:4:{s:10:\"expiration\";i:1530936621;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134\";s:5:\"login\";i:1530763821;}}'),
(80, 1, 'tos', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'tanagojin', '$P$BI8R3h8cN..3ciX2dGU.8Pdbx9/cn2.', 'tanagojin', 'tanagojin@au.com', '', '2018-06-21 04:38:33', '', 0, 'tanagojin'),
(2, 'miyamoto', '$P$BGHgHM0R9Xm9TKG0qeDgVRv9s56nWW.', 'miyamoto', 'masabsu331@gmail.com', '', '2018-06-21 06:18:22', '1529561904:$P$BlwiaVmXAQ9gpgEjH9vpDmVuJ2HkRv.', 0, '将利宮本'),
(3, 'masatosi', '$P$B1Jf38WIDAdvSALFrpjyHm9GlGQVcS1', 'masatosi', 'miyamoto@yahoo.co.jp', '', '2018-06-25 06:54:56', '', 0, 'masatosim');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_swpm_membership_meta_tbl`
--
ALTER TABLE `wp_swpm_membership_meta_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_id` (`level_id`);

--
-- Indexes for table `wp_swpm_membership_tbl`
--
ALTER TABLE `wp_swpm_membership_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_swpm_members_tbl`
--
ALTER TABLE `wp_swpm_members_tbl`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `wp_swpm_payments_tbl`
--
ALTER TABLE `wp_swpm_payments_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usces_access`
--
ALTER TABLE `wp_usces_access`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `acc_key` (`acc_key`),
  ADD KEY `acc_type` (`acc_type`),
  ADD KEY `acc_date` (`acc_date`),
  ADD KEY `acc_num1` (`acc_num1`),
  ADD KEY `acc_num2` (`acc_num2`);

--
-- Indexes for table `wp_usces_log`
--
ALTER TABLE `wp_usces_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `datetime` (`datetime`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `log_key` (`log_key`(250));

--
-- Indexes for table `wp_usces_member`
--
ALTER TABLE `wp_usces_member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `mem_email` (`mem_email`),
  ADD KEY `mem_pass` (`mem_pass`);

--
-- Indexes for table `wp_usces_member_meta`
--
ALTER TABLE `wp_usces_member_meta`
  ADD PRIMARY KEY (`mmeta_id`),
  ADD KEY `order_id` (`member_id`),
  ADD KEY `meta_key` (`meta_key`(250));

--
-- Indexes for table `wp_usces_order`
--
ALTER TABLE `wp_usces_order`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `order_email` (`order_email`),
  ADD KEY `order_name1` (`order_name1`),
  ADD KEY `order_name2` (`order_name2`),
  ADD KEY `order_pref` (`order_pref`),
  ADD KEY `order_address1` (`order_address1`),
  ADD KEY `order_tel` (`order_tel`),
  ADD KEY `order_date` (`order_date`);

--
-- Indexes for table `wp_usces_ordercart`
--
ALTER TABLE `wp_usces_ordercart`
  ADD PRIMARY KEY (`cart_id`),
  ADD UNIQUE KEY `row` (`row_index`,`destination_id`,`order_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `item_name` (`item_name`),
  ADD KEY `sku_code` (`sku_code`),
  ADD KEY `sku_name` (`sku_name`);

--
-- Indexes for table `wp_usces_ordercart_meta`
--
ALTER TABLE `wp_usces_ordercart_meta`
  ADD PRIMARY KEY (`cartmeta_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `meta_key` (`meta_key`(250));

--
-- Indexes for table `wp_usces_order_meta`
--
ALTER TABLE `wp_usces_order_meta`
  ADD PRIMARY KEY (`ometa_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `meta_key` (`meta_key`(250));

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `wp_swpm_membership_meta_tbl`
--
ALTER TABLE `wp_swpm_membership_meta_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_swpm_membership_tbl`
--
ALTER TABLE `wp_swpm_membership_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_swpm_members_tbl`
--
ALTER TABLE `wp_swpm_members_tbl`
  MODIFY `member_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_swpm_payments_tbl`
--
ALTER TABLE `wp_swpm_payments_tbl`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usces_access`
--
ALTER TABLE `wp_usces_access`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_usces_log`
--
ALTER TABLE `wp_usces_log`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usces_member`
--
ALTER TABLE `wp_usces_member`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `wp_usces_member_meta`
--
ALTER TABLE `wp_usces_member_meta`
  MODIFY `mmeta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_usces_order`
--
ALTER TABLE `wp_usces_order`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `wp_usces_ordercart`
--
ALTER TABLE `wp_usces_ordercart`
  MODIFY `cart_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `wp_usces_ordercart_meta`
--
ALTER TABLE `wp_usces_ordercart_meta`
  MODIFY `cartmeta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_usces_order_meta`
--
ALTER TABLE `wp_usces_order_meta`
  MODIFY `ometa_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
