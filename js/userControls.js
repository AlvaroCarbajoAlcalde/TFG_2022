/**
 * toggleTablet
 * muestra u oculta la tablet
 */
function toggleTablet() {
  if (tablet.classList.contains("out")) {
    tablet.classList.remove("out");
  } else {
    tablet.classList.add("out");
  }
}

/**
 * toggleAltimetro
 * muestra u oculta el altimetro
 */
function toggleAltimetro() {
  if (altimetro.classList.contains("out")) {
    altimetro.classList.remove("out");
  } else {
    altimetro.classList.add("out");
  }
}

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
      balloon.temp += 0.83;
    } else {
      if(started) balloon.temp -= 0.16;
    }
  }, 300);
}

function setMovement() {
  scene.onKeyboardObservable.add((kbInfo) => {
    switch (kbInfo.type) {
      case BABYLON.KeyboardEventTypes.KEYDOWN:
        switch (kbInfo.event.key) {
          case "A":
            mX -= 100;
            break;
          case "D":
            mX += 100;
            break;
          case "W":
            mZ += 100;
            break;
          case "S":
            mZ -= 100;
            break;
          case " ":
            altura += 10;
            break;
          case "B":
            altura -= 10;
            break;
          case "a":
            mX -= 5;
            break;
          case "d":
            mX += 5;
            break;
          case "w":
            mZ += 5;
            break;
          case "s":
            mZ -= 5;
            break;
          case "u":
            altura += 1;
            break;
          case "b":
            altura -= 1;
            break;
          case "h":
            started = true;
            break;
        }
        break;
    }
  });
}
