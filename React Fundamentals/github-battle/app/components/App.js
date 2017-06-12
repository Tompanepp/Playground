var React = require('react')
var Popular = require('./Popular')
var ReactRouter = require('react-router-dom')
var Router = ReactRouter.BrowserRouter
var Route = ReactRouter.Route
var Switch = ReactRouter.Switch
var Nav = require('./Nav')
var Home = require('./Home')
var Battle = require('./Battle')

/*
    Properties:
        state
        lifecycle event(s)
        UI
*/
//Just the component definition
//className is for styling, we can't use 'class' because it;s reserved 
//this is JSX, gets transpiled to normal JavaScript
//<Switch>: switch match over the paths, if none is matched then render the 'defult' one = 'Not Found'
//exact match exactly that path
class App extends React.Component {
    render() {
        return (
            <Router>
                <div className='container'>
                    <Nav />
                    <Switch>
                        <Route exact path='/' component={Home} />
                        <Route path='/popular' component={Popular} />
                        <Route exact path='/battle' component={Battle} />
                        <Route render={() => <p>Not Found</p>} />
                    </Switch>
                </div>
            </Router>
        )
    }
}

module.exports = App;