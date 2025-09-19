import React from 'react'

const Child2 = ({games}) => {
  return (
    <>
     {games.map((game, index) => (
        <h3 key={index + 1}>{game}</h3>
     ))}
    </>
  )
}

export default Child2
