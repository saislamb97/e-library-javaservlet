<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Book</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
    <div class="min-h-screen flex items-center justify-center">
        <div class="bg-white p-8 rounded-lg shadow-md">
            <% String delBstatus = (String)session.getAttribute("delBstatus"); %>
            <h1 class="text-2xl font-bold mb-4">Delete Book Status</h1>
            
            <% if (delBstatus != null && delBstatus.equals("success")) { %>
                <p class="text-green-600">Book deleted successfully!</p>
            <% } else if (delBstatus != null && delBstatus.equals("failure")) { %>
                <p class="text-red-600">Failed to delete book. Please try again.</p>
            <% } else { %>
                <p class="text-gray-700">No book deleted.</p>
            <% } %>
            
            <div class="mt-4">
                <a href="allbook.jsp" class="text-blue-500 hover:underline">Back to Book Listing</a>
            </div>
        </div>
    </div>
</body>
</html>
