<html>
<head>
<title>welcome to home page</title>
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
	</table>
	<h4>Data will be deleted successfully</h4>
	<h2>update user details</h2>
	<form action="adduser">
		<table>
			<tr>
				<td><span>Enter your ID</span></td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td><span>Enter your Name</span></td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr rowsapn="2">
				<td><button>Submit</button></td>
			</tr>
		</table>
	</form>
</body>
</html>