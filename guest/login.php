<?

$CONNECT = mysqli_connect('localhost', 'root', '', 'In');
if( !$CONNECT ) exit('MySQL error');

if(!$_SESSION['lang']){
	$_SESSION['lang'] = 1;
}

if($_POST['lang_f']){
	//получение языка ajax запросом и сохранение его в сессию
	$lang = array_pop($_POST);
	$_SESSION['lang'] = $lang;

}
if($_POST['mail']){
	//получение данных из формы
	if ( !mysqli_num_rows(mysqli_query($CONNECT, "SELECT `id` FROM `users` WHERE `email` = '$_POST[mail]'")) ){
		//проверка найден ли аккаунт
		if($_SESSION['lang'] == 1) echo "Аккаунт не найден";
		else echo "Account not found";
	  }	
      else{
      	//запись данных в сессию переход на profile.php
	  $row = mysqli_fetch_assoc( mysqli_query($CONNECT, "SELECT * FROM `users` WHERE `email` = '$_POST[mail]'") );
      go_auth($row);
	  header('Location: profile');
	 }
    }
top('Вход');
 ?>
<h1 id="btn5">Вход</h1>
<form action="login" method="post">
<p><input type="text" placeholder="E-mail" name="mail" id="mail"></p>
<p><input type="password" placeholder="Пароль" name="password" id="password"></p>
<p><input type="submit" value ="Войти" class="login" id="btn4"></p>
</form>
<? bottom() ?>