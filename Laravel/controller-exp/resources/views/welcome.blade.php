<h1>Home Page</h1>
<h3>User name is {{$username}} and user skills are {{$userage}}</h3>

@php 
    $salary = 40000;
    $address = "North Nazimabad Block N";
@endphp

@if(11>2)
<h2>User salary is {{$salary}} & user address is {{$address}}</h2>
@endif