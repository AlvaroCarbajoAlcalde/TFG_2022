import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { SimComponent } from './sim/sim.component';

const routes: Routes = [{ path: 'sim', component: SimComponent }];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
