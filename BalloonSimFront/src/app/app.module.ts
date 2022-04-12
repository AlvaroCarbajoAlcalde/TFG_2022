import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { SimComponent } from './sim/sim.component';
import { HistoryComponent } from './history/history.component';
import { FlightviewComponent } from './flightview/flightview.component';
import { HomeComponent } from './home/home.component';
import { ParamsComponent } from './params/params.component';

@NgModule({
  declarations: [
    AppComponent,
    ParamsComponent,
    SimComponent,
    HistoryComponent,
    FlightviewComponent,
    HomeComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
