import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './views/home/home.component';
import { BrandCrudComponent } from './views/brand-crud/brand-crud.component';
import { BrandCreateComponent } from './components/brand/brand-create/brand-create.component';


const routes: Routes = [{
  path: "",
  component: HomeComponent
},
{
  path: "brands",
  component: BrandCrudComponent
},
{
  path: "brands/create",
  component: BrandCreateComponent
}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }