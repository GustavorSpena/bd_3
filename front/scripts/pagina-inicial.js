var PORT = 8000
$.ajax({
    type: 'GET',
    url: "http://localhost:" + PORT,
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
      
        $.ajax({
            type: 'POST',
            url: "http://localhost:" + PORT + "/api/eventos",
            success: function(data, textStatus) {
                console.log(data);
            },
            error: function(xhr, textStatus) {
                console.log("ERROR "+xhr);
            }
        });  
    })

})