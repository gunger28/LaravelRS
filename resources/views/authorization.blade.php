<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="auth.css">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<div class="logoBlock"></div>
<form method="get" action="{{ route('home') }}">
    <div class="stroke">
        <img src="mail.png">
        <input type="text" name="email" placeholder="Email">
    </div>
    <div class="stroke">
        <img src="pass.png">
        <input type="text" name="pass" placeholder="Password">
    </div>
    <button type="submit">Log In</button>
</form>

@yield('warning')
</body>
</html>
