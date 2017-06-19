import React, { Component} from 'react';
import {AppRegistry, View, ListView, Image, Text, Navigator} from 'react-native';

import MyScene from './MyScene';

class YoDawgApp extends Component {
    render(){
        /*
            route = object that contains info about a scene
                provides context to the Navigator renderScene function to render a scene
        */
        return(<Navigator
                    initialRoute={{title: 'My Initial Scence', index:0}}
                    renderScene={(route, navigator) => {
                        return <MyScene title={route.title}/>
                    }}/>
                );
    }
}

AppRegistry.registerComponent('AwesomeProject', () => YoDawgApp);