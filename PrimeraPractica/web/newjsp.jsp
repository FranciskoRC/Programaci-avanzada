<%-- 
    Document   : newjsp
    Created on : 13-nov-2018, 17:18:30
    Author     : paco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="index.imc" %>
/*Si quiero importar todas las clases del paquete import pongo
//<%@page import="index.*" %>*/
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>I.M.C</title>
    </head>
    <body>
        <h1>Càlcul de l'index de masa corporal</h1>
        <form method="post" action="newjsp.jsp">
            <p>Introdueix el teu pes si us plau:</p>
            pes(en kilos)<input type="text" name="pes"/>
            <br>
            <p>Introdueix el teu pes si us plau:</p>
            alçada(en metres)<input type="text" name="alsada"/>
            <br>
            <input type="submit" name="ok" value="Enviar"/>
        </form>
        <%
            //Mirem si ha clicat el botó del formulari
            if(request.getParameter("ok")!=null){
                double pes, alsada;
                //Validar los valores de mis cajas en una nueva clase 
                pes = validator.validaDouble(request.getParameter("pes"));
                alsada = validator.validaDouble(request.getParameter("alsada"));
                if(pes<0 || alsada <0){
                    out.println("El pes ha de ser positiu");
                }else{
                imc indice = new imc(pes, alsada);
                //su vull que em surti amb dos decimals:
                out.println(String.format("%.2f", indice.calculaImc()));
                out.println(indice.comEstas());
                }

                
            }
        %>
        
        
    </body>
</html>
