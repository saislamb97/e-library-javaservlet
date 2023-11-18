<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100 font-sans">
    <div class="container mx-auto p-4">
        <h1 class="text-3xl font-bold mb-4">Registration Form</h1>
        <form action="registrationcontroller" method="POST" class="mb-4">
            <label for="firstname" class="block mb-2">First Name:</label>
            <input type="text" id="firstname" name="firstname" required
                class="w-full px-3 py-2 border rounded-md mb-3 focus:outline-none focus:border-blue-500"
                placeholder="Enter your first name">
            
            <label for="lastname" class="block mb-2">Last Name:</label>
            <input type="text" id="lastname" name="lastname" required
                class="w-full px-3 py-2 border rounded-md mb-3 focus:outline-none focus:border-blue-500"
                placeholder="Enter your last name">

            <div class="mb-3">
                <span class="block mb-2">Gender:</span>
                <input type="radio" id="male" name="gender" value="Male" class="mr-2">
                <label for="male" class="mr-4">Male</label>
                <input type="radio" id="female" name="gender" value="Female" class="mr-2">
                <label for="female">Female</label>
            </div>

            <label for="phone" class="block mb-2">Phone Number:</label>
            <input type="tel" id="phone" name="phone" required pattern="[0-9]{11}"
                class="w-full px-3 py-2 border rounded-md mb-3 focus:outline-none focus:border-blue-500"
                placeholder="Enter 11-digit phone number">

            <label for="address" class="block mb-2">Current Address:</label>
            <textarea id="address" name="address" rows="3" cols="30"
                class="w-full px-3 py-2 border rounded-md mb-3 focus:outline-none focus:border-blue-500"></textarea>

            <label for="email" class="block mb-2">Email:</label>
            <input type="email" id="email" name="email" required
                class="w-full px-3 py-2 border rounded-md mb-3 focus:outline-none focus:border-blue-500"
                placeholder="Enter your email">

            <input type="submit" value="Register"
                class="bg-blue-500 text-white py-2 px-4 rounded-md cursor-pointer hover:bg-blue-600">
        </form>
    </div>
</body>

</html>
