<?php
/*
Template Name: Страница - Проекты
*/
?>
<?php get_header(); ?>
<main class="page-content">
    <div class="container">
        <h1 class="page-title"><?php the_title(); ?></h1>
        <?php wp_nav_menu( array( 'container' => 'none', 'menu_class' => 'list filter-menu', 'theme_location' => 'filter' ) ); ?>
        <?php 
            /*
            * Template name: Моя галерея
            */
            $current_page = (get_query_var('paged')) ? get_query_var('paged') : 1;
            $params = array(
                'posts_per_page' => 6, // количество постов на странице
                'post_type'      => 'post', // тип постов
                'paged'          => $current_page // текущая страница
            );
            query_posts($params);
            
            $wp_query->is_archive = true;
            $wp_query->is_home = false;
            ?>
            <ul class="list project__list">
                <?php while(have_posts()): the_post(); ?>
                <a href="<?php the_permalink()?>">
                    <li class="project__item">
                    <div class="project__thumb">
                        <?php the_post_thumbnail('project-thumb');?>
                    </div>
                    <h3 class="project__title"><?php the_title(); ?></h3>
                    </li>
                </a>
                <?php endwhile; ?>
            </ul>
            <div class="pager">
                <?php the_posts_pagination(); ?>
            </div>
            <?php wp_reset_query(); ?>
    </div>
</main>
<?php get_footer(); ?>