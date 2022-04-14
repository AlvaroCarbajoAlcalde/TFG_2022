/**
 * On click burner
 */
function clickQuemador(trigger) {
    trigger.classList.add("pressed");
}

/**
 * UnClick burner
 */
function unClickQuemador(trigger) {
    trigger.classList.remove("pressed");
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
}

/**
 * Clicks both triggers
 */
function clickBurner2() {
    document.getElementsByClassName("trigger")[0].classList.add("pressed");
    document.getElementsByClassName("trigger")[1].classList.add("pressed");
}

/**
 * Unclicks both triggers
 */
function unClickBurner2() {
    document.getElementsByClassName("trigger")[0].classList.remove("pressed");
    document.getElementsByClassName("trigger")[1].classList.remove("pressed");
}

/**
 * Toggles the visibility of the interface
 */
function toggleVisibility(eye) {
    if (eye.classList.contains("closed")) {
        tablet.classList.remove("visibleOff");
        rope.classList.remove("visibleOff");
        altimetro.classList.remove("visibleOff");
        quemador.classList.remove("visibleOff");
        eye.classList.remove("closed");
    } else {
        rope.classList.add("visibleOff");
        tablet.classList.add("visibleOff");
        altimetro.classList.add("visibleOff");
        quemador.classList.add("visibleOff");
        eye.classList.add("closed");
    }
}

/**
 * Listener for the action of the user
 */
function setGasListener() {
    const triggerR = document.getElementById("gatilloDch");
    const triggerL = document.getElementById("gatilloIzq");
    gasListener = setInterval(() => {
        if (triggerL.classList.contains("pressed") && triggerR.classList.contains("pressed")) {
            balloon.temp += 1.23 * 2;
        } else if (triggerL.classList.contains("pressed") || triggerR.classList.contains("pressed")) {
            balloon.temp += 1.23;
        } else if (rope.classList.contains("pressed")) {
            balloon.temp -= 2.73;
        } else {
            if (started) balloon.temp -= 0.42;
        }
    }, 300);
}

/**
 * Sets the listener for the action of the user while testing
 */
function setMovement() {
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