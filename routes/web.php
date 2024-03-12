<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PassportAuthController;

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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/signup', function () {
    return view('register');
});

Route::get('/signin', function () {
    return view('login');
})->name('signin');
Route::post('/register',[PassportAuthController::class,'register']);
Route::post('/login',[PassportAuthController::class,'login']);
Route::get('/profile',[PassportAuthController::class,'profile'])->name('profile');
Route::get('/edit/{id}',[PassportAuthController::class,'edit'])->name('edit');
Route::post('/edit/{id}',[PassportAuthController::class,'update'])->name('update');
Route::get('/delete/{id}',[PassportAuthController::class,'delete'])->name('delete');
Route::get('/tasks',[PassportAuthController::class,'manage_task'])->name('task_manage');
Route::get('/delete_task/{id}',[PassportAuthController::class,'delete_task'])->name('delete_task');
Route::any('/edit_task/{id}',[PassportAuthController::class,'edit_task'])->name('task_edit');
Route::post('/edit_task/{id}',[PassportAuthController::class,'update_task'])->name('update_task');
Route::get('/add_task',[PassportAuthController::class,'add_task'])->name('add_tasks');
Route::get('/save_task',[PassportAuthController::class,'save_task'])->name('save_task'); 
Route::get('/modules',[PassportAuthController::class,'show_modules'])->name('show_modules');
Route::get('/submodules',[PassportAuthController::class,'show_submodules'])->name('show_submodules');