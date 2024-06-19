<?php
$name = $_POST['name'];
$phone = $_POST['tel'];

$email = "alexander-drach@mail.ru";

if ($_POST['check'] != 'nospam') exit('Spam detected');

if ($phone && $name) {
  $send_message = "
Имя: $name" . "\n" . 
"Телефон: $phone" . "\n";

  mail($email, 'С сайта Форпроект', $send_message);
}

$url = 'http://forproekt/wp-content/themes/forproekt_theme';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ваше сообщение отправлено!</title>
  <link rel='stylesheet' href='<?php echo $url ?>/assets-gulp/build/css/style.min.css' type='text/css' media='all' />
</head>
<body>
<div class="wrapper">
    <header class="header">
        <div class="container">
          <div class="header_inner">
              <a class="logo" href="/">
                  <svg width="386" height="87">
                      <use xlink:href="<?php echo $url ?>/assets-gulp/build/img/sprite.svg#logo"></use>
                  </svg>
              </a>
              <nav class="nav">
                <a href="/">На главную</a>
              </nav>
          </div>
        </div>
    </header>
    <main>
      <div class="container">
        <div class="page-content">
          <h1>Ваше сообщение отправлено!</h1>
          <p>Имя: <?php echo $name?></p>
          <p>Телефон: <?php echo $phone?></p>
          <a href="/">Вернуться на главную</a>
        </div>
      </div>      
    </main>    
    <footer class="footer">
      <div class="container">
          <div class="footer__inner">
          <div class="footer__copyright">
                <div class="copyright">
                  <p>ООО «Форпроект» Архитектурно-строительная компания</p>
                  <p>&copy;<?php echo date('Y') ?>, Все права защищены</p>
                </div>
            </div>
          </div>
      </div>
    </footer>
  </div>
</body>

</html>