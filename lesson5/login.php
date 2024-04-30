<?php

/**
 * Файл login.php для не авторизованного пользователя выводит форму логина.
 * При отправке формы проверяет логин/пароль и создает сессию,
 * записывает в нее логин и id пользователя.
 * После авторизации пользователь перенаправляется на главную страницу
 * для изменения ранее введенных данных.
 **/

// Отправляем браузеру правильную кодировку,
// файл login.php должен быть в кодировке UTF-8 без BOM. 
header('Content-Type: text/html; charset=UTF-8');
session_start();
// В суперглобальном массиве $_SESSION хранятся переменные сессии.
// Будем сохранять туда логин после успешной авторизации.
if (!empty($_SESSION['login'])) {
  // Если есть логин в сессии, то пользователь уже авторизован.
  // TODO: Сделать выход (окончание сессии вызовом session_destroy()
  //при нажатии на кнопку Выход).
  // Делаем перенаправление на форму.
  header('Location: ./');
  exit();
}

// В суперглобальном массиве $_SERVER PHP сохраняет некторые заголовки запроса HTTP
// и другие сведения о клиненте и сервере, например метод текущего запроса $_SERVER['REQUEST_METHOD'].
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="libs/bootstrap-4.0.0-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style8.css">
    <script src="libs/jquery-3.4.1.min.js"></script>
    <title>Задание 5</title>
</head>
<body>
  <div class="pform pformAuth">
    <form action="" method="post">
      <h3>Авторизация</h3>
        <div>
          <input class="w100" type="text" name="login" placeholder="Логин">
        </div>
        <div>
          <input class="w100" type="text" name="password" placeholder="Пароль">
        </div>
        <button type="submit">Войти</button>
    </form>
  </div>
</body>
</html>

<?php
}
// Иначе, если запрос был методом POST, т.е. нужно сделать авторизацию с записью логина в сессию.
else {
  // TODO: Проверть есть ли такой логин и пароль в базе данных.
  // Выдать сообщение об ошибках.
  require('connection.php');
  $login = $_POST['login'];
  $password = md5($_POST['password']);
  $its = 0;
  $uid = 0;
  try {
    $stmt = $db->prepare("SELECT id FROM users WHERE login = ? and password = ?");
    $stmt->execute([$login, $password]);
    $its = $stmt->rowCount();
    if($its){
      $uid = $stmt->fetchAll(PDO::FETCH_ASSOC)[0]['id'];
    }
  }
  catch(PDOException $e){
    print('Error : ' . $e->getMessage());
    exit();
  }

  $_SESSION['login'] = $_POST['login'];
  $_SESSION['user_id'] = $uid;
  // Делаем перенаправление.
  header('Location: ./');
}
