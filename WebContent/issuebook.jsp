<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
if(session.getAttribute("lid")==null)
{
	%>
  <div class="min-h-screen flex items-center justify-center">
    <h1 class="text-4xl font-bold text-red-500">Get lost</h1>
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
    <title>Issue Book</title>
    <script src="https://cdn.tailwindcss.com"></script>
  </head>
  <body class="bg-gray-100">
    <div class="flex items-center justify-center h-screen">
      <div class="bg-white p-8 rounded-lg shadow-md max-w-md">
        <form action="IssueBook" class="space-y-4">
          <%
          String status = (String)session.getAttribute("issuestatus");
          if(status=="success")
          {
          %>
          <h3 class="text-green-500">Book Issue Successfully !!</h3>
          <%
          session.setAttribute("issuestatus", null);
          }
          else if(status=="failure")
          {
          %>
          <h3 class="text-red-500">Some Error Occurred!</h3>
          <%
          session.setAttribute("issuestatus", null);
          }
          else if(status=="error")
          {
          %>
          <h3 class="text-red-500">Wrong Book-Id / Student-ID !!</h3>
          <%
          session.setAttribute("issuestatus", null);
          }
          %>

          <label for="bid" class="block font-bold text-gray-600">Book ID:</label>
          <input type="text" id="bid" name="bid" placeholder="Enter your bid number" class="w-full px-4 py-2 border rounded-md">

          <label for="sid" class="block font-bold text-gray-600">Student ID:</label>
          <input type="text" id="sid" name="sid" placeholder="Enter your sid number" class="w-full px-4 py-2 border rounded-md">

          <label for="issuedate" class="block font-bold text-gray-600">Issuedate:</label>
          <input type="date" id="issuedate" name="issuedate" class="w-full px-4 py-2 border rounded-md">

          <label for="duedate" class="block font-bold text-gray-600">Duedate:</label>
          <input type="date" id="duedate" name="duedate" class="w-full px-4 py-2 border rounded-md">

          <button type="submit" class="w-full bg-green-500 text-white py-2 px-4 rounded-md">Submit</button>
        </form>
      </div>
    </div>
  </body>
</html>
