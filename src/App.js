import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  constructor() {
    super();
    this.state = {
      firstLoaded: true,
      hiddenText: false
    }
    this.handleStartBtnOnClick = this.handleStartBtnOnClick.bind(this);
  }

  componentDidMount() {
    this.state.nodeVersion = '10.2.0';//process.versions.node;
    this.state.chromeVersion = '66.0';//process.versions.chrome;
    this.state.electronVersion = '3.0.3';//process.versions.electron;
    // setTimeout(() => {
    //   this.setState({ hiddenText: true });
    // }, 1500);
    // setTimeout(() => {
    //   this.setState({ firstLoaded: false });
    // }, 2000);
  }


  handleStartBtnOnClick() {
    this.setState({ firstLoaded: false });
    console.log(this.state.firstLoaded);
  }

  render() {
    return (
      <div className="App">
        {this.state.firstLoaded &&
          <header className="App-header">
            <img src={logo} className="App-logo" alt="logo" />
            {
              !this.state.hiddenText && <h1>Welcome to use blog editor</h1>
            }
            {
              /* We are using Node.js {this.state.nodeVersion}, Chromium {this.state.chromeVersion}, and Electron {this.state.electronVersion}. */
              <button className="App-link"
                onClick={this.handleStartBtnOnClick}
                target="_blank"
                rel="noopener noreferrer">Get Start</button>
            }
          </header>
        }
        {!this.state.firstLoaded &&
          <div className='content-header'>
            <div className="header-editor">
              <img src={logo} className="logo-editor" alt="logo" />
              <text>Blog Editor</text>
            </div>
            <div className='content-body'>
              title: <input></input>
              <input></input>
              <input></input>
              <input></input>
              <input></input>

              <button className="App-link"
                onClick={this.handleStartBtnOnClick}
                target="_blank"
                rel="noopener noreferrer">Generate Blog File</button>
            </div>
          </div>
        }
      </div>
    );
  }
}

export default App;
