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
    <br><br>
    <div class="container">
        <h2>Edit User</h2>
        <form action="{{ route('users.update', $user->id) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="row">
                <div class="col-6 mb-3">
                    <label for="title">Title:</label>
                    <input type="text" class="form-control" id="title" name="title"
                        value="{{ $user->title }}">
                </div>
                <div class="col-6 mb-3">
                    <label for="first_name">First Name:</label>
                    <input type="text" class="form-control" id="first_name" name="first_name"
                        value="{{ $user->first_name }}">
                </div>
                <div class="col-6 mb-3">
                    <label for="last_name">Last Name:</label>
                    <input type="text" class="form-control" id="last_name" name="last_name"
                        value="{{ $user->last_name }}">
                </div>
                <div class="col-6 mb-3">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email"
                        value="{{ $user->email }}">
                </div>
                <div class="col-6 mb-3">
                    <label for="gender">Gender:</label>
                    <input type="text" class="form-control" id="gender" name="gender"
                        value="{{ $user->gender }}">
                </div>
                <div class="col-6 mb-3">
                    <label for="street">Street:</label>
                    <input type="text" class="form-control" id="street" name="street"
                        value="{{ $user->street }}">
                </div>
                <div class="col-6 mb-3">
                    <label for="city">City:</label>
                    <input type="text" class="form-control" id="city" name="city"
                        value="{{ $user->city }}">
                </div>
                <div class="col-6 mb-3">
                    <label for="state">State:</label>
                    <input type="text" class="form-control" id="state" name="state"
                        value="{{ $user->state }}">
                </div>
                <div class="col-6 mb-3">
                    <label for="country">Country:</label>
                    <input type="text" class="form-control" id="country" name="country"
                        value="{{ $user->country }}">
                </div>
                <div class="col-6 mb-3">
                    <label for="phone">Phone:</label>
                    <input type="text" class="form-control" id="phone" name="phone"
                        value="{{ $user->phone }}">
                </div>
                <button type="submit" class="btn btn-primary">Update User Data</button>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous">
    </script>
</body>

</html>
