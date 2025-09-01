import MyName from "./components/MyName"
import Navbar from "./components/Navbar"
import KidsImg from "./assets/kids.jpg";
import Card from "./components/Card";
import Footer from "./components/Footer";
import { useState } from "react";
import Bulb from "./components/Bulb";

function App() {

  // let count = 0;
  //useState
  const [count, setCount] = useState(0);
  const [user, setUser] = useState({
    name: "Haris Naseer",
    age: 25,
    prfession: "Software Developer"
  })

  let userData = [
    {
      name: "Hasnain",
      gender: "Male"
    },
    {
      name: "Neha",
      gender: "Female"
    },
    {
      name: "Mahnoor",
      gender: "Female"
    },
    {
      name: "Fahad",
      gender: "Male"
    },
    {
      name: "Rubbas Yar",
      gender: "Male"
    },
    {
      name: "Faizan",
      gender: "Male"
    }
  ];

  let cardData = [
    {
      image:
        "https://fastly.picsum.photos/id/133/200/300.jpg?hmac=eJnFxvIwHgkkHHPb2ppK_QqUG4mmom1XpVG0MLQcdTE",
      title: "Random Image",
      description: "This is a random img description",
    },
    {
      image: "https://fastly.picsum.photos/id/133/200/300.jpg?hmac=eJnFxvIwHgkkHHPb2ppK_QqUG4mmom1XpVG0MLQcdTE",
      title: "Car Image",
      description: "This is a random img description",
    },
    {
      image:
      "https://fastly.picsum.photos/id/133/200/300.jpg?hmac=eJnFxvIwHgkkHHPb2ppK_QqUG4mmom1XpVG0MLQcdTE",
      title: "Juice Image",
      description: "This is a random img description",
    },
    {
      image:
        "https://fastly.picsum.photos/id/431/200/304.jpg?hmac=gIcmEH2eY9G8u2YKE1oieHLVS9oPPMccM7KykLQM8q0",
      title: "Tea Image",
      description: "This is a random img description",
    },
  ];

  // function handleIncrementCount(){
  //   count++;
  //   console.log(count);
  // }

  const handleIncrementCount = () => {
    setCount(count + 1);
    console.log(count)
  }

  const updateUser = () => {
    setUser({...user, name: "Owais Ahmed Khan"});
  }


  return (
    <>
      <Navbar/>
      <h1 className="heading bg-success">Hello In React</h1>

      {/* Use State start */}
      <h2>{count}</h2>
      {/* <button className="btn btn-primary" onClick={() => {setCount(count + 1)}}>Increment</button> */}
      <button className="btn btn-primary" onClick={handleIncrementCount}>Increment</button>

      <h2>User Name: {user.name} User Age: {user.age} User Profession: {user.prfession}</h2>
      <button className="btn btn-warning" onClick={updateUser}>Update User</button>

      <Bulb/>

      {/* Use State end */}


      {/* <h2>{userData[1].name}</h2>
      <h2>{userData[2].gender}</h2>
      <h2>{userData[3].name}</h2> */}

      {/* <MyName name={"Hasnain"} gender={"Male"}/>
      <MyName name={"Neha"} gender={"Female"}/>
      <MyName name={"Mahnoor"} gender={"Female"}/>
      <MyName name={"Fahad"} gender={"Male"}/> */}

      {/* {
        userData.map((item, index) => {
          return <MyName key={index} name={item.name} gender={item.gender}/>
        })
      } */}

       {/* <div className="d-flex justify-content-around mt-3">
       {
          cardData.map((item, index) => {
          return <Card key={index} image={item.image} title={item.title} description={item.description} />
            })
        }
       </div>
      <img src={KidsImg} alt="" /> */}

      <Footer/>
    </>
  )
}

export default App
