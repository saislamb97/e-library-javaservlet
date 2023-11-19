<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <script src="https://kit.fontawesome.com/fa133b6a54.js" crossorigin="anonymous"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100 font-sans flex items-center justify-center h-screen">
    <div class="bg-white rounded-lg shadow-md p-8 flex flex-col items-center justify-center">
        <h1 class="text-3xl font-bold mb-4">User Profile</h1>

        <form action="updateprofile" method="POST" class="mb-4">
            
            <label for="fullname" class="block mb-2">Full Name:</label>
            <input type="text" id="fullname" name="fullname" required
                class="w-full px-3 py-2 border rounded-md mb-3 focus:outline-none focus:border-blue-500"
                placeholder="Enter your full name" readonly>
        
            <label for="username" class="block mb-2">Username:</label>
            <input type="text" id="username" name="username" required
                class="w-full px-3 py-2 border rounded-md mb-3 focus:outline-none focus:border-blue-500"
                placeholder="Enter your username" readonly>
        
            <!-- JavaScript to populate form fields -->
            <script>
                document.getElementById('fullname').value = '<%= request.getAttribute("fullname") %>';
                document.getElementById('username').value = '<%= request.getAttribute("username") %>';
            </script>
        
            <input type="submit" value="Update"
                class="bg-blue-500 text-white py-2 px-4 rounded-md cursor-pointer hover:bg-blue-600">
        </form>
        <a href="login" class="text-blue-500 hover:underline">Login to your account</a>
    </div>
</body>

</html>
