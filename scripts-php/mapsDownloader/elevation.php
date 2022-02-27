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
    </form>

    <?php

    //Descargar Mapas
    if (!empty($_GET["env"]) && $_GET["env"] == "Descargar") {
        $numFilas = $_GET["n_fil"];
        $numCol = $_GET["n_col"];

        echo "<br>Descargando una malla de " . $numFilas . " x " . $numCol . "<br>";

        for ($i = 0; $i < $numFilas; $i++) {
            for ($j = 0; $j < $numCol; $j++) {
                $fileName = "./downloads/m_" . $i . "_" . $j . ".tif";

                $url = getUrl($i, $j);

                if (file_put_contents($fileName, file_get_contents($url)))
                    echo "File " . $i . " _ " .  $j . " downloaded.<br>";
                else  echo "<style color:red>File " . $i . " _ " .  $j . " failed.</style><br>";
            }
        }
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
        $startLat = 42.757972;
        $startLon = -3.267289;

        $diffX = 0.04117;
        $diffY = 0.030347;

        $latAct = $startLat - $numFilas * $diffY;
        $lonAct = $startLon + $numCol * $diffX;

        $north = $latAct + $diffY / 2;
        $south = $latAct - $diffY / 2;
        $west =  $lonAct - $diffX / 2;
        $east = $lonAct + $diffX / 2;

        echo "<br>Lat" . $latAct;
        echo "<br>Lon" . $lonAct . "<br>";

        return "https://portal.opentopography.org/API/globaldem?demtype=AW3D30&south=" . $south . "&north=" . $north . "&west=" . $west . "&east=" . $east . "&outputFormat=GTiff";
    }

    ?>
</body>

</html>