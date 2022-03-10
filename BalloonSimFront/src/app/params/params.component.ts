import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-params',
  templateUrl: './params.component.html',
})
export class ParamsComponent implements OnInit {
  constructor(private router: Router) {}

  ngOnInit(): void {

  }
}
