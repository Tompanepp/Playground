import React, { Component} from 'react';
import {AppRegistry, View} from 'react-native';

class JustifyContentBasics extends Component {
    render() {
        return(
            <View style={{flex: 1, 
                          flexDirection: 'column',
                          justifyContent: 'space-between' //Available options = flex-start, center, flex-end, space-around, and space-between.
                          }}>
                <View style={{flex: 1, backgroundColor: 'powderblue'}}/>
                <View style={{flex: 2, backgroundColor: 'skyblue'}}/>        
                <View style={{flex: 3, backgroundColor: 'red'}}/>                                 
            </View>
        );
    }
};

AppRegistry.registerComponent('AwesomeProject', () => JustifyContentBasics);