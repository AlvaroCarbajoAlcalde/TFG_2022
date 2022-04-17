//On resize
function resizeCanvas() {
    if (engine) engine.resize();
}

/**
 * Query the dom for the elements
 */
function queryHTML() {
    game = document.getElementById("game");
    tablet = document.getElementById("tablet");
    fuelMeter = document.getElementById("fuel-meter");
    fuelSVG = document.getElementById('fuel-svg');
    rope = document.getElementById("rope");
    burner = document.getElementById("burner");
    optionsBar = document.getElementById("optionsBar");
    altimeter = document.getElementById("altimeter");
    loading = document.getElementById("loading");
    positionX = document.getElementById("positionX");
    positionZ = document.getElementById("positionZ");
    positionY = document.getElementById("positionY");

    //Altimeter
    altTemp = document.getElementById("altTemp");
    altSpeedUp = document.getElementById("altSpeedAlt");
    altTime = document.getElementById("altTime");
    altWind = document.getElementById("altSpeed");
    altPressure = document.getElementById("altPressure");
    altMedUp = document.getElementById("altDiffUp");
    altMedDown = document.getElementById("altDiffDown");
    altAltitude = document.getElementById("altAltitude");

    //FuelMeter start
    setFuelMeter();
}

/**
 * Starts the game
 */
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

/**
 * Loop for the game
 */
function loop() {
    engine.runRenderLoop(() => {
        scene.render();

        //Temp
        actTemp = (initTemp - (balloon.altitude - 400) / 154);

        //Balloon actual.
        balloon.moveBalloonToPointer();
        balloon.calculateAscentRatio();
        moveSkybox();

        showPositionInTablet();
        showDataInAltimeter();

        if (started && !testing) balloon.setSpeeds(windDir, windSpeed);
    });
}

/**
 * Moves the skybox to prevent bugs with the camera
 */
function moveSkybox() {
    skybox.position.x = balloon.pointer.position.x;
    skybox.position.z = balloon.pointer.position.z;
}

/**
 * Ends the game
 */
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