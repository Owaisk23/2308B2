import React from 'react'

const Child1 = ({games, setgames}) => {

  let addGame = () => {
    let newgame = document.getElementById("newgame").value;
    setgames([...games, newgame]);
  }

  return (
    <div>
      <input type="text" placeholder='Enter Game' id="newgame" />
      <button className='btn btn-warning' onClick={addGame}>Add Game</button>
    </div>
  )
}

export default Child1
