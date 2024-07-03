<?php
/*
Template Name: Страница - Главная
*/
?>
<?php get_header(); ?>
    <main class="homepage-content">
        <div class="intro">
                <?php 
                    $image = get_field('glavnyj_banner');
                    if( !empty( $image ) ): ?>
                        <img class="intro-desktop" src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
                    <?php endif;

                    $imageMobile = get_field('glavnyj_banner_-_mobilnyj');
                    if( !empty( $imageMobile ) ): ?>
                        <img class="intro-mobile" src="<?php echo esc_url($imageMobile['url']); ?>" alt="<?php echo esc_attr($imageMobile['alt']); ?>" />
                    <?php endif;
                ?>
                <div class="container">
                    <h1><?php the_field('zagolovok_pervogo_bloka')?></h1>
                    <a href="http://forproekt/proekty/" class="btn btn--red"><?php the_field('tekst_knopki_pervogo_bloka')?></a>
                </div>         
            </div>
        <div class="container">            
            <section class="project">
                <h2>Проекты</h2>
                <ul class="list project__list">
                    <?php
                    $args=array(
                        'post_type' => 'post',
                        'showposts'=> 6
                    );

                    $projects = get_posts($args);
                    foreach ($projects as $post) :
                        setup_postdata($post);
                        ?>
                        <a href="<?php the_permalink()?>">
                            <li class="project__item">
                                <div class="project__thumb">
                                    <?php the_post_thumbnail('project-thumb');?>
                                </div>
                                <h3 class="project__title"><?php the_title(); ?></h3>
                            </li>
                        </a>

                    <?php endforeach; ?>
                </ul>
                <div class="btn-wrapper btn-wrapper--center">
                    <a href="http://forproekt/proekty/" class="btn btn--blue">Все проекты</a>
                </div>
                <?php the_posts_pagination(); ?>
            </section>

            <section class="services">
                <h2>Услуги</h2>
                <ul class="list services__list">
                    <?php
                    $args=array(
                        'post_type' => 'f_services',
                        'showposts'=> 6
                    );

                    $services = get_posts($args);
                    foreach ($services as $post) :
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
                </ul>
                <div class="btn-wrapper btn-wrapper--center">
                    <a href="http://forproekt/uslugi/" class="btn btn--blue">Все услуги</a>
                </div>
            </section>            
        </div>
    </main>
<?php get_footer(); ?>