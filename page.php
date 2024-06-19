<?php get_header(); ?>
<main class="page-content">
    <div class="container">
        <h1 class="page-title"><?php the_title(); ?></h1>

        <div class="service-pages">
            <?php the_content(); ?>
        </div>  
    </div>
</main>
<?php get_footer(); ?>