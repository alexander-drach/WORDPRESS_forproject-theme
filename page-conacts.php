<?php
/*
Template Name: Страница - Контакты
*/
?>
<?php get_header(); ?>
    <main class="page-content">
        <div class="container">
            <div class="contact__inner">
                <div class="contact-messengers">
                    <div class="contact__list">
                        <div class="contact__item">
                            <div class="icon-contact">
                                <svg width="27" height="21">
                                    <use xlink:href="<?php echo get_template_directory_uri() ?>/assets-gulp/build/img/sprite.svg#icon-email"></use>
                                </svg>
                            </div>
                            <div class="label-contact">
                                Email
                            </div>
                            <div class="link-contact">                                
                                <a href="mailto:<?php the_field('email'); ?>"><?php the_field('email'); ?></a>
                            </div>
                        </div><!-- contact__item -->

                        <div class="contact__item">
                            <div class="icon-contact">
                               <div class="messengers-list">
                                    <a href="tel:<?php the_field('telefon'); ?>" target="_blank">
                                        <svg width="30" height="30">
                                            <use xlink:href="<?php echo get_template_directory_uri() ?>/assets-gulp/build/img/sprite.svg#icon-phone"></use>
                                        </svg>
                                    </a>

                                    <a href="https://wa.me/<?php the_field('telefon'); ?>" target="_blank">
                                        <svg width="30" height="30">
                                            <use xlink:href="<?php echo get_template_directory_uri() ?>/assets-gulp/build/img/sprite.svg#icon-whatsapp"></use>
                                        </svg>
                                    </a>

                                    <a href="https://t.me/+<?php the_field('telefon'); ?>" target="_blank">
                                        <svg width="30" height="30">
                                            <use xlink:href="<?php echo get_template_directory_uri() ?>/assets-gulp/build/img/sprite.svg#icon-telegram"></use>
                                        </svg>
                                    </a>
                               </div>
                            </div>
                            <div class="label-contact">
                                Телефон, Whatsapp, Telegram
                            </div>
                            <div class="link-contact">
                                <a href="tel:<?php the_field('telefon'); ?>">
                                    <?php 
                                        $phone = get_field('telefon'); 
                                        echo preg_replace('/(\d{1})(\d{3})(\d{3})(\d{2})(\d{2})/', '+7 ($2) $3 $4 $5', $phone); 
                                    ?>
                                </a>
                            </div>
                        </div><!-- contact__item -->

                        <div class="contact__item">
                            <div class="icon-contact">
                                <svg width="32" height="32">
                                    <use xlink:href="<?php echo get_template_directory_uri() ?>/assets-gulp/build/img/sprite.svg#icon-geo"></use>
                                </svg>
                            </div>
                            <div class="label-contact">
                                Офис
                            </div>
                            <div class="link-contact">
                                <?php the_field('adres'); ?>
                            </div>
                        </div><!-- contact__item -->
                    </div><!-- contact__list -->
                    
                    
                </div><!-- contact-messengers -->
                <div class="map">
                    <?php the_content(); ?>
                </div>
            </div>
        </div>
    </main>
<?php get_footer(); ?>