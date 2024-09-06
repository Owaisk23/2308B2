console.log("Intro to typescript");
// let userName: string = "Owais Ahmed Khan";
// console.log(userName);
// console.log(typeof userName);
// console.log(userName.toLowerCase())
// console.log(userName.toUpperCase())
// let userAge: number = 25;
// console.log(userAge)
//template literals: backtics``
// let userDetails = `User name is ${userName.toUpperCase()} and User age is ${userAge} and User lives in city Karachi`;
// console.log(userDetails)
// Null = 0  True: 1 False: 0
// let nullChecker = null;
// if(nullChecker){
//     console.log('null true huta hai');
// }else{
//     console.log('null false huta hai');
// }
// let undefinedChecker = undefined;
// if(undefinedChecker){
//     console.log('undefined true huta hai');
// }else{
//     console.log('undefined false huta hai');
// }
// Arrays
// let stdMarks: number[] = [55, 88, 95, 100]
// console.log(stdMarks)
// let stdNames: string[] = ["Abdullah", "Neha", "Nimra", "Rubbas", "Sameer", "Saif", "Tayyaba"];
// // console.log(stdNames)
// stdNames.forEach((val)=>{
//     console.log(val)
// })
// let stds = stdNames.map((val)=>{
//     console.log(val)
//     return val.toUpperCase()
// })
// console.log(stds)
// Object
// let product: any = {
//   productName: "IPhone 15 Pro Max",
//   productPrice: 3500,
//   productColor: "Purple",
//   productInStock: true,
// };
// console.log(product);
// console.log(product.productName);
// console.log(product.productColor);
// let user: object = {
//     userName: "Abdullah",
//     userAge: 23,
//     userActive: true
// }
// console.log(user)
// let user: {
//   userName: string;
//   userAge: number;
//   userActive: boolean;
// } = {
//   userName: "Abdullah",
//   userAge: 23,
//   userActive: true,
// };
// console.log(user)
// let mixedDataTypes: (string | number)[];
// mixedDataTypes = ["bmw", "Audi", "Mehran", 23000, 45000, 3200];
// mixedDataTypes.forEach((val) => {
//     // console.log(val)
//     if(typeof val == "string"){
//         console.log(val.toUpperCase())
//     }else{
//         console.log(val.toFixed(2))
//     }
// })
var teacher = {
    name: "Owais",
    exp: 5
};
var obj1 = {
    stdId: 7666,
    stdName: "Saad",
    teacher_Id: 555,
    teacher_Name: "Afzal"
};
console.log(obj1["teacher_Name"]);
console.log(obj1.stdName);
