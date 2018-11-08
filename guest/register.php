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

if ( mysqli_num_rows(mysqli_query($CONNECT, "SELECT `id` FROM `users` WHERE `email` = '$_POST[mail]'")) ){
  //проверка не занят ли аккаунт
       if( $_SESSION[lang] == 1)echo 'Этот mail уже занят';
       else echo 'This mail is already taken.';   
}
else{
   if(!$_FILES['avatar']['name'] == ""){
    //иницилизация аватаарки
    $avatar = $_FILES["avatar"];
}
else $avatar = "";

$date = date("d-m-Y-H:i");
//запись проверенных данных в БД
mysqli_query($CONNECT, 'INSERT INTO `users` VALUES ("", "'.$_POST['mail'].'", "'.md5($_POST['password']).'", "'.$_POST['name'].'", "'.$_POST['surname'].'", "'.$_POST['patronymic'].'", "'.$_POST['sex'].'", "'.$date.'", "'.$avatar.'")');
//запись данных в сессию и переход на profile.php
$row = mysqli_fetch_assoc( mysqli_query($CONNECT, "SELECT * FROM `users` WHERE `email` = '$_POST[mail]'") );  
go_auth($row);
@loadAvatar($avatar, $_SESSION[id]);
    header('Location: profile');
    }    
    }    
    top('Регистрация');
?>
<h1 id="btn6">Регистрация</h1>
<form action="register" method="post" enctype="multipart/form-data">
<p><input type="text" placeholder="Имя" name="name" id="name" value="<? echo $_POST['name']; ?>" ></p>
<p><input type="text" placeholder="Фамилия" id="surname" name="surname" value="<? echo $_POST['name']; ?>" ></p>
<p><input type="text" placeholder="Отчество" id="patronymic" name="patronymic" value="<? echo $_POST['patronymic']; ?>" ></p>
<p><input type="text" placeholder="E-mail" id="mail" name="mail" value="<? echo $_POST['mail']; ?>" ></p>
<p><input type="password" placeholder="Пароль" id="password"  name="password" value="<? echo $_POST['password']; ?>"></p>
<p><input type="password" placeholder="Повторите пароль"  id="password2" name="password2" value="<? echo $_POST['password2']; ?>"></p>
<p id="btn7">Пол</p>
<p><select id="sex">
<option id = "s1" value="1">Муж.</option>
<option id = "s2" value="0">Жен.</option>
</select></p>        
        <h1 id="btn9">Вы можете загрузить аватарку</h1>
        <input  type="file" name="avatar" onchange="ValidateSingleInput(this)">      
    <p><input id="btn8" type="submit" value ="Зарегистрироватся" class="reg" ></p>
</form>
<? bottom() ?>