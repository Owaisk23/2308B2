console.log('Intro to typescript');
var userName = "Owais Ahmed Khan";
// console.log(userName);
// console.log(typeof userName);
// console.log(userName.toLowerCase())
// console.log(userName.toUpperCase())
var userAge = 25;
// console.log(userAge)
//template literals: backtics``
var userDetails = "User name is ".concat(userName.toUpperCase(), " and User age is ").concat(userAge, " and User lives in city Karachi");
// console.log(userDetails)
// Null = 0  True: 1 False: 0
var nullChecker = null;
if (nullChecker) {
    console.log('null true huta hai');
}
else {
    console.log('null false huta hai');
}
var undefinedChecker = undefined;
if (undefinedChecker) {
    console.log('undefined true huta hai');
}
else {
    console.log('undefined false huta hai');
}
