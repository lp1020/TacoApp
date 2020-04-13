import React, { Component } from 'react'
import styled from 'styled-components'
import {Link} from 'react-router-dom';


const H1 = styled.h1 `
font-weight: 700;
font-size: 52px;
background: -webkit-linear-gradient(left, red , yellow);
   background: -o-linear-gradient(right, red, yellow);
   background: -moz-linear-gradient(right, red, yellow);
   background: linear-gradient(to right, red , yellow);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
`

const NavText = styled.li`

  list-style-type: none;
  padding-right: 20px;
  font-weight: 700;

  `

const Header = () => {
  return (
   <div className="header-section">
      <div className="container">
        <div className="row">
          <div className="col-12">
          <div className="pt-4 mt-4">
          <H1 className="page-title">Tasty Taco Builder</H1>
          <div className="col-12">
          <ul className="nav-links">
          <NavText className="nav-text float-right"><Link to='/ingredients'>Ingredients</Link></NavText>
          <NavText className="nav-text float-right"><Link to='/'>Tacos</Link></NavText>
          </ul>
          </div>
          </div>
          </div>

        </div>
      </div>
    </div>
    )

}

export default Header
