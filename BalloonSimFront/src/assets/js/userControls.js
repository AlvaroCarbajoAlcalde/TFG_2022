/**
 * On click burner
 */
function clickBurner(trigger) {
    trigger.classList.add("pressed");
}

/**
 * UnClick burner
 */
function unClickBurner(trigger) {
    trigger.classList.remove("pressed");
    canvas.focus();
}

/**
 * Click rope
 */
function clickRope() {
    rope.classList.add("pressed");
}

/**
 * Unclick rope
 */
function unClickRope() {
    rope.classList.remove("pressed");
    canvas.focus();
}

/**
 * Clicks both triggers
 */
function clickBurner2() {
    triggerL.classList.add("pressed");
    triggerR.classList.add("pressed");
}

/**
 * Unclicks both triggers
 */
function unClickBurner2() {
    triggerL.classList.remove("pressed");
    triggerR.classList.remove("pressed");
    canvas.focus();
}

/**
 * Toggles the visibility of the interface
 */
function toggleVisibility(eye) {
    if (eye.classList.contains("closed")) {
        tablet.classList.remove("visibleOff");
        fuelMeter.classList.remove("visibleOff");
        rope.classList.remove("visibleOff");
        altimeter.classList.remove("visibleOff");
        burner.classList.remove("visibleOff");
        eye.classList.remove("closed");
    } else {
        rope.classList.add("visibleOff");
        fuelMeter.classList.add("visibleOff");
        tablet.classList.add("visibleOff");
        altimeter.classList.add("visibleOff");
        burner.classList.add("visibleOff");
        eye.classList.add("closed");
    }
}

/**
 * Listener for the action of the user
 */
function setGasListener() {
    const triggerR = document.getElementById("triggerRight");
    const triggerL = document.getElementById("triggerLeft");
    gasListener = setInterval(() => {
        if (triggerL.classList.contains("pressed") && triggerR.classList.contains("pressed")) {
            if (fuel > 0) {
                balloon.temp += 2.1;
                fuel -= 0.03;
            }
        } else if (triggerL.classList.contains("pressed") || triggerR.classList.contains("pressed")) {
            if (fuel > 0) {
                balloon.temp += 1.23;
                fuel -= 0.015;
            }
        } else if (rope.classList.contains("pressed")) {
            balloon.temp -= 2.83;
        } else {
            if (started) balloon.temp -= 0.42;
        }
        if (fuel < 0) fuel = 0;
        if (fuel < 20) document.getElementById('fuel-icon').classList.add('low-fuel');
        setFuelLevelTo(fuel);
    }, 300);
}

/**
 * Sets the listener fo the user's actions during the game
 */
function setMovement() {
    scene.onKeyboardObservable.add((kbInfo) => {
        switch (kbInfo.type) {
            // Keydown
            case BABYLON.KeyboardEventTypes.KEYDOWN:
                switch (kbInfo.event.key) {
                    case " ":
                        triggerR.classList.add("pressed");
                        triggerL.classList.add("pressed");
                        break;
                    case "w":
                    case "W":
                        triggerL.classList.add("pressed");
                        break;
                    case "s":
                    case "S":
                        rope.classList.add("pressed");
                        break;
                }
                break;
                // Keyup
            case BABYLON.KeyboardEventTypes.KEYUP:
                switch (kbInfo.event.key) {
                    case " ":
                        triggerL.classList.remove("pressed");
                        triggerR.classList.remove("pressed");
                        break;
                    case "w":
                    case "W":
                        triggerL.classList.remove("pressed");
                        break;
                    case "s":
                    case "S":
                        rope.classList.remove("pressed");
                        break;
                }
                break;
        }
    });
}

/**
 * Sets the listener for the action of the user while testing
 */
function setMovementTest() {
    console.warn("Testing movement");
    scene.onKeyboardObservable.add((kbInfo) => {
        switch (kbInfo.type) {
            case BABYLON.KeyboardEventTypes.KEYDOWN:
                switch (kbInfo.event.key) {
                    case "A":
                        balloon.pointer.position.x -= 100;
                        break;
                    case "D":
                        balloon.pointer.position.x += 100;
                        break;
                    case "W":
                        balloon.pointer.position.z += 100;
                        break;
                    case "S":
                        balloon.pointer.position.z -= 100;
                        break;
                    case " ":
                        balloon.pointer.position.y += 10;
                        break;
                    case "B":
                        balloon.pointer.position.y -= 10;
                        break;
                    case "a":
                        balloon.pointer.position.x -= 5;
                        break;
                    case "d":
                        balloon.pointer.position.x += 5;
                        break;
                    case "w":
                        balloon.pointer.position.z += 5;
                        break;
                    case "s":
                        balloon.pointer.position.z -= 5;
                        break;
                    case "u":
                        balloon.pointer.position.y += 1;
                        break;
                    case "b":
                        balloon.pointer.position.y -= 1;
                        break;
                    case "N":
                        balloon.pointer.position.y -= 0.1;
                        break;
                    case "I":
                        balloon.pointer.position.y += 0.1;
                    case "n":
                        balloon.pointer.position.y -= 0.01;
                        break;
                    case "i":
                        balloon.pointer.position.y += 0.01;
                        break;
                    case "h":
                        started = true;
                        break;
                }
                break;
        }
    });
}