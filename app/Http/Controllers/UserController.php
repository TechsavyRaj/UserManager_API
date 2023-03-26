<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class UserController extends Controller
{
    /**
     * Fetch user records from the API endpoint and store them in the database.
     *
     * @return \Illuminate\Http\Response
     */
    public function fetch()
    {
        $response = Http::get('https://randomuser.me/api/', [
            'results' => 05, // Fetch 5 users at a time
            'inc' => 'gender,name,location,email,phone,picture', // Include only required fields
        ]);

        $users = $response->json()['results'];

        foreach ($users as $userData) {
            $user = new User([
                'gender' => $userData['gender'],
                'title' => $userData['name']['title'],
                'first_name' => $userData['name']['first'],
                'last_name' => $userData['name']['last'],
                'street' => $userData['location']['street']['number'] . ' ' . $userData['location']['street']['name'],
                'city' => $userData['location']['city'],
                'state' => $userData['location']['state'],
                'country' => $userData['location']['country'],
                'postcode' => $userData['location']['postcode'],
                'email' => $userData['email'],
                'phone' => $userData['phone'],
                'picture' => $userData['picture']['large'],
            ]);
            // dd($user);
            $user->save();
        }

        return redirect()->route('users.index');
    }

    /**
     * Display a paginated list of users.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::paginate(5);
        return view('users.index', compact('users'));
    }

    /**
     * Opens edit page of users.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);
        return view('users.edit', compact('user'));
    }

    /**
     * Update process of the users.
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->gender = $request->gender;
        $user->title = $request->title;
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->street = $request->street;
        $user->city = $request->city;
        $user->state = $request->state;
        $user->country = $request->country;
        $user->postcode = $request->postcode;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->save();
        return redirect()->route('users.index')->with('success', 'User updated successfully');
    }
}
