<!DOCTYPE html>
<html lang="ru">
	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?php echo $this->page_title; ?> - <?php echo SiteName; ?></title>
		<link href="/src/css/style.css?t=<? echo time(); ?>" rel="stylesheet" type="text/css" />
		
	</head>
	<body>
		<header>
			<div class="page_info">
				<div class="contacts_info pt-10 bold">
					<div class="mb-5">Телефон: (499) 340-94-71</div>
					<div>Email: <a class="link" href="mailto:info@future-group.ru">info@future-group.ru</a></div>
				</div>
				<div class="page_name mt-80"><?php echo $this->page_name; ?></div>
			</div>
			<div class="logo">
				<a href="/"><img src="/src/img/logo.jpg" alt="Логотип" title="<?php echo SiteName; ?>"></a>
			</div>
			<div class="clear"></div>
		</header>
		<main>