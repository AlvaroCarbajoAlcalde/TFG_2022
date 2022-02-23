/**
 * Crea los elementos de la escena
 */
function createScene() {
  canvas = document.createElement("canvas");
  game.innerHTML = "";
  engine = new BABYLON.Engine(canvas, true);
  scene = new BABYLON.Scene(engine);

  //Set elementos
  setLight();
  setCamera();
  setPointer();
  setSkybox();
  setGround();
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
function setPointer() {
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
function setBalloon() {
  BABYLON.SceneLoader.ImportMesh(
    null,
    "../assets/models/",
    "balloon.glb",
    scene,
    () => {
      balloonModel = scene.getMeshByName("hot_air_balloon.1");

      //Scaling
      balloonModel.scaling = new BABYLON.Vector3(
        balloonScaling,
        balloonScaling,
        balloonScaling
      );

      //Camera target
      camera.setTarget(balloonModel);

      return true;
    }
  );
}

/**
 * Skybox
 */
function setSkybox() {
  skybox = BABYLON.Mesh.CreateBox("skyBox", skyboxSize, scene);
  const skyboxMaterial = new BABYLON.StandardMaterial("skyBox", scene);
  skyboxMaterial.backFaceCulling = false;
  skyboxMaterial.reflectionTexture = new BABYLON.CubeTexture(
    `../assets/textures/skybox/${getRandomSkybox()}`,
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
function setGround() {
  //Map
  let k = 1;

  for (let i = 0; i < 15; i++) {
    for (let j = 0; j < 15; j++) {
      const positionZ = mapSize * -i - mapSize / 2 + 7500;
      const positionX = mapSize * j + mapSize / 2;

      //Base Material
      //Usado para evitar en la medida de lo posible efectos
      //de luz bajo juntas de los trozos del mapa
      const materialBack = new BABYLON.StandardMaterial("material", scene);
      materialBack.diffuseTexture = new BABYLON.Texture(
        "../assets/textures/backMap.png",
        scene
      );
      materialBack.diffuseTexture.wrapU = BABYLON.Texture.CLAMP_ADDRESSMODE;
      materialBack.diffuseTexture.wrapV = BABYLON.Texture.CLAMP_ADDRESSMODE;
      materialBack.specularColor = new BABYLON.Color4(0, 0, 0, 0);

      //Base
      const baseGround = BABYLON.MeshBuilder.CreateGround(`baseground_${k}`, {
        height: mapSize,
        width: mapSize,
      });
      baseGround.material = materialBack;
      baseGround.position.x = positionX;
      baseGround.position.z = positionZ;
      baseGround.position.y = 14;

      //Material
      const materialGMap = new BABYLON.StandardMaterial("material", scene);
      materialGMap.diffuseTexture = new BABYLON.Texture(
        `../assets/maps/sat/m_${i}_${j}.jpg`,
        scene
      );
      materialGMap.diffuseTexture.wrapU = BABYLON.Texture.CLAMP_ADDRESSMODE;
      materialGMap.diffuseTexture.wrapV = BABYLON.Texture.CLAMP_ADDRESSMODE;
      materialGMap.specularColor = new BABYLON.Color4(0, 0, 0, 0);
      materialGMap.alpha = 1.0;

      //Elevation
      //Permite calcular la elevacion del terreno a
      //partir de mapas topograficos
      const ground = BABYLON.MeshBuilder.CreateGroundFromHeightMap(
        `ground_${k}`,
        `../assets/maps/topo/topo_${k}.gif`,
        {
          width: mapSize,
          height: mapSize,
          subdivisions: 150,
          maxHeight: 300,
          minHeight: 0,
        }
      );
      ground.material = materialGMap;
      ground.position.x = positionX;
      ground.position.z = positionZ;

      //Accion que se lanza cuando algo colisiona con el suelo
      /*ground.actionManager = new BABYLON.ActionManager(scene);
      ground.actionManager.registerAction(
        new BABYLON.ExecuteCodeAction(
          {
            trigger: BABYLON.ActionManager.OnIntersectionEnterTrigger,
            parameter: pointer,
          },
          () => {
            groundHit();
          }
        )
      );
      ground.showBoundingBox = true;*/

      k++;
    }
  }
}
