<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
if(session.getAttribute("lid")==null)
{
    %>
    <h1>Get lost</h1>
    <%
    return ;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="font-sans bg-gray-100">
    <form action="AddStudent" class="max-w-md mx-auto mt-16 p-8 bg-white border border-gray-300 rounded shadow-md">
        <h2 class="text-2xl mb-6">Add Student</h2>

        <%
        String str1= (String)session.getAttribute("stdstatus");
        System.out.println(str1);
        if(str1=="success")
        {
            %>
            <h3 class="text-green-500">Record Inserted Successfully !!</h3>
            <%
            session.setAttribute("stdstatus", null);
        }
        if(str1=="failure")
        {
            %>
            <h3 class="text-red-500">Some Error Occurred!</h3>
            <%
        }
        %>

        <label for="name" class="block text-sm font-semibold text-gray-600 mb-2">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter student's name" class="w-full px-4 py-2 border border-gray-300 rounded mb-4 focus:outline-none focus:border-blue-500">

        <label for="email" class="block text-sm font-semibold text-gray-600 mb-2">Email:</label>
        <input type="text" id="email" name="email" placeholder="Enter student's email" class="w-full px-4 py-2 border border-gray-300 rounded mb-4 focus:outline-none focus:border-blue-500">

        <label for="course" class="block text-sm font-semibold text-gray-600 mb-2">Course:</label>
        <input type="text" id="course" name="course" placeholder="Enter student's course" class="w-full px-4 py-2 border border-gray-300 rounded mb-4 focus:outline-none focus:border-blue-500">

        <label for="phoneno" class="block text-sm font-semibold text-gray-600 mb-2">Phone No:</label>
        <input type="text" id="phoneno" name="phoneno" placeholder="Enter student's phone no" class="w-full px-4 py-2 border border-gray-300 rounded mb-4 focus:outline-none focus:border-blue-500">

        <label for="sid" class="block text-sm font-semibold text-gray-600 mb-2">Enrollment No / Student Id:</label>
        <input type="text" id="sid" name="sid" placeholder="Enter enrollment no." class="w-full px-4 py-2 border border-gray-300 rounded mb-6 focus:outline-none focus:border-blue-500">

        <input type="submit" value="Add Student" class="bg-green-500 text-white px-4 py-2 rounded cursor-pointer hover:bg-green-700 transition duration-300">
    </form>
</body>
</html>
