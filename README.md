# BalloonSimulator

Proyecto realizado por Álvaro Carbajo Alcalde en el año 2022.<br>
TFG-2022 Desarrollo de Aplicaciones Web.

# Capturas

![cap1](https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/screenshots/sc1.PNG)
![cap2](https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/screenshots/sc3.PNG)
![cap3](https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/screenshots/sc2.PNG)

# Capturas

<details>
  <summary>The title of the image group</summary><details>
  <img src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/screenshots/sc1.PNG" name="image-name">
  <img src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/screenshots/sc3.PNG" name="image-name">
  <img src="https://github.com/AlvaroCarbajoAlcalde/TFG_2022/blob/main/screenshots/sc2.PNG" name="image-name">
</details>

<script>
var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides((slideIndex += n));
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides((slideIndex = n));
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  if (n > slides.length) {
    slideIndex = 1;
  }
  if (n < 1) {
    slideIndex = slides.length;
  }
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slides[slideIndex - 1].style.display = "flex";
}

</script>

<style>
/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: #dfd8c8;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
  background-color: #292929;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  filter: brightness(2);
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1s;
  animation-name: fade;
  animation-duration: 1s;
}

@-webkit-keyframes fade {
  from {
    opacity: 0.5;
  }
  to {
    opacity: 1;
  }
}

@keyframes fade {
  from {
    opacity: 0.5;
  }
  to {
    opacity: 1;
  }
}
</style>
