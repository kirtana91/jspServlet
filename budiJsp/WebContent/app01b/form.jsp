<!DOCTYPE html>

<html>
<head>
<title>Order Form</title>
</head>
<body>
	<h1>Order Form</h1>
	<form action="../form" method='post'>
		<table>
			<tr>
				<td>Name:</td>
				<td><input name='name' /></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><textarea name='address' cols='40' rows='5'></textarea></td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><select name='country'>
						<option>United States</option>
						<option>Canada</option>
				</select></td>
			</tr>
			<tr>
				<td>Delivery Method:</td>
				<td><input type='radio' name='deliveryMethod'
					value='First Class' />First Class <input type='radio'
					name='deliveryMethod' value='Second Class' />Second Class</td>
			</tr>
			<tr>
				<td>Shipping Instructions:</td>
				<td><textarea name='instruction' cols='40' rows='5'></textarea></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><textarea name='instruction' cols='40' rows='5'></textarea></td>
			</tr>
			<tr>
				<td>Please send me the latest product catalog:</td>
				<td><input type='checkbox' name='catalogRequest' /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type='reset' /><input type='submit' /></td>
			</tr>
		</table>
	</form>
</body>
</html>
