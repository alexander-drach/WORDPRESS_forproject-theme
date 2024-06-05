<?php
/*
Template Name: Страница - Проекты
*/
?>
<?php get_header(); ?>
<main class="">
    <div class="container">
        <h1 class="page-title"><?php the_title(); ?></h1>
        <?php wp_nav_menu( array( 'container' => 'none', 'menu_class' => 'list filter-menu', 'theme_location' => 'filter' ) ); ?>

        <ul class="list services__list">
            <?php
            $args=array(
                'post_type' => 'post',
                'showposts'=> 9
            );

            $acsessuar = get_posts($args);
            foreach ($acsessuar as $post) :
                setup_postdata($post);
                ?>

                <li class="services__item">
                    <div class="services__icon">
                    </div>
                    <h3 class="services__title"><?php the_title(); ?></h3>
                </li>

            <?php endforeach; ?>
        </ul>

    </div>
</main>
<?php get_footer(); ?>