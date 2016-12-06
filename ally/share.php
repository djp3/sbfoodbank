<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
		<meta name="mobile-web-app-capable" content="yes"/>
		<meta name="apple-mobile-web-app-capable" content="yes"/>
		<title>Ally - Share</title>
		<meta name="description" content="An app to help people find food in Santa Barbara"/>
		<meta name="author" content="Westmont Inspired Computing Lab"/>
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/styles.css"/>
	</head>
	<body>
		<div class="container">
			<div class="page-header">
				<h3>Share Information</h3>
			</div>
		</div>
		<div class="container text-center">
			<div class="row-fluid">
				<div class="col-md-12">
		<!-- In the body the user will be given the option to send the desired person either a text or an email. In either that text or email, it will contain the address of the destination, and directions from where they are, as well as the times of operation of the sent destination, -->
		<form action="URL to form script" method="POST">

			Phone Number: <br>
			<input type="text" name="phoneNumber"><br>
			<br>

			Or: <br><br>

			Email: <br>
			<input type="text" name="email"><br>
			<br>

			Please Select Destination to be Sent: <br>
			<textarea name="destination" rows="5" cols="30"></textarea><br><br>

			Add Comments: <br>
			<textarea name="comments" rows="10" cols="30"></textarea><br><br>

			<input type="submit" value="Submit">
			 
			</form>
				</div>
			</div>
		</div>

		<footer class="footer">
			<div class="container">
				<div class="row-fluid text-center">
					<div class="col-xs-6">
						<a class="btn btn-default btn-lg" href="index.php" role="button">
							<img class="bw_logo_button" src="img/\logos\black_and_white\black_on_clear.png"/>
							Home
						</a>
					</div>
					<div class="col-xs-6">
						<a class="btn btn-default btn-lg" href="feedback.php" role="button">
							<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
							Feedback
						</a>
					</div>
				</div>
			</div>
		</footer>

		<!-- Load javascript at the end for speed -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
	</body>
</html>
