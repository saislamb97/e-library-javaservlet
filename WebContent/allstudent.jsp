<%@page import="com.lib.dao.StudentDAOImp"%>
<%@page import="com.lib.dao.StudentDAO"%>
<%@page import="java.sql.ResultSet"%>
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
    <title>All Students</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="font-sans bg-gray-100">

<div class="max-w-full overflow-x-auto">
    <table class="w-full border-collapse border border-gray-300 shadow-md bg-white rounded-lg">
        <thead class="bg-gray-400 text-left">
            <tr>
                <th class="py-2 px-4 border-b">Student Name</th>
                <th class="py-2 px-4 border-b">Student ID</th>
                <th class="py-2 px-4 border-b">Course</th>
                <th class="py-2 px-4 border-b">Phone Number</th>
                <th class="py-2 px-4 border-b">Email</th>
                <th class="py-2 px-4 border-b">Actions</th> <!-- Added for the Delete link -->
            </tr>
        </thead>
        <tbody>
            <%
            StudentDAO student = new StudentDAOImp();
            ResultSet rs = student.findAll();
            while(rs.next()) {
                %>
                <tr class="<%
                    if (rs.getRow() % 2 == 0) {
                        out.print("bg-gray-50");
                    } else {
                        out.print("");
                    }
                %> hover:bg-gray-100">
                    <td class="py-2 px-4 border-b"><%= rs.getString(1) %></td>
                    <td class="py-2 px-4 border-b"><%= rs.getString(2) %></td>
                    <td class="py-2 px-4 border-b"><%= rs.getString(3) %></td>
                    <td class="py-2 px-4 border-b"><%= rs.getString(4) %></td>
                    <td class="py-2 px-4 border-b"><%= rs.getString(5) %></td>
                    <td class="py-2 px-4 border-b">
                        <a href="DelStudent?student-id=<%= rs.getString(2) %>"
                           class="text-red-500 hover:underline">Delete</a>
                    </td>
                </tr>
                <%
            }
            %>
        </tbody>
    </table>
</div>

</body>
</html>
