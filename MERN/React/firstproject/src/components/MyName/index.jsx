import React from "react";
// import "./index.css"
import styles from './MyName.module.css'

const MyName = (props) => {
  return (
    <>
      {/* <h1 className="heading">User Name is {props.name}.</h1> */}
      <h1 className={`${styles.heading} bg-danger`}>User Name is {props.name}.</h1>
      <h2>User Gender is {props.gender}.</h2>
    </>
  );
};

export default MyName;