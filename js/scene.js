/**
 * Crea los elementos de la escena
 */
function createScene() {
  canvas = document.createElement("canvas");
  game.innerHTML = "";
  game.appendChild(canvas);
  engine = new BABYLON.Engine(canvas, true);
  scene = new BABYLON.Scene(engine);
  setLight();
  setCamera();
  setGround();
  setSkybox();
  setPointer();
  setBalloon();
  if (testing) setMovement();
}

/**
 * Luz de la escena
 */
function setLight() {
  new BABYLON.HemisphericLight(
    "light",
    new BABYLON.Vector3(3000, 300, 100),
    scene
  );
}

/**
 * Camara
 */
function setCamera() {
  camera = new BABYLON.ArcRotateCamera(
    "Camera",
    36.15,
    1,
    300,
    BABYLON.Vector3.Zero(),
    scene
  );
  //Prevent going under map
  camera.upperBetaLimit = (Math.PI / 2) * 0.9;
  //User controls
  camera.attachControl(canvas, true);
}

/**
 * Pointer (Lugar donde se controla el globo)
 */
async function setPointer() {
  pointer = BABYLON.MeshBuilder.CreateSphere("sphere", {
    diameterX: 0.1,
    diameterY: 0.1,
    diameterZ: 0.1,
  });
  pointer.position.y = 3.45;

  const material = new BABYLON.StandardMaterial("pointerMaterial", scene);
  if (!testing) material.alpha = 0;
  pointer.material = material;
}

/**
 * Globo
 */
async function setBalloon() {
  BABYLON.SceneLoader.ImportMesh(
    null,
    "./models/",
    "balloon.glb",
    scene,
    () => {
      balloon = scene.getMeshByName("hot_air_balloon.1");

      //Scaling
      balloon.scaling = new BABYLON.Vector3(
        balloonScaling,
        balloonScaling,
        balloonScaling
      );

      //Camera target
      camera.setTarget(balloon);

      return true;
    }
  );
}

/**
 * Skybox
 */
async function setSkybox() {
  skybox = BABYLON.Mesh.CreateBox("skyBox", skyboxSize, scene);
  const skyboxMaterial = new BABYLON.StandardMaterial("skyBox", scene);
  skyboxMaterial.backFaceCulling = false;
  skyboxMaterial.reflectionTexture = new BABYLON.CubeTexture(
    "./textures/skybox/" + getRandomSkybox(),
    scene
  );
  skyboxMaterial.reflectionTexture.coordinatesMode =
    BABYLON.Texture.SKYBOX_MODE;
  skyboxMaterial.disableLighting = true;
  skybox.material = skyboxMaterial;
}

/**
 * Escoje un cielo aleatorio
 * @return {*} Skybox random
 */
function getRandomSkybox() {
  const ranValues = ["bluecloud", "browncloud", "graycloud", "yellowcloud"];
  const ranNum = Math.floor(Math.random() * ranValues.length);
  return ranValues[ranNum];
}

/**
 * Terreno
 */
async function setGround() {
  //Map
  let k = 1;
  let mapSize = 500;

  for (let i = 0; i < 15; i++) {
    for (let j = 0; j < 15; j++) {
      //Material
      const materialGMap = new BABYLON.StandardMaterial("material", scene);
      materialGMap.diffuseTexture = new BABYLON.Texture(
        "../maps/sat/m_" + i + "_" + j + ".jpg",
        scene
      );
      materialGMap.diffuseTexture.wrapU = BABYLON.Texture.CLAMP_ADDRESSMODE;
      materialGMap.diffuseTexture.wrapV = BABYLON.Texture.CLAMP_ADDRESSMODE;
      materialGMap.specularColor = new BABYLON.Color4(0, 0, 0, 0);
      materialGMap.alpha = 1.0;

      //Base
      const baseGround = BABYLON.MeshBuilder.CreateGround("baseground_" + k, {
        height: mapSize,
        width: mapSize,
      });
      baseGround.material = materialGMap;
      baseGround.position.x = mapSize * j + mapSize / 2;
      baseGround.position.z = mapSize * -i - mapSize / 2;
      baseGround.position.y = 15;

      //Elevation
      const ground = BABYLON.MeshBuilder.CreateGroundFromHeightMap(
        "ground_" + k,
        "./maps/topo/topo_" + k + ".gif",
        {
          width: mapSize,
          height: mapSize,
          subdivisions: 150,
          maxHeight: 300,
          minHeight: 0,
        }
      );
      ground.material = materialGMap;
      ground.position.x = mapSize * j + mapSize / 2;
      ground.position.z = mapSize * -i - mapSize / 2;

      k++;
    }
  }
}

function setMovement() {
  scene.onKeyboardObservable.add((kbInfo) => {
    switch (kbInfo.type) {
      case BABYLON.KeyboardEventTypes.KEYDOWN:
        switch (kbInfo.event.key) {
          case "a":
          case "A":
            pointer.position.x -= 10;
            break;
          case "d":
          case "D":
            pointer.position.x += 10;
            break;
          case "w":
          case "W":
            pointer.position.z += 10;
            break;
          case "s":
          case "S":
            pointer.position.z -= 10;
            break;
          case " ":
            pointer.position.y += 10;
            break;
          case "b":
          case "B":
            pointer.position.y -= 10;
            break;
        }
        break;
    }
  });
}
