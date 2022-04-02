import { Component, OnInit } from '@angular/core';
import { GLOBAL } from '../class/global';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
})
export class HomeComponent implements OnInit {
  private slideIndex = 1;

  constructor() {
    GLOBAL.initGLOBAL();
  }

  //Next/previous controls
  public plusSlides(n: number) {
    this.showSlides((this.slideIndex += n));
  }

  currentSlide(n: number) {
    this.showSlides((this.slideIndex = n));
  }

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
    this.showSlides(this.slideIndex);
  }
}
