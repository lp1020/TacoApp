import React, {Component} from 'react';
import axios from 'axios';


class SingleTaco extends Component {
  constructor(props) {
    super(props);
    this.state = {
      isBeingEdited: false,
      taco: {},
      tacoDataReceived: false,

      id: this.props.match.params.id,
    }
  }

  componentDidMount() {
    axios.get(`/tacos/${this.id}.json`)
      .then(res => {
        this.setState(prevState => {
          console.log(res.data)
          return {
            taco: res.data,
            tacoDataReceived: true,
          }
      })
    })
  }



  renderTaco() {
    console.log(this.props.data.id);
    if (this.state.tacoDataReceived) {
      return (
        <div>
        <div className="single-taco-render">
        <span className="name"><div className="info">Name: </div>{this.state.taco.name}</span>
        </div>
        </div>
        )
    } else return 'Loading...';
  }

  render() {
    return (
      <div className="single-taco">
        {this.renderTaco()}

      </div>
      )
  }
}


export default SingleTaco;
