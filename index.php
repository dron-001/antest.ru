<?
session_start();

$CONNECT = mysqli_connect('localhost', 'a0246475_In', 'root', 'a0246475_In');
if( !$CONNECT ) exit('MySQL error');

  /*********************************/
 /*Переброс на login.php при входе*/
/*********************************/

if ( $_SERVER['REQUEST_URI'] == '/' ) $page = 'login';
else {
   $pag = parse_url($_SERVER['REQUEST_URI']);
   $page = substr($pag[path], 1);   
}
  /*****************************************/
 /**Переход на страниццу если она найдена**/
/*****************************************/

if ( $_SESSION['id'] and file_exists('auth/'.$page.'.php') ) include 'auth/'.$page.'.php';
else if ( !$_SESSION['id'] and file_exists('guest/'.$page.'.php') ) include 'guest/'.$page.'.php';
else  not_found();


  /***************************************************************************************************************************************************/
 /**********************************************Функции необходимые для работы сайта*****************************************************************/
/***************************************************************************************************************************************************/

function go_auth($data){
    //функция записывающая данные юзера в сессию
    foreach ($data as $key => $value) 
        $_SESSION[$key] = $value;
}

function not_found(){
    exit('not_found');
}

function setAvatar($name){
    //функция сохроняющая аватарку в БД
    $CONNECT = mysqli_connect('localhost', 'a0246475_In', 'root', 'a0246475_In');
     mysqli_query($CONNECT, 'UPDATE `users` SET `avatar` = "'.$name.'" WHERE `id` = "'.$_SESSION[id].'"');
}

function loadAvatar($avatar){
    
    
    //функция загружающая аватарку на сервер
    $type = $avatar['type'];
    $name = md5(microtime()).".".substr($type, strlen("image/"));
    $updir = "avatars/".$name;
    if(move_uploaded_file($avatar["tmp_name"], $updir)){
        
        setAvatar($name);
        
    }
    else return false;
    }



function top( $title ) {
    $pag = parse_url($_SERVER['REQUEST_URI']);
   $page = substr($pag[path], 1);
echo '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>'.$title.'</title>
<link rel="stylesheet" href="/style.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<script type="text/javascript" src="/jquery-3.2.1.min.js"></script>
<script src="/script_page.js"></script>
<script src="/script.js"></script>
</head>
<body>
<div class="wrapper">
<div class="menu">
<select id="'.$page.'">'
.str_replace('"'.$_SESSION['lang'].'"', '"'.$_SESSION['lang'].'" selected', '<option value="1">Русский</option><option value="2">English</option>')
.'</select>';
if($_SESSION[id])
    echo'
<a href="/logout" id="btn3">Выход</a>';
else
    echo'
<a href="/login" id="btn1">Вход</a>
<a href="/register" id="btn2">Регистрация</a>';

echo '
</div>
<div class="content">
<div class="block">';
}

function bottom() {
echo '
</div>
</div>
</div>
</body>
</html>';
}

?>
