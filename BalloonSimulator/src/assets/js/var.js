//Variables

//Scene
var engine;
var canvas;
var scene;
var camera;
var balloonModel;
var pointer;
var skybox;

//Values
const balloonScaling = 10; //Escala del modelo del globo
const skyboxSize = 10500; //Tamagno del skybox
const mapTotalSize = 7500; //Medida de lado del mapa
const mapSizeMeters = 50330; //Lado del mapa en metros
const mapSize = 500; //Tamaño de cada parte del mapa
const convAltura = 6.44; //Conversion de la altura
const fG = 9.81; //Fuerza de gravedad

//Obj
var balloon;
var clockInterval;
var gasListener;

//Html
var game;
var tablet;
var altimetro;
var quemador;
var optionsBar;
var loading;
var positionX;
var positionZ;
var positionY;
//alt
var altTemp;
var altSpeedUp;
var altTime;
var altWind;
var altPressure;
var altMedUp;
var altMedDown;
var altAltitude;

//Meters
var mX;
var mZ;
var altura;

//Degreees Conversion
const upDeg = 42.769508;
const diffDegY = upDeg - 42.317161;
const leftDeg = -3.287866;
const diffDegX = leftDeg + 2.670898;

//Movement & temp
var windDir = 193;
var windSpeed = 43;
var actTemp = 20;
var actPressure;
var started;

//Testing
var testing = true;
