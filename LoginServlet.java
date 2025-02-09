import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");


        try {
            // Load the Derby JDBC driver
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/LMS","root","root");

            // Prepare SQL statement to check for user credentials
            PreparedStatement pst = con.prepareStatement(
                "SELECT password FROM students WHERE username = ?");
            pst.setString(1, username);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                String dbPasswordFromDb = rs.getString("password");
                if (dbPasswordFromDb.equals(password)) {
                    // Successful login
                    RequestDispatcher rd = request.getRequestDispatcher("Courses.jsp");
                    rd.forward(request, response);
                } else {
                    // Incorrect password
                    out.println("<h3 style='color:red;'>Incorrect password! Redirecting to Login...</h3>");
                    RequestDispatcher rd = request.getRequestDispatcher("Login.html");
                    rd.include(request, response);
                }
            } else {
                // User does not exist
                out.println("<h3 style='color:red;'>User does not exist! Redirecting to Registration...</h3>");
                RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        }
    }
}
