<html>
<body bgcolor="olive">
<center>
<h1><font color="tan" size="10" face="Arial Black">shri dhanalakshmi jewellers </font></h1></center>
<hr>
<center>
<center>
<style type="text/css">
label{
width:100px;
display:inline-block;
}
form{
border-radius:50px;
background:tan;
color:black;
width:730px;
}
h2{
text-align:center;
}
#Submit{
width:100%;
margin-top:50px;
margin-bottom:60px;
}
</style>
<style>
table,th,td{
border:1px white;
padding-top:5px;
padding-bottom:5px;
;
</style>
<center>
<form action ="Task3.jsp" method ="post">
<font color="black" size="7" face="Arial Black">SILVER BILL</font><br>
<table>
<tr><td><label>Net Weight:</label></td>
<td><input type ="number" min="0.000" step="0.001" name ="t1"></td></tr>
<tr><td><label>Rate Per Gram:</label></td>
<td><input type ="number" name ="t2"></td></tr>
<tr><td><label>Labour Charge:</label></td>
<td><input type ="number" name ="t3"></td></tr>
<tr><td><label>Old Jewel Net Weight:</label></td>
<td><input type ="number" name ="t4" value="0"></td></tr>
<tr><td><label>Old Jewel Discount:</label></td>
<td><input type ="number" min="0.000" step="0.001" name ="t5" value="0"></td></tr>
<tr><td><label>Old Jewel Rate:</label></td>
<td><input type ="number" name ="t6" value="0"></td></tr>
</table>
<input type ="Submit" name ="b1" value ="Submit" id="Submit">
</center>
</form>
<center>
<section: id="my-section">
<form>
<center>
<h3><font color="black" size="5" face="Arial Black">SILVER BILL</font></h3>
</center>
<table>
<% 
String Add = request.getParameter("b1");
if(Add!= null)
{
float A =Float.parseFloat(request.getParameter("t1"));
float B =Float.parseFloat(request.getParameter("t2"));
float C =Float.parseFloat(request.getParameter("t3"));
float D =Float.parseFloat(request.getParameter("t4"));
float E =Float.parseFloat(request.getParameter("t5"));
float F =Float.parseFloat(request.getParameter("t6"));
float G =(A/10f);
float H =(A+G);
float I =(H*B);
float J =(I+C);
float K =(D-E);
float L =(K*F);
float M =(J-L);
out.println("<tr><td> Net Weight:</td><td>"+A);out.println("gram </td></tr>");
out.println("<tr><td> Wastage:</td><td>"+G);out.println("gram </td></tr>");
out.println("<tr><td> +=</td><td>"+H);out.println("gram </td></tr>");
out.println("<tr><td> Rate Per Gram:</td><td>"+B);out.println("Rs</td></tr>");
out.println("<tr><td> *=</td><td>"+I);out.println("Rs</td></tr>");
out.println("<tr><td> Labour charge:</td><td>"+C);out.println("Rs</td></tr>");
out.println("<tr><td> Jewel Rate:</td><td>"+J);out.println("Rs</td></tr>");
out.println("<tr><td> Old Jewel Net Weight:</td><td>"+D);out.println("gram</td></tr>");
out.println("<tr><td> Old Jewel Discount:</td><td>"+E);out.println("gram</td></tr>");
out.println("<tr><td> -=</td><td>"+K);out.println("gram </td></tr>");
out.println("<tr><td> Old Jewel Rate Per Gram:</td><td>"+F);out.println("Rs</td></tr>");
out.println("<tr><td> Old Jewel Rate:</td><td>"+L);out.println("Rs</td></tr>");
out.println("<tr><td><hr> Total:</td><td><hr>"+M);out.println("Rs</td></tr>");
}
%>
</table>
</form>
</section>
<style>
@media print{
body *{
visibility: hidden;
}
#my-section, #my-section * {
visibility: visible;
}
#my-section{
position: absolute;
top:0;
left:0;
}
}
</style>
</center>
<button onclick="window.print();">Print</button>
</body>
</html>