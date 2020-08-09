function readURL(input) {
    var url = input.value;
    var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
   
    if (input.files && input.files[0]&& (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg")) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#previewImage').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);

        
    }else{
         $('#previewImage').attr('src', '../../imagesGaulois/Asterix.png');
    }
}

$(document).ready(function () {
//    $('input[type=file]').bootstrapFileInput();
//    $('.file-inputs').bootstrapFileInput();

	$('input[type=file]').bootstrapFileInput();
	
    $("#file-input-1").change(function(){
console.log("onChange");    	
        readURL(this);
    });

});

