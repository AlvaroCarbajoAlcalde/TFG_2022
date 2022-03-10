import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ParamsComponent } from './params/params.component';
import { SimComponent } from './sim/sim.component';

const routes: Routes = [
  { path: 'sim', component: SimComponent },
  { path: 'params', component: ParamsComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
