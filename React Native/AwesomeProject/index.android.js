import React , { Component } from 'react';
import { AppRegistry, Text, View } from 'react-native';

class Blink extends Component {
    constructor(props){
        super(props); //huh?
        this.state = {showText: true};

        setInterval(() => {this.setState({showText: !this.state.showText})},
                    1000);
    }

    //Executed on every state change?
    render(){
        let display = this.state.showText ? this.props.text : ' '
        return (<Text>{display}</Text>);
    }
}

class BlinkApp extends Component{
    render(){
        return(
            <View>
                <Blink text = 'Prop text being injectd'/>
                <Blink text = 'These prop values are immutable'/>
                <Blink text = 'Prop text being injectd'/>
            </View>
        );
    }
}

class AwesomeProject extends Component {
    render(){
     return(<View> 
                <BlinkApp/>
            </View>);
    }
}

AppRegistry.registerComponent('AwesomeProject', () => AwesomeProject);
