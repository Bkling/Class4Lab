<%-- 
    Document   : Form
    Created on : Sep 10, 2013, 3:42:43 PM
    Author     : benja_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculation Page</title>
    </head>
    <body>
                <div>
            <% 
            String result ="";
            Object res = request.getAttribute("Area");
            if(res != null) {
                result = res.toString();
            }
            %>
            <h1>Area of a Rectangle</h1>
            <form id="form1" name="form1" method="POST" action="RectControl">
                <p>Length: <input type="text" id="length" name="length"></p>
                <p>Width: <input type="text" id="width" name="width"></p>
                <p><input type="Submit" id="areaSub" name="areaSub" value="Area of a Rectangle"></p>
                <p>The Area of a Rectangle is: <%= result %></p>
            </form>
            <h1>Area of a Circle</h1>
            <form id="form2" name="form2" method="POST" action="CirController">
                <p>Radius: <input type="text" id="radius" name="radius"></p>
                <p><input type="Submit" id="cirSub" name="cirSub" value="Area of a Circle"></p>
                <p>The Area of a Circle is: <%= result %></p>
            </form>
            <h1>Third Side of a Triangle</h1>
            <form id="form3" name="form3" method="POST" action="ThirdSide">
                <p>Side 1: <input type="text" id="side1" name="side1"></p>
                <p>Side 2: <input type="text" id="side2" name="side2"></p>
                <p><input type ="Submit" id="thirdSide" name="thirdSide" value="Calculate the Third Side"></p>
                <p>The Third Side of a Triangle is: <%= result %></p>
            </form>
            <p><a href="index.html">Back to Index Page</a></p>
        </div>
    </body>
</html>
