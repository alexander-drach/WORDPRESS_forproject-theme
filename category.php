<?php get_header(); ?>
    <main class="category-content">
        <section class="flats">
            <div class="container">
                <h1><?php single_cat_title(); ?></h1>
                <ul class="list project-list">
                  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                      <li class="project-item">
                      </li>
                  <?php endwhile; ?>

                  <?php endif; ?>
                </ul>
            </div><!-- container -->
        </section>
    </main>
<?php get_footer(); ?>