<?php
/*
Template Name: Страница - Проект
Template post type: post
*/
?>
<?php get_header(); ?>
    <main class="single-content-project">
        <div class="container">
            <h1 class="project-title">
                <?php the_title() ?>
                <span class="project-subtitle"><?php the_field('podzagolovok') ?></span>
            </h1>
            <div class="info-project">
                <div class="info-item">
                    <span class="info-item__label">Статус</span>
                    <div class="info-item__value"><?php the_field('status') ?></div>
                </div>
                <div class="info-item">
                    <span class="info-item__label">Год</span>
                    <div class="info-item__value"><?php the_field('god') ?></div>
                </div>
                <div class="info-item">
                    <span class="info-item__label">Место</span>
                    <div class="info-item__value"><?php the_field('mesto') ?></div>
                </div>


            </div><!-- info-project -->


            <div class="info-item">
                <span class="info-item__label">Проектная команда</span>
                <div class="info-item__value">
                     <div class="info-team">
                         <div class="info-team-item">
                             <span>Авторы проекта, архитекторы:</span>
                             <ul class="info-values-list">
                                 <?php
                                 if (have_rows('avtory_proekta_arhitektory')):
                                     while (have_rows('avtory_proekta_arhitektory')) : the_row();
                                         ?>
                                         <li><?php echo get_sub_field('arhitektor'); ?></li>
                                     <?php
                                     endwhile;
                                 else :
                                 endif;
                                 ?>
                             </ul>
                         </div><!-- Авторы проекта, архитекторы -->
                         <div class="info-team-item">
                             <span>Конструкторы:</span>
                             <ul class="info-values-list">
                                 <?php
                                 if (have_rows('konstruktory')):
                                     while (have_rows('konstruktory')) : the_row();
                                         ?>
                                         <li><?php echo get_sub_field('konstruktor'); ?></li>
                                     <?php
                                     endwhile;
                                 else :
                                 endif;
                                 ?>
                             </ul>
                         </div><!-- Конструкторы -->
                         <div class="info-team-item">
                             <span>Визуализаторы:</span>
                             <ul class="info-values-list">
                                 <?php
                                 if (have_rows('vizualizatory')):
                                     while (have_rows('vizualizatory')) : the_row();
                                         ?>
                                         <li><?php echo get_sub_field('vizualizator'); ?></li>
                                     <?php
                                     endwhile;
                                 else :
                                 endif;
                                 ?>
                             </ul>
                         </div><!-- Визуализаторы -->
                     </div>
                </div>
            </div><!-- Проектная команда -->

            <div class="info-item">
                <span class="info-item__label">Стадии</span>
                <div class="info-item__value">
                    <ul class="info-values-list">
                        <?php
                        if (have_rows('stadii')):
                            while (have_rows('stadii')) : the_row();
                                ?>
                                <li><?php echo get_sub_field('stadiya'); ?></li>
                            <?php
                            endwhile;
                        else :
                        endif;
                        ?>
                    </ul>
                </div>
            </div><!-- Стадии -->

            <?php if(get_field('generalnyj_proektirovshhik')) : ?>
                <div class="info-item">
                    <span class="info-item__label">Генеральный проектировщик</span>
                    <div class="info-item__value"><?php the_field('generalnyj_proektirovshhik') ?></div>
                </div>
            <?php endif; ?>

            <div class="info-item">
                <span class="info-item__label">Категория</span>
                <div class="info-item__value"><?php wp_list_categories('title_li=') ?></div>
            </div>

            <?php if(get_field('zadachi_proekta')) : ?>
                <div class="task-project">
                    <h3>Задачи проекта:</h3>
                    <div class="info-item__value"><?php the_field('zadachi_proekta') ?></div>
                </div>
            <?php endif; ?>

            <?php if(get_field('opisanie_proekta')) : ?>
                <div class="desc-project">
                    <div class="info-item__value"><?php the_field('opisanie_proekta') ?></div>
                </div>
            <?php endif; ?>
        </div>
    </main>
<?php get_footer(); ?>