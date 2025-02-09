<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Registration Page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7eb; /* Light pink background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .registration-container {
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #ff4c74; /* Soft pink color */
        }
        input[type="text"], input[type="password"], input[type="email"] {
            width: calc(100% - 20px);
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            transition: border-color 0.3s ease-in-out;
        }
        input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus {
            border-color: #ff4c74; /* Focus border with soft pink */
        }
        input[type="submit"], input[type="reset"] {
            background-color: #ff6f91; /* Soft pink for buttons */
            color: white;
            border: none;
            padding: 12px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #ff4c74; /* Darker pink on hover */
        }
        .login-link {
            display: block;
            margin-top: 15px;
            color: #ff6f91;
            text-decoration: none;
        }
        .login-link:hover {
            text-decoration: underline; /* Underline on hover */
        }
        p {
            margin-top: 15px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="registration-container">
        <h2>Registration</h2>
        <form method="post">
            User Name:<br>
            <input type="text" name="username" required /><br><br>

            Password:<br>
            <input type="password" name="password" required /><br><br>

            Re-Enter Password:<br>
            <input type="password" name="confirmPassword" required /><br><br>

            Email:<br>
            <input type="email" name="email" required /><br><br>

            <input type="submit" value="Submit" />
            <input type="reset" value="Reset" />
        </form>

        <a href="Login.html" class="login-link">Already have an account? Login here</a>

        <%
          // Check if the form has been submitted
          if (request.getMethod().equalsIgnoreCase("post")) {
              Connection con = null; // Declare connection variable
              try {
                  // Database Connection
                  Class.forName("org.apache.derby.jdbc.ClientDriver");
                  con = DriverManager.getConnection("jdbc:derby://localhost:1527/LMS", "root", "root");

                  // Retrieve form data
                  String username = request.getParameter("username");
                  String password = request.getParameter("password");
                  String confirmPassword = request.getParameter("confirmPassword");
                  String email = request.getParameter("email");

                  // Validate inputs
                  if (!username.isEmpty() && !password.isEmpty() && !confirmPassword.isEmpty() && !email.isEmpty()) {
                      // Insert into table if passwords match
                      if (password.equals(confirmPassword)) {
                          PreparedStatement pst = con.prepareStatement("INSERT INTO students (username, password, email) VALUES (?, ?, ?)");
                          pst.setString(1, username);
                          pst.setString(2, password);
                          pst.setString(3, email);
                          int rowsInserted = pst.executeUpdate();

                          if (rowsInserted > 0) {
                              %>
                              <p style="color:green;">Registration Successful!</p>
                              <%
                          } else {
                              %>
                              <p style="color:red;">Registration failed! Please try again.</p>
                              <%
                          }
                      } else {
                          %>
                          <p style="color:red;">Passwords do not match!</p>
                          <%
                      }
                  } else {
                      %>
                      <p style="color:red;">All fields are required!</p>
                      <%
                  }
              } catch (SQLException e) {
                  %>
                  <p style="color:red;">SQL Error: <%= e.getMessage() %></p>
                  <%
              } catch (Exception e) {
                  out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
              } finally {
                  if (con != null) {
                      try { con.close(); } catch (SQLException e) { e.printStackTrace(); } // Close connection
                  }
              }
          }
        %>
    </div>
</body>
</html>
