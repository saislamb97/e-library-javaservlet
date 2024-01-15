<%@page import="java.sql.Date"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<%
if(session.getAttribute("lid")==null)
{
	%>
    <div class="flex items-center justify-center h-screen">
        <h1 class="text-4xl font-bold">Get lost</h1>
    </div>
    <%
    return ;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Form</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

<div class="container mx-auto my-8">
    <div class="overflow-x-auto">
        <table class="min-w-full bg-white border border-gray-300 shadow-md rounded-md overflow-hidden">
            <thead>
                <tr>
                    <th class="py-2 px-4 border-b">Student ID</th>
                    <th class="py-2 px-4 border-b">Student Name</th>
                    <th class="py-2 px-4 border-b">Book Id</th>
                    <th class="py-2 px-4 border-b">Book Name</th>
                    <th class="py-2 px-4 border-b">Issue Date</th>
                    <th class="py-2 px-4 border-b">Due Date</th>
                    <th class="py-2 px-4 border-b">Fine Amount (5₹/day)</th>
                    <th class="py-2 px-4 border-b">Return</th>
                </tr>
            </thead>
            <tbody>
                <%
				ResultSet rs = null;
				rs = (ResultSet) session.getAttribute("checkRs");
				
				while (rs.next()) {
				    int rowNumber = rs.getRow();
				    String rowClass = (rowNumber % 2 == 0) ? "bg-gray-50" : "bg-white";
				%>
				<tr class="<%= rowClass %> hover:bg-gray-100 transition duration-300">
				    <td class="py-2 px-4 border-b"><%= rs.getInt(1) %></td>
				    <td class="py-2 px-4 border-b"><%= rs.getString(2) %></td>
				    <td class="py-2 px-4 border-b"><%= rs.getInt(3) %></td>
				    <td class="py-2 px-4 border-b"><%= rs.getString(4) %></td>
				    <td class="py-2 px-4 border-b"><%= rs.getDate(5) %></td>
				    <td class="py-2 px-4 border-b"><%= rs.getDate(6) %></td>
				    <td class="py-2 px-4 border-b">
				        <%
				        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
				        LocalDate currentDate = LocalDate.now();
				        Date date11 = rs.getDate(6);
				
				        LocalDate date12 = date11.toLocalDate();
				
				        String dateStr = formatter.format(date12);
				        String dateStr2 = formatter.format(currentDate);
				        LocalDate date1 = LocalDate.parse(dateStr, formatter);
				        LocalDate date2 = LocalDate.parse(dateStr2, formatter);
				
				        long diffDays = ChronoUnit.DAYS.between(date1, date2);
				        if (diffDays < 0) {
				            diffDays = 0;
				        } else {
				            diffDays = diffDays * 5;
				        }
				        %>
				        <%= diffDays + "₹" %>
				    </td>
				    <td class="py-2 px-4 border-b">
				        <form action="ReturnBook" method="get">
				            <input type="hidden" name="sid" value="<%= rs.getInt(1) %>">
				            <input type="hidden" name="bid" value="<%= rs.getInt(3) %>">
				            <button type="submit"
				                class="bg-green-500 text-white py-2 px-4 rounded-md hover:bg-green-600 transition duration-300">
				                Return
				            </button>
				        </form>
				    </td>
				</tr>
				<%
				}
				%>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
