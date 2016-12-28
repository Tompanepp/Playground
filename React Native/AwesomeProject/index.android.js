import React, { Component} from 'react';
import {AppRegistry, View, ListView, Image, Text, Navigator} from 'react-native';

import MyScene from './MyScene';

class SimpleNavigationApp extends Component {
    render(){
        /*
            route = object that contains info about a scene
                provides context to the Navigator renderScene function to render a scene
        */
        return(<Navigator
                    initialRoute={{title: 'My Initial Scence', index:0}}
                    renderScene={(route, navigator) => {
                    <MyScene 
                        title={route.title}
                        onForward={() => {
                                const nextIndex = route.index + 1;
                                navigator.push({
                                    title: 'Scence' + nextIndex,
                                    index: nextIndex
                                });
                            }
                        }
                        onBack={() => {
                                if(route.index > 0){
                                    navigator.pop();
                                }
                            }
                        }
                      />
                    }}/>
                );
    }
}

AppRegistry.registerComponent('AwesomeProject', () => SimpleNavigationApp);