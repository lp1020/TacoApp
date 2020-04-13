import React, { Component } from 'react'
import styled from 'styled-components'

const Button = styled.a`
display: inline-block;
text-decoration: none;
font-weight: bold;
font-size: 15px;
cursor: pointer;
border-radius: 0;
background: #fff;
color: #000 !important;
box-shadow: 0px 0px 3px #473228,
  -6px 6px #ef5f17,
  -6px 6px 0px 3px #473228;
`

class TacoCategories extends Component {
  constructor() {
    super()

    this.state = {

    }
  }

  render() {
    return (
      <div className="container">
        <div className="row pt-4 mt-4">
        <div className="col-12">
        <h2 className="text-center pb-4">Filter tacos by category:</h2>
        </div>
          <div className="col-1">
          </div>
          <div className="col-2">
          <div className="cta-wrapper">
          <Button className="btn fancy-btn">Beef</Button>
          </div>
          </div>

          <div className="col-2">
          <div className="cta-wrapper">
          <Button className="btn fancy-btn">Chicken</Button>
          </div>
          </div>
          <div className="col-2">
          <div className="cta-wrapper">
          <Button className="btn fancy-btn">Fish</Button>
          </div>
          </div>
          <div className="col-2">
          <div className="cta-wrapper">
          <Button className="btn fancy-btn">Pork</Button>
          </div>
          </div>
          <div className="col-2">
          <div className="cta-wrapper">
          <Button className="btn fancy-btn">Veggie Burger</Button>
          </div>
          </div>
          <div className="col-1">
          </div>
          </div>
          </div>
      )
  }
}

export default TacoCategories;
