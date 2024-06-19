<?php
/*
Template Name: Страница - О нас
*/
?>
<?php get_header(); ?>
    <main class="page-content">
        <div class="container">
            <h1 class="page-title"><?php the_title(); ?></h1>
            <div class="page_desc">
                <?php the_field('vvodnyj_tekst'); ?>
            </div>
            <ul class="list workers__list">
                <?php
                $args=array(
                    'post_type' => 'f_workers',
                    'showposts'=> 100
                );

                $acsessuar = get_posts($args);
                foreach ($acsessuar as $post) :
                    setup_postdata($post);
                    ?>

                    <li class="workers__item">
                        <div class="workers__icon">
                            <?php
                            $image = get_field('foto');
                            ?>
                            <?php if($image) : ?>
                                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt'] ?>" >
                            <?php endif ?>
                        </div>
                        <div>
                            <span class="workers__first-name"><?php the_field('imya'); ?></span>
                            <span class="workers__last-name"><?php the_title(); ?></span>
                        </div>                        
                        <span class="workers__position"><?php the_field('dolzhnost'); ?></span>
                    </li>

                <?php endforeach; ?>
            </ul>
        </div>
    </main>
<?php get_footer(); ?>