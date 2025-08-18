import React from "react";

const MyName = (props) => {
  return (
    <>
      <h1>User Name is {props.name}.</h1>
      <h2>User Gender is {props.gender}.</h2>
    </>
  );
};

export default MyName;