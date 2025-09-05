import React from "react";
import { useEffect } from "react";
import { useState } from "react";

const ApiFetch = () => {
    //useState
  const [count, setCount] = useState(0);

    //useEffect
  useEffect(()=>{
    console.log("Component Mounted")
    getProducts();
  },[])

  //functions
  const getProducts = async () => {
    try {
      const response = await fetch("https://fakestoreapi.com/products");
      const data = await response.json();
      console.log(data);
    } catch (error) {
      console.log("Error fetching products:", error);
    }
  };

  return (
    <>
      <h1>API Fetch</h1>
      <button
        className="btn btn-primary"
        onClick={() => {
          setCount(count + 1);
        }}
      >
        Increment({count})
      </button>
    </>
  );
};

export default ApiFetch;
