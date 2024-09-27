import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { UserProfileComponent } from './user-profile/user-profile.component'
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, UserProfileComponent, CommonModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'databinding';
  users = [
    {name: "Affan", eligibleStatus: true, age: 23,},
    {name: "Saif", eligibleStatus: false, age: 27,},
    {name: "Rubbas", eligibleStatus: false, age: 25,},
    {name: "Hasnain", eligibleStatus: true, age: 24,}
  ]
}
