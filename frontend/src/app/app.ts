import { Component } from '@angular/core';
import { NoticeListComponent } from './notices/notice-list.component';

@Component({
  selector: 'app-root',
  imports: [NoticeListComponent],
  template: `
    <main>
      <h1>Facility Notices</h1>
      <app-notice-list />
    </main>
  `,
  styles: `
    main {
      max-width: 48rem;
      margin: 2rem auto;
      padding: 0 1rem;
      font-family: system-ui, sans-serif;
    }
  `,
})
export class App {}
