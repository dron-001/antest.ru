$(document).ready(function(){
   
 $('.reg').click(function(event){ 

event.preventDefault();

   var name =  $('#name').val();
   var surname = $('#surname').val();
   var patronymic = $('#patronymic').val();
   var mail = $('#mail').val();
   var password = $('#password').val();
   var password2 = $('#password2').val();
   var avatar = $('#pp').val();

    var minNumberofChars = 2;
    var maxNumberofChars = 15;

var adr_pattern = /^[a-zA-Zа-яА-Я'][a-zA-Zа-яА-Я-' ]+[a-zA-Zа-яА-Я']?$/u;
var regularExpression = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{5,15}$/;
var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

   if(adr_pattern.test(name) == false || name.length < minNumberofChars || name.length > maxNumberofChars  ){

     if( $('select').val() == 1 )alert('Имя введено не коректно,имя может содержать 2-15 символов.');
     else alert('The name is not correct, the name may contain 2-15 charactersю');

   }
   else if(adr_pattern.test(surname) == false || surname.length < minNumberofChars || surname.length > maxNumberofChars){

     if( $('select').val() == 1)alert('Введенная фамилия неверна, фамилия может содержать 2-15 символов.');
     else alert('The name is not correct, the name may contain 2-15 characters');

   }
   else if(adr_pattern.test(patronymic) == false || patronymic.length < minNumberofChars || patronymic.length > maxNumberofChars){

     if( $('select').val() == 1)alert('Отчество введено не коректно,отчество может содержать 2-15 символов.');
     else alert('The middle name is not correct, the middle name may contain 2-15 characters.');

   }
   else if(re.test(mail) == false){

    if( $('select').val() == 1)alert('email введён не коректно.');
    else alert('email entered incorrectly.'); 
  
   }
   else if(regularExpression.test(password) == false ){

    if( $('select').val() == 1)alert('Пароль введён не правильно,пароль должен содержать как минимум одну цифру, как минимум одну заглавную,как минимум одну строчную и содержать 5-15 символов и быть на латинице.');
    else alert('The password is entered incorrectly, the password must contain at least one number, at least one uppercase, at least one lower case and contain 5-15 characters and be in Latin.');

   }
   else if( password != password2){

    if( $('select').val() == 1)alert('Пароли не совпадают.');
    else alert('Passwords do not match.');

      }
else{
  
$( "form" ).submit();
}
   
  });

 $('.login').click(function(event){ 
   
event.preventDefault();

   var login =  $('#mail').val();
   var password = $('#password').val();

    var minNumberofChars = 2;
    var maxNumberofChars = 15;

var regularExpression = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{5,10}$/;
var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

  if(re.test(login) == false){

    if( $('select').val() == 1)alert('Email введён не коректно.');
    else alert('Email entered incorrectly.');
   
   }
   else if(regularExpression.test(password) == false ){

    if( $('select').val() == 1)alert('Пароль введён не  коректно.');
    else alert('Password entered incorrectly.');
   
   }
else{
  
$("form").submit();
}  
});
  
  $('select').on('change', function(){
var url = $('select').attr('id');
var name = 'lang';

post_query( url, name, url );

window.location.href='/' + url;
  });
    
    if( $('select').val() == 2 ){

  $('#btn1').text('Log in');
  $('#btn2').text('Sig in');
  $('#btn3').text('Log out');
  $('#btn4').attr('value', 'Log in');
  $('#password').attr('placeholder', 'Password');
  $('#password2').attr('placeholder', 'Repeat the password');
  $('#btn5').text('Log in');
  $('#btn6').text('Sig in');
  $('#name').attr('placeholder', 'Name');
  $('#surname').attr('placeholder', 'Surname');
  $('#patronymic').attr('placeholder', 'Patronymic');
  $('#btn7').text('Sex');
  $('#s1').text('male');
  $('#s2').text('female');
  $('#btn8').attr('value', 'Sig in');
  $('#btn9').text('You can upload an avatar');

}

});
