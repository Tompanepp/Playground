import React, {Component} from 'react';
import {AppRegistry, View} from 'react-native';

class FixedDimensionBasics extends Component{
    render(){
        return(
        <View>
            <View style={{width: 50, height: 50, backgroundColor: 'powderblue'}}></View>
            <View style={{width: 100, height: 100, backgroundColor: 'pink'}}></View>
            <View style={{width: 150, height: 150, backgroundColor: 'red'}}></View>            
        </View>
        );
    }
}

AppRegistry.registerComponent('AwesomeProject', () => FixedDimensionBasics);
