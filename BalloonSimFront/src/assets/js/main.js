//On resize
function resizeCanvas() {
    if (engine) engine.resize();
}

/**
 * Query the dom for the elements
 */
function queryHTML() {
    game = document.getElementById("game");
    optionsBar = document.getElementById("optionsBar");

    if (userControllsAvailable) {
        tablet = document.getElementById("tablet");
        fuelMeter = document.getElementById("fuel-meter");
        fuelSVG = document.getElementById('fuel-svg');
        rope = document.getElementById("rope");
        burner = document.getElementById("burner");
        altimeter = document.getElementById("altimeter");
        loading = document.getElementById("loading");
        positionX = document.getElementById("positionX");
        positionZ = document.getElementById("positionZ");
        positionY = document.getElementById("positionY");
        triggerL = document.getElementsByClassName("trigger")[0];
        triggerR = document.getElementsByClassName("trigger")[1];

        //Altimeter
        altTemp = document.getElementById("altTemp");
        altSpeedUp = document.getElementById("altSpeedAlt");
        altTime = document.querySelector(".flight-time label");
        altWind = document.getElementById("altSpeed");
        altPressure = document.getElementById("altPressure");
        altMedUp = document.getElementById("altDiffUp");
        altMedDown = document.getElementById("altDiffDown");
        altAltitude = document.getElementById("altAltitude");
        altAltitudeM = document.getElementById("altAltitudeM");

        //FuelMeter start
        setFuelMeter();
    }
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
        if (userControllsAvailable) timer();
        if (!testing && userControllsAvailable) setGasListener();

        balloon = new Balloon(pointer, balloonModel);
        //InitPos
        balloon.pointer.position.x = startPoint.x;
        balloon.pointer.position.z = startPoint.z;
        balloon.pointer.position.y = startPoint.y;

        balloon.setMetersFromPosition();
        if (userControllsAvailable) balloon.setMovementInterval();
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
        if (userControllsAvailable) {
            actTemp = (initTemp - (balloon.altitude - 400) / 154);
            balloon.calculateAscentRatio();
            showDataInAltimeter();
        }

        balloon.moveBalloonToPointer();
        moveSkybox();

        if (started && !testing && userControllsAvailable) {
            balloon.setSpeeds(windDir, windSpeed);
        }
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

    //Reload the page to avoid webgl crashes
    setTimeout(() => { window.location.reload() }, 50);
}