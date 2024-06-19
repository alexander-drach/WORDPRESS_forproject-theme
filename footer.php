<footer class="footer">
    <div class="container">
        <div class="footer__inner">
            <div class="footer__copyright">
                <h2 class="footer__">Нужна консультация? Напишите нам</h2>
                <?php wp_nav_menu( array( 'container' => 'none', 'menu_class' => 'list footer-menu', 'theme_location' => 'footer' ) ); ?>
                <div class="copyright">
                    <p>ООО «Форпроект» Архитектурно-строительная компания</p>
                    <p>&copy;<?php echo date('Y') ?>, Все права защищены</p>
                </div>
            </div>
            <div class="footer__form">
            <div class="form" data-form-validate data-callback="base" data-parent-validate="base">
                <form method="post" action="<?php echo get_template_directory_uri() ?>/report.php" name="contactform">
                    <div class="group group--form">
                        <div class="custom-input" data-validate-type="text" data-limitation="name" data-on-input-validate data-required data-message-base="Поле обязательно к заполнению" data-message-success="Поле заполнено верно">
                            <label for="name">Имя</label>
                            <input id="name" name="name" type="text" minlength="2" required>
                        </div>

                        <div class="custom-input" data-validate-type="phone" data-on-input-validate data-required data-message-base="Поле обязательно к заполнению" data-message-success="Поле заполнено верно">
                            <label for="tel">Телефон</label>
                            <input id="tel" name="tel" type="tel" required>
                        </div>
                    </div>
                    <span class="agree">Отправляя заявку, вы принимаете <a class="link-data" href="http://forproekt/soglasie-na-obrabotku-personalnyh-dannyh/">условия обработки персональных данных</a></span>
                    <input id="check" name="check" type="hidden" value="">
                    <div class="btn-wrapper">
                        <button class="btn btn--black" type="submit" onclick="document.getElementById('check').value = 'nospam';">Отправить</button>
                    </div>                    
                </form>
            </div><!-- div form -->
            </div>            
        </div><!-- footer__inner -->
    </div><!-- container -->
</footer>
</div>
<?php wp_footer() ?>
</body>

</html>