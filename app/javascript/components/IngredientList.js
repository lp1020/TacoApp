import React, { Component } from 'react'
import Ingredient from './Ingredient'
import styled from 'styled-components'

class IngredientList extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    const ingredients = this.props.ingredients.map((data) => {
      return <Ingredient key={data.id} name={data.name}/>
    })

    return(
      <div className="pt-5 pb-5">
      <div className="container">
      <div className="text-center">
      <h2 className="pt-4 pb-4">List of Ingredients</h2>
      </div>
      {ingredients}
      </div>

      </div>
      )

  }

}

export default IngredientList;
