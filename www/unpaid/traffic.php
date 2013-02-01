<html>
	<meta http-equiv="refresh" content="600">
	<head>
		<link REL="stylesheet" HREF="/css/style2.css" TYPE="text/css">
	</head>
	<title>
		Traffic temmi.dnsalias.net
	</title>
	<body>
		<h1>Traffic graphs <b>TEMMI</b></h1>
		<!--<img src="rrdgraphs/rrd-eth1-minuut.png" title="Minuut">-->
		<img src="rrdgraphs/rrd-eth1-uur.png" title="Uur">
		<!--<img src="rrdgraphs/squid-uur.png" title="Requested vs Cached data over an hour">-->
		<img src="rrdgraphs/rrd-eth1-dag.png" title="Dag">
		<img src="rrdgraphs/rrd-eth1-week.png" title="Week">
		<img src="rrdgraphs/rrd-eth1-month.png" title="Maand">
		<img src="rrdgraphs/rrd-eth1-year.png" title="Jaar">
		<br>
		<div id="footer">
			<div id="breadcrumbs">
				<a href="http://akademia.dnsalias.net/traffic.php">Akademia</a>
				<a href="http://thehangar.dnsalias.net/traffic.php">Hangar</a>
				<a href="http://interlan.dnsalias.net/traffic.php">Interlan</a>
			</div>
			<?php
			include("uptime.txt")
			?>
		</div>
	</body>
</html>
