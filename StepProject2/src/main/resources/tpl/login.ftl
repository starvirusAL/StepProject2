<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="img/favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="static-content/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="static-content/css/style.css">
</head>

<body class="text-center">
<a href="/liked">Like</a>
    <form class="form-signin" action="/liked" method="GET">
        <img class="mb-4" src="https://www.webwise.ie/wp-content/uploads/2015/09/tinder.png" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>

        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit" >Sign in</button>

        <!--<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>-->

        <p class="mt-5 mb-3 text-muted">&copy; Tinder 2023</p>
    </form>
</body>
</html>