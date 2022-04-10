//Variables

//Scene
var engine;
var canvas;
var scene;
var camera;
var balloonModel;
var pointer;
var skybox;

let selectedSkybox;

//Values
const balloonScaling = 10;
const skyboxSize = 10500;
const mapTotalSize = 7500;
const mapSizeMeters = 50330;
const mapSize = 500;
const convAltura = 4.498;
const sumAltura = 332;
const fG = 9.81;

//Obj
var balloon;
var clockInterval;
var gasListener;
var particleSistem;

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
const upDeg = 42.77319072255673;
const diffDegY = upDeg - 42.317161;
const leftDeg = -3.2879013674696;
const diffDegX = leftDeg + 2.670898;

//Movement & temp
var windDir = 0;
var windSpeed = 0;
var actTemp = 20;
var actPressure;
var started;

//Testing
var testing = true;
var showCollisions = false;

function setSelectedSkybox(value) {
  selectedSkybox = value;
}

var startPoint = {
  x: 3830,
  y: 30.7,
  z: 3945,
};
