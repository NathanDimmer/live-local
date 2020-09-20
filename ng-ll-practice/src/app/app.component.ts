import { Component, OnInit } from '@angular/core';
import { HttpService } from './http.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
})
export class AppComponent implements OnInit {
  items = [];

  ngOnInit(): void {
    this.getItems();
  }

  constructor(private httpService: HttpService) {}

  getItems() {
    this.httpService.getPosts().subscribe((ret: any[]) => {
      console.log(ret);
    });
  }
}
