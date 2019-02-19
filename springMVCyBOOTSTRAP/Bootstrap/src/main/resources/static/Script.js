console.log(" hola")
function indexpage(){
	alert("esta es una prueba para ver las funciones en index");
}

function namepage(){
	alert("esta es una prueba para ver las funciones en nombre");
}

function PasarValor()
{
document.getElementById("nombre2").value = document.getElementById("InputName1").value;
}

$("#nuevoProfesor-form").submit(function(e){
    e.preventDefault(e);
    agregaProfesor()
    
});

function agregaProfesor(){
	
	$.ajax({
        type: 'POST',
        url: '/profesor/agregar',
        data: $('#nuevoProfesor-form').serialize(),
        cache: false,
        dataType: "json",
        crossDomain: false,
        success: function (data) {
        	console.log("success ")
            var response = data;
        	
        	console.log(data)
            
                
        	if(data.code==200)
        		window.location.href="/profesor";
        	else{
        	
               $('#modalRespuesta').modal('show');
                $('#modalRespuestaMensaje').text(data.message)
        	}
        
            
        },
        error: function (data) {
        	
        	console.log(data)
        	var resp=data.responseJSON;
            console.log("failure");
            $('#modalRespuesta').modal('show');
            $('#modalRespuestaMensaje').text(resp.message)
            
            
        }
    });
    return false;
}
