import MyName from "./components/MyName"
import Navbar from "./components/Navbar"
import KidsImg from "./assets/kids.jpg";

function App() {

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


  return (
    <>
      <Navbar/>
      <h1 className="heading bg-success">Hello In React</h1>

      {/* <h2>{userData[1].name}</h2>
      <h2>{userData[2].gender}</h2>
      <h2>{userData[3].name}</h2> */}

      {/* <MyName name={"Hasnain"} gender={"Male"}/>
      <MyName name={"Neha"} gender={"Female"}/>
      <MyName name={"Mahnoor"} gender={"Female"}/>
      <MyName name={"Fahad"} gender={"Male"}/> */}

      {
        userData.map((item, index) => {
          return <MyName key={index} name={item.name} gender={item.gender}/>
        })
      }


      <img src={KidsImg} alt="" />
    </>
  )
}

export default App
