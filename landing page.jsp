<%-- 
    Document   : landing page
    Created on : Feb 4, 2025, 10:11:18 PM
    Author     : Dell
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Learning Portal - Data Science Courses</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color:#f8d7eb; /* Light pink background */
            color: #333;
        }
        header {
            background-color: #ff6f91; /* Soft pink background for header */
            color: white;
            padding: 20px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 4px solid #ff4c74; /* Slightly darker pink for a border */
        }
        header h1 {
            margin: 0;
            font-size: 26px;
            font-weight: bold; /* Added boldness to header text */
        }
        nav {
            display: flex;
        }
        nav a {
            color: white;
            text-decoration: none;
            padding: 12px 18px;
            margin-left: 12px;
            border-radius: 8px; /* Rounded corners */
            font-size: 16px; /* Adjusted font size for better legibility */
            font-weight: 600; /* Slightly bold text for emphasis */
            transition: background-color 0.3s ease, transform 0.3s ease; /* Smooth transition for hover effects */
        }
        nav a:hover {
            background-color: #ff4c74; /* Darker pink on hover */
            transform: scale(1.1); /* Slight zoom effect */
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 30px;
            background-color: white;
            border-radius: 12px; /* More rounded corners */
            box-shadow: 0 6px 24px rgba(0,0,0,0.1); /* Soft shadow with more depth */
            border-left: 8px solid #ff6f91; /* Decorative left border */
        }
        h2 {
            text-align: center;
            color: #ff6f91;
            font-size: 28px; /* Larger header for better focus */
        }
        .description {
            margin-top: 20px;
            line-height: 1.8;
            font-size: 18px;
            color: #555; /* Softened text color for readability */
        }
        .get-started-btn {
            display: block;
            width: fit-content;
            margin: 30px auto;
            padding: 15px 30px;
            background-color: #ff7db3; /* Soft pink background for button */
            color: white;
            border-radius: 8px;
            text-align: center;
            font-size: 20px;
            text-decoration: none;
            font-weight: 700; /* Bold font for the button */
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .get-started-btn:hover {
            background-color: #ff4c74; /* Darker pink on hover */
            transform: scale(1.1); /* Zoom effect */
        }
    </style>
</head>
<body>

<header>
    <h1>Learning Portal</h1>
    <nav>
        <a href="Login.html" class="get-started-btn">Get Started</a>
    </nav>
</header>

<div class="container">
    <h2>Welcome to the Learning Portal</h2>
    <div class="description">
        <p>Explore our comprehensive courses in Data Science designed to equip you with the skills needed in today's data-driven world.</p>
        <p>Our portal provides various resources, including video lectures, interactive quizzes, and community forums to enhance your learning experience.</p>
        <p>Join us today and take the first step towards mastering data science!</p>
    </div>
</div>

<script>
    // Redirect to registration if user is not logged in
    document.querySelector('.get-started-btn').addEventListener('click', function(event) {
        // Check if user is logged in (you can implement your own logic here)
        var isLoggedIn = false; // Replace with actual login check logic
        if (!isLoggedIn) {
            event.preventDefault(); // Prevent default link behavior
            window.location.href = 'Register.jsp'; // Redirect to registration
        }
    });
</script>

</body>
</html>
