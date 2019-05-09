package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Login;
import model.LoginDAO;
import model.SignUp;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class LoginServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            Login l = new Login( Integer.parseInt(request.getParameter("user")), request.getParameter("pass"), request.getParameter("type"));
            
            LoginDAO l1 = new LoginDAO();
            
            System.out.println(l.getUid());
            System.out.println(l.getAcc());
            
             Configuration cf = null;
        SessionFactory sf = null;
        Session session2 = null ;
        SignUp s=null;
        
        try{
            
            cf = new Configuration();
            cf.configure("cfgpackage/hibernate.cfg.xml");
            sf = cf.buildSessionFactory();
            session2 = sf.openSession();
            
            Transaction tx = session2.beginTransaction();
            s = (SignUp)session2.get(SignUp.class,l.getUid());
           
            
            tx.commit();
            
        }
        catch(Exception e ){
            e.printStackTrace();
        }
        finally{
            session2.close();
            sf.close();
        }
            
            HttpSession session1 = request.getSession();
            session1.setAttribute("uid", Integer.toString(l.getUid()));
            session1.setAttribute("type",l.getAcc());
            session1.setAttribute("name",s.getFname() + " " + s.getLname());
            
           
           String type = request.getParameter("type"); 
            if( l1.check(l)){
                
                if( type.equals("Student")){
                HttpSession session = request.getSession();
                RequestDispatcher rd = request.getRequestDispatcher("student1.jsp");
                rd.forward(request,response);
                }
                else if( type.equals("Staff")){
                HttpSession session = request.getSession();
                RequestDispatcher rd = request.getRequestDispatcher("staff.jsp");
                rd.forward(request,response);
                }
                else if( type.equals("Faculty")){
                HttpSession session = request.getSession();
                RequestDispatcher rd = request.getRequestDispatcher("faculty.jsp");
                rd.forward(request,response);
                }
                else if( type.equals("Admin")){
                HttpSession session = request.getSession();
                RequestDispatcher rd = request.getRequestDispatcher("admin1.jsp");
                rd.forward(request,response);
                }
            }
            else{
                
//                HttpSession session = request.getSession();
                RequestDispatcher rd = request.getRequestDispatcher("Signup.jsp");
                rd.forward(request,response);
                
            }
            
           
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
