console.log('Intro to typescript')

let userName: string = "Owais Ahmed Khan";

// console.log(userName);
// console.log(typeof userName);
// console.log(userName.toLowerCase())
// console.log(userName.toUpperCase())

let userAge: number = 25;

// console.log(userAge)

//template literals: backtics``
let userDetails = `User name is ${userName.toUpperCase()} and User age is ${userAge} and User lives in city Karachi`;

// console.log(userDetails)

// Null = 0  True: 1 False: 0
let nullChecker = null;

if(nullChecker){
    console.log('null true huta hai');
}else{
    console.log('null false huta hai');
}


let undefinedChecker = undefined;

if(undefinedChecker){
    console.log('undefined true huta hai');
}else{
    console.log('undefined false huta hai');
}






