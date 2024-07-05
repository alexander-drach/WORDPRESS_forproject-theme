<?php

define('PATH_CSS', get_template_directory_uri() . '/assets-gulp/build/css/');
define('PATH_JS', get_template_directory_uri() . '/assets-gulp/build/js/');

// РЕГИСТРАЦИЯ НОВЫХ  ТИПОВ ПОСТОВ

function wpschool_remove_default_image_sizes( $sizes ) {
    return array_diff( $sizes, array(
        'thumbnail',
        'medium',
        'medium_large',
        'large',
    ) );
}
add_filter( 'intermediate_image_sizes', 'wpschool_remove_default_image_sizes' );

add_image_size( 'project-thumb', 516, 480, true );
add_image_size( 'team-thumb', 366, 494, true );
add_image_size( 'news-thumb', 500, 301, true );
add_image_size( 'single-news', 1000, 462, true );

// пост - услуги
add_action('init', function(){
    register_post_type('f_services', [
        'labels' => [
            'name'               => 'Услуги',
            'singular_name'      => 'Услуга',
            'add_new'            => 'Добавить новую',
            'add_new_item'       => 'Добавить новую услугу',
            'edit_item'          => 'Редактировать услугу',
            'new_item'           => 'Новая услуга',
            'view_item'          => 'Посмотреть услугу',
            'search_items'       => 'Найти услугу',
            'not_found'          => 'Услуги не найдены',
            'not_found_in_trash' => 'В корзине услуги не найдено',
            'parent_item_colon'  => '',
            'menu_name'          => 'Услуги'
        ],
        'public' => true,
        'has_archive' => true,
        'rewrite' => [
            'with_front' => false
        ]
    ]);
});

// пост - сотрудник
add_action('init', function(){
    register_post_type('f_workers', [
        'labels' => [
            'name'               => 'Сотрудники',
            'singular_name'      => 'Сотрудник',
            'add_new'            => 'Добавить нового',
            'add_new_item'       => 'Добавить нового сотрудника',
            'edit_item'          => 'Редактировать сотрудника',
            'new_item'           => 'Новый сотрудник',
            'view_item'          => 'Посмотреть сотрудника',
            'search_items'       => 'Найти сотрудника',
            'not_found'          => 'Сотрудники не найдены',
            'not_found_in_trash' => 'В корзине сотрудиков не найдено',
            'parent_item_colon'  => '',
            'menu_name'          => 'Сотрудники'
        ],
        'public' => true,
        'has_archive' => true,
        'rewrite' => [
            'with_front' => false
        ],
        'supports' => array('title', 'editor', 'thumbnail'),
    ]);
});

// пост - новость
add_action('init', function(){
    register_post_type('news', [
        'labels' => [
            'name'               => 'Новости',
            'singular_name'      => 'Новость',
            'add_new'            => 'Добавить новую',
            'add_new_item'       => 'Добавить новость',
            'edit_item'          => 'Редактировать новость',
            'new_item'           => 'Новая новость',
            'view_item'          => 'Посмотреть новость',
            'search_items'       => 'Найти новость',
            'not_found'          => 'Новости не найдены',
            'not_found_in_trash' => 'В корзине новостей не найдено',
            'parent_item_colon'  => '',
            'menu_name'          => 'Новости'
        ],
        'public' => true,
        'has_archive' => true,
        'rewrite' => [
            'with_front' => false
        ],
        'supports' => array('title', 'editor', 'thumbnail'),
    ]);
});

add_theme_support( 'post-thumbnails', array( 'f_workers', ) );

// подключение стилей
add_action( 'wp_enqueue_scripts', function () {
  wp_enqueue_style('main_css', PATH_CSS . 'style.min.css');
});

// подключение js
add_action( 'wp_enqueue_scripts', function () {
  wp_enqueue_script('vandor_js', PATH_JS . 'vendor.min.js');
  wp_enqueue_script('main_js', PATH_JS . 'main.min.js');
});

add_action( 'after_setup_theme', function () {

  // подключение миниатюр в записи
  add_theme_support('post-thumbnails'  );

  // регистрация меню
  register_nav_menu('header', 'меню header');
  register_nav_menu('footer', 'меню footer');
  register_nav_menu('filter', 'меню filter');
} );


add_filter( 'upload_mimes', 'svg_upload_allow' );

# Добавляет SVG в список разрешенных для загрузки файлов.
function svg_upload_allow( $mimes ) {
	$mimes['svg']  = 'image/svg+xml';

	return $mimes;
}