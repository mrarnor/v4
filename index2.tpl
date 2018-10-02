<html>
<head>
	<meta charset="utf-8">
	<title>Json</title>
	<link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body>
	%include('header.tpl')

	<div class="row">

		<section>
		    <h4>Gengi API</h4>
			<ul>
				% for i in data['results']:
					<li>{{i ['longName'] }} - {{i ['shortName'] }} ISKR: ({{i ['value'] }})</li>
				% end
			</ul>
		</section>
	</div>
	%include('footer.tpl')
</body>
</html>

