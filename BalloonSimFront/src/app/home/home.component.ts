import { Component, OnInit } from '@angular/core';
import { GLOBAL } from '../class/global';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
})
export class HomeComponent implements OnInit {

  private slideIndex = 1;

  private readonly SLIDES = {
    "Haro": "../../assets/slider-images/Haro.png",
    "Briones": "../../assets/slider-images/Briones.png",
    "Miranda de Ebro": "../../assets/slider-images/Miranda.png",
    "A gran altura": "../../assets/slider-images/Haro2.png",
    "Ezcaray": "../../assets/slider-images/Ezcaray.png",
    "Haro, río Ebro": "../../assets/slider-images/Haro3.png",
    "Nájera": "../../assets/slider-images/Najera.png",
    "Montes Obarenes": "../../assets/slider-images/Obarenes.png",
    "Pancorbo": "../../assets/slider-images/Pancorbo.png",
    "Peñacerrada": "../../assets/slider-images/Pegnacerrada.png",
    "San Felices": "../../assets/slider-images/SanFelices.png",
    "Santo Domingo de la Calzada": "../../assets/slider-images/SantoDomingo.png",
    "El Toloño": "../../assets/slider-images/Tologno.png",
    "En vuelo": "../../assets/slider-images/Vuelo.png",
  };

  constructor() { }

  /**
   * Method to navigate to the next slide
   * 
   * @param {number} n number of the slide 
   */
  public plusSlides(n: number) {
    this.showSlides((this.slideIndex += n));
  }

  /**
   * Show the slide with the index
   * 
   * @param {number} n number of the slide
   */
  showSlides(n: number) {
    let i;
    let slides = document.getElementsByClassName('mySlides');
    if (n > slides.length) {
      this.slideIndex = 1;
    }
    if (n < 1) {
      this.slideIndex = slides.length;
    }
    for (i = 0; i < slides.length; i++) {
      (<any>slides[i]).style.display = 'none';
    }
    (<any>slides[this.slideIndex - 1]).style.display = 'block';
  }

  ngOnInit(): void {
    this.printSlides();
    this.showSlides(this.slideIndex);
  }

  /**
   * Prints the slides
   */
  private printSlides() {
    const slideContainer = document.getElementsByClassName('slides-here')[0];
    const lenght = Object.keys(this.SLIDES).length + 1;
    for (let i = 1; i < lenght; i++) {
      const key = Object.keys(this.SLIDES)[i - 1];
      const value = Object.values(this.SLIDES)[i - 1];
      slideContainer.appendChild(this.createMySlide(key, value, i, lenght));
    }
  }

  /**
   * Creates a slide
   * 
   * @param {string} key name of the slide
   * @param {string} value image of the slide
   * @param {number} i counter of the slide
   * @param {number} lenght lenght of the slides
   * @returns 
   */
  private createMySlide(key: string, value: string, i: number, lenght: number) {
    const div = document.createElement('div');
    div.className = 'mySlides fade';
    const img = document.createElement('img');
    img.src = value;
    img.style.width = '100%';
    img.alt = 'img';
    const divNumber = document.createElement('div');
    divNumber.className = 'numbertext';
    divNumber.innerHTML = `${i} / ${lenght - 1}`;
    const divText = document.createElement('div');
    divText.className = 'text';
    divText.innerHTML = key;
    div.appendChild(divNumber);
    div.appendChild(img);
    div.appendChild(divText);
    return div;
  }
}
