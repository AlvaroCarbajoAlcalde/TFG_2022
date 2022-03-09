# <img height="25" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/balloon.ico"> Balloon Simulator <img height="25" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/balloon.ico">

Project carried out by Álvaro Carbajo Alcalde in 2022.<br>
TFG-2021/22 DAW, IES Comercio.

## Menu

- [Technologies](#Technologies)
    - [Languages](#Languages)
    - [Frameworks](#Frameworks)
    - [Platforms](#Platforms)
    - [APIs](#APIs)
    - [Others](#Others)
    - [Browsers](#Browsers)
- [Screenshots](#Screenshots)
- [Getting Started](#Getting-Started)

## Technologies

### Languages

<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/html.png"> HTML 5</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/css.png"> CSS 3</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/js.png"> JavaScript</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/json.png"> JSON</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/typescript.png"> TypeScript</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/php.png"> PHP</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/blade.png"> Blade</code>

### Frameworks

<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/angular.png"> Angular</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/babylonjs.png"> BabylonJS</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/laravel.png"> Laravel</code>

### Platforms

<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/node.png"> Node JS</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/xampp.png"> Xampp</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/phpmyadmin.png"> PHP MyAdmin</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/mysql.jpg"> MySQL</code>

### APIs

<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/ot.png"> OpenTopography</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/mapquest.png"> MapQuest StaticMapsAPI</code>

### Others

<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/github.png"> Github</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/vscode.png"> VSCode</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/gimp.png"> Gimp 2</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/photoshop.png"> Photoshop</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/visor3d.png"> Visor3D</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/postman.png"> Postman</code>

### Browsers

<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/chrome.png"> Chrome</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/edge.png"> Edge</code>
<code><img height="50" src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/icons/firefox.png"> Firefox</code>

## Screenshots

![cap1](https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/screenshots/sc1.PNG)
![cap2](https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/screenshots/sc3.PNG)
![cap3](https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/screenshots/sc2.PNG)

## Getting Started

Requirements:
```
php v8.0.2
composer v2.2.7
node v16.14.0
xampp (MySQL, phpMyAdmin, php)
```

### Database
Import database (database.sql) in phpMyAdmin.
Edit:
```
BalloonSimBack/.env
```
Configure your database variables:
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=balloonsim
DB_USERNAME=root
DB_PASSWORD=
```

### Laravel Backend
Go to BalloonSimBack, open in terminal and run:
```
npm install
composer install
php artisan serve
```

### Angular Frontend
Go to BalloonSimFront, open in terminal and run:
```
npm install
npm install angular
npm run ng serve --open
```
