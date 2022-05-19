<html>
<head>
<title>welcome to index page</title>
</head>
<body>
	<h2>user details</h2>
	<table border="2">
		<tr>
			<th>ID</th>
			<th>Name</th>
		</tr>
		<tr>
			<td>${user.id}</td>
			<td>${user.name}</td>
		</tr>
		<h4>User Details add successfully</h4>
	</table>
	<br>
	<form action="home">
		<button>Home page</button>
	</form>

</body>
</html>