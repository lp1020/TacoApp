import React, { Component } from 'react'
import TacoCategories from './TacoCategories'
import TacoList from './TacoList'
import styled from 'styled-components'
import axios from 'axios'





class Home extends Component {
  constructor() {
    super()
    this.state = {
      tacos: [],
    }
  }


  componentDidMount() {
    axios.get('/tacos.json')
    .then(data => {
      let res = []
      data.data.data.map( (data) => {
        res.push({id: data.id, name: data.name})
        this.setState({tacos: res})
      })
    })
    .catch((error) => {
        console.log(error);
      });
  }


  render() {
    return (
    <div>
      <TacoList tacos={this.state.tacos}/>
    </div>
      )
  }
}

export default Home;
