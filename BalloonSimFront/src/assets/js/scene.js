/**
 * Creates the scene
 */
function createScene() {
    canvas = document.createElement("canvas");
    game.innerHTML = "";
    engine = new BABYLON.Engine(canvas, true);
    scene = new BABYLON.Scene(engine);

    setLight();
    setCamera();
    setPointer();
    setSkybox();
    setGround();
    setBalloon();
    setFireEffect();

    if (userControllsAvailable) {
        if (testing) setMovementTest();
        else setMovement();
    }
}

//TODO - Add fire effect
function setFireEffect() {
    // particleSystem = new BABYLON.ParticleSystem("particles", 200);
    // particleSystem.particleTexture = new BABYLON.Texture("../assets/img/fire.png", scene);
    // particleSystem.emitter = pointer;
    // particleSystem.maxSize = 0.01;
    // particleSystem.start();
}

/**
 * Sets the light
 */
function setLight() {
    new BABYLON.HemisphericLight("light", new BABYLON.Vector3(3000, 300, 100), scene);
}

/**
 * Sets the camera
 */
function setCamera() {
    camera = new BABYLON.ArcRotateCamera("Camera", 36.15, 1, 300, BABYLON.Vector3.Zero(), scene);
    //Prevent going under map
    camera.upperBetaLimit = (Math.PI / 2) * 0.95;
    //User controls
    camera.attachControl(canvas, true);
    camera.lowerRadiusLimit = 2;
}

/**
 * Sets the pointer
 */
function setPointer() {
    pointer = BABYLON.MeshBuilder.CreateSphere("sphere", { diameterX: 0.1, diameterY: 0.1, diameterZ: 0.1 });
    pointer.position.y = 3.45;

    const material = new BABYLON.StandardMaterial("pointerMaterial", scene);
    material.alpha = 0;
    pointer.material = material;
}

/**
 * Sets the balloon
 */
function setBalloon() {
    BABYLON.SceneLoader.ImportMesh(null, "../assets/models/", "balloon.glb", scene, () => {
        balloonModel = scene.getMeshByName("hot_air_balloon.1");

        //Scaling
        balloonModel.scaling = new BABYLON.Vector3(balloonScaling, balloonScaling, balloonScaling);

        //Camera target
        camera.setTarget(balloonModel);

        return true;
    });
}

/**
 * Sets the skybox
 */
function setSkybox() {
    skybox = BABYLON.Mesh.CreateBox("skyBox", skyboxSize, scene);
    const skyboxMaterial = new BABYLON.StandardMaterial("skyBox", scene);
    skyboxMaterial.backFaceCulling = false;
    skyboxMaterial.reflectionTexture = new BABYLON.CubeTexture(`../assets/textures/skybox/${selectedSkybox}`, scene);
    skyboxMaterial.reflectionTexture.coordinatesMode = BABYLON.Texture.SKYBOX_MODE;
    skyboxMaterial.disableLighting = true;
    skybox.material = skyboxMaterial;
}

/**
 * Creates the ground map
 */
function setGround() {
    let k = 1;

    for (let i = 0; i < 15; i++) {
        for (let j = 0; j < 15; j++) {
            const positionZ = mapSize * -i - mapSize / 2 + mapTotalSize;
            const positionX = mapSize * j + mapSize / 2;

            //Base Material
            const materialBack = new BABYLON.StandardMaterial("material", scene);
            materialBack.diffuseTexture = new BABYLON.Texture("../assets/textures/backMap.png", scene);
            materialBack.diffuseTexture.wrapU = BABYLON.Texture.CLAMP_ADDRESSMODE;
            materialBack.diffuseTexture.wrapV = BABYLON.Texture.CLAMP_ADDRESSMODE;
            materialBack.specularColor = new BABYLON.Color4(0, 0, 0, 0);

            //Base
            // const baseGround = BABYLON.MeshBuilder.CreateGround(`baseground_${k}`, { height: mapSize, width: mapSize });
            // baseGround.material = materialBack;
            // baseGround.position.x = positionX;
            // baseGround.position.z = positionZ;
            // baseGround.position.y = 14;

            const baseGround = BABYLON.MeshBuilder.CreateGroundFromHeightMap(
                `base_ground_${k}`,
                `../assets/maps/topo/topo_${k}.gif`, {
                    width: mapSize,
                    height: mapSize,
                    subdivisions: 100,
                    maxHeight: 420,
                    minHeight: 0,
                }
            );
            baseGround.material = materialBack;
            baseGround.position.x = positionX;
            baseGround.position.z = positionZ;
            baseGround.position.y = -5;

            //Material
            const materialGMap = new BABYLON.StandardMaterial("material", scene);
            materialGMap.diffuseTexture = new BABYLON.Texture(`../assets/maps/sat/m_${i}_${j}.jpg`, scene);
            materialGMap.diffuseTexture.wrapU = BABYLON.Texture.CLAMP_ADDRESSMODE;
            materialGMap.diffuseTexture.wrapV = BABYLON.Texture.CLAMP_ADDRESSMODE;
            materialGMap.specularColor = new BABYLON.Color4(0, 0, 0, 0);
            materialGMap.alpha = 1.0;

            //Elevation
            const ground = BABYLON.MeshBuilder.CreateGroundFromHeightMap(
                `ground_${k}`,
                `../assets/maps/topo/topo_${k}.gif`, {
                    width: mapSize,
                    height: mapSize,
                    subdivisions: 100,
                    maxHeight: 420,
                    minHeight: 0,
                }
            );
            ground.material = materialGMap;
            ground.position.x = positionX;
            ground.position.z = positionZ;

            //Shows the coliision box of the ground
            if (showCollisions) ground.showBoundingBox = true;

            k++;
        }
    }
}