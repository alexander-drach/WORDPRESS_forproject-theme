<!DOCTYPE html>
<html <?php language_attributes() ?>>

<head>
    <meta charset="<?php bloginfo('charset') ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php the_title() ?></title>

    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo get_template_directory_uri() ?>/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo get_template_directory_uri() ?>/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo get_template_directory_uri() ?>/favicon-16x16.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo get_template_directory_uri() ?>/favicon-16x16.png">

    <?php wp_head() ?>
</head>

<body>
<div class="wrapper">
    <header class="header">
        <div class="container">
          <div class="header_inner">
              <a class="logo" href="/">
                  <svg width="377" height="55">
                      <use xlink:href="<?php echo get_template_directory_uri() ?>/assets-gulp/build/img/sprite.svg#logo"></use>
                  </svg>
              </a>
              <a class="logo-mobile" href="/">
                  <svg width="77" height="32">
                      <use xlink:href="<?php echo get_template_directory_uri() ?>/assets-gulp/build/img/sprite.svg#logo-mobile"></use>
                  </svg>
              </a>
              <nav class="nav">
                <?php wp_nav_menu( array( 'container' => 'none', 'menu_class' => 'list main-menu', 'theme_location' => 'header' ) ); ?>
              </nav>              
              <button class="hamb" type="button" aria-label="открыть/закрыть меню"></button>
          </div>
        </div>
    </header>