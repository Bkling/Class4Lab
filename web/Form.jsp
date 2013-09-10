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
        <script>
            function validateRectangeForm() {
                var length = document.forms["form1"]["length"].value;
                var width = document.forms["form1"]["width"].value;
                if (length == null || length == "") {
                    alert("Length must be filled out");
                    return false;
                }
                if (width == null || width == "") {
                    alert("width must be filled out");
                    return false;
                }
            }

            function validateCircleForm() {
                var radius = document.forms["form1"]["radius"].value;
                if (radius == null || radius == "") {
                    alert("radius must be filled out");
                    return false;
                }

                function validateThirdSideForm() {
                    var side1 = document.forms["form1"]["side1"].value;
                    var side2 = document.forms["form1"]["side2"].value;
                    if (side1 == null || side1 == "") {
                        alert("Side 1 must be filled out");
                        return false;
                    }
                    if (side2 == null || side2 == "") {
                        alert("Side 2 must be filled out");
                        return false;
                    }
                }


            }
        </script>
    </head>
    <body>
        <div>
            <%
                String Rectangle = "";
                Object res = request.getAttribute("Rectangle");
                if (res != null) {
                    Rectangle = res.toString();
                }

                String Circle = "";
                Object res1 = request.getAttribute("Circle");
                if (res1 != null) {
                    Circle = res1.toString();
                }

                String ThirdSide = "";
                Object res2 = request.getAttribute("ThirdSide");
                if (res2 != null) {
                    ThirdSide = res2.toString();
                }

            %>
            <h1>Area of a Rectangle</h1>
            <form id="form1" name="form1" method="POST" action="RectControl" onsubmit="return validateRectangeForm()">
                <p>Length: <input type="text" id="length" name="length"></p>
                <p>Width: <input type="text" id="width" name="width"></p>
                <p><input type="Submit" id="areaSub" name="areaSub" value="Area of a Rectangle"></p>
                <p>The Area of a Rectangle is: <%= Rectangle%></p>
            </form>
            <h1>Area of a Circle</h1>
            <form id="form2" name="form2" method="POST" action="CirController" onsubmit="return validateCircleForm()">
                <p>Radius: <input type="text" id="radius" name="radius"></p>
                <p><input type="Submit" id="cirSub" name="cirSub" value="Area of a Circle"></p>
                <p>The Area of a Circle is: <%= Circle%></p>
            </form>
            <h1>Third Side of a Triangle</h1>
            <form id="form3" name="form3" method="POST" action="ThirdSide" onsubmit="return validateThirdSideForm()">
                <p>Side 1: <input type="text" id="side1" name="side1"></p>
                <p>Side 2: <input type="text" id="side2" name="side2"></p>
                <p><input type ="Submit" id="thirdSide" name="thirdSide" value="Calculate the Third Side"></p>
                <p>The Third Side of a Triangle is: <%= ThirdSide%></p>
            </form>
            <p><a href="index.html">Back to Index Page</a></p>
        </div>
    </body>
</html>
