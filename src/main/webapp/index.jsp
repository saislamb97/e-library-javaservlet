<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <script src="https://kit.fontawesome.com/fa133b6a54.js" crossorigin="anonymous"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100 font-sans flex items-center justify-center h-screen">
    <div class="bg-white rounded-lg shadow-md p-8 flex items-center justify-center">
        <div class="grid grid-cols-2 gap-6">
            <a href="login" class="border border-blue-500 hover:bg-blue-500 hover:text-white text-blue-500 font-bold p-10 rounded-md text-center transition duration-300 ease-in-out">
                <i class="fa-solid fa-user"></i>Login as Admin
            </a>
            <a href="login" class="border border-blue-500 hover:bg-blue-500 hover:text-white text-blue-500 font-bold p-10 rounded-md text-center transition duration-300 ease-in-out">
                <i class="fa-solid fa-user"></i>Login as Student
            </a>
        </div>
    </div>
</body>

</html>