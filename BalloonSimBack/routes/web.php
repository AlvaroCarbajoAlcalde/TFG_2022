<?php

use App\Http\Controllers\FlightController;
use App\Http\Controllers\RouteController;
use App\Http\Controllers\TakeoffPointController;
use App\Http\Controllers\BackupController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/

Route::get('/', function () {
    return view('home');
})->name('home');

Route::get('/login-failed', function () {
    return view('home', ['message' => 'Invalid username or password']);
});

Route::get('logout', 'App\Http\Controllers\AdminController@logout');
Route::get('login', 'App\Http\Controllers\AdminController@login');

Route::resource('takeoff-points', TakeoffPointController::class);
Route::resource('users', UserController::class);
Route::resource('flights', FlightController::class);
Route::get('/deleteAllFlights', function () {
    foreach (\App\Models\Route::all() as $route) $route->delete();
    foreach (\App\Models\Flight::all() as $flight)  $flight->delete();
    return redirect()->route('flights.index')->with('success', 'All flights deleted successfully');
});
Route::resource('routes', RouteController::class);

Route::get('/backup_database', function () {
    $mysqlHostName      = env('DB_HOST');
    $mysqlUserName      = env('DB_USERNAME');
    $mysqlPassword      = env('DB_PASSWORD');
    $DbName             = env('DB_DATABASE');
    $backup_name        = "mybackup.sql";
    $tables             = array("admins", "flights", "migrations", "personal_access_tokens", "routes", "takeoff_points"); //here your tables...

    $connect = new \PDO("mysql:host=$mysqlHostName;dbname=$DbName;charset=utf8", "$mysqlUserName", "$mysqlPassword", array(\PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
    $get_all_table_query = "SHOW TABLES";
    $statement = $connect->prepare($get_all_table_query);
    $statement->execute();
    $result = $statement->fetchAll();

    $output = '';
    foreach ($tables as $table) {
        $show_table_query = "SHOW CREATE TABLE " . $table . "";
        $statement = $connect->prepare($show_table_query);
        $statement->execute();
        $show_table_result = $statement->fetchAll();

        foreach ($show_table_result as $show_table_row) {
            $output .= "\n\n" . $show_table_row["Create Table"] . ";\n\n";
        }
        $select_query = "SELECT * FROM " . $table . "";
        $statement = $connect->prepare($select_query);
        $statement->execute();
        $total_row = $statement->rowCount();

        for ($count = 0; $count < $total_row; $count++) {
            $single_result = $statement->fetch(\PDO::FETCH_ASSOC);
            $table_column_array = array_keys($single_result);
            $table_value_array = array_values($single_result);
            $output .= "\nINSERT INTO $table (";
            $output .= "" . implode(", ", $table_column_array) . ") VALUES (";
            $output .= "'" . implode("','", $table_value_array) . "');\n";
        }
    }
    $file_name = 'database_backup_on_' . date('y-m-d') . '.sql';
    $file_handle = fopen($file_name, 'w+');
    fwrite($file_handle, $output);
    fclose($file_handle);
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename=' . basename($file_name));
    header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize($file_name));
    ob_clean();
    flush();
    readfile($file_name);
    unlink($file_name);

    return view('home');
})->name('backup_database');
