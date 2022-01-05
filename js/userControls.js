function toggleTablet() {
  if (tablet.classList.contains("out")) {
    tablet.classList.remove("out");
  } else {
    tablet.classList.add("out");
  }
}

function setMovement() {
  scene.onKeyboardObservable.add((kbInfo) => {
    switch (kbInfo.type) {
      case BABYLON.KeyboardEventTypes.KEYDOWN:
        switch (kbInfo.event.key) {
          case "A":
            pointer.position.x -= 100;
            break;
          case "D":
            pointer.position.x += 100;
            break;
          case "W":
            pointer.position.z += 100;
            break;
          case "S":
            pointer.position.z -= 100;
            break;
          case " ":
            pointer.position.y += 10;
            break;
          case "B":
            pointer.position.y -= 10;
            break;
          case "a":
            pointer.position.x -= 5;
            break;
          case "d":
            pointer.position.x += 5;
            break;
          case "w":
            pointer.position.z += 5;
            break;
          case "s":
            pointer.position.z -= 5;
            break;
          case "u":
            pointer.position.y += 1;
            break;
          case "b":
            pointer.position.y -= 1;
            break;
        }
        break;
    }
  });
}
