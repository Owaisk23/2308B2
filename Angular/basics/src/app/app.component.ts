import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { FirstcomponentComponent } from './firstcomponent/firstcomponent.component';
import { NavbarComponent } from './navbar/navbar.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, FirstcomponentComponent, NavbarComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'basics';
}
