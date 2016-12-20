<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8"/>

		<!-- These make the web page look more like an app on mobile devices -->
		<meta name="mobile-web-app-capable" content="yes"/>
		<meta name="apple-mobile-web-app-capable" content="yes"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
		<!-- -->

		<link class="bw_logo" rel="icon" href="img/logos/black_and_white/black_on_clear.png">
		<title>Ally - Find Food</title>
		<meta name="description" content="An app to help people find food in Santa Barbara"/>
		<meta name="author" content="Westmont Inspired Computing Lab"/>
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/styles.css"/>
	</head>
	<body>
		<div class="container">
			<div class="page-header">
				<h3>Find Food</h3>
			</div>
		</div>
		<div class="container-fluid">
			<div class="table-responsive">
				<table class="table table-striped table-condensed">
					<tr>
						<th>
							Organization
						</th>
						<th>
							Service Type
						</th>
						<th>
						</th>
					</tr>
<?php
					$servername = "localhost";
					$username = "ally_user";
					$password = "ally_user_password";
					$dbname = "ally";
					$tablename = "sites";

					$id = "id";
					$agencyName = "Agency Name";
					$serviceType ="Service Type";
					$distributionSiteAddress ="Distribution Site Address";
					$phone ="Phone";

					$prop_id = "`$id`";
				   	$prop_agencyName = "`$agencyName`";
					$prop_serviceType = "`$serviceType`";
					$prop_distributionSiteAddress = "`$distributionSiteAddress`";
					$prop_phone = "`$phone`";

					class TableRows extends RecursiveIteratorIterator { 
						function __construct($it) { 
							parent::__construct($it, self::LEAVES_ONLY); 
				        }

				        function current() {
							global $id;
							global $agencyName;
							global $serviceType;
							global $distributionSiteAddress;
							global $phone;

				            global $currentAgencyName;
				            global $currentPhone;
				            if (parent::key() == $agencyName) {
?> 
				<td>
<?php
				                $currentAgencyName = parent::current();
								echo $currentAgencyName."\n"
?>
				</td>
<?php
				            }
				            if (parent::key() == $serviceType) {
?> 
				<td>
<?php
								echo parent::current()."\n"
?>
				</td>
<?php
							}
				            if (parent::key() == $phone) { 
				                $currentPhone = parent::current();
				            } 
				            if (parent::key() == $distributionSiteAddress) {
?>
				<td>
					<a class="btn btn-default" href="map-one.php?address=<?php echo urlencode(parent::current()); ?>" role="button">
				   		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
				       		Map
					</a> 
				   	<a class="btn btn-default" href="tel:<?php echo $currentPhone; ?>" role="button">
				   		<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
				       		Call
					</a> 
					<a class="btn btn-default" href="share.php?info=<?php echo urlencode($currentAgencyName . " " .parent::current() . " " .$currentPhone); ?>" role="button">
				   		<span class="glyphicon glyphicon-share" aria-hidden="true"></span>
							Share
					</a> 
				</td>
<?php 
							} 
						}

						function beginChildren() { 
?>
			<tr>
<?php
						} 

						function endChildren() { 
?>
			</tr>
<?php
						} 
					} 


					try {
						$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
						$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
						$stmt = $conn->prepare("SELECT $prop_id, $prop_agencyName, $prop_serviceType, $prop_distributionSiteAddress, $prop_phone FROM $tablename WHERE $prop_serviceType = 'Pantry' OR $prop_serviceType = 'Soup Kitchen' ORDER BY $prop_agencyName"); 
						$stmt->execute();

						// set the resulting array to associative
						$result = $stmt->setFetchMode(PDO::FETCH_ASSOC); 
						foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) { 
							echo $v;
						}
					}
					catch(PDOException $e) {
						echo "Error: " . $e->getMessage();
					}

					$conn = null;
				?>
				</table>
			</div>
		</div>

		<footer class="footer">
			<div class="container">
				<div class="row-fluid text-center">
					<div class="col-xs-6">
						<a class="btn btn-default btn-lg" href="index.php" role="button" id="home_button">
							<img class="bw_logo_button" src="img/logos/black_and_white/black_on_clear.png" alt="Ally Logo"/>
							Home
						</a>
					</div>
					<div class="col-xs-6">
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
