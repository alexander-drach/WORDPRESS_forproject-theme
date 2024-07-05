<?php
/*
Template Name: Страница - Услуги
*/
?>
<?php get_header(); ?>
    <main class="page-content">
        <div class="container">
            <h1 class="page-title"><?php the_title(); ?></h1>
            <div class="page_desc">
                <?php the_field('vvodnyj_tekst'); ?>
            </div>
            <ul class="list services__list">
                <?php
                $args=array(
                    'post_type' => 'f_services',
                    'showposts'=> 20
                );

                $acsessuar = get_posts($args);
                foreach ($acsessuar as $post) :
                    setup_postdata($post);
                    ?>

                    <li class="services__item">
                        <div class="services__icon">
                            <?php
                                $image = get_field('ikonka');
                            ?>
                            <?php if($image) : ?>
                                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt'] ?>" >
                            <?php endif ?>
                        </div>
                        <h3 class="services__title"><?php the_title(); ?></h3>
                        <div class="services__desc">
                            <?php the_content(); ?>
                        </div>
                    </li>

                <?php endforeach; ?>
                <?php wp_reset_query(); ?>
            </ul>
        </div>
    </main>
<?php get_footer(); ?>