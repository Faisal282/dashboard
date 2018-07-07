<?php
require "conn.php";

$user = query('SELECT * FROM user');

foreach ($user as $u) {

  if (isset($_POST['submit'])) {
  if ($_POST['email'] == '<?=$u["email"]?>' && $_POST['password'] == '<?=$u["password"]?>') {
    header('Location: dashboard.php');
  }
  else {
    $error = true;
  }
}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<body>
  <?php if (isset($error)): ?>
    <p style="color: red">User dan password yang anda masukkan salah</p>
  <?php endif ?>  
  <h1>FORM LOGIN</h1>
  <form action="" method="POST">
    <ul>
      <li>
        <label for="email">email :</label>
        <input type="text" name="email" id="email">
      </li>
      <li>
        <label for="password">password :</label>
        <input type="password" name="password" id="password">
      </li>
      <li>
        <button type="submit" name="submit">SIMPAN</button>
      </li>
    </ul>
  </form>
</body>
</html>
<?php

//require 'conn.php';

//$username = $_POST['email'];
//$password = $_POST['password'];

//if ($username == "" || $password == "")
//{
//  header("location: form-login.php");
//}
//else
//{
//  $q = "SELECT * FROM user WHERE email = '$username' AND password = $password";
//  $query = mysqli_query($connect, $q);
//  $cek = mysqli_num_rows($query);
//
//  if ($cek > 0)
//  {
//    header("location: dashboard.php");
//  }
//  else
//  {
//    header("location: wrong.php");
//  }
//}
?>