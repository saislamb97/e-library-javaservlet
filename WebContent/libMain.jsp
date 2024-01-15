<%@page import="com.lib.dao.LibrarianDAOImp"%>
<%@page import="com.lib.dao.LibrarianDAO"%>
<%
if(session.getAttribute("lid")==null)
{
	%>
  <div class="min-h-screen flex items-center justify-center bg-gray-100">
    <h1 class="text-4xl font-bold text-red-500">Get lost</h1>
  </div>
  <%
  return ;
}
%>
<%
int id = (Integer)session.getAttribute("lid");
LibrarianDAO find = new LibrarianDAOImp();
String name = find.findById(id);
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Library Management</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
  <nav class="bg-blue-700 text-white p-4 flex justify-between items-center">
    <div class="logo ml-4">
      <h3 class="text-lg font-semibold"><%= "Welcome" + " " + name + " !" %></h3>
      <script src="js/util.js"></script>
    </div>
    <ul class="hidden md:flex space-x-4 mr-4">
      <li><div id="clock"></div></li>
      <li><a href="logout.jsp" class="hover:text-gray-300">Logout</a></li>
    </ul>
  </nav>
  <header class="bg-gray-800 text-white py-16 text-center">
    <h1 class="text-4xl font-bold mb-4">E-Library Management System</h1>
    <p class="text-lg">Explore, Manage, and Keep Track of Your Library Resources</p>
  </header>
  <main class="mx-8 my-4">
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
      <a href="addstudent.jsp" class="button bg-green-500 hover:bg-green-600">
        <div class="p-4 rounded-lg border border-green-600">
          <h5 class="text-white">Add Student</h5>
        </div>
      </a>
      <a href="addBook.jsp" class="button bg-blue-500 hover:bg-blue-600">
        <div class="p-4 rounded-lg border border-blue-600">
          <h5 class="text-white">Add Book</h5>
        </div>
      </a>
      <a href="issuebook.jsp" class="button bg-indigo-500 hover:bg-indigo-600">
        <div class="p-4 rounded-lg border border-indigo-600">
          <h5 class="text-white">Issue Book</h5>
        </div>
      </a>
      <a href="checkdue.jsp" class="button bg-purple-500 hover:bg-purple-600">
        <div class="p-4 rounded-lg border border-purple-600">
          <h5 class="text-white">Check Due</h5>
        </div>
      </a>
      <a href="allbook.jsp" class="button bg-orange-500 hover:bg-orange-600">
        <div class="p-4 rounded-lg border border-orange-600">
          <h5 class="text-white">All Books</h5>
        </div>
      </a>
      <a href="allstudent.jsp" class="button bg-yellow-500 hover:bg-yellow-600">
        <div class="p-4 rounded-lg border border-yellow-600">
          <h5 class="text-white">All Students</h5>
        </div>
      </a>
    </div>
  </main>
  <footer class="bg-blue-700 text-white text-center p-4 fixed bottom-0 w-full">
    <p>&copy; 2023 Library Management. All rights reserved.</p>
  </footer>
</body>
</html>
