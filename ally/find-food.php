<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
		<meta name="mobile-web-app-capable" content="yes"/>
		<meta name="apple-mobile-web-app-capable" content="yes"/>
		<title>Ally - Find Food</title>
		<meta name="description" content="An app to help people find food in Santa Barbara"/>
		<meta name="author" content="Westmont Inspired Computing Lab"/>
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/styles.css"/>
	</head>
	<body>
		<div class="container">
			<div class="page-header">
				<h1>Ally <small>Find Food</small></h1>
			</div>
		</div>
		<div class="container">
			<div class="row-fluid text-center border-row">
				<div class="col-md-12 big-font">
					<!-- <p><b>Content</b></p> -->


    <div class="container-fluid">
    <div class="row-fluid text-center">
    <?php

    class TableRows extends RecursiveIteratorIterator { 
        function __construct($it) { 
            parent::__construct($it, self::LEAVES_ONLY); 
        }

        function current() {
            global $agencyname;
            global $phonenum;
            if (parent::key() == "Agency Name") {
                ?> 
                <div class="col-sm-6">
                <?php
                $agencyname = parent::current();
                echo parent::current();
                ?></div>
                <?php
            }
            if (parent::key() == "Phone") { 
                $phonenum = parent::current();
            } 
            if (parent::key() == "Distribution Site Address") {
                ?>
                <div class="col-sm-6">
                <a class="btn btn-default btn-lg" href="map-one.html?address=<?php echo urlencode(parent::current()); ?>" role="button">
                    <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                    Map
                </a> 
                <a class="btn btn-default btn-lg" href="tel:<?php echo $phonenum; ?>" role="button">
                    <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                    Call
                </a> 
                <a class="btn btn-default btn-lg" href="share.html?info=<?php echo urlencode($agencyname . " " .parent::current() . " " .$phonenum); ?>" role="button">
                    <span class="glyphicon glyphicon-share" aria-hidden="true"></span>
                    Share
                </a> 
                </div>
                <?php 
            } 
        }

        function beginChildren() { 
            echo "<tr>"; 
            ?>
            <div class="col-md-12">
            <?php
        } 

        function endChildren() { 
            echo "</tr>" . "\n";
            ?>
            </div>
            <?php
        } 
    } 

    $servername = "localhost";
    $username = "username";
    $password = "password";
    $dbname = "ally";
    $prop1 = "id";
    $prop2 = "`Agency Name`";
    $prop3 = "`Distribution Site Address`";
    $prop4 = "`Phone`";

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $stmt = $conn->prepare("SELECT $prop1, $prop2, $prop3, $prop4 FROM sites"); 
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
    /* echo "</table>";
    echo "<a href=\"insert.php\">insert a record</a>"; */
    ?>
    </div>
    </div>



				</div>
			</div>
		</div>

<br><br>

		<footer class="footer">
			<div class="container">
				<div class="row-fluid text-center">
					<div class="col-sm-6">
						<a class="btn btn-default btn-lg" href="index.html" role="button">
							<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
							Home
						</a>
					</div>
					<div class="col-sm-6">
						<a class="btn btn-default btn-lg" href="feedback.html" role="button">
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
