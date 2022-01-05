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
  positionX = $("#positionX")[0];
  positionZ = $("#positionZ")[0];
  positionY = $("#positionY")[0];
}

function startGame() {
  showGame();
  createScene();
  scene.executeWhenReady(loop);
}

function loop() {
  engine.runRenderLoop(() => {
    scene.render();
    moveBalloonToPointer();
    showPositionInTablet();
  });
}

function showPositionInTablet() {
  positionX.innerHTML = " X: " + pointer.position.x;
  positionZ.innerHTML = " Z: " + pointer.position.z;
  positionY.innerHTML = " Y: " + pointer.position.y;
}

function moveBalloonToPointer() {
  balloon.position.x = -pointer.position.x * 100;
  balloon.position.y = pointer.position.y * 100;
  balloon.position.z = pointer.position.z * 100;

  skybox.position.x = pointer.position.x;
  skybox.position.z = pointer.position.z;
}

function showGame() {
  menu.classList.add("hidden");
  game.classList.remove("hidden");
  tablet.classList.remove("hidden");
}

function hideGame() {
  game.classList.add("hidden");
  tablet.classList.add("hidden");
  menu.classList.remove("hidden");
}
