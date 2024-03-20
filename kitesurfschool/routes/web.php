<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use Database\Seeders\UserSeeder;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home/home');
})->name('home');

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

route::get('/overzicht', [HomeController::class, 'index'])->middleware('auth')->name('overzicht');
Route::middleware(['ip.banned'])->group(function () { //middleware to check if someone is banneds

    Route::middleware('auth')->group(function () {
        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    });
});


Route::middleware(['auth', 'admin'])->name('admin.')->prefix('admin')->group(function () {
    Route::get('index', [UserController::class, 'index'])->name('index');
    Route::resource('/users', UserController::class);
    Route::get(('/users/{id}/edit'), [UserController::class, 'edit']);
    Route::put('/users/{id}', [UserController::class, 'update']);
    Route::post('/users/{user}/ban', [UserController::class, 'banUser'])->name('users.ban');
});


Route::get('/product/{id}', [ProductController::class, 'show'])->name('product.show');

// Route::get('admin/test', function () {
//     // Your logic here
// })->name('admin.test');
require __DIR__ . '/auth.php';
