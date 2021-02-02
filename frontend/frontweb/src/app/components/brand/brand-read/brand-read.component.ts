import { BrandService } from './../brand.service';
import { Component, OnInit } from '@angular/core';
import { Brand } from '../brand.model';
import { NgxSpinnerService } from 'ngx-spinner';

@Component({
  selector: 'app-brand-read',
  templateUrl: './brand-read.component.html',
  styleUrls: ['./brand-read.component.css']
})
export class BrandReadComponent implements OnInit {

  brands: Brand[]

  constructor(private brandService: BrandService, private spinnerService: NgxSpinnerService) { }

  ngOnInit(): void {
    this.spinnerService.show();
    this.brandService.read().subscribe(brands => {
      this.brands = brands
      this.spinnerService.hide();
    })
  }
}
