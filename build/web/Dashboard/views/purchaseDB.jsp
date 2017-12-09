<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<jsp:include page="purchase.jsp"></jsp:include>


<%
                     String category = request.getParameter("category");
                     String code = request.getParameter("code");
                     String product_name = request.getParameter("product_name");
                      String quantity = request.getParameter("quantity");
                      String unit = request.getParameter("unit");
                     String price = request.getParameter("per_unit_price");
                     String man_date = request.getParameter("man_date");
                      String exp_date = request.getParameter("exp_date");
   
  

                      String connectionURL = "jdbc:mysql://localhost:3306/inventory";
                      Connection connection = null;
                       PreparedStatement pstatement = null;
     

                       int updateQuery = 0;
                           if(category!=null && code!=null && product_name!=null && quantity!=null && unit!=null && price!=null && man_date!=null && exp_date!=null)
                           {
                               if(category!="" && code!="" && product_name!="" && quantity!="" && unit!="" && price!="" && man_date!="" && exp_date!="")
                               {

                              try {
                                  Class.forName("com.mysql.jdbc.Driver").newInstance();
                                connection = DriverManager.getConnection(connectionURL,"root","");
                                String queryString = "insert into inventory_purchase(category,code,product_name,quantity,unit,per_unit_price,man_date,exp_date) values(?,?,?,?,?,?,?,?)";
                                pstatement = connection.prepareStatement(queryString);
              
                                pstatement.setString(1, category);
                                pstatement.setString(2, code);
                                pstatement.setString(3, product_name);
                                pstatement.setString(4, quantity);
                                pstatement.setString(5, unit);
                                pstatement.setString(6, price);
                                pstatement.setString(7, man_date);
                                pstatement.setString(8, exp_date);
              
              
                                updateQuery = pstatement.executeUpdate();

                                if (updateQuery != 0) {
                                    %>
                                    
                                    <jsp:forward page="purchase.jsp"></jsp:forward>
                                    <%
                                                    }
                        } 
                        catch (Exception ex){
                        out.println("Unable to connect to batabase.");
   
                        }finally {
                        if ( pstatement != null )
                        pstatement.close();

                        if ( connection != null )
                        connection.close();
               
                }
            
                         }
                       }

                            %>