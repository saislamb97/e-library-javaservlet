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
    <title>Book Information Form</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="font-sans bg-gray-100">
    <h1 class="text-center text-3xl mt-16 text-gray-800">Book Information Form</h1>

    <form action="AddBook" class="max-w-md mx-auto p-8 bg-white rounded shadow-md mt-8">
        <%
        String str1= (String)session.getAttribute("baddstatus");
        System.out.println(str1);
        if(str1=="success")
        {
            %>
            <h3 class="text-green-500">Record Inserted Successfully !!</h3>
            <%
            session.setAttribute("baddstatus", null);
        }
        if(str1=="failure")
        {
            %>
            <h3 class="text-red-500">Some Error Occurred!</h3>
            <%
        }
        %>
        <label for="bname" class="block text-sm font-bold text-gray-600 mb-2">Book Name:</label>
        <input type="text" id="bname" name="bname" placeholder="Enter book name..." class="w-full px-4 py-2 border border-gray-300 rounded mb-4 focus:outline-none focus:border-blue-500">

        <label for="bid" class="block text-sm font-bold text-gray-600 mb-2">Book ID:</label>
        <input type="text" id="bid" name="bid" placeholder="Enter book ID..." class="w-full px-4 py-2 border border-gray-300 rounded mb-4 focus:outline-none focus:border-blue-500">

        <label for="bauthor" class="block text-sm font-bold text-gray-600 mb-2">Book Author:</label>
        <input type="text" id="bauthor" name="bauthor" placeholder="Enter book author..." class="w-full px-4 py-2 border border-gray-300 rounded mb-4 focus:outline-none focus:border-blue-500">

        <label for="bsubject" class="block text-sm font-bold text-gray-600 mb-2">Book Subject:</label>
        <input type="text" id="bsubject" name="bsubject" placeholder="Enter book subject..." class="w-full px-4 py-2 border border-gray-300 rounded mb-6 focus:outline-none focus:border-blue-500">

        <input type="submit" value="Submit" class="bg-blue-500 text-white px-4 py-2 rounded cursor-pointer hover:bg-blue-700 transition duration-300">
    </form>
</body>
</html>
