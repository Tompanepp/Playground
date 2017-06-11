var React = require('react')
var Popular = require('./Popular')
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
            //className is for styling, we can't use 'class' because it;s reserved 
            <div className='container'> 
                <Popular />
            </div> //this is JSX, gets transpiled to normal JavaScript
        )
    }
}

module.exports = App;