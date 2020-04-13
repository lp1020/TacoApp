import React, { Component } from 'react'
import styled from 'styled-components'

const IngredientButton = styled.a`
display: inline-block;
text-decoration: none;
font-weight: bold;
font-size: 24px;
color: #000 !important;

`
const Wrapper = styled.div`
&:hover {
    background: #ef5f17;
    cursor: pointer;
  }
`

const Ingredient = (props) => {
  return (
    <div className="row">
    <div className="col-md-10 offset-md-1">
      <div className="text-center">
      <Wrapper className="card px-5">
      <div className="row">
      <div className="col-12">
      <div className="pt-4 pb-4 cta-wrapper">
      <IngredientButton className="btn cta-btn">{props.name}</IngredientButton>
      </div>
      </div>
      </div>
      </Wrapper>

      </div>
    </div>
    </div>
    )
}

export default Ingredient;


