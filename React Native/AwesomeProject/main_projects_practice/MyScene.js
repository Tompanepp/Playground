import React, {Component} from 'react';
import { View, Text, Navigator} from 'react-native';

export default class MyScene extends Component {
    /*static getDefaultProps(){
        return {
            title: 'MyScene'
        };
    }*/

    static defaultProps = {title: 'MyScene'}

    render(){
        return(
            <View>
                <Text>Hi! My Name is {this.props.title}.</Text>
            </View>
        );
    }
}