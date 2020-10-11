<%@ page language="java" import="java.sql.*"%>

    <%

	String c[]= request.getParameterValues("ad");

	try
	{
		// register the driver
		Class.forName("com.mysql.cj.jdbc.Driver");

		// establish the connection with the database
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project" , "root" , "Mypasswordis2425");

		// create a SQL statement
		Statement stmt = con.createStatement();

		// if delete request is made
		if(request.getParameter("reject") != null)
		{
			for(String s:c)
			{
				String qy = "delete from student where roll_no ='" + s + "'";
				stmt.executeUpdate(qy);
			}
		}
		// else if accept request is made
		else if(request.getParameter("accept") != null)
		{
			for(String s:c)
			{
				String qy = "update student set is_approved = 1 where roll_no ='" + s + "'";
				stmt.executeUpdate(qy);
			}
		}
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
	response.sendRedirect("admin_student_requests.jsp");				// redirect to requsts' page
%>