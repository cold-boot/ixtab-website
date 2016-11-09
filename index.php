<?php
error_reporting(E_ALL); ini_set('display_errors','1');

// Database PDO connection
$host = "localhost";
$username = "root";
$password = "";

$details = "mysql:dbname=".$database.";host=".$host;
try {
        @$db = new PDO($details, $username, $password);
} catch(PDOException $error) {
        die("databaseerror");
}

if (isset($_GET["page"])) {
	$page = $_GET["page"];	
} else {
	$page = "home";
}

$navlinks = array();
$sidebars = array();

foreach ($db->query("SELECT * FROM custompages") as $thispage) {
	if ($thispage["shownavlink"] == 1) {
		$navlinks[] = array("safename" => $thispage["safename"], "linktitle" => $thispage["navname"]);
	}
	if ($thispage["safename"] == $page) {
		$pageinfo = $thispage;
	} else if ($thispage["pageid"] == 0) { $pageinfo = $thispage; }
}

foreach ($db->query("SELECT * FROM sidebars") as $thisbox) {
	if ($thisbox["show"] == 1) {
		$sidebars[] = array("title" => $thisbox["title"], "content" => $thisbox["content"]);
	}
}

$titleline = $pageinfo["pagetitle"];
?>
<html>
	<head>
		<title>IXTAB Innovations - <?php echo $titleline; ?></title>
		<link rel="stylesheet" type="text/css" href="stylesheet.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>
	<body>
		<div class="topbar">
			<h1 class="logo">IXTAB Innovations</h1>
			<div class="linkbar">
				<?php
			foreach ($navlinks as $navlink) {
				echo '<a href="?page='.$navlink["safename"].'">'.$navlink["linktitle"].'</a>';
			}
				?>
			</div>
		</div>
		<div class="barspacer">&nbsp;</div>
		<div class="content">
			<div class="sidebar"><div class="inner">
				<?php
			foreach ($sidebars as $sidebar) {
				echo '<h3>'.$sidebar["title"].'</h3><br>'.$sidebar["content"];
			}
                                ?>
			</div></div>
			<div class="main">
			<?php echo $pageinfo["pagecontent"]; ?>
			</div>
			<br>
		</div>
		<div class="barspacer">&nbsp;</div>
		<div class="footer">
			<div class="contactbar">
				<div class="inner">
					Contact IXTAB | <a href="mailto:js.mullins@riseup.net">contact@ixtab.tech</a>
				</div> 
			</div>
			<div class="inner">
				&copy; 2016 IXTAB Innovations
			</div>
		</div>
	</body>
</html>
