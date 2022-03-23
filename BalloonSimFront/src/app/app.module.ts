import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { SimComponent } from './sim/sim.component';
import { HistoryComponent } from './history/history.component';
import { FlightviewComponent } from './flightview/flightview.component';

@NgModule({
  declarations: [
    AppComponent,
    SimComponent,
    HistoryComponent,
    FlightviewComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
