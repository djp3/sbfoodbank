<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<meta name="mobile-web-app-capable" content="yes"/>
		<meta name="apple-mobile-web-app-capable" content="yes"/>
		<title>Ally - Santa Barbara FoodBank</title>
		<meta name="description" content="An app to help people find food in Santa Barbara"/>
		<meta name="author" content="Westmont Inspired Computing Lab"/>
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/styles.css"/>
	</head>
	<body>
		<div class="container">
			<div class="page-header text-center">
				<img class="bw_logo" src="img/logos/black_and_white/black_on_clear.png"/>
				<h4>Helping Others in Santa Barbara</h4>
			</div>
		</div>
		<div class="container text-center">
			<div class="row-fluid">
				<div class="col-md-12">
					<a class="btn btn-default btn-lg" href="find-food.php" role="button" id="find_food_btn">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						Find Food
					</a>
				</div>
			</div>
			<div class="row-fluid">
				<div class="col-md-12">
					<a class="btn btn-default btn-lg" href="find-other.php" role="button" id="find_other_resources_button">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						Find Other Resources
					</a>
				</div>
			</div>
			<div class="row-fluid">
				<div class="col-md-12">
					<a class="btn btn-default btn-lg" href="tel:1-805-937-3422" role="button" id="call_north_county_foodbank_button">
						<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
						Call North County FoodBank
					</a>
					<a class="btn btn-default btn-lg" href="tel:1-805-967-5741" role="button"id="call_south_county_foodbank_button">
						<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
						Call South County FoodBank
					</a>
				</div>
			</div>
			<div class="row-fluid">
				<div class="col-lg-12">
					<a class="btn btn-default btn-lg" href="about.php" role="button" id="about_button">
						<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
						About
						</a>
					<a class="btn btn-default btn-lg" href="how-to-use.php" role="button" id="how_to_use_button">
						<span class="glyphicon glyphicon glyphicon-question-sign" aria-hidden="true"></span>
						How To Use Ally
					</a>
				</div>
			</div>
			<div class="row-fluid">
				<div class="col-md-12">
					<a class="btn btn-default btn-lg" href="https://donate.foodbanksbc.org/" role="button" id="donate_button">
						<span class="glyphicon glyphicon-usd" aria-hidden="true"></span>
						Donate to the FoodBank
					</a>
				</div>
			</div>
		</div>

		<footer class="footer">
			<div class="container">
				<div class="row-fluid text-center">
					<div class="col-sm-12">
						<a class="btn btn-default btn-lg" href="feedback.php" role="button" id="feedback_button">
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
