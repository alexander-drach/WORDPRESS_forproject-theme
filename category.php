<?php get_header(); ?>
    <main class="page-content">
        <section>
            <div class="container">
                <h1 class="page-title"><?php single_cat_title(); ?></h1>

                <?php wp_nav_menu( array( 'container' => 'none', 'menu_class' => 'list filter-menu', 'theme_location' => 'filter' ) ); ?>

                <ul class="list project__list">
                  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                    <a href="<?php the_permalink()?>">
                            <li class="project__item">
                                <div class="project__thumb">
                                    <?php the_post_thumbnail('project-thumb');?>
                                </div>
                                <h3 class="project__title"><?php the_title(); ?></h3>
                            </li>
                        </a>
                  <?php endwhile; ?>

                  <?php endif; ?>
                </ul>
            </div><!-- container -->
        </section>
    </main>
<?php get_footer(); ?>