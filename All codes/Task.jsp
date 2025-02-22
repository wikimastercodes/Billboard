<html>
<body bgcolor="olive">
<center>
<h1><font color="tan" size="10">shri dhanalakshmi jewellers </font></h1></center>
<hr>
<center>
<center>
<style type="text/css">
label{
width:100px;
display:inline-block;
}
form{
border-radius:10px;
background:tan;
color:black;
width:330px;
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
<form action ="Task.jsp" method ="post">
<h2>PAWN CALCULATER</h2>
<label>Rate Of Intrest:</label>
<input type ="number" min="0.0" step="0.5" name ="t1"><br></br>
<label>principle:</label>
<input type ="number" name ="t2"><br></br>
<label>Months:</label>
<input type ="number" min="0.0" step="0.5" name ="t3"><br></br>
<input type ="Submit" name ="b1"value ="Submit" id="Submit">
<% 
String Add = request.getParameter("b1");
if(Add!= null)
{
float A =Float.parseFloat(request.getParameter("t1"));
int B =Integer.parseInt(request.getParameter("t2"));
float C =Float.parseFloat(request.getParameter("t3"));
float D =((A*10)*(B/1000)*(C));
float E =(B+D);
out.println("Intrest="+D);out.println("Rs");
out.println("<BR> Simple Intrest="+E);out.println("Rs");
}
%>
</form>
</center>
</body>
</html>