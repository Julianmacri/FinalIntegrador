<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuevo Socio</title>
	<style>
	::before,
	::after{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	body{
		background: #005AA7; 
		background: -webkit-linear-gradient(to right, #FFFDE4, #005AA7); 
		background: linear-gradient(to right, #FFFDE4, #005AA7); 
		display:flex;
		height:650px;
		justify-content:center;
		align-items: center;
	}
	h1{
		text-align: center;
		font_weight: 700;
	}
	form{
		background: #fff;
		padding: 40px 0;
		box-shadow: 0 0 6px 0 rgba(255,255,255, 0.8);
		border-radius:10px;		
	}
	.form{
		width: 100%;
		margin: auto;
		
	}
	form .grupo{
		position: relative;
		margin: 45px;
	}
	input{
		background: none;
		color: #c6c6c6;
		font_size: 18px;
		padding: 10px 10px 10px 5px;
		width: 100%;
		display: block;
		border:none;
		border-bottom: 1px solid ;
		border-bottom-color: black;
		
	}
	input:focus{
		outline: none;
		color: rgb(94,91,93);
		
	}
	label{
		color: black;
		font-size: 20px;
		transition: 0.5s ease-in-out all;
		position: absolute;
		left: 5px;
		top: 10px;
		pointer-events: none;
	}
	input:focus~label,
	input:valid~label{
		top: -14px;
		font-size: 12px;
		color: #2196f3;
	}
	.barra{
		position: relative;
		display: block;
		width: 100%
	}
	input:focus~.barra::before{
		width: 100%;
		
		
	}
	.barra::before{
		content: "";
		height: 2px;
		width: 0%;
		bottom: 0;
		position: absolute;
		background: linear-gradient(to right, #FFFDE4, #005AA7); 
		transition: 0.3s ease width;
		left: 0;
		
	}
	
	
	button{
		font-family: 'roboto';
		background: #50C9C3;  
		background: -webkit-linear-gradient(to right, #FFFDE4, #005AA7); 
		background: linear-gradient(to right, #FFFDE4, #005AA7); 
		border: none;
		display: block;
		width: 80%;
		margin: 10px auto;
		color: #fff;
		heigth: 40px;
		font-size: 24px;
		cursor: pointer;
	}
	.cancelar{
		background: #EB5757;  /* fallback for old browsers */
		background: -webkit-linear-gradient(to right, #000000, #EB5757);  /* Chrome 10-25, Safari 5.1-6 */
		background: linear-gradient(to right, #000000, #EB5757); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
		
	}
	</style>
</head>
<body>

		<form action="SociosController?accion=insert" method="post" id="form">
			<div class="form">
				<h1 >Añadir Socio</h1>
				<div class="grupo">
					<input type="text" id="nombre" name="nombre" required  ><span class="barra"></span>
					<label for="nombre"  >Nombre</label>
				</div>
			
				<div class="grupo">
					<input type="text"  id="apellido" name="apellido" required ><span class="barra"></span>
					<label for="apellido" >Apellido</label>
				</div>
			
				<div class="grupo">
					<input type="text"  id="dni" name="dni" required><span class="barra"></span>
					<label for="dni" >Dni</label>
				</div>
			
				<div class="grupo">
					<input type="email" id="mail" name="mail" required ><span class="barra"></span>
					<label for="mail" >Mail</label>
				</div>			
			
				<div class="grupo">
					<input type="text" id="estado" name="estado" required ><span class="barra"></span>
					<label for="estado">Estado</label>

				</div>	
				
				<button type="submit">Insertar</button>
				<button class="cancelar" onclick="history.back()">Cancelar</button>				
			</div>
			
			
		</form>

	
	


</body>
</html>