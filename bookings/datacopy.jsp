	<%@ page language ="java" %>
	<%@ page import="java.sql.*" %>
	<%@ page import="java.io.*" %>
	<%@ page import="java.util.*" %>
	
    <html>
	<head><title>Save record</title></head>
	<body>
    
    <%
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String email=request.getParameter("email");
	String lodge=request.getParameter("lodge");	
	String safari=request.getParameter("safari");
	String tday=request.getParameter("dotDay");	
	String tmonth=request.getParameter("dotMonth");	
	String tyear=request.getParameter("dotYear");
	String ntrv=request.getParameter("ntrv");
	String cctype=request.getParameter("cctype");	
	String ccname=request.getParameter("ccname");
	String ccnum=request.getParameter("ccnum");
	String ccmonth=request.getParameter("ccMonth");	
	String ccyear=request.getParameter("ccYear");	
	String ccvv=request.getParameter("ccvv");	
	String add=request.getParameter("add");	
	String city=request.getParameter("city");
	String country=request.getParameter("country");	
	String state=request.getParameter("state");	
	String code=request.getParameter("code");
	%>	
	
	
    <%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:data");
	PreparedStatement st = con.prepareStatement("Insert into Table1 values (?,?,?,?,?,?,?,?,?,?,?,?)");
	st.setString(1,fname);
	st.setString(2,lname);
	st.setString(3,email);
	st.setString(4,lodge);
	st.setString(5,safari);	
	st.setString(6,tday);	
	st.setString(7,tmonth);	
	st.setString(8,tyear);	
	st.setString(9,nrtv);	
	st.setString(10,cctype);	
	st.setString(11,ccname);
	st.setString(12,ccnum);
	st.setString(13,ccmonth);	
	st.setString(14,ccyear);	
	st.setString(15,ccvv);	
	st.setString(16,add);	
	st.setString(17,city);	
	st.setString(18,country);	
	st.setString(19,state);
	st.setString(20,code);	
		
	st.execute();
	con.close();
	}
	catch(Exception e1)
	{
		out.println("cannot save the records:"+e1);
	}
	%>
		
        <center><h3>Record inserted sucessfully</h3>
	</center>
	</body>
	</html>