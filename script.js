function ValidateSingleInput(oInput) {
    //функция для проверки аватарки
  var _validFileExtensions = [".jpg", ".jpeg", ".bmp", ".gif", ".png"];
    if (oInput.type == "file") {
        var sFileName = oInput.value;
         if (sFileName.length > 0) {
            var blnValid = false;
            for (var j = 0; j < _validFileExtensions.length; j++) {
                var sCurExtension = _validFileExtensions[j];
                if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                    blnValid = true;
                    break;
                }
            }
             
            if (!blnValid ) {
                if( $('select').val() == 2 )alert("Error loading image");
                else alert("Ошибка загрузки изоброжения");

                oInput.value = "";
                return false;
            }
        }
    } 
    return true;
}
function post_query( url, name, data ) {
//функция для ajax запросов
    var str = '';

    $.each( data.split('.'), function(k, v) {
        str += '&' + v + '=' + $('#' + v).val();
    } );

    $.ajax(

    {
        url : '/' + url,
        type: 'POST',
        data: name + '_f=1' + str,
        cache: false
    }
    );
}
