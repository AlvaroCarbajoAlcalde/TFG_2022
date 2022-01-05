//Variables

//Scene
var engine;
var canvas;
var scene;
var camera;
var balloon;
var pointer;
var skybox;

//Values
const balloonScaling = 10; //Escala del modelo del globo
const key = "K6DkKCtAhd6t9vIAeGlLmNkSspgsUaW5"; //Key de api de mapas
const skyboxSize = 10500; //Tamagno del skybox
const mapTotalSize = 7500; //Medida de lado del mapa
const mapSizeMeters = 50330;

//Html
var game;
var tablet;
var menu;
var loading;
var positionX;
var positionZ;
var positionY;

//Meters
var mX;
var mZ;
var altura;

//Degreees Conversion
const upDeg = 42.769508;
const diffDegY = upDeg - 42.317161;
const leftDeg = -3.287866;
const diffDegX = leftDeg + 2.670898;

//Movement
var windDir = 43;
var actSpeedX;
var actSpeedY;
var actSpeedZ;

//Testing
var testing = true;