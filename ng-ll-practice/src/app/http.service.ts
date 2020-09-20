import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class HttpService {
  private postsUrl = 'https://local-lifestyle.uc.r.appspot.com/posts/all';

  constructor(private http: HttpClient) {}

  getPosts() {
    return this.http.get(this.postsUrl);
  }
}
