import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { FlightviewComponent } from './flightview/flightview.component';
import { HistoryComponent } from './history/history.component';
import { ParamsComponent } from './params/params.component';
import { SimComponent } from './sim/sim.component';

const routes: Routes = [
  { path: 'sim', component: SimComponent },
  { path: 'params', component: ParamsComponent },
  { path: 'history', component: HistoryComponent },
  { path: 'flight-details/:id', component: FlightviewComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
