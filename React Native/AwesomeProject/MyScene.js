import React, {Component} from 'react';
import { View, Text, Navigator} from 'react-native';

export default class MyScene extends Component {
    render(){
        return(
            <View>
                <Text>Current Scene: {this.props.title}.</Text>
                <TouchableHighlight onPress={this.props.onFoward}>
                    <Text>Tap me to load the next scene</Text>
                </TouchableHighlight>

                <TouchableHighlight onPress={this.props.onBack}>
                    <Text>Tap me to go back</Text>
                </TouchableHighlight>
            </View>
        );
    }
}