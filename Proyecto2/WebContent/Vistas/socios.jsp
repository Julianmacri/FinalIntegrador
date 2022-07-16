<%@page import="Clases.SociosDAO"  %>
<%@page import="Clases.Socios"%>
<%@page import="java.util.List"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@100&display=swap');
    :root{
        --primary-color: white;
        --secondary-color: rgb(61,68,73);
        --highlight-color: #3282b8;

        --dt-padding: 12px;
        --dt-padding-s: 6px;
        --dt-padding-xs: 2px;
        --dt-border-radius: 3px;
    }

    .datatable-container{
        font-family: 'Noto Sans', sans-serif;
        background-color: #2a3338;
        border-radius: var(--dt-border-radius);
        color: var(--primary-color);
        width: 1000px;
        margin: 0 auto;
        font-size: 12px;
    }
    .datatable-container .header-tools{
        border-bottom: solid 1px var(--secondary-color);
        padding: var(--dt-padding);
        display: flex;
        align-items: baseline;
        
    }
    .datatable-container .header-tools .tools a{
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: baseline;
        text-decoration: none;
        width: 15%;
        color: var(--primary-color);
        box-sizing: border-box;
        border: solid 1px var(--secondary-color);
        border-radius: 20px;
        background-color: var(--highlight-color);
    }
    .datatable-container .header-tools .search{
        width: auto;
    }
    .datatable-container .header-tools .search .search-input{
        width: 100%;
        background-color: #2a3338;
        display: block;
        box-sizing: border-box;
        border-radius: var(dt-border-radius);
        border: solid 1px var(--secondary-color);
        color: var(--primary-color);
    }
    input::placeholder {
  		color: #F6FFF9;
	}
    .datatable-container .header-tools .tools{
        width: 80%;
    }
    .datatable-container .datatable{
        border-collapse: collapse;
        width: 100%;

    }
    .datatable-container .datatable,
    .datatable-container .datatable th,
    .datatable-container .datatable td{
        padding: var(--dt-padding) var(--dt-padding);
    }
    .datatable-container .datatable th{
        font-weight: bolder;
        text-align: left;
        border-bottom: solid 1px var(--secondary-color);
    }
    .datatable-container .datatable tbody tr:nth-child(even){
        background-color: var(--secondary-color);
    }
    .datatable-container .datatable tbody tr:hover{
        background-color: var(--highlight-color);
    }
</style>

</head>
<body>
	

	<script>
    function doSearch()
    {
        const tabla = document.getElementById('datos');
        const buscador = document.getElementById('searchTerm').value.toLowerCase();
        let total = 0;

        for (let i = 1; i < tabla.rows.length; i++) {
            if (tabla.rows[i].classList.contains("noSearch")) {
                continue;
            }
            let found = false;
            const cellsOfRow = tabla.rows[i].getElementsByTagName('td');
            for (let j = 0; j < cellsOfRow.length && !found; j++) {
                const compareWith = cellsOfRow[j].innerHTML.toLowerCase();
                if (buscador.length == 0 || compareWith.indexOf(buscador) > -1) {
                    found = true;
                    total++;
                }
            }
            if (found) {
                tabla.rows[i].style.display = '';
            } else {
                tabla.rows[i].style.display = 'none';

            }

        }
    }
	</script>

    <div class="datatable-container">
    	<h1>Tabla de Socios</h1>			
        <div class="header-tools">
        	<div class="tools">
        		<a href="SociosController?accion=nuevo">Agregar Socio</a>
        	</div>
            <div  class="search">
                <input id="searchTerm" type="text" onkeyup="doSearch()"  name="" class="search-input" placeholder="¿Que desea buscar?">
            </div>
        </div>

        <table class="datatable" id="datos">
           	<tr>
               <th>Id</th>
               <th>Nombre</th>
               <th>Apellido</th>
               <th>Dni</th>
               <th>Email</th>
               <th>Estado</th>
               <th>Modificar</th>
               <th>Eliminar</th>
            </tr>
            <%
			List<Socios> resultado=null;
			SociosDAO socio=new SociosDAO();
			resultado=socio.listarSocios();

			for(int i=0;i<resultado.size();i++)
			{
			String ruta="SociosController?accion=modificar&id="+resultado.get(i).getId_socio();	
			String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getId_socio();
			%>	
            <tr>
                <td><%=resultado.get(i).getId_socio()%></td>				
                <td><%=resultado.get(i).getNombre() %></td>				
                <td><%=resultado.get(i).getApellido() %></td>
                <td><%=resultado.get(i).getDni()%></td>
                <td><%=resultado.get(i).getMail() %></td>
                <td><%=resultado.get(i).getEstado()%>		
                <td><a href=<%=ruta%>> <i class="fa-solid fa-arrow-right-arrow-left"></i> </a></td>
                <td><a href=<%=rutaE%>><i class="fa-solid fa-arrow-down"></i> </a></td>				
            </tr>
            <%
        }
            %>
        </table>

    </div>





</body>
</html>