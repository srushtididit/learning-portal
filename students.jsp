<%-- 
    Document   : students
    Created on : Feb 7, 2025, 10:15:30 PM
    Author     : Dell
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student CRUD Operations</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffe6f0; /* Light pink shade */
            margin: 0;
            padding: 0;
        }
        h1, h3 {
            color: #d63384;
            text-align: center;
        }
        form {
            margin: 20px auto;
            padding: 15px;
            background-color: #fff;
            border: 1px solid #d63384;
            border-radius: 8px;
            max-width: 500px;
        }
        label {
            font-weight: bold;
        }
        input, button {
            display: block;
            margin: 10px 0;
            padding: 8px;
            width: 100%;
            box-sizing: border-box;
            border: 1px solid #d63384;
            border-radius: 4px;
        }
        button {
            background-color: #d63384;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
        }
        button:hover {
            background-color: #c1276b;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
        }
        th, td {
            border: 1px solid #d63384;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f8d7e3; /* Light pink shade for headers */
        }
        tr:nth-child(even) {
            background-color: #ffe6f0; /* Alternating light pink rows */
        }
    </style>
</head>
<body>
    <h1>Student CRUD Operations</h1>

    <!-- Database Connection -->
    <sql:setDataSource var="dataSource" driver="org.apache.derby.jdbc.ClientDriver"
                       url="jdbc:derby://localhost:1527/LMS"
                       user="root" password="root" />

    <!-- Create -->
    <h3>Add a New Student</h3>
    <form method="post" action="students.jsp">
        <input type="hidden" name="action" value="add" />
        <label>Username:</label>
        <input type="text" name="username" required />
        <label>Password:</label>
        <input type="password" name="password" required />
        <label>Email:</label>
        <input type="email" name="email" required />
        <button type="submit">Add Student</button>
    </form>

    <!-- Update -->
    <h3>Update Student</h3>
    <form method="post" action="students.jsp">
        <input type="hidden" name="action" value="update" />
        <label>ID:</label>
        <input type="text" name="id" required />
        <label>New Username:</label>
        <input type="text" name="username" />
        <label>New Password:</label>
        <input type="password" name="password" />
        <label>New Email:</label>
        <input type="email" name="email" />
        <button type="submit">Update Student</button>
    </form>

    <!-- Delete -->
    <h3>Delete Student</h3>
    <form method="post" action="students.jsp">
        <input type="hidden" name="action" value="delete" />
        <label>ID:</label>
        <input type="text" name="id" required />
        <button type="submit">Delete Student</button>
    </form>

    <!-- Perform CRUD Operations -->
    <sql:transaction dataSource="${dataSource}">
        <c:choose>
            <c:when test="${param.action == 'add'}">
                <sql:update>
                    INSERT INTO STUDENTS (USERNAME, PASSWORD, EMAIL)
                    VALUES ('${param.username}', '${param.password}', '${param.email}')
                </sql:update>
                <p style="text-align: center; color: green;">Student added successfully.</p>
            </c:when>
            <c:when test="${param.action == 'update'}">
                <sql:update>
                    UPDATE STUDENTS
                    SET USERNAME = '${param.username}', PASSWORD = '${param.password}', EMAIL = '${param.email}'
                    WHERE ID = ${param.id}
                </sql:update>
                <p style="text-align: center; color: green;">Student updated successfully.</p>
            </c:when>
            <c:when test="${param.action == 'delete'}">
                <sql:update>
                    DELETE FROM STUDENTS WHERE ID = ${param.id}
                </sql:update>
                <p style="text-align: center; color: green;">Student deleted successfully.</p>
            </c:when>
        </c:choose>
    </sql:transaction>

    <!-- Read -->
    <h3>All Students</h3>
    <sql:query var="students" dataSource="${dataSource}">
        SELECT * FROM STUDENTS
    </sql:query>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Password</th>
            <th>Email</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${students.rows}">
            <tr>
                <td>${student.ID}</td>
                <td>${student.USERNAME}</td>
                <td>${student.PASSWORD}</td>
                <td>${student.EMAIL}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
