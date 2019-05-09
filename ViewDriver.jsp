

<%@page import="org.hibernate.Criteria"%>
<%@page import="model.Driverinfo"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view Drivers</title>
        <link rel="stylesheet" type="text/css" href="css/table.css">
        <style>
            #btable
            {
                position : relative;
                top: 50px;
            }
        </style>
    </head>
    <body>
        <%
            
            
                Configuration cf = null;
                SessionFactory sf = null;
                Session ses = null;
                List<Driverinfo> record = null;
                try
                {
                    cf = new Configuration();
                    cf.configure("cfgpackage/hibernate.cfg.xml");
                    sf = cf.buildSessionFactory();
                    ses = sf.openSession();
                    Transaction tx = ses.beginTransaction();
                   
                    Criteria criteria = ses.createCriteria(Driverinfo.class);
                
                     record = criteria.list();

                    out.print("<center><table id='btable'>");
                    out.print("<tr><th>Sl.No</th><th>Drivers Name</th><th>D.O.B</th><th>Phone Number</th><th>Driver Id</th><th>Bus Number</th></tr>");

                    int i = 1;
                    for(Driverinfo ab : record )
                    {
                        out.print("<tr> <td>"+i+"</td>  <td>"+ab.getFname()+" "+ab.getLname()+"</td> <td>"+ab.getDOB()+"</td> <td>"+ab.getPh()+"</td> <td>"+ab.getUid()+"</td> <td>"+ab.getBusno()+"</td></tr>");
                        i++;
                    }
                    
                    out.print("</table></center>");
                    tx.commit();
                }
                catch(Exception ee)
                {
                    System.out.println(ee);
                }
                finally
                {
                    ses.close();
                    sf.close();
                }
                
        %>
    </body>
</html>
