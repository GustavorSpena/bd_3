var PORT = 5000
var URL = 'http://0.0.0.0:' + PORT;
$.ajax({
    type: 'GET',
    url: "0.0.0.0:" + URL,
    success: function(data, textStatus) {
        console.log(data);
    },
    error: function(xhr, textStatus) {
        console.log("ERROR "+xhr);
    }
});


$(function(){
    $('#formNovoEvento').submit(function(e){
        e.preventDefault();
        ano = $('#inputAno').val();
        titulo = $('#inputTitulo').val();
        data = new FormData();
        data.set('ano', ano);
        data.set('titulo', titulo);
        console.log(data.get('ano'));
        $.ajax({
            type: 'POST',
            data: data,
            processData: false,
            contentType: false,
            url: URL + "/api/eventos",
            success: function(data, textStatus) {
                toastr.success('Evento criado!');
            },
            error: function(xhr, textStatus) {
                toastr.error(xhr.responseJSON.error)
            }
        });  
    })

})