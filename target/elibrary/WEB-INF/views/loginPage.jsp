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

<body class="bg-gray-100 font-sans flex items-center justify-center h-screen">
    <div class="bg-white rounded-lg shadow-md p-8 flex flex-col items-center justify-center">
        <h1 class="text-3xl font-bold mb-4">Login</h1>

        <% 
            String validationError = (String) request.getAttribute("validationError");
            if (validationError != null) {
        %>
            <p class="text-red-500 mb-2"><%= validationError %></p>
        <% } %>

        <form action="logincontroller" method="post" class="mb-4">

            <label for="username" class="block mb-2">Username:</label>
            <input type="text" id="username" name="username" required
                class="w-full px-3 py-2 border rounded-md mb-3 focus:outline-none focus:border-blue-500"
                placeholder="Enter your username">

            <label for="password" class="block mb-2">Password:</label>
            <input type="password" id="password" name="password" required
                class="w-full px-3 py-2 border rounded-md mb-3 focus:outline-none focus:border-blue-500"
                placeholder="Enter your password">

            <input type="submit" value="Login"
                class="bg-blue-500 text-white py-2 px-4 rounded-md cursor-pointer hover:bg-blue-600">
        </form>
        <a href="signup" class="text-blue-500 hover:underline">Create a new account</a>
    </div>
</body>

</html>
