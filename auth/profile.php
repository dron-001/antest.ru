<? top('Профайл');


$CONNECT = mysqli_connect('localhost', 'root', '', 'In');
$q = mysqli_query($CONNECT, "SELECT * FROM `users` WHERE `id` = '$_SESSION[id]'");
$w = mysqli_fetch_assoc($q);


if(!$_SESSION['lang']){
	$_SESSION['lang'] = 1;
}

if($_POST['lang_f']){
	//получение языка ajax запросом и сохранение его в сессию
	$lang = array_pop($_POST);

	$_SESSION['lang'] = $lang;

}


if(!$w['avatar'] == ""){
	//получение аватарки и его вывод
	$avatar = $w['avatar'];
}
else $avatar = 'default.png';

 ?>
<div class="page">
<div class="us_ava">
	<? echo "<img  style='position: relative; height: 100%; width: 100%;' src='avatars/".$avatar."'>" ?>
</div>
<div class="us_info" style=" display: flex;">
	<? echo '<p style="padding: 120px 0 0 20px; margin: 0; color: #464E78; font-size: 1.3rem;">'.$_SESSION['surname'].' '.$_SESSION['name'].' '.$_SESSION['patronymic'].'</p>'?>
</div>
</div>
<? bottom()?>