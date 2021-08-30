<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="/auth.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <title>Admin page</title>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-3">
    <a class="navbar-brand" href="{{route('workSpace')}}">Admin page</a>
    <a style="margin-left: auto" class="navbar-brand" href="{{route('home')}}">Log out</a>
</nav>
{{--<a type="submit" href="{{route('btn')}}" >Btn kek</a>--}}

@yield('act')

<div class="container" style="margin-top: 15px">
    <a title="Add new user" type="submit" href="{{route('addNoteView')}}" class="addNewUsr">+</a>
    <div class="row">

        <div class="col-md-12">

            <form method="get" action="{{ route('search') }}">
                <div class="form-row">
                    <div class="form-group col-md-10">
                        <input type="text" class="form-control" id="s" name="s" placeholder="Search...">
                    </div>
                    <div class="form-group col-md-2">
                        <button type="submit" class="btn btn-primary btn-block">Search</button>
                    </div>
                </div>

            </form>

        </div><!-- ./col-md-12-->

    </div><!-- ./row-->

    <div class="row mt-3 mb-3">
        <div class="col-md-12">

            @yield('content')

        </div><!-- ./col-md-12-->

    </div><!-- ./row-->

</div><!-- ./container-->

</body>
</html>
