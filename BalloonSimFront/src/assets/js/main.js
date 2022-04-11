//On resize
function resizeCanvas() {
  if (engine) engine.resize();
}

function queryHTML() {
  game = $("#game")[0];
  tablet = $("#tablet")[0];
  rope = $("#rope")[0];
  quemador = $("#quemador")[0];
  optionsBar = $("#optionsBar")[0];
  altimetro = $("#altimetro")[0];
  loading = $("#loading")[0];
  positionX = $("#positionX")[0];
  positionZ = $("#positionZ")[0];
  positionY = $("#positionY")[0];

  //Altimetro
  altTemp = $("#altTemperatura")[0];
  altSpeedUp = $("#altSpeedAlt")[0];
  altTime = $("#altTime")[0];
  altWind = $("#altSpeed")[0];
  altPressure = $("#altPresion")[0];
  altMedUp = $("#altDiffUp")[0];
  altMedDown = $("#altDiffDown")[0];
  altAltitude = $("#altAltura")[0];
}

function startGame() {
  started = false;
  createScene();
  scene.executeWhenReady(() => {
    console.timeEnd("load-game");

    game.appendChild(canvas);
    engine.resize();
    timer();
    if (!testing) setGasListener();

    balloon = new Balloon(pointer, balloonModel);
    //InitPos
    balloon.pointer.position.x = startPoint.x;
    balloon.pointer.position.z = startPoint.z;
    balloon.pointer.position.y = startPoint.y;

    balloon.setMetersFromPosition();
    balloon.setMovementInterval();
    loop();
  });
}

function loop() {
  engine.runRenderLoop(() => {
    scene.render();

    //Balloon actual.
    balloon.moveBalloonToPointer();
    balloon.calculateAscentRatio();
    moveSkybox();

    showPositionInTablet();
    showDataInAltimeter();

    if (started && !testing) {
      balloon.setSpeeds(windDir, windSpeed);
    }
  });
}

function moveSkybox() {
  skybox.position.x = balloon.pointer.position.x;
  skybox.position.z = balloon.pointer.position.z;
}

function endSim() {
  engine.stopRenderLoop();
  clearInterval(clockInterval);
  clearInterval(gasListener);
  clearInterval(balloon.intervalX);
  clearInterval(balloon.intervalY);
  clearInterval(balloon.intervalZ);
  scene.dispose();
  engine.dispose();
  canvas.remove();
  canvas = null;
  game.innerHML = "";
}
