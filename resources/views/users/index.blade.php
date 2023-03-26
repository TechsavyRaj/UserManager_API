<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IBMS Task3</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>

<body>
    <center>
        <br><a href="{{url('/users/export')}}" class="btn btn-success">Export Users</a><br><br>
        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif
        @if ($message = Session::get('failed'))
            <div class="alert alert-danger">
                <p>{{ $message }}</p>
            </div>
        @endif
        <div class="container">
            <h1>Users</h1>
            {{-- <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr>
                        <td>{{ $user->title . ' ' . $user->first_name . ' ' . $user->last_name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->phone }}</td>
                        <td>
                            <a href="{{ route('users.edit', $user->id) }}" class="btn btn-secondary btn-sm">Edit</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        {{ $users->links() }} --}}


            <div class="card-columns">
                @foreach ($users as $user)
                    <div class="col-md-4">
                        <div class="card">
                            <img src="{{ $user->picture }}" class="card-img-top" height="300px"
                                alt="{{ $user->title }} {{ $user->first_name }} {{ $user->last_name }}">
                            <div class="card-body">
                                <h5 class="card-title">{{ $user->title }} {{ $user->first_name }}
                                    {{ $user->last_name }}</h5>
                                <p class="card-text">{{ $user->email }}</p>
                                <p class="card-text">{{ $user->phone }}</p>
                                <p class="card-text">{{ $user->street }}, {{ $user->city }}, <br>
                                    {{ $user->state }}, {{ $user->country }}, {{ $user->postcode }}</p>
                                <a href="{{ route('users.edit', $user->id) }}" class="btn btn-primary">Edit</a>
                            </div>
                        </div>
                        @if ($loop->last)
                            <div class="card d-none" data-next-page="{{ $users->nextPageUrl() }}"></div>
                        @endif
                    </div><br><br>
                @endforeach
            </div>

        </div>
    </center>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"
        integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
            $(window).scroll(function() {
                if ($(window).scrollTop() + $(window).height() == $(document).height()) {
                    var nextPageUrl = $('.card[data-next-page]').attr('data-next-page');
                    if (nextPageUrl) {
                        $.get(nextPageUrl, function(data) {
                            $('.card-columns').append($(data).find('.card-columns').html());
                            $('.card[data-next-page]').attr('data-next-page', $(data).find(
                                '.card[data-next-page]').attr('data-next-page'));
                        });
                    }
                }
            });
        });
    </script>
</body>

</html>
