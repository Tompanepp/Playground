var React = require('react');
var ReactDOM = require('react-dom');
require('./index.css') //to include our custom css when we bundle the code
var App = require('./components/App')

//Actaully display on the DON
 ReactDOM.render(<App />, //component to render 
                 document.getElementById('app') //element in the index.html to render the component onto
                );