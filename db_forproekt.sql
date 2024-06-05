-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 05 2024 г., 16:00
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_forproekt`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://forproekt', 'yes'),
(2, 'home', 'http://forproekt', 'yes'),
(3, 'blogname', 'Форпроект', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alexander-drach@mail.ru', 'yes'),
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
(22, 'posts_per_page', '200', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:22:\"cyr2lat/cyr-to-lat.php\";i:3;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'forproekt_theme', 'yes'),
(41, 'stylesheet', 'forproekt_theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1728885091', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'WPLANG', 'ru_RU', 'yes'),
(104, 'user_count', '1', 'no'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:9:{i:1716992976;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1717005092;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1717005488;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1717048292;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717048688;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717048690;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717048980;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717566698;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.2\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(126, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1713337886;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(143, 'can_compress_scripts', '1', 'yes'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(159, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(172, 'acf_version', '6.2.2', 'yes'),
(176, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"22.5\";}', 'yes'),
(177, 'wpseo', 'a:110:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:21:\"post_type_made_public\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"22.5\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:19:\"enable_ai_generator\";b:1;s:22:\"ai_enabled_pre_default\";b:0;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1713333780;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:16:\"http://forproekt\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1713333797;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:19:\"deny_ccbot_crawling\";b:0;s:29:\"deny_google_extended_crawling\";b:0;s:20:\"deny_gptbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"f_services\";i:3;s:9:\"f_workers\";}s:28:\"last_known_public_taxonomies\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}s:23:\"last_known_no_unindexed\";a:5:{s:40:\"wpseo_total_unindexed_post_type_archives\";i:1716953443;s:31:\"wpseo_unindexed_post_link_count\";i:1716953443;s:31:\"wpseo_unindexed_term_link_count\";i:1716953443;s:35:\"wpseo_total_unindexed_general_items\";i:1716953443;s:27:\"wpseo_total_unindexed_posts\";i:1716787981;}s:14:\"new_post_types\";a:2:{i:3;s:10:\"f_services\";i:4;s:9:\"f_workers\";}s:14:\"new_taxonomies\";a:0:{}s:34:\"show_new_content_type_notification\";b:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(178, 'wpseo_titles', 'a:129:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:45:\"%%name%%, Автор в %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:64:\"Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:57:\"Страница не найдена %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:84:\"Сообщение %%POSTLINK%% появились сначала на %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:54:\"Ошибка 404: страница не найдена\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:19:\"Архивы для\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:31:\"Главная страница\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Вы искали\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:24:\"publishing_principles_id\";i:0;s:25:\"ownership_funding_info_id\";i:0;s:29:\"actionable_feedback_policy_id\";i:0;s:21:\"corrections_policy_id\";i:0;s:16:\"ethics_policy_id\";i:0;s:19:\"diversity_policy_id\";i:0;s:28:\"diversity_staffing_report_id\";i:0;s:15:\"org-description\";s:0:\"\";s:9:\"org-email\";s:0:\"\";s:9:\"org-phone\";s:0:\"\";s:14:\"org-legal-name\";s:0:\"\";s:17:\"org-founding-date\";s:0:\"\";s:20:\"org-number-employees\";s:0:\"\";s:10:\"org-vat-id\";s:0:\"\";s:10:\"org-tax-id\";s:0:\"\";s:7:\"org-iso\";s:0:\"\";s:8:\"org-duns\";s:0:\"\";s:11:\"org-leicode\";s:0:\"\";s:9:\"org-naics\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:27:\"Архивы %%term_title%%\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:27:\"Архивы %%term_title%%\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:27:\"Архивы %%term_title%%\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(179, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(218, 'current_theme', 'Форпроект', 'yes'),
(219, 'theme_mods_forproekt_theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:6:\"header\";i:2;s:6:\"footer\";i:3;s:6:\"filter\";i:12;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(220, 'theme_switched', '', 'yes'),
(259, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(260, '_transient_health-check-site-status-result', '{\"good\":18,\"recommended\":5,\"critical\":0}', 'yes'),
(281, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716961953;s:7:\"checked\";a:4:{s:15:\"forproekt_theme\";s:0:\"\";s:16:\"twentytwentyfour\";s:3:\"1.1\";s:17:\"twentytwentythree\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.1.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.4.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.7.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(306, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(373, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.5.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1716961951;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(375, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"alexander-drach@mail.ru\";s:7:\"version\";s:5:\"6.5.3\";s:9:\"timestamp\";i:1715501463;}', 'no'),
(396, 'wpseo_taxonomy_meta', 'a:1:{s:8:\"category\";a:2:{i:4;a:2:{s:13:\"wpseo_linkdex\";s:5:\"-2803\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:5;a:2:{s:13:\"wpseo_linkdex\";s:5:\"-2803\";s:19:\"wpseo_content_score\";s:1:\"0\";}}}', 'yes'),
(400, 'category_children', 'a:0:{}', 'yes'),
(466, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(586, '_site_transient_timeout_browser_fbe9cc09da895e896054e71b5d395308', '1717323589', 'no'),
(587, '_site_transient_browser_fbe9cc09da895e896054e71b5d395308', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"122.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(588, '_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b', '1717323590', 'no'),
(589, '_site_transient_php_check_9522db31646a2e4672d744b6f556967b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(752, '_transient_timeout_acf_plugin_updates', '1717126187', 'no'),
(753, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.3.0.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20240522\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.2.2\";}}', 'no'),
(757, '_site_transient_timeout_available_translations', '1716964223', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(758, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.8\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.8/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-17 04:58:23\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.4/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.25/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 09:17:56\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-20 07:52:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-03 06:53:44\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 08:56:53\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 11:05:05\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-28 12:45:26\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-26 13:47:17\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-26 13:44:37\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.5.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 14:48:34\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-03 13:12:29\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-13 14:21:47\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.5.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-15 20:08:02\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-24 17:26:23\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-10 06:30:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 03:31:51\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 03:31:15\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 19:22:48\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-23 14:33:39\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 15:08:30\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 17:55:40\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-27 13:30:32\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-27 01:40:49\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-11-08 20:42:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.15/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.20/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-08 03:22:25\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-26 19:16:27\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-01-12 17:31:37\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 18:38:28\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-16 17:07:01\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-03 13:45:51\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 13:13:32\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-27 10:52:27\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.5/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-19 23:22:01\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-03-01 06:52:39\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.32\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.32/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-25 08:05:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-16 07:24:01\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 11:52:45\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-22 14:20:40\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-12 09:04:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-04 16:29:29\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 07:16:04\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.25/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.20/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.6\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.6/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-13 16:06:43\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-20 01:03:51\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.5.3/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-26 16:49:07\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.5.3/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-09 18:37:05\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-28 13:16:04\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.8\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.8/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-23 19:36:11\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-16 08:56:54\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-24 10:30:01\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.14\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.14/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 17:40:16\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-14 08:49:16\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-05 08:03:59\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 21:12:05\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-15 09:47:39\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 13:57:21\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.33\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.33/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-29 14:17:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 10:39:37\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-28 12:52:40\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 19:04:40\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 19:26:39\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.15/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-28 08:42:13\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-12 10:29:16\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-02-14 12:47:33\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-28 08:39:39\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-03 15:29:12\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-18 11:29:39\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-14 05:23:13\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.9/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.24/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-18 15:04:07\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-20 12:38:20\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-03-06 18:52:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.15/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-21 03:44:55\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-19 09:07:33\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-12 07:23:41\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(763, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1717039843', 'no'),
(764, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(765, '_transient_timeout_wpseo_total_unindexed_general_items', '1717039843', 'no'),
(766, '_transient_wpseo_total_unindexed_general_items', '0', 'no'),
(767, '_transient_timeout_wpseo_unindexed_post_link_count', '1717039843', 'no'),
(768, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(769, '_transient_timeout_wpseo_unindexed_term_link_count', '1717039843', 'no'),
(770, '_transient_wpseo_unindexed_term_link_count', '0', 'no'),
(776, '_site_transient_timeout_theme_roots', '1716963752', 'no'),
(777, '_site_transient_theme_roots', 'a:4:{s:15:\"forproekt_theme\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(778, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716961954;s:8:\"response\";a:2:{s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"22.8\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.22.8.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.4\";s:6:\"tested\";s:5:\"6.5.3\";s:12:\"requires_php\";s:5:\"7.2.5\";s:16:\"requires_plugins\";a:0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.3.0.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20240522\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"6.1.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.6.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2834364\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2834364\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.1\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:6:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.2.2\";s:19:\"akismet/akismet.php\";s:5:\"5.3.2\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"6.1.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"22.5\";}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_edit_last', '1'),
(6, 7, '_wp_page_template', 'index.php'),
(7, 7, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(8, 7, '_yoast_wpseo_wordproof_timestamp', ''),
(9, 7, '_edit_lock', '1715087749:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_wp_page_template', 'page-projects.php'),
(12, 9, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(13, 9, '_yoast_wpseo_wordproof_timestamp', ''),
(14, 9, '_edit_lock', '1715087799:1'),
(15, 11, '_edit_last', '1'),
(16, 11, '_wp_page_template', 'page-about.php'),
(17, 11, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(18, 11, '_yoast_wpseo_wordproof_timestamp', ''),
(19, 11, '_edit_lock', '1716729385:1'),
(20, 13, '_edit_last', '1'),
(21, 13, '_wp_page_template', 'page-services.php'),
(22, 13, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(23, 13, '_yoast_wpseo_wordproof_timestamp', ''),
(24, 13, '_edit_lock', '1716722810:1'),
(25, 15, '_edit_last', '1'),
(26, 15, '_wp_page_template', 'page-news.php'),
(27, 15, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(28, 15, '_yoast_wpseo_wordproof_timestamp', ''),
(29, 15, '_edit_lock', '1715087769:1'),
(30, 17, '_edit_last', '1'),
(31, 17, '_wp_page_template', 'page-conacts.php'),
(32, 17, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(33, 17, '_yoast_wpseo_wordproof_timestamp', ''),
(34, 17, '_edit_lock', '1715088047:1'),
(39, 2, '_edit_lock', '1715086578:1'),
(40, 2, '_wp_trash_meta_status', 'publish'),
(41, 2, '_wp_trash_meta_time', '1715086726'),
(42, 2, '_wp_desired_post_slug', 'sample-page'),
(43, 22, '_menu_item_type', 'post_type'),
(44, 22, '_menu_item_menu_item_parent', '0'),
(45, 22, '_menu_item_object_id', '17'),
(46, 22, '_menu_item_object', 'page'),
(47, 22, '_menu_item_target', ''),
(48, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 22, '_menu_item_xfn', ''),
(50, 22, '_menu_item_url', ''),
(52, 23, '_menu_item_type', 'post_type'),
(53, 23, '_menu_item_menu_item_parent', '0'),
(54, 23, '_menu_item_object_id', '15'),
(55, 23, '_menu_item_object', 'page'),
(56, 23, '_menu_item_target', ''),
(57, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 23, '_menu_item_xfn', ''),
(59, 23, '_menu_item_url', ''),
(61, 24, '_menu_item_type', 'post_type'),
(62, 24, '_menu_item_menu_item_parent', '0'),
(63, 24, '_menu_item_object_id', '13'),
(64, 24, '_menu_item_object', 'page'),
(65, 24, '_menu_item_target', ''),
(66, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 24, '_menu_item_xfn', ''),
(68, 24, '_menu_item_url', ''),
(70, 25, '_menu_item_type', 'post_type'),
(71, 25, '_menu_item_menu_item_parent', '0'),
(72, 25, '_menu_item_object_id', '11'),
(73, 25, '_menu_item_object', 'page'),
(74, 25, '_menu_item_target', ''),
(75, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 25, '_menu_item_xfn', ''),
(77, 25, '_menu_item_url', ''),
(79, 26, '_menu_item_type', 'post_type'),
(80, 26, '_menu_item_menu_item_parent', '0'),
(81, 26, '_menu_item_object_id', '9'),
(82, 26, '_menu_item_object', 'page'),
(83, 26, '_menu_item_target', ''),
(84, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 26, '_menu_item_xfn', ''),
(86, 26, '_menu_item_url', ''),
(88, 33, '_menu_item_type', 'post_type'),
(89, 33, '_menu_item_menu_item_parent', '0'),
(90, 33, '_menu_item_object_id', '9'),
(91, 33, '_menu_item_object', 'page'),
(92, 33, '_menu_item_target', ''),
(93, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 33, '_menu_item_xfn', ''),
(95, 33, '_menu_item_url', ''),
(97, 34, '_menu_item_type', 'post_type'),
(98, 34, '_menu_item_menu_item_parent', '0'),
(99, 34, '_menu_item_object_id', '11'),
(100, 34, '_menu_item_object', 'page'),
(101, 34, '_menu_item_target', ''),
(102, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 34, '_menu_item_xfn', ''),
(104, 34, '_menu_item_url', ''),
(106, 35, '_menu_item_type', 'post_type'),
(107, 35, '_menu_item_menu_item_parent', '0'),
(108, 35, '_menu_item_object_id', '13'),
(109, 35, '_menu_item_object', 'page'),
(110, 35, '_menu_item_target', ''),
(111, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 35, '_menu_item_xfn', ''),
(113, 35, '_menu_item_url', ''),
(115, 36, '_menu_item_type', 'post_type'),
(116, 36, '_menu_item_menu_item_parent', '0'),
(117, 36, '_menu_item_object_id', '15'),
(118, 36, '_menu_item_object', 'page'),
(119, 36, '_menu_item_target', ''),
(120, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 36, '_menu_item_xfn', ''),
(122, 36, '_menu_item_url', ''),
(124, 37, '_menu_item_type', 'post_type'),
(125, 37, '_menu_item_menu_item_parent', '0'),
(126, 37, '_menu_item_object_id', '17'),
(127, 37, '_menu_item_object', 'page'),
(128, 37, '_menu_item_target', ''),
(129, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 37, '_menu_item_xfn', ''),
(131, 37, '_menu_item_url', ''),
(133, 38, '_menu_item_type', 'taxonomy'),
(134, 38, '_menu_item_menu_item_parent', '0'),
(135, 38, '_menu_item_object_id', '4'),
(136, 38, '_menu_item_object', 'category'),
(137, 38, '_menu_item_target', ''),
(138, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 38, '_menu_item_xfn', ''),
(140, 38, '_menu_item_url', ''),
(142, 39, '_menu_item_type', 'taxonomy'),
(143, 39, '_menu_item_menu_item_parent', '0'),
(144, 39, '_menu_item_object_id', '5'),
(145, 39, '_menu_item_object', 'category'),
(146, 39, '_menu_item_target', ''),
(147, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 39, '_menu_item_xfn', ''),
(149, 39, '_menu_item_url', ''),
(151, 40, '_menu_item_type', 'taxonomy'),
(152, 40, '_menu_item_menu_item_parent', '0'),
(153, 40, '_menu_item_object_id', '6'),
(154, 40, '_menu_item_object', 'category'),
(155, 40, '_menu_item_target', ''),
(156, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 40, '_menu_item_xfn', ''),
(158, 40, '_menu_item_url', ''),
(160, 41, '_menu_item_type', 'taxonomy'),
(161, 41, '_menu_item_menu_item_parent', '0'),
(162, 41, '_menu_item_object_id', '7'),
(163, 41, '_menu_item_object', 'category'),
(164, 41, '_menu_item_target', ''),
(165, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 41, '_menu_item_xfn', ''),
(167, 41, '_menu_item_url', ''),
(178, 43, '_menu_item_type', 'post_type'),
(179, 43, '_menu_item_menu_item_parent', '0'),
(180, 43, '_menu_item_object_id', '9'),
(181, 43, '_menu_item_object', 'page'),
(182, 43, '_menu_item_target', ''),
(183, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 43, '_menu_item_xfn', ''),
(185, 43, '_menu_item_url', ''),
(187, 43, '_wp_old_date', '2024-05-12'),
(188, 38, '_wp_old_date', '2024-05-12'),
(189, 39, '_wp_old_date', '2024-05-12'),
(190, 40, '_wp_old_date', '2024-05-12'),
(191, 41, '_wp_old_date', '2024-05-12'),
(192, 45, '_edit_last', '1'),
(193, 45, '_edit_lock', '1715966640:1'),
(196, 45, '_yoast_wpseo_primary_category', '5'),
(197, 45, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(198, 45, '_yoast_wpseo_wordproof_timestamp', ''),
(208, 45, '_wp_trash_meta_status', 'publish'),
(209, 45, '_wp_trash_meta_time', '1716719981'),
(210, 45, '_wp_desired_post_slug', 'proekt-1-zagolovok'),
(211, 51, '_edit_last', '1'),
(212, 51, '_edit_lock', '1716721747:1'),
(213, 53, '_edit_last', '1'),
(214, 53, '_edit_lock', '1716722145:1'),
(215, 13, 'vvodnyj_tekst', 'Наша команда профессионалов обладает большим опытом и знаниями, чтобы помочь воплотить ваши проекты в реальность. Мы стремимся к высокому качеству работы, инновационным решениям и удовлетворению потребностей наших клиентов. С нами ваш проект будет в надежных руках!'),
(216, 13, '_vvodnyj_tekst', 'field_665318e8584d5'),
(217, 32, 'vvodnyj_tekst', 'Наша команда профессионалов обладает большим опытом и знаниями, чтобы помочь воплотить ваши проекты в реальность. Мы стремимся к высокому качеству работы, инновационным решениям и удовлетворению потребностей наших клиентов.\r\nС нами ваш проект будет в надежных руках!'),
(218, 32, '_vvodnyj_tekst', 'field_665318e8584d5'),
(219, 55, 'vvodnyj_tekst', 'Наша команда профессионалов обладает большим опытом и знаниями, чтобы помочь воплотить ваши проекты в реальность. Мы стремимся к высокому качеству работы, инновационным решениям и удовлетворению потребностей наших клиентов. С нами ваш проект будет в надежных руках!'),
(220, 55, '_vvodnyj_tekst', 'field_665318e8584d5'),
(221, 56, 'vvodnyj_tekst', 'Наша команда профессионалов обладает большим опытом и знаниями, чтобы помочь воплотить ваши проекты в реальность. Мы стремимся к высокому качеству работы, инновационным решениям и удовлетворению потребностей наших клиентов. С нами ваш проект будет в надежных руках!'),
(222, 56, '_vvodnyj_tekst', 'field_665318e8584d5'),
(223, 58, '_edit_last', '1'),
(224, 58, '_edit_lock', '1716722878:1'),
(225, 11, 'vvodnyj_tekst', 'Форпроект – это команда профессионалов, преданная своему делу. Мы специализируемся на создании уникальных архитектурных решений и реализации высококачественных строительных проектов. Наш опыт и профессионализм позволяют нам создавать пространства, которые вдохновляют, удивляют и служат долгие годы.'),
(226, 11, '_vvodnyj_tekst', 'field_66531d14b4072'),
(227, 30, 'vvodnyj_tekst', 'Форпроект – это команда профессионалов, преданная своему делу. Мы специализируемся на создании уникальных архитектурных решений и реализации высококачественных строительных проектов. Наш опыт и профессионализм позволяют нам создавать пространства, которые вдохновляют, удивляют и служат долгие годы.'),
(228, 30, '_vvodnyj_tekst', 'field_66531d14b4072'),
(229, 61, '_edit_last', '1'),
(230, 61, '_edit_lock', '1716732247:1'),
(231, 65, '_edit_last', '1'),
(232, 65, '_edit_lock', '1716734165:1'),
(266, 77, '_edit_last', '1'),
(267, 77, '_edit_lock', '1716734010:1'),
(268, 77, 'ikonka', '85'),
(269, 77, '_ikonka', 'field_665336bcf6369'),
(270, 77, '_yoast_wpseo_content_score', '90'),
(271, 77, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(272, 77, '_yoast_wpseo_wordproof_timestamp', ''),
(273, 78, '_edit_last', '1'),
(274, 78, '_edit_lock', '1716731422:1'),
(275, 78, 'ikonka', ''),
(276, 78, '_ikonka', 'field_665336bcf6369'),
(277, 78, '_yoast_wpseo_content_score', '90'),
(278, 78, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(279, 78, '_yoast_wpseo_wordproof_timestamp', ''),
(280, 79, '_edit_last', '1'),
(281, 79, '_edit_lock', '1716731441:1'),
(282, 79, 'ikonka', ''),
(283, 79, '_ikonka', 'field_665336bcf6369'),
(284, 79, '_yoast_wpseo_content_score', '90'),
(285, 79, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(286, 79, '_yoast_wpseo_wordproof_timestamp', ''),
(287, 80, '_edit_last', '1'),
(288, 80, '_edit_lock', '1716731457:1'),
(289, 80, 'ikonka', ''),
(290, 80, '_ikonka', 'field_665336bcf6369'),
(291, 80, '_yoast_wpseo_content_score', '90'),
(292, 80, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(293, 80, '_yoast_wpseo_wordproof_timestamp', ''),
(294, 81, '_edit_last', '1'),
(295, 81, '_edit_lock', '1716731472:1'),
(296, 81, 'ikonka', ''),
(297, 81, '_ikonka', 'field_665336bcf6369'),
(298, 81, '_yoast_wpseo_content_score', '90'),
(299, 81, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(300, 81, '_yoast_wpseo_wordproof_timestamp', ''),
(301, 82, '_edit_last', '1'),
(302, 82, '_edit_lock', '1716731513:1'),
(303, 82, 'ikonka', ''),
(304, 82, '_ikonka', 'field_665336bcf6369'),
(305, 82, '_yoast_wpseo_content_score', '90'),
(306, 82, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(307, 82, '_yoast_wpseo_wordproof_timestamp', ''),
(308, 83, '_edit_last', '1'),
(309, 83, '_edit_lock', '1716731575:1'),
(310, 83, 'ikonka', ''),
(311, 83, '_ikonka', 'field_665336bcf6369'),
(312, 83, '_yoast_wpseo_content_score', '90'),
(313, 83, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(314, 83, '_yoast_wpseo_wordproof_timestamp', ''),
(315, 84, '_edit_last', '1'),
(316, 84, '_edit_lock', '1716732047:1'),
(317, 84, 'ikonka', ''),
(318, 84, '_ikonka', 'field_665336bcf6369'),
(319, 84, '_yoast_wpseo_content_score', '90'),
(320, 84, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(321, 84, '_yoast_wpseo_wordproof_timestamp', ''),
(325, 85, '_wp_attached_file', '2024/05/radius-all-dotted.png'),
(326, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:52;s:6:\"height\";i:52;s:4:\"file\";s:29:\"2024/05/radius-all-dotted.png\";s:8:\"filesize\";i:828;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(327, 86, 'ikonka', '85'),
(328, 86, '_ikonka', 'field_665336bcf6369'),
(331, 88, '_wp_attached_file', '2024/05/team-1.png'),
(332, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:366;s:6:\"height\";i:494;s:4:\"file\";s:18:\"2024/05/team-1.png\";s:8:\"filesize\";i:174683;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-1-222x300.png\";s:5:\"width\";i:222;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:61446;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:24686;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 90, '_wp_attached_file', '2024/05/team.png'),
(344, 90, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:366;s:6:\"height\";i:494;s:4:\"file\";s:16:\"2024/05/team.png\";s:8:\"filesize\";i:271571;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"team-222x300.png\";s:5:\"width\";i:222;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:86607;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"team-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34691;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(353, 91, '_edit_last', '1'),
(354, 91, '_edit_lock', '1716991395:1'),
(361, 96, '_edit_last', '1'),
(362, 96, '_edit_lock', '1716740060:1'),
(363, 96, 'imya', 'Оксана'),
(364, 96, '_imya', 'field_66533748a9311'),
(365, 96, 'dolzhnost', 'Ведущий инженер'),
(366, 96, '_dolzhnost', 'field_6653374fa9312'),
(367, 96, 'foto', ''),
(368, 96, '_foto', 'field_6653371ca930f'),
(369, 96, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(370, 96, '_yoast_wpseo_wordproof_timestamp', ''),
(371, 97, '_edit_last', '1'),
(372, 97, '_edit_lock', '1716740099:1'),
(373, 97, 'imya', 'Олег'),
(374, 97, '_imya', 'field_66533748a9311'),
(375, 97, 'dolzhnost', 'Инженер авторского надзора'),
(376, 97, '_dolzhnost', 'field_6653374fa9312'),
(377, 97, 'foto', ''),
(378, 97, '_foto', 'field_6653371ca930f'),
(379, 97, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(380, 97, '_yoast_wpseo_wordproof_timestamp', ''),
(381, 98, '_edit_last', '1'),
(382, 98, '_edit_lock', '1716740126:1'),
(383, 98, 'imya', 'Снежана'),
(384, 98, '_imya', 'field_66533748a9311'),
(385, 98, 'dolzhnost', 'Инженер-конструктор'),
(386, 98, '_dolzhnost', 'field_6653374fa9312'),
(387, 98, 'foto', ''),
(388, 98, '_foto', 'field_6653371ca930f'),
(389, 98, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(390, 98, '_yoast_wpseo_wordproof_timestamp', ''),
(391, 99, '_edit_last', '1'),
(392, 99, '_edit_lock', '1716740152:1'),
(393, 99, 'imya', 'Асель'),
(394, 99, '_imya', 'field_66533748a9311'),
(395, 99, 'dolzhnost', 'Инженер-конструктор'),
(396, 99, '_dolzhnost', 'field_6653374fa9312'),
(397, 99, 'foto', ''),
(398, 99, '_foto', 'field_6653371ca930f'),
(399, 99, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(400, 99, '_yoast_wpseo_wordproof_timestamp', ''),
(401, 100, '_edit_last', '1'),
(402, 100, '_edit_lock', '1716740185:1'),
(403, 100, 'imya', 'Екатерина'),
(404, 100, '_imya', 'field_66533748a9311'),
(405, 100, 'dolzhnost', 'Архитектор'),
(406, 100, '_dolzhnost', 'field_6653374fa9312'),
(407, 100, 'foto', ''),
(408, 100, '_foto', 'field_6653371ca930f'),
(409, 100, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(410, 100, '_yoast_wpseo_wordproof_timestamp', ''),
(411, 101, '_edit_last', '1'),
(412, 101, '_edit_lock', '1716740206:1'),
(413, 101, 'imya', 'Алина'),
(414, 101, '_imya', 'field_66533748a9311'),
(415, 101, 'dolzhnost', 'Архитектор'),
(416, 101, '_dolzhnost', 'field_6653374fa9312'),
(417, 101, 'foto', ''),
(418, 101, '_foto', 'field_6653371ca930f'),
(419, 101, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(420, 101, '_yoast_wpseo_wordproof_timestamp', ''),
(421, 102, '_edit_last', '1'),
(422, 102, '_edit_lock', '1716740230:1'),
(423, 102, 'imya', 'Мария'),
(424, 102, '_imya', 'field_66533748a9311'),
(425, 102, 'dolzhnost', 'Архитектор'),
(426, 102, '_dolzhnost', 'field_6653374fa9312'),
(427, 102, 'foto', ''),
(428, 102, '_foto', 'field_6653371ca930f'),
(429, 102, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(430, 102, '_yoast_wpseo_wordproof_timestamp', ''),
(431, 103, '_edit_last', '1'),
(432, 103, '_edit_lock', '1716740256:1'),
(433, 103, 'imya', 'Юлия'),
(434, 103, '_imya', 'field_66533748a9311'),
(435, 103, 'dolzhnost', 'Ведущий архитектор'),
(436, 103, '_dolzhnost', 'field_6653374fa9312'),
(437, 103, 'foto', ''),
(438, 103, '_foto', 'field_6653371ca930f'),
(439, 103, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(440, 103, '_yoast_wpseo_wordproof_timestamp', ''),
(441, 104, '_edit_last', '1'),
(442, 104, '_edit_lock', '1716740291:1'),
(443, 104, 'imya', 'Екатерина'),
(444, 104, '_imya', 'field_66533748a9311'),
(445, 104, 'dolzhnost', 'Главный архитектор проектов'),
(446, 104, '_dolzhnost', 'field_6653374fa9312'),
(447, 104, 'foto', ''),
(448, 104, '_foto', 'field_6653371ca930f'),
(449, 104, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(450, 104, '_yoast_wpseo_wordproof_timestamp', ''),
(451, 105, '_edit_last', '1'),
(452, 105, '_edit_lock', '1716740319:1'),
(453, 105, 'imya', 'Руслан'),
(454, 105, '_imya', 'field_66533748a9311'),
(455, 105, 'dolzhnost', 'Главный инженер проектов'),
(456, 105, '_dolzhnost', 'field_6653374fa9312'),
(457, 105, 'foto', ''),
(458, 105, '_foto', 'field_6653371ca930f'),
(459, 105, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(460, 105, '_yoast_wpseo_wordproof_timestamp', ''),
(461, 106, '_edit_last', '1'),
(462, 106, '_edit_lock', '1716741563:1'),
(463, 106, 'imya', 'Андрей'),
(464, 106, '_imya', 'field_66533748a9311'),
(465, 106, 'dolzhnost', 'Директор'),
(466, 106, '_dolzhnost', 'field_6653374fa9312'),
(467, 106, 'foto', ''),
(468, 106, '_foto', 'field_6653371ca930f'),
(469, 106, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(470, 106, '_yoast_wpseo_wordproof_timestamp', ''),
(471, 126, '_edit_last', '1'),
(472, 126, '_edit_lock', '1716991395:1'),
(475, 126, 'podzagolovok', '(здания офиса IT-подразделения Raiffeisen TechCenter в г. Омске)'),
(476, 126, '_podzagolovok', 'field_66535014b7011'),
(477, 126, 'status', 'реализован'),
(478, 126, '_status', 'field_66541b2397615'),
(479, 126, 'god', '2018 – 2021'),
(480, 126, '_god', 'field_66541b3b97616'),
(481, 126, 'mesto', 'г. Омск'),
(482, 126, '_mesto', 'field_66541b4f97617'),
(483, 126, 'avtory_proekta_arhitektory_0_arhitektor', 'Гордок Екатерина'),
(484, 126, '_avtory_proekta_arhitektory_0_arhitektor', 'field_66541b7697619'),
(485, 126, 'avtory_proekta_arhitektory_1_arhitektor', 'Чехова Юлия;'),
(486, 126, '_avtory_proekta_arhitektory_1_arhitektor', 'field_66541b7697619'),
(487, 126, 'avtory_proekta_arhitektory', '2'),
(488, 126, '_avtory_proekta_arhitektory', 'field_66541b5697618'),
(489, 126, 'konstruktory_0_konstruktor', 'Валидов Руслан'),
(490, 126, '_konstruktory_0_konstruktor', 'field_66541bbf9761b'),
(491, 126, 'konstruktory_1_konstruktor', 'Бухтияров Андрей'),
(492, 126, '_konstruktory_1_konstruktor', 'field_66541bbf9761b'),
(493, 126, 'konstruktory_2_konstruktor', 'Ланбин Евгений'),
(494, 126, '_konstruktory_2_konstruktor', 'field_66541bbf9761b'),
(495, 126, 'konstruktory', '3'),
(496, 126, '_konstruktory', 'field_66541b939761a'),
(497, 126, 'vizualizatory_0_vizualizator', 'Матвеев Сергей'),
(498, 126, '_vizualizatory_0_vizualizator', 'field_66541bf29761d'),
(499, 126, 'vizualizatory', '1'),
(500, 126, '_vizualizatory', 'field_66541bd69761c'),
(501, 126, 'stadii_0_stadiya', 'Обмеры'),
(502, 126, '_stadii_0_stadiya', 'field_66541c219761f'),
(503, 126, 'stadii_1_stadiya', 'обследование'),
(504, 126, '_stadii_1_stadiya', 'field_66541c219761f'),
(505, 126, 'stadii_2_stadiya', 'эскизный проект капремонта'),
(506, 126, '_stadii_2_stadiya', 'field_66541c219761f'),
(507, 126, 'stadii_3_stadiya', 'стадия Р'),
(508, 126, '_stadii_3_stadiya', 'field_66541c219761f'),
(509, 126, 'stadii_4_stadiya', 'авторский надзор'),
(510, 126, '_stadii_4_stadiya', 'field_66541c219761f'),
(511, 126, 'stadii_5_stadiya', 'реализация'),
(512, 126, '_stadii_5_stadiya', 'field_66541c219761f'),
(513, 126, 'stadii', '6'),
(514, 126, '_stadii', 'field_66541c129761e'),
(515, 126, 'generalnyj_proektirovshhik', 'ООО «Проект Лидер»'),
(516, 126, '_generalnyj_proektirovshhik', 'field_66541ca497620'),
(517, 126, 'zadachi_proekta', 'выполнить ремонт здания, перепрофилировав его под нужды будущего арендатора;\r\nмаксимально сохранить дух места и промышленной архитектуры;\r\nсоздать современное благоустройство;\r\nоткрыть бывшую «промку» для города;\r\nсформировать место притяжения людей, повысить эстетическую ценность территории.'),
(518, 126, '_zadachi_proekta', 'field_66541cc097621'),
(519, 126, 'opisanie_proekta', '<div>Удалось сохранить в достоверном виде постройку известного омского конструктивиста Петра</div>\r\n<div>Русинова 1930-х гг., не искажая образ здания чужеродными деталями.</div>\r\n<div>Не пытаясь добавить к этому объекту что-то свое, мы максимально приблизили вид здания к первоначальному.</div>\r\n<div>Сохранены уникальные для Омска английские фермы. Расстекловка витражей принята близкой к</div>\r\n<div>деревянным оригиналам, вплоть до применения рам, импостов, фальш-импостов разной ширины.</div>\r\n<div>Из вольностей: утеплен, облицован гранитом цоколь - при эксплуатации он был испещрен отверстиями.</div>\r\n<div>Применен принцип рукотворности: декоративная ставня на одном из окон, надстройка, слегка “уползший” карниз умышленно выполнены несовершенными, лишены механистичности.</div>\r\n<div>Продолжается благоустройство прилегающей территории.</div>'),
(520, 126, '_opisanie_proekta', 'field_66541cd097622'),
(521, 126, 'fotografii_proekta', ''),
(522, 126, '_fotografii_proekta', 'field_66541d3897623'),
(523, 126, 'opisanie_intererov_tekst', ''),
(524, 126, '_opisanie_intererov_tekst', 'field_66541d7397625'),
(525, 126, 'foto_intererov', ''),
(526, 126, '_foto_intererov', 'field_66541da097626'),
(527, 126, '_yoast_wpseo_primary_category', '4'),
(528, 126, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(529, 126, '_yoast_wpseo_wordproof_timestamp', ''),
(532, 127, 'podzagolovok', '(здания офиса IT-подразделения Raiffeisen TechCenter в г. Омске)'),
(533, 127, '_podzagolovok', 'field_66535014b7011'),
(534, 127, 'status', 'реализован'),
(535, 127, '_status', 'field_66541b2397615'),
(536, 127, 'god', '2018 – 2021'),
(537, 127, '_god', 'field_66541b3b97616'),
(538, 127, 'mesto', 'г. Омск'),
(539, 127, '_mesto', 'field_66541b4f97617'),
(540, 127, 'avtory_proekta_arhitektory_0_arhitektor', 'Гордок Екатерина'),
(541, 127, '_avtory_proekta_arhitektory_0_arhitektor', 'field_66541b7697619'),
(542, 127, 'avtory_proekta_arhitektory_1_arhitektor', 'Чехова Юлия;'),
(543, 127, '_avtory_proekta_arhitektory_1_arhitektor', 'field_66541b7697619'),
(544, 127, 'avtory_proekta_arhitektory', '2'),
(545, 127, '_avtory_proekta_arhitektory', 'field_66541b5697618'),
(546, 127, 'konstruktory_0_konstruktor', 'Валидов Руслан'),
(547, 127, '_konstruktory_0_konstruktor', 'field_66541bbf9761b'),
(548, 127, 'konstruktory_1_konstruktor', 'Бухтияров Андрей'),
(549, 127, '_konstruktory_1_konstruktor', 'field_66541bbf9761b'),
(550, 127, 'konstruktory_2_konstruktor', 'Ланбин Евгений'),
(551, 127, '_konstruktory_2_konstruktor', 'field_66541bbf9761b'),
(552, 127, 'konstruktory', '3'),
(553, 127, '_konstruktory', 'field_66541b939761a'),
(554, 127, 'vizualizatory_0_vizualizator', 'Матвеев Сергей'),
(555, 127, '_vizualizatory_0_vizualizator', 'field_66541bf29761d'),
(556, 127, 'vizualizatory', '1'),
(557, 127, '_vizualizatory', 'field_66541bd69761c'),
(558, 127, 'stadii_0_stadiya', 'Обмеры'),
(559, 127, '_stadii_0_stadiya', 'field_66541c219761f'),
(560, 127, 'stadii_1_stadiya', 'обследование'),
(561, 127, '_stadii_1_stadiya', 'field_66541c219761f'),
(562, 127, 'stadii_2_stadiya', 'эскизный проект капремонта'),
(563, 127, '_stadii_2_stadiya', 'field_66541c219761f'),
(564, 127, 'stadii_3_stadiya', 'стадия Р'),
(565, 127, '_stadii_3_stadiya', 'field_66541c219761f'),
(566, 127, 'stadii_4_stadiya', 'авторский надзор'),
(567, 127, '_stadii_4_stadiya', 'field_66541c219761f'),
(568, 127, 'stadii_5_stadiya', 'реализация'),
(569, 127, '_stadii_5_stadiya', 'field_66541c219761f'),
(570, 127, 'stadii', '6'),
(571, 127, '_stadii', 'field_66541c129761e'),
(572, 127, 'generalnyj_proektirovshhik', 'ООО «Проект Лидер»'),
(573, 127, '_generalnyj_proektirovshhik', 'field_66541ca497620'),
(574, 127, 'zadachi_proekta', 'выполнить ремонт здания, перепрофилировав его под нужды будущего арендатора;\r\nмаксимально сохранить дух места и промышленной архитектуры;\r\nсоздать современное благоустройство;\r\nоткрыть бывшую «промку» для города;\r\nсформировать место притяжения людей, повысить эстетическую ценность территории.'),
(575, 127, '_zadachi_proekta', 'field_66541cc097621'),
(576, 127, 'opisanie_proekta', '<div>Удалось сохранить в достоверном виде постройку известного омского конструктивиста Петра</div>\r\n<div>Русинова 1930-х гг., не искажая образ здания чужеродными деталями.</div>\r\n<div>Не пытаясь добавить к этому объекту что-то свое, мы максимально приблизили вид здания к первоначальному.</div>\r\n<div>Сохранены уникальные для Омска английские фермы. Расстекловка витражей принята близкой к</div>\r\n<div>деревянным оригиналам, вплоть до применения рам, импостов, фальш-импостов разной ширины.</div>\r\n<div>Из вольностей: утеплен, облицован гранитом цоколь - при эксплуатации он был испещрен отверстиями.</div>\r\n<div>Применен принцип рукотворности: декоративная ставня на одном из окон, надстройка, слегка “уползший” карниз умышленно выполнены несовершенными, лишены механистичности.</div>\r\n<div>Продолжается благоустройство прилегающей территории.</div>'),
(577, 127, '_opisanie_proekta', 'field_66541cd097622'),
(578, 127, 'fotografii_proekta', ''),
(579, 127, '_fotografii_proekta', 'field_66541d3897623'),
(580, 127, 'opisanie_intererov_tekst', ''),
(581, 127, '_opisanie_intererov_tekst', 'field_66541d7397625'),
(582, 127, 'foto_intererov', ''),
(583, 127, '_foto_intererov', 'field_66541da097626'),
(584, 126, '_wp_page_template', 'single-project.php'),
(591, 126, 'zagolovok_interery', ''),
(592, 126, '_zagolovok_interery', 'field_6656a21abc0be'),
(593, 127, 'zagolovok_interery', ''),
(594, 127, '_zagolovok_interery', 'field_6656a21abc0be');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2024-04-17 08:51:31', '2024-04-17 05:51:31', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://forproekt/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2024-05-07 15:58:46', '2024-05-07 12:58:46', '', 0, 'http://forproekt/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-04-17 08:51:31', '2024-04-17 05:51:31', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Кто мы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://forproekt.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Комментарии</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Медиафайлы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куки</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Встраиваемое содержимое других вебсайтов</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куда отправляются ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\n<!-- /wp:paragraph -->\n', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-04-17 08:51:31', '2024-04-17 05:51:31', '', 0, 'http://forproekt/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-04-17 08:51:34', '2024-04-17 05:51:34', '<!-- wp:page-list /-->', 'Навигация', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-04-17 08:51:34', '2024-04-17 05:51:34', '', 0, 'http://forproekt/2024/04/17/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2024-04-17 09:04:39', '2024-04-17 06:04:39', 'Главная страница', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2024-05-07 16:18:08', '2024-05-07 13:18:08', '', 0, 'http://forproekt/?page_id=7', 0, 'page', '', 0),
(8, 1, '2024-04-17 09:04:39', '2024-04-17 06:04:39', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2024-04-17 09:04:39', '2024-04-17 06:04:39', '', 7, 'http://forproekt/?p=8', 0, 'revision', '', 0),
(9, 1, '2024-04-17 09:05:01', '2024-04-17 06:05:01', 'Страница проекты', 'Проекты', '', 'publish', 'closed', 'closed', '', 'proekty', '', '', '2024-05-07 16:18:57', '2024-05-07 13:18:57', '', 0, 'http://forproekt/?page_id=9', 0, 'page', '', 0),
(10, 1, '2024-04-17 09:05:01', '2024-04-17 06:05:01', '', 'Проекты', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2024-04-17 09:05:01', '2024-04-17 06:05:01', '', 9, 'http://forproekt/?p=10', 0, 'revision', '', 0),
(11, 1, '2024-04-17 09:05:13', '2024-04-17 06:05:13', '', 'О нас', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2024-05-26 14:31:03', '2024-05-26 11:31:03', '', 0, 'http://forproekt/?page_id=11', 0, 'page', '', 0),
(12, 1, '2024-04-17 09:05:13', '2024-04-17 06:05:13', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-04-17 09:05:13', '2024-04-17 06:05:13', '', 11, 'http://forproekt/?p=12', 0, 'revision', '', 0),
(13, 1, '2024-04-17 09:05:24', '2024-04-17 06:05:24', '', 'Услуги', '', 'publish', 'closed', 'closed', '', 'uslugi', '', '', '2024-05-26 14:21:34', '2024-05-26 11:21:34', '', 0, 'http://forproekt/?page_id=13', 0, 'page', '', 0),
(14, 1, '2024-04-17 09:05:24', '2024-04-17 06:05:24', '', 'Услуги', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-04-17 09:05:24', '2024-04-17 06:05:24', '', 13, 'http://forproekt/?p=14', 0, 'revision', '', 0),
(15, 1, '2024-04-17 09:05:35', '2024-04-17 06:05:35', 'Страница новости', 'Новости', '', 'publish', 'closed', 'closed', '', 'novosti', '', '', '2024-05-07 16:18:24', '2024-05-07 13:18:24', '', 0, 'http://forproekt/?page_id=15', 0, 'page', '', 0),
(16, 1, '2024-04-17 09:05:35', '2024-04-17 06:05:35', '', 'Новости', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-04-17 09:05:35', '2024-04-17 06:05:35', '', 15, 'http://forproekt/?p=16', 0, 'revision', '', 0),
(17, 1, '2024-04-17 09:05:51', '2024-04-17 06:05:51', 'Страница контакты', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2024-05-07 16:17:51', '2024-05-07 13:17:51', '', 0, 'http://forproekt/?page_id=17', 0, 'page', '', 0),
(18, 1, '2024-04-17 09:05:51', '2024-04-17 06:05:51', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2024-04-17 09:05:51', '2024-04-17 06:05:51', '', 17, 'http://forproekt/?p=18', 0, 'revision', '', 0),
(21, 1, '2024-05-07 15:58:46', '2024-05-07 12:58:46', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://forproekt/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-05-07 15:58:46', '2024-05-07 12:58:46', '', 2, 'http://forproekt/?p=21', 0, 'revision', '', 0),
(22, 1, '2024-05-07 16:07:16', '2024-05-07 13:00:52', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2024-05-07 16:07:16', '2024-05-07 13:07:16', '', 0, 'http://forproekt/?p=22', 5, 'nav_menu_item', '', 0),
(23, 1, '2024-05-07 16:07:16', '2024-05-07 13:00:52', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2024-05-07 16:07:16', '2024-05-07 13:07:16', '', 0, 'http://forproekt/?p=23', 4, 'nav_menu_item', '', 0),
(24, 1, '2024-05-07 16:07:16', '2024-05-07 13:00:52', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2024-05-07 16:07:16', '2024-05-07 13:07:16', '', 0, 'http://forproekt/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2024-05-07 16:07:16', '2024-05-07 13:00:52', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2024-05-07 16:07:16', '2024-05-07 13:07:16', '', 0, 'http://forproekt/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2024-05-07 16:07:16', '2024-05-07 13:00:52', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2024-05-07 16:07:16', '2024-05-07 13:07:16', '', 0, 'http://forproekt/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2024-05-07 16:17:51', '2024-05-07 13:17:51', 'Страница контакты', 'Контакты', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2024-05-07 16:17:51', '2024-05-07 13:17:51', '', 17, 'http://forproekt/?p=27', 0, 'revision', '', 0),
(28, 1, '2024-05-07 16:18:08', '2024-05-07 13:18:08', 'Главная страница', 'Главная', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2024-05-07 16:18:08', '2024-05-07 13:18:08', '', 7, 'http://forproekt/?p=28', 0, 'revision', '', 0),
(29, 1, '2024-05-07 16:18:24', '2024-05-07 13:18:24', 'Страница новости', 'Новости', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-05-07 16:18:24', '2024-05-07 13:18:24', '', 15, 'http://forproekt/?p=29', 0, 'revision', '', 0),
(30, 1, '2024-05-07 16:18:43', '2024-05-07 13:18:43', 'Страница о нас', 'О нас', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-05-07 16:18:43', '2024-05-07 13:18:43', '', 11, 'http://forproekt/?p=30', 0, 'revision', '', 0),
(31, 1, '2024-05-07 16:18:57', '2024-05-07 13:18:57', 'Страница проекты', 'Проекты', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2024-05-07 16:18:57', '2024-05-07 13:18:57', '', 9, 'http://forproekt/?p=31', 0, 'revision', '', 0),
(32, 1, '2024-05-07 16:19:18', '2024-05-07 13:19:18', 'Страница Услуги', 'Услуги', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-07 16:19:18', '2024-05-07 13:19:18', '', 13, 'http://forproekt/?p=32', 0, 'revision', '', 0),
(33, 1, '2024-05-12 11:12:58', '2024-05-12 08:12:58', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2024-05-12 11:12:58', '2024-05-12 08:12:58', '', 0, 'http://forproekt/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2024-05-12 11:12:58', '2024-05-12 08:12:58', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2024-05-12 11:12:58', '2024-05-12 08:12:58', '', 0, 'http://forproekt/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2024-05-12 11:12:58', '2024-05-12 08:12:58', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2024-05-12 11:12:58', '2024-05-12 08:12:58', '', 0, 'http://forproekt/?p=35', 3, 'nav_menu_item', '', 0),
(36, 1, '2024-05-12 11:12:58', '2024-05-12 08:12:58', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2024-05-12 11:12:58', '2024-05-12 08:12:58', '', 0, 'http://forproekt/?p=36', 4, 'nav_menu_item', '', 0),
(37, 1, '2024-05-12 11:12:58', '2024-05-12 08:12:58', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2024-05-12 11:12:58', '2024-05-12 08:12:58', '', 0, 'http://forproekt/?p=37', 5, 'nav_menu_item', '', 0),
(38, 1, '2024-05-17 11:37:26', '2024-05-12 11:02:00', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2024-05-17 11:37:26', '2024-05-17 08:37:26', '', 0, 'http://forproekt/?p=38', 2, 'nav_menu_item', '', 0),
(39, 1, '2024-05-17 11:37:26', '2024-05-12 11:02:00', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2024-05-17 11:37:26', '2024-05-17 08:37:26', '', 0, 'http://forproekt/?p=39', 3, 'nav_menu_item', '', 0),
(40, 1, '2024-05-17 11:37:26', '2024-05-12 11:02:00', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2024-05-17 11:37:26', '2024-05-17 08:37:26', '', 0, 'http://forproekt/?p=40', 4, 'nav_menu_item', '', 0),
(41, 1, '2024-05-17 11:37:26', '2024-05-12 11:02:00', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2024-05-17 11:37:26', '2024-05-17 08:37:26', '', 0, 'http://forproekt/?p=41', 5, 'nav_menu_item', '', 0),
(43, 1, '2024-05-17 11:37:26', '2024-05-12 11:09:16', '', 'Все категории', '', 'publish', 'closed', 'closed', '', 'vse-kategorii-2', '', '', '2024-05-17 11:37:26', '2024-05-17 08:37:26', '', 0, 'http://forproekt/?p=43', 1, 'nav_menu_item', '', 0),
(45, 1, '2024-05-17 07:55:52', '2024-05-17 04:55:52', 'Описание проекта 1', 'Проект 1 заголовок', '', 'trash', 'open', 'open', '', 'proekt-1-zagolovok__trashed', '', '', '2024-05-26 13:39:41', '2024-05-26 10:39:41', '', 0, 'http://forproekt/?p=45', 0, 'post', '', 0),
(46, 1, '2024-05-17 07:55:52', '2024-05-17 04:55:52', 'Описание проекта 1', 'Проект 1 заголовок', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2024-05-17 07:55:52', '2024-05-17 04:55:52', '', 45, 'http://forproekt/?p=46', 0, 'revision', '', 0),
(48, 1, '2024-05-26 13:19:50', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-26 13:19:50', '0000-00-00 00:00:00', '', 0, 'http://forproekt/?p=48', 0, 'post', '', 0),
(49, 1, '2024-05-26 13:21:15', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-26 13:21:15', '0000-00-00 00:00:00', '', 0, 'http://forproekt/?p=49', 0, 'post', '', 0),
(50, 1, '2024-05-26 13:28:14', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-26 13:28:14', '0000-00-00 00:00:00', '', 0, 'http://forproekt/?p=50', 0, 'post', '', 0),
(51, 1, '2024-05-26 14:08:27', '2024-05-26 11:08:27', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"index.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Страница - Главная', 'stranicza-glavnaya', 'publish', 'closed', 'closed', '', 'group_6653117a12520', '', '', '2024-05-26 14:10:25', '2024-05-26 11:10:25', '', 0, 'http://forproekt/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2024-05-26 14:08:27', '2024-05-26 11:08:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Главный баннер', 'glavnyj_banner', 'publish', 'closed', 'closed', '', 'field_6653117a9f394', '', '', '2024-05-26 14:08:27', '2024-05-26 11:08:27', '', 51, 'http://forproekt/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2024-05-26 14:12:43', '2024-05-26 11:12:43', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-services.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Страница - Услуги', 'stranicza-uslugi', 'publish', 'closed', 'closed', '', 'group_665318e852557', '', '', '2024-05-26 14:12:43', '2024-05-26 11:12:43', '', 0, 'http://forproekt/?post_type=acf-field-group&#038;p=53', 0, 'acf-field-group', '', 0),
(54, 1, '2024-05-26 14:12:43', '2024-05-26 11:12:43', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Вводный текст', 'vvodnyj_tekst', 'publish', 'closed', 'closed', '', 'field_665318e8584d5', '', '', '2024-05-26 14:12:43', '2024-05-26 11:12:43', '', 53, 'http://forproekt/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2024-05-26 14:20:12', '2024-05-26 11:20:12', 'Страница Услуги', 'Услуги', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-26 14:20:12', '2024-05-26 11:20:12', '', 13, 'http://forproekt/?p=55', 0, 'revision', '', 0),
(56, 1, '2024-05-26 14:21:02', '2024-05-26 11:21:02', 'Страница Услуги', 'Услуги', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-26 14:21:02', '2024-05-26 11:21:02', '', 13, 'http://forproekt/?p=56', 0, 'revision', '', 0),
(57, 1, '2024-05-26 14:21:34', '2024-05-26 11:21:34', '', 'Услуги', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-26 14:21:34', '2024-05-26 11:21:34', '', 13, 'http://forproekt/?p=57', 0, 'revision', '', 0),
(58, 1, '2024-05-26 14:30:18', '2024-05-26 11:30:18', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"page-about.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Страница - О нас', 'stranicza-o-nas', 'publish', 'closed', 'closed', '', 'group_66531d14058ed', '', '', '2024-05-26 14:30:18', '2024-05-26 11:30:18', '', 0, 'http://forproekt/?post_type=acf-field-group&#038;p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2024-05-26 14:30:18', '2024-05-26 11:30:18', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Вводный текст', 'vvodnyj_tekst', 'publish', 'closed', 'closed', '', 'field_66531d14b4072', '', '', '2024-05-26 14:30:18', '2024-05-26 11:30:18', '', 58, 'http://forproekt/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2024-05-26 14:31:03', '2024-05-26 11:31:03', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-05-26 14:31:03', '2024-05-26 11:31:03', '', 11, 'http://forproekt/?p=60', 0, 'revision', '', 0),
(61, 1, '2024-05-26 16:20:18', '2024-05-26 13:20:18', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"f_services\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"field\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Услуги', 'uslugi', 'publish', 'closed', 'closed', '', 'group_665336bc52cd9', '', '', '2024-05-26 16:38:37', '2024-05-26 13:38:37', '', 0, 'http://forproekt/?post_type=acf-field-group&#038;p=61', 0, 'acf-field-group', '', 0),
(62, 1, '2024-05-26 16:20:18', '2024-05-26 13:20:18', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'иконка', 'ikonka', 'publish', 'closed', 'closed', '', 'field_665336bcf6369', '', '', '2024-05-26 16:20:18', '2024-05-26 13:20:18', '', 61, 'http://forproekt/?post_type=acf-field&p=62', 0, 'acf-field', '', 0),
(65, 1, '2024-05-26 16:21:41', '2024-05-26 13:21:41', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"f_workers\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Сотрудники', 'sotrudniki', 'publish', 'closed', 'closed', '', 'group_6653371c3041f', '', '', '2024-05-26 17:38:22', '2024-05-26 14:38:22', '', 0, 'http://forproekt/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2024-05-26 16:21:41', '2024-05-26 13:21:41', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'фото', 'foto', 'publish', 'closed', 'closed', '', 'field_6653371ca930f', '', '', '2024-05-26 17:36:32', '2024-05-26 14:36:32', '', 65, 'http://forproekt/?post_type=acf-field&#038;p=66', 2, 'acf-field', '', 0),
(68, 1, '2024-05-26 16:21:41', '2024-05-26 13:21:41', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Имя', 'imya', 'publish', 'closed', 'closed', '', 'field_66533748a9311', '', '', '2024-05-26 17:36:32', '2024-05-26 14:36:32', '', 65, 'http://forproekt/?post_type=acf-field&#038;p=68', 0, 'acf-field', '', 0),
(69, 1, '2024-05-26 16:21:41', '2024-05-26 13:21:41', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'должность', 'dolzhnost', 'publish', 'closed', 'closed', '', 'field_6653374fa9312', '', '', '2024-05-26 17:36:32', '2024-05-26 14:36:32', '', 65, 'http://forproekt/?post_type=acf-field&#038;p=69', 1, 'acf-field', '', 0),
(71, 1, '2024-05-26 16:25:32', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-26 16:25:32', '0000-00-00 00:00:00', '', 0, 'http://forproekt/?p=71', 0, 'post', '', 0),
(75, 1, '2024-05-26 16:32:13', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-05-26 16:32:13', '0000-00-00 00:00:00', '', 0, 'http://forproekt/?post_type=f_services&p=75', 0, 'f_services', '', 0),
(76, 1, '2024-05-26 16:35:01', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-05-26 16:35:01', '0000-00-00 00:00:00', '', 0, 'http://forproekt/?post_type=f_services&p=76', 0, 'f_services', '', 0),
(77, 1, '2024-05-26 16:10:43', '2024-05-26 13:10:43', 'Изучение участка и прилегающих территорий. Определение ориентировочных технико-экономических показателей и потенциала, целевого использования и экономической целесообразности.', 'Предпроектный анализ территории', '', 'publish', 'closed', 'closed', '', 'predproektnyj-analiz-territorii', '', '', '2024-05-26 16:51:49', '2024-05-26 13:51:49', '', 0, 'http://forproekt/?post_type=f_services&#038;p=77', 0, 'f_services', '', 0),
(78, 1, '2024-05-26 16:09:15', '2024-05-26 13:09:15', 'Предварительные архитектурные чертежи (схемы планов, фасадов, разрезов), схема благоустройства и баланс территории, основные технико-экономические показатели и другие нормируемые показатели.', 'Архитектурная концепция (эскизное проектирование)', '', 'publish', 'closed', 'closed', '', 'arhitekturnaya-konczepcziya-eskiznoe-proektirovanie', '', '', '2024-05-26 16:52:35', '2024-05-26 13:52:35', '', 0, 'http://forproekt/?post_type=f_services&#038;p=78', 0, 'f_services', '', 0),
(79, 1, '2024-05-26 16:08:45', '2024-05-26 13:08:45', 'Исследование территории, расчет технико-экономических параметров, разработка эскиза застройки, схем градостроительного анализа, объемно-пространственного решения, создание визуализаций', 'Градостроительная концепция', '', 'publish', 'closed', 'closed', '', 'gradostroitelnaya-konczepcziya', '', '', '2024-05-26 16:53:01', '2024-05-26 13:53:01', '', 0, 'http://forproekt/?post_type=f_services&#038;p=79', 0, 'f_services', '', 0),
(80, 1, '2024-05-26 16:07:45', '2024-05-26 13:07:45', 'Разработка проектной документации в соответствии с Постановлением Правительства Российской Федерации от 16 февраля 2008 г. №87, достаточной для получения для получения разрешения на строительство.', 'Проектная документация', '', 'publish', 'closed', 'closed', '', 'proektnaya-dokumentacziya', '', '', '2024-05-26 16:53:17', '2024-05-26 13:53:17', '', 0, 'http://forproekt/?post_type=f_services&#038;p=80', 0, 'f_services', '', 0),
(81, 1, '2024-05-26 16:06:15', '2024-05-26 13:06:15', 'Документация, передаваемая непосредственно на строительную площадку для выполнения работ. Включает в себя полную информацию, необходимую для строительства объекта.', 'Рабочая документация', '', 'publish', 'closed', 'closed', '', 'rabochaya-dokumentacziya', '', '', '2024-05-26 16:53:33', '2024-05-26 13:53:33', '', 0, 'http://forproekt/?post_type=f_services&#038;p=81', 0, 'f_services', '', 0),
(82, 1, '2024-05-26 16:05:40', '2024-05-26 13:05:40', 'Разработка интерьеров для жилых и коммерческих помещений. Уникальный проект, включающий планировку помещения, подбор материалов, мебели и декора, который учитывает предпочтения заказчика, функциональные требования и бюджет.', 'Интерьеры', '', 'publish', 'closed', 'closed', '', 'interery', '', '', '2024-05-26 16:53:49', '2024-05-26 13:53:49', '', 0, 'http://forproekt/?post_type=f_services&#038;p=82', 0, 'f_services', '', 0),
(83, 1, '2024-05-26 16:04:14', '2024-05-26 13:04:14', 'Проверка выполняемых на объекте строительно-монтажных работ на соответствие разработанной проектной документации', 'Авторский надзор', '', 'publish', 'closed', 'closed', '', 'avtorskij-nadzor', '', '', '2024-05-26 16:55:15', '2024-05-26 13:55:15', '', 0, 'http://forproekt/?post_type=f_services&#038;p=83', 0, 'f_services', '', 0),
(84, 1, '2024-05-26 16:03:42', '2024-05-26 13:03:42', 'Координация работ по разработке проектной документации между исполнителями. Прохождение экспертизы.', 'Генеральное проектирование', '', 'publish', 'closed', 'closed', '', 'generalnoe-proektirovanie', '', '', '2024-05-26 16:55:37', '2024-05-26 13:55:37', '', 0, 'http://forproekt/?post_type=f_services&#038;p=84', 0, 'f_services', '', 0),
(85, 1, '2024-05-26 16:51:35', '2024-05-26 13:51:35', '', 'radius all dotted', '', 'inherit', 'open', 'closed', '', 'radius-all-dotted', '', '', '2024-05-26 16:51:35', '2024-05-26 13:51:35', '', 77, 'http://forproekt/wp-content/uploads/2024/05/radius-all-dotted.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2024-05-26 17:07:07', '2024-05-26 14:07:07', 'Изучение участка и прилегающих территорий. Определение ориентировочных технико-экономических показателей и потенциала, целевого использования и экономической целесообразности.', 'Предпроектный анализ территории', '', 'inherit', 'closed', 'closed', '', '77-autosave-v1', '', '', '2024-05-26 17:07:07', '2024-05-26 14:07:07', '', 77, 'http://forproekt/?p=86', 0, 'revision', '', 0),
(88, 1, '2024-05-26 17:38:56', '2024-05-26 14:38:56', '', 'Team (1)', '', 'inherit', 'open', 'closed', '', 'team-1', '', '', '2024-05-26 17:38:56', '2024-05-26 14:38:56', '', 0, 'http://forproekt/wp-content/uploads/2024/05/team-1.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2024-05-26 17:39:35', '2024-05-26 14:39:35', '', 'Team', '', 'inherit', 'open', 'closed', '', 'team', '', '', '2024-05-26 17:39:35', '2024-05-26 14:39:35', '', 0, 'http://forproekt/wp-content/uploads/2024/05/team.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2024-05-26 18:08:00', '2024-05-26 15:08:00', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"single-project.php\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Проекты', 'proekty', 'publish', 'closed', 'closed', '', 'group_66534fff20c6d', '', '', '2024-05-29 06:34:21', '2024-05-29 03:34:21', '', 0, 'http://forproekt/?post_type=acf-field-group&#038;p=91', 0, 'acf-field-group', '', 0),
(92, 1, '2024-05-26 18:08:00', '2024-05-26 15:08:00', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Подзаголовок (если есть)', 'podzagolovok', 'publish', 'closed', 'closed', '', 'field_66535014b7011', '', '', '2024-05-26 18:08:39', '2024-05-26 15:08:39', '', 91, 'http://forproekt/?post_type=acf-field&#038;p=92', 0, 'acf-field', '', 0),
(94, 1, '2024-05-26 18:08:11', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-26 18:08:11', '0000-00-00 00:00:00', '', 0, 'http://forproekt/?p=94', 0, 'post', '', 0),
(95, 1, '2024-05-26 18:08:45', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-26 18:08:45', '0000-00-00 00:00:00', '', 0, 'http://forproekt/?p=95', 0, 'post', '', 0),
(96, 1, '2024-05-26 19:15:31', '2024-05-26 16:15:31', '', 'Репина', '', 'publish', 'closed', 'closed', '', 'repina', '', '', '2024-05-26 19:15:31', '2024-05-26 16:15:31', '', 0, 'http://forproekt/?post_type=f_workers&#038;p=96', 0, 'f_workers', '', 0),
(97, 1, '2024-05-26 19:17:15', '2024-05-26 16:17:15', '', 'Яншаев', '', 'publish', 'closed', 'closed', '', 'yanshaev', '', '', '2024-05-26 19:17:15', '2024-05-26 16:17:15', '', 0, 'http://forproekt/?post_type=f_workers&#038;p=97', 0, 'f_workers', '', 0),
(98, 1, '2024-05-26 19:17:47', '2024-05-26 16:17:47', '', 'Карпухина', '', 'publish', 'closed', 'closed', '', 'karpuhina', '', '', '2024-05-26 19:17:47', '2024-05-26 16:17:47', '', 0, 'http://forproekt/?post_type=f_workers&#038;p=98', 0, 'f_workers', '', 0),
(99, 1, '2024-05-26 19:18:14', '2024-05-26 16:18:14', '', 'Калгужина', '', 'publish', 'closed', 'closed', '', 'kalguzhina', '', '', '2024-05-26 19:18:14', '2024-05-26 16:18:14', '', 0, 'http://forproekt/?post_type=f_workers&#038;p=99', 0, 'f_workers', '', 0),
(100, 1, '2024-05-26 19:18:40', '2024-05-26 16:18:40', '', 'Пенькова', '', 'publish', 'closed', 'closed', '', 'penkova', '', '', '2024-05-26 19:18:40', '2024-05-26 16:18:40', '', 0, 'http://forproekt/?post_type=f_workers&#038;p=100', 0, 'f_workers', '', 0),
(101, 1, '2024-05-26 19:19:06', '2024-05-26 16:19:06', '', 'Паршина', '', 'publish', 'closed', 'closed', '', 'parshina', '', '', '2024-05-26 19:19:06', '2024-05-26 16:19:06', '', 0, 'http://forproekt/?post_type=f_workers&#038;p=101', 0, 'f_workers', '', 0),
(102, 1, '2024-05-26 19:19:31', '2024-05-26 16:19:31', '', 'Пономарёва', '', 'publish', 'closed', 'closed', '', 'ponomaryova', '', '', '2024-05-26 19:19:31', '2024-05-26 16:19:31', '', 0, 'http://forproekt/?post_type=f_workers&#038;p=102', 0, 'f_workers', '', 0),
(103, 1, '2024-05-26 19:19:57', '2024-05-26 16:19:57', '', 'Чехова', '', 'publish', 'closed', 'closed', '', 'chehova', '', '', '2024-05-26 19:19:57', '2024-05-26 16:19:57', '', 0, 'http://forproekt/?post_type=f_workers&#038;p=103', 0, 'f_workers', '', 0),
(104, 1, '2024-05-26 19:20:31', '2024-05-26 16:20:31', '', 'Гордок', '', 'publish', 'closed', 'closed', '', 'gordok', '', '', '2024-05-26 19:20:31', '2024-05-26 16:20:31', '', 0, 'http://forproekt/?post_type=f_workers&#038;p=104', 0, 'f_workers', '', 0),
(105, 1, '2024-05-26 19:21:01', '2024-05-26 16:21:01', '', 'Валидов', '', 'publish', 'closed', 'closed', '', 'validov', '', '', '2024-05-26 19:21:01', '2024-05-26 16:21:01', '', 0, 'http://forproekt/?post_type=f_workers&#038;p=105', 0, 'f_workers', '', 0),
(106, 1, '2024-05-26 19:21:22', '2024-05-26 16:21:22', '', 'Бухтияров', '', 'publish', 'closed', 'closed', '', 'buhtiyarov', '', '', '2024-05-26 19:21:22', '2024-05-26 16:21:22', '', 0, 'http://forproekt/?post_type=f_workers&#038;p=106', 0, 'f_workers', '', 0),
(107, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Статус', 'status', 'publish', 'closed', 'closed', '', 'field_66541b2397615', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 91, 'http://forproekt/?post_type=acf-field&p=107', 1, 'acf-field', '', 0),
(108, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Год', 'god', 'publish', 'closed', 'closed', '', 'field_66541b3b97616', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 91, 'http://forproekt/?post_type=acf-field&p=108', 2, 'acf-field', '', 0),
(109, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Место', 'mesto', 'publish', 'closed', 'closed', '', 'field_66541b4f97617', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 91, 'http://forproekt/?post_type=acf-field&p=109', 3, 'acf-field', '', 0),
(110, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Авторы проекта архитекторы', 'avtory_proekta_arhitektory', 'publish', 'closed', 'closed', '', 'field_66541b5697618', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 91, 'http://forproekt/?post_type=acf-field&p=110', 4, 'acf-field', '', 0),
(111, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Архитектор', 'arhitektor', 'publish', 'closed', 'closed', '', 'field_66541b7697619', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 110, 'http://forproekt/?post_type=acf-field&p=111', 0, 'acf-field', '', 0),
(112, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Конструкторы', 'konstruktory', 'publish', 'closed', 'closed', '', 'field_66541b939761a', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 91, 'http://forproekt/?post_type=acf-field&p=112', 5, 'acf-field', '', 0),
(113, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Конструктор', 'konstruktor', 'publish', 'closed', 'closed', '', 'field_66541bbf9761b', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 112, 'http://forproekt/?post_type=acf-field&p=113', 0, 'acf-field', '', 0),
(114, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Визуализаторы', 'vizualizatory', 'publish', 'closed', 'closed', '', 'field_66541bd69761c', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 91, 'http://forproekt/?post_type=acf-field&p=114', 6, 'acf-field', '', 0),
(115, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Визуализатор', 'vizualizator', 'publish', 'closed', 'closed', '', 'field_66541bf29761d', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 114, 'http://forproekt/?post_type=acf-field&p=115', 0, 'acf-field', '', 0),
(116, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Стадии', 'stadii', 'publish', 'closed', 'closed', '', 'field_66541c129761e', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 91, 'http://forproekt/?post_type=acf-field&p=116', 7, 'acf-field', '', 0),
(117, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Стадия', 'stadiya', 'publish', 'closed', 'closed', '', 'field_66541c219761f', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 116, 'http://forproekt/?post_type=acf-field&p=117', 0, 'acf-field', '', 0),
(118, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Генеральный проектировщик', 'generalnyj_proektirovshhik', 'publish', 'closed', 'closed', '', 'field_66541ca497620', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 91, 'http://forproekt/?post_type=acf-field&p=118', 8, 'acf-field', '', 0),
(119, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Задачи проекта', 'zadachi_proekta', 'publish', 'closed', 'closed', '', 'field_66541cc097621', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 91, 'http://forproekt/?post_type=acf-field&p=119', 9, 'acf-field', '', 0),
(120, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Описание проекта', 'opisanie_proekta', 'publish', 'closed', 'closed', '', 'field_66541cd097622', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 91, 'http://forproekt/?post_type=acf-field&p=120', 10, 'acf-field', '', 0),
(121, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Фотографии проекта', 'fotografii_proekta', 'publish', 'closed', 'closed', '', 'field_66541d3897623', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 91, 'http://forproekt/?post_type=acf-field&p=121', 11, 'acf-field', '', 0),
(122, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Фотография проекта', 'fotografiya_proekta', 'publish', 'closed', 'closed', '', 'field_66541d5697624', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 121, 'http://forproekt/?post_type=acf-field&p=122', 0, 'acf-field', '', 0),
(123, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Описание интерьеров текст', 'opisanie_intererov_tekst', 'publish', 'closed', 'closed', '', 'field_66541d7397625', '', '', '2024-05-29 06:34:21', '2024-05-29 03:34:21', '', 91, 'http://forproekt/?post_type=acf-field&#038;p=123', 13, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(124, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Фото интерьеров', 'foto_intererov', 'publish', 'closed', 'closed', '', 'field_66541da097626', '', '', '2024-05-29 06:34:21', '2024-05-29 03:34:21', '', 91, 'http://forproekt/?post_type=acf-field&#038;p=124', 14, 'acf-field', '', 0),
(125, 1, '2024-05-27 08:44:36', '2024-05-27 05:44:36', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Фото интерьера', 'foto_interera', 'publish', 'closed', 'closed', '', 'field_66541db097627', '', '', '2024-05-27 08:44:36', '2024-05-27 05:44:36', '', 124, 'http://forproekt/?post_type=acf-field&p=125', 0, 'acf-field', '', 0),
(126, 1, '2024-05-27 08:54:00', '2024-05-27 05:54:00', '', 'Капитальный ремонт 4 корпуса бывшего Агрегатного завода', '', 'publish', 'open', 'open', '', 'kapitalnyj-remont-4-korpusa-byvshego-agregatnogo-zavoda', '', '', '2024-05-29 06:44:33', '2024-05-29 03:44:33', '', 0, 'http://forproekt/?p=126', 0, 'post', '', 0),
(127, 1, '2024-05-27 08:54:00', '2024-05-27 05:54:00', '', 'Капитальный ремонт 4 корпуса бывшего Агрегатного завода', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2024-05-27 08:54:00', '2024-05-27 05:54:00', '', 126, 'http://forproekt/?p=127', 0, 'revision', '', 0),
(128, 1, '2024-05-29 06:34:21', '2024-05-29 03:34:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок интерьеры', 'zagolovok_interery', 'publish', 'closed', 'closed', '', 'field_6656a21abc0be', '', '', '2024-05-29 06:34:21', '2024-05-29 03:34:21', '', 91, 'http://forproekt/?post_type=acf-field&p=128', 12, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'меню header', 'menyu-header', 0),
(3, 'меню footer', 'menyu-footer', 0),
(4, 'Благоустройство', 'landscaping', 0),
(5, 'Жилое здание', 'residential_building', 0),
(6, 'Общественное здание', 'public_building', 0),
(7, 'Градостроительный проект', 'urban_development_project', 0),
(8, 'Проект', 'project', 0),
(9, 'Реализован', 'implemented', 0),
(10, 'Строительство', 'construction', 0),
(11, 'Конкурс', 'competition', 0),
(12, 'меню filter', 'menyu-filter', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(36, 3, 0),
(37, 3, 0),
(38, 12, 0),
(39, 12, 0),
(40, 12, 0),
(41, 12, 0),
(43, 12, 0),
(45, 5, 0),
(126, 4, 0),
(126, 6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 0),
(8, 8, 'post_tag', '', 0, 0),
(9, 9, 'post_tag', '', 0, 0),
(10, 10, 'post_tag', '', 0, 0),
(11, 11, 'post_tag', '', 0, 0),
(12, 12, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'forproekt_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"853e37c8cfd6f8a0c3e18351a16311b2e72ad05057bb7c0a60cdfa67fa7f7794\";a:4:{s:10:\"expiration\";i:1716960779;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 YaBrowser/24.4.0.0 Safari/537.36\";s:5:\"login\";i:1716787979;}s:64:\"05273c967108113d9c22af4453c0051f6ace276327f36a3b899829344f29ea62\";a:4:{s:10:\"expiration\";i:1716960781;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 YaBrowser/24.4.0.0 Safari/537.36\";s:5:\"login\";i:1716787981;}s:64:\"2bade31f3cb508e3ea26d1fe58ba69e59e70549e03af897d0c39f69555a51d64\";a:4:{s:10:\"expiration\";i:1717126242;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 YaBrowser/24.4.0.0 Safari/537.36\";s:5:\"login\";i:1716953442;}s:64:\"343e2c8f6f457ca771b869f3c6b01a1d92fb1c5dfec267d5e5012750804fd06f\";a:4:{s:10:\"expiration\";i:1717126245;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 YaBrowser/24.4.0.0 Safari/537.36\";s:5:\"login\";i:1716953445;}s:64:\"df5fbcb6b55bb6f8087d003bbdfc69e49780333e7c5ddba21ed6df3a0b7b5cb9\";a:4:{s:10:\"expiration\";i:1717126281;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 YaBrowser/24.4.0.0 Safari/537.36\";s:5:\"login\";i:1716953481;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '48'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, '_yoast_wpseo_profile_updated', '1713337887'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '12'),
(28, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:267:\"Вы добавили новый тип контента. Мы рекомендуем вам просмотреть соответствующие <a href=\"http://forproekt/wp-admin/admin.php?page=wpseo_page_settings\">Настройки внешнего вида</a>.\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:25:\"content-types-made-public\";s:7:\"user_id\";i:1;s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:2;s:9:\"\0*\0reason\";s:21:\"post_type_made_public\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:7:\"user_id\";i:1;s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(29, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(30, 1, 'wp_user-settings-time', '1716789237');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'forproekt_admin', '$P$Bx4uMWJE3IKdxCRnhqxA1GvLaoEO2A0', 'forproekt_admin', 'alexander-drach@mail.ru', 'http://forproekt', '2024-04-17 05:51:31', '', 0, 'forproekt_admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `post_parent` bigint DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int DEFAULT NULL,
  `readability_score` int DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int DEFAULT NULL,
  `incoming_link_count` int DEFAULT NULL,
  `prominent_words_version` int UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int DEFAULT NULL,
  `version` int DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'http://forproekt/?page_id=3', '27:d7677b8325ce55140401186c03585950', 3, 'post', 'page', 1, 0, NULL, NULL, 'Политика конфиденциальности', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-17 06:04:16', '2024-05-12 05:10:07', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-04-17 05:51:31', '2024-04-17 05:51:31', 0),
(3, 'http://forproekt/?page_id=2', '27:88c8114646dc3b9818b1271f5a2a9382', 2, 'post', 'page', 1, 0, NULL, NULL, 'Пример страницы', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-04-17 06:04:16', '2024-05-12 05:10:07', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-07 12:58:46', '2024-04-17 05:51:31', 0),
(4, 'http://forproekt/', '17:aa92d168d0c9a0b3ccd8507893c23028', 7, 'post', 'page', 1, 0, NULL, NULL, 'Главная', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-04-17 06:04:39', '2024-05-07 10:58:32', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-07 13:18:08', '2024-04-17 06:04:39', 0),
(5, 'http://forproekt/proekty/', '25:c9b654f00eca1850e881a48d2823e1b1', 9, 'post', 'page', 1, 0, NULL, NULL, 'Проекты', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-04-17 06:05:01', '2024-05-07 10:58:36', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-07 13:18:57', '2024-04-17 06:05:01', 0),
(6, 'http://forproekt/o-nas/', '23:ebac86ca529d26f09fc662e7d01d6ef8', 11, 'post', 'page', 1, 0, NULL, NULL, 'О нас', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-04-17 06:05:13', '2024-05-26 08:31:03', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 11:31:03', '2024-04-17 06:05:13', 0),
(7, 'http://forproekt/uslugi/', '24:858109b9ed05daff72b31201d6462301', 13, 'post', 'page', 1, 0, NULL, NULL, 'Услуги', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-04-17 06:05:24', '2024-05-26 08:21:34', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 11:21:34', '2024-04-17 06:05:24', 0),
(8, 'http://forproekt/novosti/', '25:6e2235bc6001e790b2187f84d13c5ee7', 15, 'post', 'page', 1, 0, NULL, NULL, 'Новости', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-04-17 06:05:35', '2024-05-07 10:58:37', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-07 13:18:24', '2024-04-17 06:05:35', 0),
(9, 'http://forproekt/kontakty/', '26:556b071c6361b13572b253aa58a4bfb0', 17, 'post', 'page', 1, 0, NULL, NULL, 'Контакты', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-04-17 06:05:51', '2024-05-07 10:58:38', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-07 13:17:51', '2024-04-17 06:05:51', 0),
(11, 'http://forproekt/category/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/', '88:0b5604d06a604d9772124bc21bfd0385', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Без рубрики', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-04-17 07:11:08', '2024-05-27 03:34:28', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-27 06:34:28', NULL, NULL),
(12, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Страница не найдена %%sep%% %%sitename%%', NULL, 'Ошибка 404: страница не найдена', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-17 07:11:08', '2024-05-12 05:10:07', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(13, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-17 07:11:08', '2024-05-12 05:10:07', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(14, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-17 07:11:08', '2024-05-12 05:10:07', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(15, 'http://forproekt/', '17:aa92d168d0c9a0b3ccd8507893c23028', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Главная страница', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2024-04-17 07:11:08', '2024-05-29 00:44:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-29 03:44:33', NULL, NULL),
(16, 'http://forproekt/category/landscaping/', '38:d71ee0809da7fec8c753984d6b86d20a', 4, 'term', 'category', NULL, NULL, NULL, NULL, 'Благоустройство', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-12 08:14:22', '2024-05-29 00:44:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-29 03:44:33', NULL, NULL),
(17, 'http://forproekt/category/residential_building/', '47:df98dd5ba09bc4ec878d188edd112d5b', 5, 'term', 'category', NULL, NULL, NULL, NULL, 'Жилое здание', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-12 08:14:59', '2024-05-17 01:55:52', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-17 04:55:52', NULL, NULL),
(18, 'http://forproekt/category/public_building/', '42:574eb77b313a37fc7181f0ed9f8c67ef', 6, 'term', 'category', NULL, NULL, NULL, NULL, 'Общественное здание', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-12 08:18:18', '2024-05-29 00:44:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-29 03:44:33', NULL, NULL),
(19, 'http://forproekt/category/urban_development_project/', '52:be36560756e5cef27af27215402d7cf4', 7, 'term', 'category', NULL, NULL, NULL, NULL, 'Градостроительный проект', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-12 08:18:51', '2024-05-12 05:18:51', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-12 11:18:51', NULL, NULL),
(20, 'http://forproekt/tag/project/', '29:1ea43c4c2e4e4a153940bb25d00f1e7d', 8, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Проект', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-12 10:57:17', '2024-05-12 07:57:17', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-12 13:57:17', NULL, NULL),
(21, 'http://forproekt/tag/implemented/', '33:b39e55613c02292f4343ff2cdffd1fdb', 9, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Реализован', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-12 10:57:36', '2024-05-12 07:57:36', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-12 13:57:36', NULL, NULL),
(22, 'http://forproekt/tag/construction/', '34:6423de4bfd93fba320490770c4622edc', 10, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Строительство', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-12 10:57:54', '2024-05-12 07:57:54', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-12 13:57:54', NULL, NULL),
(23, 'http://forproekt/tag/competition/', '33:f4fd3751f9790ebed671ee1e49a5f258', 11, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Конкурс', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-12 10:58:16', '2024-05-12 07:58:16', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-12 13:58:16', NULL, NULL),
(24, 'http://forproekt/?p=45', '22:63ec7f29a5beb5e220e1e79fcb062c07', 45, 'post', 'post', 1, 0, NULL, NULL, 'Проект 1 заголовок', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-17 04:55:34', '2024-05-26 07:39:41', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 10:39:41', '2024-05-17 04:55:52', 0),
(29, 'http://forproekt/f_services/predproektnyj-analiz-territorii/', '60:505177c59d6d14c46a17194c0cffaa6a', 77, 'post', 'f_services', 1, 0, NULL, NULL, 'Предпроектный анализ территории', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 13:39:33', '2024-05-26 10:51:49', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 13:51:49', '2024-05-26 13:10:43', 0),
(30, 'http://forproekt/f_services/arhitekturnaya-konczepcziya-eskiznoe-proektirovanie/', '80:92c052c3752b0261721d777641f3ab69', 78, 'post', 'f_services', 1, 0, NULL, NULL, 'Архитектурная концепция (эскизное проектирование)', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 13:40:02', '2024-05-26 10:52:36', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 13:52:35', '2024-05-26 13:09:15', 0),
(31, 'http://forproekt/f_services/gradostroitelnaya-konczepcziya/', '59:0a0cc2ec501f92df2c6fca217494dbf1', 79, 'post', 'f_services', 1, 0, NULL, NULL, 'Градостроительная концепция', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 13:40:36', '2024-05-26 10:53:01', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 13:53:01', '2024-05-26 13:08:45', 0),
(32, 'http://forproekt/f_services/proektnaya-dokumentacziya/', '54:58dd3953747e54c45a11e2c110c63eef', 80, 'post', 'f_services', 1, 0, NULL, NULL, 'Проектная документация', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 13:41:38', '2024-05-26 10:53:17', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 13:53:17', '2024-05-26 13:07:45', 0),
(33, 'http://forproekt/f_services/rabochaya-dokumentacziya/', '53:887ade1a3af9704af331158ed481a86b', 81, 'post', 'f_services', 1, 0, NULL, NULL, 'Рабочая документация', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 13:42:05', '2024-05-26 10:53:33', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 13:53:33', '2024-05-26 13:06:15', 0),
(34, 'http://forproekt/f_services/interery/', '37:6c947a453459a9d6d1c79ab0640d9e8f', 82, 'post', 'f_services', 1, 0, NULL, NULL, 'Интерьеры', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 13:42:30', '2024-05-26 10:53:49', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 13:53:49', '2024-05-26 13:05:40', 0),
(35, 'http://forproekt/f_services/avtorskij-nadzor/', '45:7649eb42282ad70f698c0cd8f26e1135', 83, 'post', 'f_services', 1, 0, NULL, NULL, 'Авторский надзор', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 13:43:04', '2024-05-26 10:55:15', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 13:55:15', '2024-05-26 13:04:14', 0),
(36, 'http://forproekt/f_services/generalnoe-proektirovanie/', '54:09840429f791915b981d963bf871eece', 84, 'post', 'f_services', 1, 0, NULL, NULL, 'Генеральное проектирование', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 13:43:35', '2024-05-26 10:55:37', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 13:55:37', '2024-05-26 13:03:42', 0),
(39, 'http://forproekt/f_workers/repina/', '34:65d56f59c8e73ace7183c52a7ef2511b', 96, 'post', 'f_workers', 1, 0, NULL, NULL, 'Репина', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 16:15:05', '2024-05-26 13:15:31', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-26 16:15:31', '2024-05-26 16:15:31', 0),
(40, 'http://forproekt/f_workers/yanshaev/', '36:8a3b7dc13d6fb19eb5d9b1742cbf79ad', 97, 'post', 'f_workers', 1, 0, NULL, NULL, 'Яншаев', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 16:16:56', '2024-05-26 13:17:15', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-26 16:17:15', '2024-05-26 16:17:15', 0),
(41, 'http://forproekt/f_workers/karpuhina/', '37:1b7830d7c6a6dc624a9e2e1123e48bd8', 98, 'post', 'f_workers', 1, 0, NULL, NULL, 'Карпухина', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 16:17:33', '2024-05-26 13:17:47', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-26 16:17:47', '2024-05-26 16:17:47', 0),
(42, 'http://forproekt/f_workers/kalguzhina/', '38:af67bb5e1f543c5b3c2ba8ae6d75ac11', 99, 'post', 'f_workers', 1, 0, NULL, NULL, 'Калгужина', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 16:18:01', '2024-05-26 13:18:14', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-26 16:18:14', '2024-05-26 16:18:14', 0),
(43, 'http://forproekt/f_workers/penkova/', '35:11d70f1147a3192d4436ce6f7fe93e32', 100, 'post', 'f_workers', 1, 0, NULL, NULL, 'Пенькова', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 16:18:28', '2024-05-26 13:18:40', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-26 16:18:40', '2024-05-26 16:18:40', 0),
(44, 'http://forproekt/f_workers/parshina/', '36:f6d27adc25e8b879a6e4095c98eea6c0', 101, 'post', 'f_workers', 1, 0, NULL, NULL, 'Паршина', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 16:18:55', '2024-05-26 13:19:06', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-26 16:19:06', '2024-05-26 16:19:06', 0),
(45, 'http://forproekt/f_workers/ponomaryova/', '39:d2122af54efac5fba7ed4023090ed3f8', 102, 'post', 'f_workers', 1, 0, NULL, NULL, 'Пономарёва', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 16:19:19', '2024-05-26 13:19:31', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-26 16:19:31', '2024-05-26 16:19:31', 0),
(46, 'http://forproekt/f_workers/chehova/', '35:08908259f87e69475ed4e89a164b6876', 103, 'post', 'f_workers', 1, 0, NULL, NULL, 'Чехова', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 16:19:42', '2024-05-26 13:19:57', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-26 16:19:57', '2024-05-26 16:19:57', 0),
(47, 'http://forproekt/f_workers/gordok/', '34:bf25f31016bc328cea7933811216444b', 104, 'post', 'f_workers', 1, 0, NULL, NULL, 'Гордок', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 16:20:10', '2024-05-26 13:20:32', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-26 16:20:31', '2024-05-26 16:20:31', 0),
(48, 'http://forproekt/f_workers/validov/', '35:ec9540f84e6b4a077b85125f08f7aa66', 105, 'post', 'f_workers', 1, 0, NULL, NULL, 'Валидов', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 16:20:44', '2024-05-26 13:21:01', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-26 16:21:01', '2024-05-26 16:21:01', 0),
(49, 'http://forproekt/f_workers/buhtiyarov/', '38:6741ecd27e748baeb515238780ec93f4', 106, 'post', 'f_workers', 1, 0, NULL, NULL, 'Бухтияров', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 16:21:12', '2024-05-26 13:21:22', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-26 16:21:22', '2024-05-26 16:21:22', 0),
(50, 'http://forproekt/kapitalnyj-remont-4-korpusa-byvshego-agregatnogo-zavoda/', '73:5a66dea1858843c1dc7ae117912265c8', 126, 'post', 'post', 1, 0, NULL, NULL, 'Капитальный ремонт 4 корпуса бывшего Агрегатного завода', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-27 05:46:06', '2024-05-29 00:44:33', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-29 03:44:33', '2024-05-27 05:54:00', 0),
(51, 'http://forproekt/author/forproekt_admin/', '40:086c59dbd4fbb87a6cd63c86bc5d9d50', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://1.gravatar.com/avatar/a065cad7d79aa15acf4e0896c79e1570?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://1.gravatar.com/avatar/a065cad7d79aa15acf4e0896c79e1570?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2024-05-27 05:54:00', '2024-05-29 00:44:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-29 03:44:33', '2024-04-17 06:04:39', NULL),
(52, 'http://forproekt/f_services/', '28:5030081fa7f71c30c82640c3226b89a9', NULL, 'post-type-archive', 'f_services', NULL, NULL, 'Архив %%pt_plural%% %%page%% %%sep%% %%sitename%%', '', 'Услуги', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-27 06:33:38', '2024-05-27 03:33:38', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-26 13:55:37', '2024-05-26 13:03:42', NULL),
(53, 'http://forproekt/f_workers/', '27:8b08dfda8d7c24b2486942fe48eafb74', NULL, 'post-type-archive', 'f_workers', NULL, NULL, 'Архив %%pt_plural%% %%page%% %%sep%% %%sitename%%', '', 'Сотрудники', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-27 06:33:38', '2024-05-27 03:33:38', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-26 16:21:22', '2024-05-26 16:15:31', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int UNSIGNED NOT NULL,
  `ancestor_id` int UNSIGNED NOT NULL,
  `depth` int UNSIGNED DEFAULT NULL,
  `blog_id` bigint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(11, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(29, 0, 0, 1),
(30, 0, 0, 1),
(31, 0, 0, 1),
(32, 0, 0, 1),
(33, 0, 0, 1),
(34, 0, 0, 1),
(35, 0, 0, 1),
(36, 0, 0, 1),
(39, 0, 0, 1),
(40, 0, 0, 1),
(41, 0, 0, 1),
(42, 0, 0, 1),
(43, 0, 0, 1),
(44, 0, 0, 1),
(45, 0, 0, 1),
(46, 0, 0, 1),
(47, 0, 0, 1),
(48, 0, 0, 1),
(49, 0, 0, 1),
(50, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int UNSIGNED NOT NULL,
  `post_id` bigint DEFAULT NULL,
  `term_id` bigint DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_primary_term`
--

INSERT INTO `wp_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 45, 5, 'category', '2024-05-17 04:55:52', '2024-05-26 07:39:41', 1),
(2, 126, 4, 'category', '2024-05-29 03:44:33', '2024-05-29 00:44:33', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `target_post_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int UNSIGNED DEFAULT NULL,
  `target_indexable_id` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `width` int UNSIGNED DEFAULT NULL,
  `size` int UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://forproekt/wp-admin/', 2, NULL, 'internal', 3, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Индексы таблицы `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Индексы таблицы `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Индексы таблицы `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Индексы таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=785;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
