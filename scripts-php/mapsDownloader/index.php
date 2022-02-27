<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <form action="" method="get">
        <label for="">Descarga</label><br>
        <input type="number" name="n_fil" placeholder="n Filas"><br>
        <input type="number" name="n_col" placeholder="n Col"><br>
        <input type="submit" name="env" value="Descargar"><br>
        <br>
        <label for="">Calculo de malla</label><br>
        <input type="number" name="S_LAT" placeholder="Top Left Lat" step=any><br>
        <input type="number" name="S_LON" placeholder="Top Left Lon" step=any><br>
        <input type="number" name="E_LAT" placeholder="Bottom Right Lat" step=any><br>
        <input type="number" name="E_LON" placeholder="Bottom Right Lon" step=any><br>
        <input type="submit" name="env" value="Malla">
    </form>

    <?php

    //Descargar Mapas
    if (!empty($_GET["env"]) && $_GET["env"] == "Descargar") {
        $numFilas = $_GET["n_fil"];
        $numCol = $_GET["n_col"];

        echo "<br>Descargando una malla de " . $numFilas . " x " . $numCol . "<br>";

        for ($i = 0; $i < $numFilas; $i++) {
            for ($j = 0; $j < $numCol; $j++) {
                $fileName = "./downloads/m_" . $i . "_" . $j . ".jpg";

                $url = getUrl($i, $j);

                if (file_put_contents($fileName, file_get_contents($url)))
                    echo "File " . $i . " _ " .  $j . " downloaded.<br>";
                else  echo "<style color:red>File " . $i . " _ " .  $j . " failed.</style><br>";
            }
        }
    }

    //Calcular la malla
    if (!empty($_GET["env"]) && $_GET["env"] == "Malla") {
        $s_lat = $_GET["S_LAT"];
        $s_lon = $_GET["S_LON"];
        $e_lat = $_GET["E_LAT"];
        $e_lon = $_GET["E_LON"];

        $diffX = 0.04117;
        $diffY = 0.030347;

        $cont = 0;
        $aux = $s_lat;
        do {
            $cont++;
            $aux -= $diffY; 
        } while ($aux > $e_lat || $cont == 100);

        echo "<br>Filas de la malla: " . $cont . ", llega hasta: " . $aux;

        $cont = 0;
        $aux = $s_lon;
        do {
            $cont++;
            $aux += $diffX; 
        } while ($aux < $e_lon || $cont == 100);

        echo "<br>Columnas de la malla: " . $cont . ", llega hasta: " . $aux;
    }

    /**
     * getUrl
     *
     * @param  mixed $numFilas numero de filas actual
     * @param  mixed $numCol numero de columnas actual
     * @return string peticion a la api
     */
    function getUrl($numFilas, $numCol): string
    {
        $key = "K6DkKCtAhd6t9vIAeGlLmNkSspgsUaW5";

        $startLat = 42.757972;
        $startLon = -3.267289;

        $diffX = 0.04117;
        $diffY = 0.030347;

        $latAct = $startLat - $numFilas * $diffY;
        $lonAct = $startLon + $numCol * $diffX;

        echo "<br>Lat" . $latAct;
        echo "<br>Lon" . $lonAct . "<br>";

        return "https://open.mapquestapi.com/staticmap/v4/getmap?key=" . $key . "&size=1920,1920&zoom=16&center=" . $latAct . "," . $lonAct . "&type=map&scalebar=false";
    }

    ?>
</body>

</html>