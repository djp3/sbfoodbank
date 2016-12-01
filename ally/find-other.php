<?php


echo "<head>
        <meta charset='utf-8'/>
        <meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'/>
        <meta name='mobile-web-app-capable' content='yes'/>
        <meta name='apple-mobile-web-app-capable' content='yes'/>
        <title>Ally - Find Other Resorces</title>
        <meta name='description' content='An app to help people find food in Santa Barbara'/>
        <meta name='author' content='Westmont Inspired Computing Lab'/>
        <link rel='stylesheet' type='text/css' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'/>
        <link rel='stylesheet' type='text/css' href='css/styles.css'/>

        <style>
            div.border-row{
                border: 1px solid;
            }
            div.big-font{
                font-size: 24px;
            }
        </style>
    </head>";


echo "<div class='container'>
            <div class='page-header'>
                <h1>Ally <small>Find Other Resources</small></h1>
            </div>
        </div>
        <div class='container'>
            <div class='row-fluid text-center border-row'>
                <div class='col-md-12 big-font'>
                    <p><b>SOUTH COUNTY</b></p>
                    <br/>
                </div>
            </div>
        </div>

        <div class='container'>
            <div class='row-fluid text-center border-row'>
                <div class='col-md-12 big-font'>
                    <p><b>SUPPLEMENTAL GROCERY DISTRIBUTION</b></p>
                    <br/>
                </div>
            </div>
        </div>";

echo "<div class='container'>
            <div class='row-fluid text-center border-row'>
                <div class='col-md-3 big-font'>
                    <p><b>Organization</b></p>
                    <br/>
                </div>
                <div class='col-md-3 big-font'>
                    <p><b>Address</b></p>
                    <br/>
                </div>
                <div class='col-md-3 big-font'>
                    <p><b>Hours</b></p>
                    <br/>
                </div>
                <div class='col-md-3 big-font'>
                    <p><b>Phone Numbers</b></p>
                    <br/>
                </div>
            </div>
        </div>";

class TableRows extends RecursiveIteratorIterator { 
    function __construct($it) { 
        parent::__construct($it, self::LEAVES_ONLY); 
    }

    function current() {

        $type = parent::key();
        $currentVar = parent::current();

        if ($type == "id"){
            return "";
        }

        if ($currentVar == ""){

            $currentVar = "Unknown";

            }

        if ($type == "Times of Distribution"){

            return "<div class='col-md-3'>
                    <p><b>" . $currentVar. "</b></p>";

        }

        if ($type == "Days of Distribution"){

            return "<p><b>" . $currentVar. "</b></p>
                    <br/>
                </div>";

        }

        else{

            return "<div class='col-md-3'>
                    <p><b>" . $currentVar. "</b></p>
                    <br/>
                </div>";

        }
    }

    function beginChildren() { 
        echo "<div class='container'>
                <div class='row-fluid text-center border-row'>"; 
    } 

    function endChildren() { 
        echo "</div>
                </div>" . "\n";
    } 
} 


$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "sys";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->prepare("SELECT `id`, `Agency Name`, `Distribution Site Address`, `Times of Distribution`, `Days of Distribution`, `Phone` FROM `sites`"); 
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