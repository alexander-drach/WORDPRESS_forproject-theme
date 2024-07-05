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
                            <?php if (get_field('gip')): ?>
                             <span>ГИП:</span>
                             <?php endif; ?>
                             <ul class="info-values-list">
                                 <?php if (get_field('gip')): ?>
                                    <li><?php the_field('gip'); ?></li>
                                <?php endif; ?>
                             </ul>
                         </div><!-- ГИП -->

                         <div class="info-team-item">
                            <?php if (have_rows('konstruktory')): ?>
                             <span>Конструкторы:</span>
                             <?php endif; ?>
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
                            <?php if (have_rows('vizualizatory')): ?>
                             <span>Визуализаторы:</span>
                             <?php endif; ?>
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
                    <h2>Задачи проекта:</h3>
                    <div>
                        <?php the_field('zadachi_proekta') ?>
                    </div>
                </div>
            <?php endif; ?>

            <?php if(get_field('opisanie_proekta')) : ?>
                <div class="desc-project">
                    <?php the_field('opisanie_proekta') ?>
                </div>
            <?php endif; ?>

            <?php if( have_rows('fotografii_proekta') ): ?>
                <ul class="list photo-list">
                    <?php while( have_rows('fotografii_proekta') ): the_row(); 
                        $image = get_sub_field('fotografiya_proekta');
                        ?>
                        <li class="photo-item">
                            <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt'] ?>">
                        </li>
                    <?php endwhile; ?>
                </ul>
            <?php endif; ?><!-- Фотографии проекта -->

            <?php if(get_field('zagolovok_interery')) : ?>
                <h2 class="title-interior"><?php the_field('zagolovok_interery') ?></h2>
            <?php endif; ?>

            <?php if(get_field('opisanie_intererov_tekst')) : ?>
                <div class="desc-interior">
                    <?php the_field('opisanie_intererov_tekst') ?>
                </div>
            <?php endif; ?>

            <?php if( have_rows('foto_intererov') ): ?>
                <div class="slider-interior">
                    <div class="swiper-pagination">
                        <button type="button" class="trainers__slider-button-prev swiper-button-prev" aria-label="Назад"></button>
                        <button type="button" class="trainers__slider-button-next swiper-button-next" aria-label="Вперед"></button>
                    </div>
                    <ul class="swiper list photo-interior-list">
                        <div class="swiper-wrapper">
                            <?php while( have_rows('foto_intererov') ): the_row(); 
                                $image = get_sub_field('foto_interera');
                                ?>
                                <li class="photo-interior-item swiper-slide">
                                
                                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt'] ?>">
                                </li>
                            <?php endwhile; ?>
                        </div><!-- swiper-wrapper -->                 
                    </ul>
                </div>
            <?php endif; ?><!-- Фотографии проекта -->
        </div><!-- container -->
    </main>
<?php get_footer(); ?>