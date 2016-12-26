
import React, { Component } from 'react';
import {AppRegistry,Text,View } from 'react-native';

class Greeting extends Component {
    render(){
        return (<Text> Hello {this.props.name} </Text>);
    }
}

class ListOfGreetings extends Component{
    render(){
        return(
            /*
              Your own Components can be used like natives, very cool!
              Adding a the prop name to Greeting.
              Props are immutable (For changing data we use State)
            */
            <View>
                <Greeting name = 'Cap'/>
                <Greeting name = 'Praise'/>
                <Greeting name = 'Nape'/>                                
            </View>
        );
    }
}

class AwesomeProject extends Component {
    render(){
     return(<View> 
                <ListOfGreetings/>
            </View>);
    }
}

AppRegistry.registerComponent('AwesomeProject', () => AwesomeProject);
