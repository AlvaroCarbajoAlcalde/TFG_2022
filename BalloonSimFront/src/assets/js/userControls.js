/**
 * clickQuemador
 * quemador presionado
 */
function clickQuemador(trigger) {
  trigger.classList.add("pressed");
}

/**
 * unClickQuemador
 * quemador ya no esta presionado
 */
function unClickQuemador(trigger) {
  trigger.classList.remove("pressed");
}

/**
 * toggleVisibility
 * oculta o muestra la interfaz
 */
function toggleVisibility(eye) {
  if (eye.classList.contains("closed")) {
    tablet.classList.remove("visibleOff");
    altimetro.classList.remove("visibleOff");
    quemador.classList.remove("visibleOff");
    eye.classList.remove("closed");
  } else {
    tablet.classList.add("visibleOff");
    altimetro.classList.add("visibleOff");
    quemador.classList.add("visibleOff");
    eye.classList.add("closed");
  }
}

/**
 * setGasListener
 * Timer que controla la temperatura del globo
 */
function setGasListener() {
  const triggerR = $("#gatilloDch")[0];
  const triggerL = $("#gatilloIzq")[0];
  gasListener = setInterval(() => {
    if (
      triggerL.classList.contains("pressed") ||
      triggerR.classList.contains("pressed")
    ) {
      balloon.temp += 1.23;
    } else {
      if (started) balloon.temp -= 0.42;
    }
  }, 300);
}

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
