<html>
<head>
<title>welcome to home page</title>
</head>
<body>
	<h1>This is home page</h1>
	<h2>Add user details</h2>
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

	<h2>search user details</h2>
	<form action="showuser">
		<table>
			<tr>
				<td><span>Enter your ID</span></td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr rowspan="2">
				<td><button>Submit</button></td>
			</tr>
		</table>
	</form>
	<h2>delete user details</h2>
	<form action="deleteuser">
		<table>
			<tr>
				<td><span>Enter your ID</span></td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr rowspan="2">
				<td><button>Submit</button></td>
			</tr>
		</table>
	</form>
	<h2>update user details</h2>
	<form action="updateuser">
		<table>
			<tr>
				<td><span>Enter your ID</span></td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr rowspan="2">
				<td><button>Submit</button></td>
			</tr>
		</table>
	</form>
</body>
</html>