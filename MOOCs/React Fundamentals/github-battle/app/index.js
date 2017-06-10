var React = require('react');
var ReactDOM = require('react-dom');
require('./index.css') //to include our custom css when we bundle the code



/*
    Properties:
        state
        lifecycle event(s)
        UI
*/
//Just the component definition
 class App extends React.Component {
    render() {
        return (
            <div> Hello World! </div> //this is JSX, get transpiled to normal JavaScript
        )
    }
 }

//Actaully display on the DON
 ReactDOM.render(<App />, //component to render 
                 document.getElementById('app') //element in the index.html to render the component onto
                );