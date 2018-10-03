import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class BackService {

  apiUrl = environment.backApiUrl;

  constructor(private http: HttpClient) { }

  testConnexion() {
    const url = this.apiUrl + '/testdb';

    console.log('testConnexion apiUrl: ', url);
    this.http.get(url).subscribe(
      (res: any) => {
        console.log(res.data);
      },
      (err) => {
        console.log(err.error.message);
      }
    );
  }
}
