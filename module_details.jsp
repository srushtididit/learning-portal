<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap, java.util.Map" %>
<%
    // Initialize the course modules
    Map<String, String> courseModules = new HashMap<String, String>();

    // Content for Introduction to Python (moduleId 1)
    courseModules.put("1", 
        "<p>HEY! LET'S LEARN PYTHON FROM SCRATCH<br> "
        + "Python is a versatile and widely-used programming language known for its readability and simplicity. "
        + "It is suitable for beginners and experienced programmers alike, and it is used in various fields including web development, data analysis, artificial intelligence, scientific computing, and more."
        + "</p><h3>Introduction to Python</h3>"
        + "<p><strong>What is Python?</strong></p>"
        + "<p>Python is an interpreted, high-level, general-purpose programming language. "
        + "Its design philosophy emphasizes code readability and simplicity, allowing programmers to express concepts in fewer lines of code.</p>"
        + "<p><strong>Why Learn Python?</strong></p>"
        + "<ul><li><strong>Ease of Learning:</strong> Python has a simple syntax that makes it easy to learn for beginners.</li>"
        + "<li><strong>Versatile:</strong> Used in web development, data science, machine learning, automation, and more.</li>"
        + "<li><strong>Large Community:</strong> Extensive libraries and frameworks available, along with a supportive community.</li>"
        + "<li><strong>Cross-Platform:</strong> Runs on various platforms like Windows, macOS, and Linux.</li></ul>"
        + "<p><strong>Getting Started with Python</strong></p>"
        + "<ul><li><strong>Installation:</strong> Download and install Python from the official website: <a href='https://www.python.org' target='_blank'>python.org</a></li>"
        + "<li><strong>IDE/Editor:</strong> Choose an IDE or text editor. Popular options include:</li>"
        + "<ul><li>PyCharm</li><li>Visual Studio Code</li><li>Jupyter Notebook</li></ul></ul>"
        + "<p><strong>Basic Concepts:</strong></p>"
        + "<ul><li><strong>Syntax:</strong> Python uses indentation to define code blocks.</li>"
        + "<li><strong>Variables:</strong> Store data that can be used later.</li>"
        + "<li><strong>Data Types:</strong> Common types include integers, floats, strings, and booleans.</li>"
        + "<li><strong>Control Structures:</strong> if, for, and while loops for decision-making and iteration.</li>"
        + "<li><strong>Functions:</strong> Reusable blocks of code that perform a specific task.</li></ul>"
        + "<p>Feel free to reach out if you have any specific questions or need further assistance!</p>"
        + "<a href='#' onclick='loadContent(\"https://www.python.org\")'>Learn more at Python.org</a>");
    
    courseModules.put("2", 
    "<h3>Python Data Types & Variables</h3>"
    + "<p>Certainly! Python has several built-in data types that are essential for programming. Below is an overview of the primary data types along with links to more detailed resources:</p>"
    + "<h4>1. Numeric Types</h4>"
    + "<ul>"
    + "<li><strong>Integers (int):</strong> Whole numbers, positive or negative.</li>"
    + "<li><strong>Floating Point Numbers (float):</strong> Numbers with decimal points.</li>"
    + "<li><strong>Complex Numbers (complex):</strong> Numbers with a real and an imaginary part.</li>"
    + "</ul>"
    + "<p>Resource: <a href='https://docs.python.org/3/library/stdtypes.html#numeric-types-int-float-complex' target='_blank'>Numeric Types in Python</a></p>"
    + "<h4>2. Sequence Types</h4>"
    + "<ul>"
    + "<li><strong>Strings (str):</strong> A sequence of characters used for text.</li>"
    + "<li><strong>Lists (list):</strong> Ordered, mutable collections of items.</li>"
    + "<li><strong>Tuples (tuple):</strong> Ordered, immutable collections of items.</li>"
    + "</ul>"
    + "<p>Resource: <a href='https://docs.python.org/3/library/stdtypes.html#sequence-types-list-tuple-range' target='_blank'>Sequence Types in Python</a></p>"
    + "<h4>3. Mapping Type</h4>"
    + "<ul><li><strong>Dictionaries (dict):</strong> Unordered collections of key-value pairs.</li></ul>"
    + "<p>Resource: <a href='https://docs.python.org/3/library/stdtypes.html#dict' target='_blank'>Dictionaries in Python</a></p>"
    + "<h4>4. Set Types</h4>"
    + "<ul>"
    + "<li><strong>Sets (set):</strong> Unordered collections of unique items.</li>"
    + "<li><strong>Frozen Sets (frozenset):</strong> Immutable versions of sets.</li>"
    + "</ul>"
    + "<p>Resource: <a href='https://docs.python.org/3/library/stdtypes.html#set' target='_blank'>Set Types in Python</a></p>"
    + "<h4>5. Boolean Type</h4>"
    + "<ul><li><strong>Booleans (bool):</strong> Represents True or False.</li></ul>"
    + "<p>Resource: <a href='https://docs.python.org/3/library/stdtypes.html#boolean-values' target='_blank'>Boolean Type in Python</a></p>"
    + "<h4>6. None Type</h4>"
    + "<ul><li><strong>None:</strong> Represents the absence of a value or a null value.</li></ul>"
    + "<p>Resource: <a href='https://docs.python.org/3/library/stdtypes.html#None' target='_blank'>None in Python</a></p>"
    + "<h4>7. Binary Types</h4>"
    + "<ul>"
    + "<li><strong>Bytes (bytes):</strong> Immutable sequences of bytes.</li>"
    + "<li><strong>Byte Arrays (bytearray):</strong> Mutable sequences of bytes.</li>"
    + "<li><strong>Memory Views (memoryview):</strong> Allows direct access to the memory of an object.</li>"
    + "</ul>"
    + "<p>Resource: <a href='https://docs.python.org/3/library/stdtypes.html#binary-sequence-types-bytes-bytearray-memoryview' target='_blank'>Binary Types in Python</a></p>"
    + "<h4>Additional Resources</h4>"
    + "<ul>"
    + "<li><a href='https://docs.python.org/3/library/stdtypes.html' target='_blank'>Official Python Documentation: Built-in Types</a></li>"
    + "<li><a href='https://www.w3schools.com/python/python_datatypes.asp' target='_blank'>W3Schools Python Data Types</a></li>"
    + "<li><a href='https://realpython.com/python-data-types/' target='_blank'>Real Python Data Types Guide</a></li>"
    + "</ul>");

    
    courseModules.put("3", 
    "<h3>Python Control Structures</h3>"
    + "<p>Control structures are fundamental constructs in programming that dictate the flow of execution of a program. They allow developers to control the direction in which a program executes based on certain conditions or the repetition of certain tasks. The primary types of control structures include:</p>"
    + "<h4>1. Sequential Control Structure</h4>"
    + "<p>The default mode of execution where statements are executed one after another in order.</p>"
    + "<pre>print('Step 1')\nprint('Step 2')</pre>"
    + "<h4>2. Selection Control Structures</h4>"
    + "<p>These structures allow branching in the flow of execution based on conditions. Common examples include if, else if, and else.</p>"
    + "<pre>age = 18\nif age < 18:\n    print('Minor')\nelif age == 18:\n    print('Just an adult')\nelse:\n    print('Adult')</pre>"
    + "<h4>3. Repetition Control Structures</h4>"
    + "<p>Also known as loops, these structures allow for the execution of a block of code multiple times. Common types include for loops and while loops.</p>"
    + "<pre>for i in range(5):\n    print(i)</pre>"
    + "<pre>count = 0\nwhile count < 5:\n    print(count)\n    count += 1</pre>"
    + "<h4>4. Jump Control Structures</h4>"
    + "<p>These control structures allow for an abrupt change in the flow of execution, often used for breaking out of loops or skipping to the next iteration. Examples include break, continue, and return.</p>"
    + "<pre>for i in range(10):\n    if i == 5:\n        break  # Exit the loop when i is 5\n    print(i)</pre>"
    + "<h4>Links to Control Structures in Various Languages</h4>"
    + "<ul>"
    + "<li><a href='https://docs.python.org/3/tutorial/controlflow.html' target='_blank'>Python Control Flow</a></li>"
    + "<li><a href='https://docs.oracle.com/javase/tutorial/java/nutsandbolts/control.html' target='_blank'>Java Control Statements</a></li>"
    + "<li><a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Control_flow_and_error_handling' target='_blank'>JavaScript Control Flow</a></li>"
    + "<li><a href='https://www.cplusplus.com/doc/tutorial/control/' target='_blank'>C Control Flow</a></li>"
    + "<li><a href='https://www.rubyguides.com/2018/03/ruby-control-structures/' target='_blank'>Ruby Control Structures</a></li>"
    + "</ul>"
    + "<h4>Conclusion</h4>"
    + "<p>Control structures are essential for implementing logic in programming. Understanding how to use them effectively is key to writing efficient and readable code. Each programming language has its own syntax and conventions for control structures, but the underlying concepts remain consistent across different languages.</p>");

    
    courseModules.put("4", 
    "<h3>Object-Oriented Programming (OOP) in Python</h3>"
    + "<p>Object-Oriented Programming (OOP) is a programming paradigm that uses \"objects\" to design applications and computer programs. It utilizes concepts such as classes, inheritance, encapsulation, and polymorphism. Python is a versatile language that supports OOP principles.</p>"
    + "<h4>Key Concepts of OOP in Python:</h4>"
    + "<h5>1. Classes and Objects</h5>"
    + "<p><strong>Class:</strong> A blueprint for creating objects. It defines a set of attributes and methods that the created objects will have.</p>"
    + "<p><strong>Object:</strong> An instance of a class. Each object can hold different data but shares the same structure defined by the class.</p>"
    + "<pre>class Dog:\n    def __init__(self, name, age):\n        self.name = name\n        self.age = age\n\n    def bark(self):\n        return f'{self.name} says woof!'\n\nmy_dog = Dog('Buddy', 3)\nprint(my_dog.bark())  # Output: Buddy says woof!</pre>"
    + "<h5>2. Inheritance</h5>"
    + "<p>A mechanism where a new class can inherit attributes and methods from an existing class. This promotes code reusability.</p>"
    + "<pre>class Animal:\n    def speak(self):\n        return 'Animal speaks'\n\nclass Cat(Animal):\n    def speak(self):\n        return 'Meow'\n\nmy_cat = Cat()\nprint(my_cat.speak())  # Output: Meow</pre>"
    + "<h5>3. Encapsulation</h5>"
    + "<p>The practice of restricting access to certain components of an object. This is typically done using private and public attributes/methods.</p>"
    + "<pre>class BankAccount:\n    def __init__(self, balance):\n        self.__balance = balance  # Private attribute\n\n    def deposit(self, amount):\n        self.__balance += amount\n\n    def get_balance(self):\n        return self.__balance\n\naccount = BankAccount(1000)\naccount.deposit(500)\nprint(account.get_balance())  # Output: 1500</pre>"
    + "<h5>4. Polymorphism</h5>"
    + "<p>The ability to present the same interface for different data types. This can be achieved through method overriding and operator overloading.</p>"
    + "<pre>class Bird:\n    def fly(self):\n        return 'Flies in the sky'\n\nclass Penguin(Bird):\n    def fly(self):\n        return 'Cannot fly'\n\ndef make_bird_fly(bird):\n    print(bird.fly())\n\nmake_bird_fly(Bird())      # Output: Flies in the sky\nmake_bird_fly(Penguin())   # Output: Cannot fly</pre>"
    + "<h4>Useful Links for Learning OOP in Python:</h4>"
    + "<ul>"
    + "<li><a href='https://docs.python.org/3/tutorial/classes.html' target='_blank'>Python Classes and Objects</a></li>"
    + "<li><a href='https://realpython.com/python3-object-oriented-programming/' target='_blank'>Real Python - Object-Oriented Programming in Python</a></li>"
    + "<li><a href='https://www.w3schools.com/python/python_classes.asp' target='_blank'>W3Schools - Python OOP</a></li>"
    + "<li><a href='https://www.youtube.com/watch?v=JeznW_7DlB0' target='_blank'>freeCodeCamp.org - Python Object Oriented Programming (OOP) Tutorial</a></li>"
    + "</ul>"
    + "<h4>Practice Resources:</h4>"
    + "<ul>"
    + "<li><a href='https://leetcode.com/' target='_blank'>LeetCode</a> - Practice coding problems that often require OOP concepts.</li>"
    + "<li><a href='https://www.hackerrank.com/domains/tutorials/10-days-of-python' target='_blank'>HackerRank</a> - 10 Days of Python challenges.</li>"
    + "</ul>");


    // Other module contents remain unchanged...

    String moduleId = request.getParameter("moduleId");
    String moduleContent = courseModules.get(moduleId);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Module Details</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        function loadContent(url) {
            $("#contentArea").load(url);
        }
    </script>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #fde4ec; /* Light pink background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 600px;
            max-width: 90%;
            text-align: left;
            transition: transform 0.3s ease-in-out;
            overflow-y: auto;
            max-height: 90vh;
        }
        .container:hover {
            transform: scale(1.02);
        }
        h1 {
            color: #e91e63;
            font-weight: 600;
            text-align: center;
        }
        .content {
            font-size: 16px;
            color: #444;
            margin-top: 20px;
        }
        a {
            color: #e91e63;
            text-decoration: none;
            font-weight: 500;
        }
        a:hover {
            text-decoration: underline;
        }
        ul {
            padding-left: 20px;
        }
        p {
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Module Details</h1>

        <% if (moduleContent != null) { %>
            <div class="content">
                <%= moduleContent %>
            </div>
        <% } else { %>
            <p style="text-align:center;">Module not found. Please check the module ID.</p>
        <% } %>

        <div id="contentArea">
            <!-- Content will be loaded here -->
        </div>
    </div>
</body>
</html>
