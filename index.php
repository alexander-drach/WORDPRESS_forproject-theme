<?php
/*
Template Name: Страница - Главная
*/
?>
<?php get_header(); ?>
    <main>
        <div class="container">
            <ul class="list services__list">
                <?php
                $args=array(
                    'post_type' => 'post',
                    'showposts'=> 6
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
            <ul class="list services__list">
                <?php
                $args=array(
                    'post_type' => 'f_services',
                    'showposts'=> 6
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
                            <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt'] ?>" >
                        </div>
                        <h3 class="services__title"><?php the_title(); ?></h3>
                        <div class="services__desc">
                            <?php the_content(); ?>
                        </div>
                    </li>

                <?php endforeach; ?>
            </ul>
        </div>
    </main>
<?php get_footer(); ?>