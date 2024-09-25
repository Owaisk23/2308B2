import { CommonModule } from '@angular/common';
import { Component, Input } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-user-profile',
  standalone: true,
  imports: [FormsModule, CommonModule],
  templateUrl: './user-profile.component.html',
  styleUrl: './user-profile.component.css'
})
export class UserProfileComponent {
  @Input({alias: "userName"}) name = "";
  // name= "Saif";
  // designation= "Software Developer";
  // salary= 72000;
  // inputVal = "test"
  // users = [
  //   {name: "Affan", eligibleStatus: true, age: 23,},
  //   {name: "Saif", eligibleStatus: false, age: 27,},
  //   {name: "Rubbas", eligibleStatus: false, age: 25,},
  //   {name: "Hasnain", eligibleStatus: true, age: 24,}
  // ]


  // isBtnDisable = true;

  // onChangeFunc(e: Event){
  //   const val = (e.target as HTMLInputElement).value;
  //   this.inputVal = val
  // }
}
