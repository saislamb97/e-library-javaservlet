<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
if(session.getAttribute("lid")==null)
{
	%>
  <div class="min-h-screen flex items-center justify-center">
    <h1 class="text-4xl text-red-500">Get lost</h1>
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
  <title>Book Return Success</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
  <div class="text-center mt-20">
    <h1 class="text-4xl text-green-500 font-bold">Book Successfully Returned</h1>
    <p class="text-lg text-gray-700 mt-4">Thank you for returning the book. We hope you enjoyed it!</p>
  </div>
</body>
</html>
