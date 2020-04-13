import React, { Component } from 'react'
import TacoList from './TacoList'
import IngCategories from './IngCategories'
import IngredientList from './IngredientList'
import styled from 'styled-components'
import axios from 'axios'


class IngredientHome extends Component {
  constructor() {
    super()
    this.state = {
      ingredients: [],
    }

  }

  componentDidMount() {
    axios.get('/ingredients.json')
    .then(data => {
      let res = []
      data.data.data.map( (data) => {
        res.push({id: data.id, name: data.name})
        this.setState({ingredients: res})

      })

    })
    .catch((error) => {
        console.log(error);
      });
  }

  render() {
    return (

    <div>
      <IngredientList ingredients={this.state.ingredients}/>
      </div>
    )
  }
}

export default IngredientHome;

