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
	<title>Check Due</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
    <div class="max-w-md mx-auto p-6 bg-white rounded-md shadow-md">
        <h2 class="text-2xl font-bold mb-6 text-center">Check Due By Student ID</h2>
        <form action="CheckDue" method="get" class="flex flex-col items-center">
            <%
            String status = (String)session.getAttribute("chstat");
            if(status != null && status.equals("error")) {
            %>
                <h3 class="text-red-500 mb-4">Enter Valid Student ID!!</h3>
            <%
                session.setAttribute("chstat", null);
            }
            %>
            <label for="student-id" class="text-lg font-semibold mb-2">Student ID:</label>
            <input type="text" id="student-id" name="student-id" required
                   class="w-full px-4 py-2 border border-gray-300 rounded mb-4 focus:outline-none focus:border-blue-500">
            <input type="submit" value="Check" class="bg-green-500 text-white px-6 py-2 rounded cursor-pointer transition duration-300 hover:bg-green-600">
        </form>
    </div>
</body>
</html>
