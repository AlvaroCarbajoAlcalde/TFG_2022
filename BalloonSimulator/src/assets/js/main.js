//On resize
function resizeCanvas() {
  if (engine) engine.resize();
}

function queryHTML() {
  game = $("#game")[0];
  tablet = $("#tablet")[0];
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
  showLoader();
  createScene();
  scene.executeWhenReady(() => {
    game.appendChild(canvas);
    engine.resize();
    timer();
    setGasListener();
    showGame();

    balloon = new Balloon(pointer, balloonModel);
    //InitPos
    balloon.pointer.position.x = 3830;
    balloon.pointer.position.z = 3945;
    balloon.pointer.position.y = 30.7;

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

    if (started) {
      balloon.setSpeeds(windDir, windSpeed);
    }
  });
}

function moveSkybox() {
  skybox.position.x = balloon.pointer.position.x;
  skybox.position.z = balloon.pointer.position.z;
}

function showGame() {
  loading.classList.add("hidden");
  game.classList.remove("hidden");
  tablet.classList.remove("hidden");
  quemador.classList.remove("hidden");
  altimetro.classList.remove("hidden");
  optionsBar.classList.remove("hidden");
  console.timeEnd("load-game");
}

function hideGame() {
  game.classList.add("hidden");
  tablet.classList.add("hidden");
  quemador.classList.add("hidden");
  altimetro.classList.add("hidden");
  optionsBar.classList.add("hidden");
}

function showLoader() {
  loading.classList.remove("hidden");
}

function endSim() {
  engine.stopRenderLoop();
  clearInterval(clockInterval);
  clearInterval(gasListener);
  clearInterval(balloon.intervalX);
  clearInterval(balloon.intervalY);
  clearInterval(balloon.intervalZ);
  hideGame();
  scene.dispose();
  engine.dispose();
  canvas.remove();
  canvas = null;
  game.innerHML = "";
  location.reload();
}
