<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" import="java.util.Arrays"
	import="models.Book"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css"
	integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>

	<!-- Navigation bar -->
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="BookList.jsp"> <img
			src="Images/open-book-outline-variant-inside-a-circle.png" width="30"
			height="30" class="d-inline-block align-top" alt=""> Books
			Store
		</a>
	</nav>

	<div class="row m-0 h-25 align-items-center">
		<div class="col-sm-4 col-4">
			<div class="text-center">
				<h1>C'moon Read Books</h1>
			</div>
		</div>
		<div class="col-sm-8 col-8">
			<img src="Images/2942778.jpg" class="w-100 h-75">
		</div>
	</div>
	<hr>
	<h2 class="text-center">
		Books List <img src="Images/arrow-down-solid.svg" width="30"
			height="30">
	</h2>
	<div class="container">
		<%
		int rowCount = 0, numOfCols = 4, bootstrapColWidth = 12 / numOfCols;
		//TODO transfer this logic to servlet
		List<Book> list = Arrays.asList(new Book(1, "La Boite à Merveille", "Ahmed gdida", 200), new Book(2, "Oui", "B", 9.99),
				new Book(3, "Chi haja", "ydk", 2), new Book(4, "Chi haja", "ydk", 2), new Book(5, "Chi haja", "ydk", 2),
				new Book(5, "Chi haja", "ydk", 2), new Book(6, "Chi haja", "ydk", 2));
		%>
		<%
		for (Book item : list) {
			if (rowCount % numOfCols == 0) {
		%>
		<div class="row m-0 justify-content-center">
			<%
			rowCount++;
			}
			%>
			<div class="col-md-<%out.println(bootstrapColWidth);%>">
				<div class="card" style="width:100%;height:auto; margin: 10px;">
					<div class="card-body">
						<h5 class="card-title">
							"<%
						out.println(item.getTitre());
						%>"
						</h5>
						<p class="card-text">
							By:
							<%
						out.println(item.getAuteur());
						%>
							Price:
							<%
						out.println(item.getPrix());
						%>
						</p>
						<a href="#" class="btn btn-primary mr-2">Edit</a><a href="#"
							class="btn btn-danger">Delete</a>
					</div>
				</div>
			</div>
			<%
			if (rowCount % numOfCols == 0) {
			%>
		</div>
		<%
		}
		}
		%>
	</div>
</body>
</html>