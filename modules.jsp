<%-- 
    Document   : modules
    Created on : Feb 6, 2025, 1:48:20 PM
    Author     : Dell
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap, java.util.Map" %>

<%
    // Step 2: Retrieve Course ID from Request
    String courseId = request.getParameter("courseId");

    Map<String, String> courseModules = new HashMap<String,String>();

   courseModules.put("1", "<h3>Python Modules</h3><ul>" +
    "<li><a href='module_details.jsp?moduleId=1'>Introduction to Python</a></li>" +
    "<li><a href='module_details.jsp?moduleId=2'>Data Types & Variables</a></li>" +
    "<li><a href='module_details.jsp?moduleId=3'>Control Structures</a></li>" +
    "<li><a href='module_details.jsp?moduleId=4'>OOP in Python</a></li>" +
    "<li><a href='module_details.jsp?moduleId=5'>Web Development with Django</a></li>" +
    "</ul>");

courseModules.put("2", "<h3>Data Structures & Algorithms (DSA) Modules</h3><ul>" +
    "<li><a href='module_details.jsp?moduleId=6'>Arrays & Strings</a></li>" +
    "<li><a href='module_details.jsp?moduleId=7'>Linked Lists</a></li>" +
    "<li><a href='module_details.jsp?moduleId=8'>Stacks & Queues</a></li>" +
    "<li><a href='module_details.jsp?moduleId=9'>Sorting Algorithms</a></li>" +
    "<li><a href='module_details.jsp?moduleId=10'>Graph Algorithms</a></li>" +
    "</ul>");

courseModules.put("3", "<h3>Machine Learning Modules</h3><ul>" +
    "<li><a href='module_details.jsp?moduleId=11'>Supervised vs Unsupervised Learning</a></li>" +
    "<li><a href='module_details.jsp?moduleId=12'>Regression & Classification</a></li>" +
    "<li><a href='module_details.jsp?moduleId=13'>Neural Networks</a></li>" +
    "<li><a href='module_details.jsp?moduleId=14'>Deep Learning Basics</a></li>" +
    "<li><a href='module_details.jsp?moduleId=15'>Reinforcement Learning</a></li>" +
    "</ul>");

courseModules.put("4", "<h3>Data Visualization Modules</h3><ul>" +
    "<li><a href='module_details.jsp?moduleId=16'>Introduction to Matplotlib</a></li>" +
    "<li><a href='module_details.jsp?moduleId=17'>Seaborn for Statistical Plots</a></li>" +
    "<li><a href='module_details.jsp?moduleId=18'>Interactive Dashboards</a></li>" +
    "<li><a href='module_details.jsp?moduleId=19'>Data Storytelling</a></li>" +
    "</ul>");

courseModules.put("5", "<h3>Statistics Modules</h3><ul>" +
    "<li><a href='module_details.jsp?moduleId=20'>Probability Theory</a></li>" +
    "<li><a href='module_details.jsp?moduleId=21'>Descriptive Statistics</a></li>" +
    "<li><a href='module_details.jsp?moduleId=22'>Inferential Statistics</a></li>" +
    "<li><a href='module_details.jsp?moduleId=23'>Hypothesis Testing</a></li>" +
    "</ul>");

courseModules.put("6", "<h3>Artificial Intelligence & Deep Learning Modules</h3><ul>" +
    "<li><a href='module_details.jsp?moduleId=24'>Neural Networks Basics</a></li>" +
    "<li><a href='module_details.jsp?moduleId=25'>Convolutional Neural Networks</a></li>" +
    "<li><a href='module_details.jsp?moduleId=26'>Natural Language Processing</a></li>" +
    "<li><a href='module_details.jsp?moduleId=27'>Generative AI</a></li>" +
    "</ul>");

    String moduleContent = courseModules.get(courseId);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Modules</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #2e3a87, #f64f59);
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        .container {
            max-width: 900px;
            margin: auto;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            padding: 20px;
        }

        h2 {
            color: #2e3a87;
            font-weight: 600;
        }

        h3 {
            color: #f64f59;
        }

        ul {
            text-align: left;
            list-style-type: square;
            padding-left: 20px;
            color: #333;
        }

        .back-btn {
            background: #2e3a87;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 6px;
            cursor: pointer;
            font-weight: 500;
            transition: background 0.3s ease-in-out;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
        }

        .back-btn:hover {
            background: #f64f59;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Course Modules</h2>
        <%= (moduleContent != null) ? moduleContent : "<p style='color:red;'>No modules found for this course.</p>" %>
        <br><br>
        <a href="Courses.jsp" class="back-btn">Back to Courses</a>
    </div>
</body>
</html>