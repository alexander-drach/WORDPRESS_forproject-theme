<?php
/*
Template Name: Страница - Новости
*/
?>
<?php get_header(); ?>
    <main class="page-news">
    <div class="container">
        <?php 
            $my_posts = get_posts( array(
                'numberposts' => 1,
                'category'    => 0,
                'orderby'     => 'date',
                'order'       => 'DESC',
                'include'     => array(),
                'exclude'     => array(),
                'meta_key'    => '',
                'meta_value'  =>'',
                'post_type'   => 'news',
                'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
            ) );
            
            global $post;
            
            foreach( $my_posts as $post ) : ?>
                
                    <div class="resent-post">
                        <?php the_post_thumbnail(); ?>
                        <div class="resent-post__content">
                        <div class="label-news label-news--all" >Новости</div>                          
                            <a href="<?php the_permalink(); ?>">
                                <h3><?php the_title(); ?></h3>
                            </a>
                            <div class="reset-post__footer">
                                <div class="resent-post__date">
                                    <?php the_date('j F Y'); ?>
                                </div>
                                <a class="arrow-link" href="<?php the_permalink(); ?>">
                                <svg width="60" height="60">
                                    <use xlink:href="<?php echo get_template_directory_uri() ?>/assets-gulp/build/img/sprite.svg#arrow-link"></use>
                                </svg>
                                </a>
                            </div>                            
                        </div>
                    </div>
                
            <?php
                endforeach;
                wp_reset_postdata(); // сброс
            ?>

        <h1 class="title-news"><?php the_field('zagolovok_novostej'); ?></h1>

        <?php 
            $current_page = (get_query_var('paged')) ? get_query_var('paged') : 1;
            $params = array(
                'posts_per_page' => 9, // количество постов на странице
                'post_type'      => 'news', // тип постов
                'paged'          => $current_page // текущая страница
            );
            query_posts($params);
            
            $wp_query->is_archive = true;
            $wp_query->is_home = false;
            ?>
            

            <ul class="list news__list">
                <?php 
                $i = 0;
                while(have_posts()): the_post();
                $i++;
                if($i === 1) {
                    continue;
                }
                ?>

                <a href="<?php the_permalink()?>">
                    <li class="news__item">
                        <div class="news__thumb">
                            <?php the_post_thumbnail('news-thumb');?>
                        </div>
                        <h3 class="news__title"><?php the_title(); ?></h3>
                        <div class="news-teaser">
                            <?php the_field('kratkoe_opisanie'); ?>
                        </div>
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