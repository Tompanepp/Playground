import React, {Component} from 'react';
import {AppRegistry, Text} from 'react-native';


//Component required a render() method
class HelloWorldApp extends Component {
    //This render must return JSX
    render(){
        return (
            <Text>HelloWorld!</Text> //These are React Native components
        );
    }
}


//Tells React Native that HelloWorldApp is the root of the application
AppRegistry.registerComponent('HelloWorldApp', () => HelloWorldApp);