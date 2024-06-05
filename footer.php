<footer class="footer">
    <div class="container">
        <div class="footer__inner">
            <?php wp_nav_menu( array( 'container' => 'none', 'menu_class' => 'list footer-menu', 'theme_location' => 'footer' ) ); ?>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            &copy;<?php echo date('Y') ?>, Все права защищены
        </div>
    </div>
</footer>
</div>
<?php wp_footer() ?>
</body>

</html>