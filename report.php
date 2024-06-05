<?php
$phone = $_POST['tel'];
$address = $_POST['address'];
$date_on = $_POST['date_on'];
$date_off = $_POST['date_off'];
$message = $_POST['message'];

if (isset($_POST['agree'])) {
  $agree = $_POST['agree'];
}

if ($_POST['check'] != 'nospam') exit('Spam detected');

if ($phone && $date_on && $date_off && $agree === 'on') {
  $send_message = "
    Телефон: $phone<br>
    Адрес: $address<br>
    Дата въезда: $date_on<br>
    Дата выезда: $date_off<br>
    Описание заявки: $message<br>
    Согласие: $agree
   ";

  mail('garanthouse@yandex.ru', 'С сайта квартиры в кызыле посуточно', $send_message);
  session_start();

  $_SESSION['tel'] = $_POST['tel'];
  $_SESSION['address'] = $_POST['address'];
  $_SESSION['date_on'] = $_POST['date_on'];
  $_SESSION['date_off'] = $_POST['date_off'];
  $_SESSION['message'] = $_POST['message'];
  $_SESSION['agree'] = $_POST['agree'];

  header("Location: ./page-message.php");
} else {
  echo "<main style='padding: 50px 30px; font-family: sans-serif'>
            <div style='max-width: 1200px; margin: 0 auto;'>
                <h1>Ваше сообщение не отправлено!</h1>
                <p style='color: red'>Заполните все поля.</p>
                <a href='/' style='color: black; font-size: 24px'>Вернуться на главную</a>
            </div>
        </main>";
}
?>