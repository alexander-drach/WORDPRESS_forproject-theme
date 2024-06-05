<!DOCTYPE html>
<html <?php language_attributes() ?>>

<head>
    <meta charset="<?php bloginfo('charset') ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php the_title() ?></title>
    <?php wp_head() ?>
</head>

<body>
<div class="wrapper">
    <header class="header">
        <div class="container">
          <div class="header_inner">
              <a class="logo" href="/">
                  <svg width="386" height="87">
                      <use xlink:href="<?php echo get_template_directory_uri() ?>/assets-gulp/build/img/sprite.svg#logo"></use>
                  </svg>
              </a>
              <?php wp_nav_menu( array( 'container' => 'none', 'menu_class' => 'list main-menu', 'theme_location' => 'header' ) ); ?>
          </div>
        </div>
    </header>