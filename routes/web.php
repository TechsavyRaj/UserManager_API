<?php

use App\Http\Controllers\UserController;
use App\Jobs\ExportUsers;
use App\Models\User;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Display the user records on the homepage
Route::get('/', [UserController::class,'index'])->name('users.index');

// Fetch and store user records from the API
Route::get('/users/fetch', [UserController::class,'fetch'])->name('users.fetch');

// Display a specific user's details for editing
Route::get('/users/{user}/edit', [UserController::class,'edit'])->name('users.edit');

// Update a specific user's details
Route::put('/users/{user}', [UserController::class,'update'])->name('users.update');

// Export all user records to a CSV file
Route::get('/users/export', function () {
    $users = User::all();
    ExportUsers::dispatch($users);
    return back()->with('success', 'The user list has been queued for export.');
});
