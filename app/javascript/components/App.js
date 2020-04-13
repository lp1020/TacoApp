import React, { Component } from 'react';
import {Route, Redirect, Switch} from 'react-router-dom';
import SingleTaco from './SingleTaco';
import Home from './Home';
import IngredientHome from './IngredientHome';
import Header from './Header';
import styled from 'styled-components';

const Body = styled.div`
  background-color: #f0f0f0;
  min-height: 1000px;
  `


class App extends Component {
  render() {
    return(
      <Body className = "body-div">
        <Header />

        <main>
          <Switch>
             <Route exact path='/' component={Home} />
             <Route exact path='/ingredients' component={IngredientHome} />
              <Route exact path='/tacos/:id' component={SingleTaco} />
            <Redirect to='/'/>
          </Switch>
        </main>

      </Body>
    )
  }
}

export default App;
