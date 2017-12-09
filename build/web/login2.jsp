<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>


<% 	
    String uname, upwd;
        uname = request.getParameter("name");
        upwd = request.getParameter("password");
        String query = "select * from user_table;";
	
        try
        {
                /* always use this statement. If it is not used, 
                the program may not work everywhere. */
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(query);
                boolean flag=false;
                while(rs.next())
                {
                        String unm = rs.getString(2);
                        String upd = rs.getString(3);
                        if(unm.matches(uname) && upd.matches(upwd))
                        {
                                flag=true;
                                break;
                        }
                }
                if(flag){
                     response.sendRedirect("index.jsp");

            }else{
                    response.sendRedirect("loginTanvir.jsp");
                        }                        
                stmt.close();
                con.close();
        }
        catch(SQLException ex)
        {
                out.println("there's a problem "+ex);
        }
%>

