import React, { Component } from 'react'
import Taco from './Taco'
import SingleTaco from './SingleTaco'
import styled from 'styled-components'

class TacoList extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    const tacos = this.props.tacos.map( (data) => {
      return <Taco key={data.id} name={data.name}/>
    })

    return(
      <div className="pt-5 pb-5">
      <div className="container">
      <div className="text-center">
      <h2 className="pt-4 pb-4">List of Tacos</h2>
      </div>
      {tacos}
      </div>
      </div>
      )
  }

}

export default TacoList;
