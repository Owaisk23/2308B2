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


let teacher: {name: string, exp: number } = {
    name: "Owais",
    exp: 5
}
 
// // Aliased Object Type 
// type Student = {
//     name: string,
//     age?: number
// }

// let stds: Student = {
//     name:"Wajeeha",
//     age: 23
// }
// console.log(stds["name"])
// console.log(stds.age)

// Interfaces

// interface Manager {
//     name: string,
//     salary?: number
// }

// let storeManager: Manager = {
//     name: "Hassan",
//     salary: 450000
// }

// Intersection types

// interface Teacher {
//     teacher_Id: number,
//     teacher_Name: string
// }

// interface Student {
//     stdId: number,
//     stdName: string
// }

// type intersected_types = Teacher & Student;

// let obj1: intersected_types = {
//     stdId: 7666,
//     stdName: "Saad",
//     teacher_Id: 555,
//     teacher_Name: "Afzal"
// }

// console.log(obj1["teacher_Name"])
// console.log(obj1.stdName)


// Tuple types have advantages that you can accurately describe the type of an array

var tuple: [number, string] = [1, "Bob"];
var scndElement = tuple[1]
// console.log(scndElement)
console.log(tuple[1])

// In JS
const failingResponse = ["Non Found", 404]
//  In TS
const passingResponse: [string, number] = ["{}", 200]

if(passingResponse[1] === 200){
    const localInfo = JSON.parse(passingResponse[0])
    console.log(localInfo)
}


type staffAccount = [number, string, string, string?]

const staff: staffAccount[] = [
    [0, "Hassan", "hassan@gmail.com", "CAH"],
    [1, "Ali", "ali@gmail.com"],
    [2, "Saad", "saad@gmail.com"],
    [3, "Wajeeha", "wajeeha@gmail.com"]
];

type PaySTubs = [staffAccount, ...number[]];

const payStubs: PaySTubs[] = [
    [staff[0], 300],
    [staff[1], 250, 300],
    [staff[2], 300, 400, 250],
];

const monthOnePayments = payStubs[0][1] + payStubs[1][1] + payStubs[2][1]
const monthTwoPayments = payStubs[1][2] + payStubs[2][2];
const monthThreePayments = payStubs[2][2];

console.log(monthOnePayments)
console.log(monthTwoPayments)
console.log(monthThreePayments)






