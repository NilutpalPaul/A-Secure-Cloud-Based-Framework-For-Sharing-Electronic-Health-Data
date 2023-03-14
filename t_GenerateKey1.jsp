<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%@ include file="connect.jsp" %>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<%
int uid = Integer.parseInt(request.getParameter("usid"));
String fname=request.getParameter("fname");
try {

String str="Permitted",key1="",key2="",pk="";


Statement st1 = connection.createStatement();

String query1 ="update request set privatekey='"+str+"' where id='"+uid+"' ";
st1.executeUpdate (query1);
connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
response.sendRedirect("t_GeneratePK.jsp");
%>
</body></html>