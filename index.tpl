<!DOCTYPE html>
<html>
<head>
	<title>verkefni 4</title>
	<link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body>

	<header></header>
	%include ('header.tpl')

	<body>
    <%
     import json
     with open("gengi.json", "r", encoding="utf-8") as skra:
        gengi = json.load(skra)
     end
    %>

	<div class="row">

		<section>
		    <h4>Gengi Json</h4>
			<ul>
				% for i in gengi['results']:
					<li>{{i ['longName'] }} - {{i ['shortName'] }} ISKR: {{i ['value'] }}</li>
				% end
			</ul>
		</section>
	</div>
	%include('footer.tpl')
</body>
</html>



