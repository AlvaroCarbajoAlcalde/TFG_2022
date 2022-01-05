//On load
window.onload = () => {
  queryHTML();
};

//On resize
window.onresize = () => {
  if (engine) engine.resize();
};

function queryHTML() {
  menu = $("#menu")[0];
  game = $("#game")[0];
  tablet = $("#tablet")[0];
  loading = $("#loading")[0];
  positionX = $("#positionX")[0];
  positionZ = $("#positionZ")[0];
  positionY = $("#positionY")[0];
}

function startGame() {
  showLoader();
  createScene();
  scene.executeWhenReady(() => {
    game.appendChild(canvas);
    engine.resize();
    showGame();

    //InitPos
    pointer.position.x = 3830;
    pointer.position.z = 3945;
    pointer.position.y = 30.7;

    setMetersFromPosition();
    setMovementInterval();
    loop();
  });
}

function setMetersFromPosition() {
  mX = (pointer.position.x / mapTotalSize) * mapSizeMeters;
  mZ = (pointer.position.z / mapTotalSize) * mapSizeMeters;
  altura = 40;
}

function loop() {
  engine.runRenderLoop(() => {
    scene.render();
    moveBalloonToPointer();
    showPositionInTablet();
    setSpeeds(60, 12);
  });
}

function setMovementInterval() {
  setInterval(() => {
    mX += actSpeedX / 1000;
  }, 1);
  setInterval(() => {
    mZ += actSpeedZ / 1000;
  }, 1);
}

function showPositionInTablet() {
  positionX.innerHTML = "LON: " + calcDegreesLon();
  positionZ.innerHTML = "LAT: " + calcDegreesLat();
  positionY.innerHTML = "Alt: " + pointer.position.y;
}

function calcDegreesLat() {
  const latDeg = leftDeg - (pointer.position.z / mapTotalSize) * diffDegX;
  return latDeg.toFixed(5);
}

function calcDegreesLon() {
  const lonDeg = upDeg - (pointer.position.x / mapTotalSize) * diffDegY;
  return lonDeg.toFixed(5);
}

function setSpeeds(deg, speed) {
  actSpeedZ = Math.sin(deg) * speed;
  actSpeedX = Math.cos(deg) * speed;
}

function moveBalloonToPointer() {
  pointer.position.x = (mX / mapSizeMeters) * mapTotalSize;
  pointer.position.z = (mZ / mapSizeMeters) * mapTotalSize;

  balloon.position.x = -pointer.position.x * 100;
  balloon.position.y = pointer.position.y * 100;
  balloon.position.z = pointer.position.z * 100;

  skybox.position.x = pointer.position.x;
  skybox.position.z = pointer.position.z;
}

function showGame() {
  menu.classList.add("hidden");
  loading.classList.add("hidden");
  game.classList.remove("hidden");
  tablet.classList.remove("hidden");
}

function hideGame() {
  game.classList.add("hidden");
  tablet.classList.add("hidden");
  menu.classList.remove("hidden");
}

function showLoader() {
  menu.classList.add("hidden");
  loading.classList.remove("hidden");
}

function groundHit() {
  console.log("groundHit");
}
