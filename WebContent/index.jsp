<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Library Management</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">
    <header class="bg-blue-600 text-white p-4 flex justify-between items-center">
        <h1 class="text-2xl font-semibold">Library Management Portal</h1>
    </header>
    <main class="flex-grow p-8 flex flex-col items-center">
        <section class="bg-white shadow-md p-8 text-center max-w-md mb-8 rounded-md">
            <h2 class="text-4xl mb-4 font-semibold">Welcome to Library Management Portal</h2>
            <a href="login.jsp"
                class="bg-blue-600 text-white px-4 py-2 rounded-md font-bold hover:bg-blue-700 transition duration-300 inline-block">Login</a>
        </section>
    </main>
    <footer class="bg-blue-600 text-white p-4 text-center">
        <p>&copy; 2023 Library Management. All rights reserved.</p>
    </footer>
</body>

</html>