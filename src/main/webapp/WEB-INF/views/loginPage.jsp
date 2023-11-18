<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <script src="https://kit.fontawesome.com/fa133b6a54.js" crossorigin="anonymous"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100 font-sans">
    <div class="container mx-auto p-4">
        <h1 class="text-3xl font-bold mb-4">Login</h1>
        <form action="logincontroller" method="post" class="mb-4">
            <label for="username" class="block mb-2">Username:</label>
            <input type="text" id="username" name="username" required
                class="w-full px-3 py-2 border rounded-md mb-3 focus:outline-none focus:border-blue-500"
                placeholder="Enter your username"><br>
            <label for="password" class="block mb-2">Password:</label>
            <input type="password" id="password" name="password" required
                class="w-full px-3 py-2 border rounded-md mb-3 focus:outline-none focus:border-blue-500"
                placeholder="Enter your password"><br>
            <input type="submit" value="Login"
                class="bg-blue-500 text-white py-2 px-4 rounded-md cursor-pointer hover:bg-blue-600">
        </form>
    </div>
</body>

</html>
