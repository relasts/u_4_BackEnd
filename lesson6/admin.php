<?php

  /**
   * Задача 6. Реализовать вход администратора с использованием
   * HTTP-авторизации для просмотра и удаления результатов.
   **/

  // Пример HTTP-аутентификации.
  // PHP хранит логин и пароль в суперглобальном массиве $_SERVER.
  // Подробнее см. стр. 26 и 99 в учебном пособии Веб-программирование и веб-сервисы.
  if (empty($_SERVER['PHP_AUTH_USER']) ||
      empty($_SERVER['PHP_AUTH_PW']) ||
      $_SERVER['PHP_AUTH_USER'] != 'admin' ||
      md5($_SERVER['PHP_AUTH_PW']) != md5('123')) {
    header('HTTP/1.1 401 Unanthorized');
    header('WWW-Authenticate: Basic realm="My site"');
    print('<h1>401 Требуется авторизация</h1>');
    
    exit();
  }

  // *********
  // Здесь нужно прочитать отправленные ранее пользователями данные и вывести в таблицу.
  // Реализовать просмотр и удаление всех данных.
  // *********

  require('connection.php');
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="libs/bootstrap-4.0.0-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./styleAdmin.css">
    <script src="./libs/js/jquery-3.4.1.min.js"></script>
    <title>Задание 6 (админка)</title>
</head>
<body class="admin">
  <table>
    <thead>
      <tr>
        <th>id</th>
        <th>ФИО</th>
        <th>Телефон</th>
        <th>Почта</th>
        <th>День рождения</th>
        <th>Пол</th>
        <th>Биография</th>
        <th>ЯП</th>
        <th></th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <?php
        $dbFD = $db->query("SELECT * FROM form_data ORDER BY id DESC");
        while($row = $dbFD->fetch(PDO::FETCH_ASSOC)){
          echo '<tr data-id='.$row['id'].'>
                  <td>'.$row['id'].'</td>
                  <td>'.$row['fio'].'</td>
                  <td>'.$row['phone'].'</td>
                  <td>'.$row['email'].'</td>
                  <td>'.$row['birthday'].'</td>
                  <td>'.(($row['gender'] == "male") ? "Мужской" : "Женский").'</td>
                  <td class="wb">'.$row['biography'].'</td>
                  <td>';
          $dbl = $db->prepare("SELECT * FROM form_data_lang fd
                                LEFT JOIN languages l ON l.id = fd.id_lang
                                WHERE id_form = ?");
          $dbl->execute([$row['id']]);
          while($row1 = $dbl->fetch(PDO::FETCH_ASSOC)){
            echo $row1['name'].'<br>';
          }
          echo '</td>
                <td><a href="./index.php?uid='.$row['user_id'].'" target="_blank">Редактировать</a></td>
                <td><button class="remove">Удалить</button></td>
                <td colspan="10" class="form_del hid">Форма удалена</td>
              </tr>';
        }
      ?>


    </tbody>
  </table>
  <script src="./core.js"></script>
</body>
</html>
