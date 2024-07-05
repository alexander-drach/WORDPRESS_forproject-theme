<?php
/*
Template Name: Страница - Новость
Template post type: news
*/
?>
<?php get_header(); ?>
    <main class="single-news">
        <div class="container container--news">
            <a class="label-news label-news--single" href="http://forproekt/novosti/">Новости</a>
            <h1 class="single-news-title"><?php the_title() ?></h1>
            <div class="single-news-date"><?php the_date('j F Y'); ?></div>
            <div class="single-news-thumb">
                <?php the_post_thumbnail();?>
            </div>
            <div class="single-news-content">
                <?php the_content();?>
            </div>
        </div>
    </main>
<?php get_footer(); ?>