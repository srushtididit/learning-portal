<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.List"%>
<%@page import="hibernate.Courses"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Available Courses</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

    .course {
        background: #f8f9fa;
        border-radius: 8px;
        padding: 15px;
        margin-bottom: 15px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease-in-out;
    }

    .course:hover {
        transform: translateY(-5px);
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    .course-title {
        font-size: 20px;
        font-weight: 600;
        color: #2e3a87;
    }

    .course-description {
        color: #555;
        font-size: 14px;
        margin: 8px 0;
    }

    .view-modules-btn {
        background: #2e3a87;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 6px;
        cursor: pointer;
        font-weight: 500;
        transition: background 0.3s ease-in-out;
    }

    .view-modules-btn:hover {
        background: #f64f59;
    }
</style>

</head>
<body>
    <div class="container">
        <h2>Available Courses</h2>

        <div class="course">
            <div class="course-title">Python</div>
            <div class="course-description">
                Python is a versatile high-level programming language known for its simplicity and readability. It's widely used in web development, data analysis, artificial intelligence, and more.
            </div>
            <form action="modules.jsp" method="get">
                <input type="hidden" name="courseId" value="1" />
                <input type="submit" class="view-modules-btn" value="View Modules" />
            </form>
        </div>

        <div class="course">
            <div class="course-title">Data Structures and Algorithms (DSA)</div>
            <div class="course-description">
                DSA involves the study of data organization and the algorithms that process them. It's fundamental for efficient problem-solving and is crucial in fields like software development and computer science.
            </div>
            <form action="modules.jsp" method="get">
                <input type="hidden" name="courseId" value="2" />
                <input type="submit" class="view-modules-btn" value="View Modules" />
            </form>
        </div>

        <div class="course">
            <div class="course-title">Machine Learning (ML)</div>
            <div class="course-description">
                ML is a subset of artificial intelligence that focuses on building systems that learn from data to make decisions or predictions. It's applied in areas like recommendation systems, image recognition, and natural language processing.
            </div>
            <form action="modules.jsp" method="get">
                <input type="hidden" name="courseId" value="3" />
                <input type="submit" class="view-modules-btn" value="View Modules" />
            </form>
        </div>

        <div class="course">
            <div class="course-title">Data Visualization</div>
            <div class="course-description">
                Data Visualization involves representing data graphically to identify patterns, trends, and insights. Tools like Matplotlib and Seaborn in Python are commonly used for creating informative visualizations.
            </div>
            <form action="modules.jsp" method="get">
                <input type="hidden" name="courseId" value="4" />
                <input type="submit" class="view-modules-btn" value="View Modules" />
            </form>
        </div>

        <div class="course">
            <div class="course-title">Statistics</div>
            <div class="course-description">
                Statistics is the study of data collection, analysis, interpretation, and presentation. It's essential for making informed decisions in various fields, including science, business, and social sciences.
            </div>
            <form action="modules.jsp" method="get">
                <input type="hidden" name="courseId" value="5" />
                <input type="submit" class="view-modules-btn" value="View Modules" />
            </form>
        </div>

        <div class="course">
            <div class="course-title">Artificial Intelligence & Deep Learning (AI & DL)</div>
            <div class="course-description">
                AI involves creating systems capable of performing tasks that typically require human intelligence. Deep Learning, a subset of AI, uses neural networks with many layers to model complex patterns in data.
            </div>
            <form action="modules.jsp" method="get">
                <input type="hidden" name="courseId" value="6" />
                <input type="submit" class="view-modules-btn" value="View Modules" />
            </form>
        </div>

    </div>
</body>
</html>
