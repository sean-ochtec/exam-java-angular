import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';

@Injectable({ providedIn: 'root' })
export class NoticeService {
  private readonly http = inject(HttpClient);

  // TODO
}
