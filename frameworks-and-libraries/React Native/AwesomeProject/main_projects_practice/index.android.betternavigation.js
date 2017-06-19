import React, { Component } from 'react';
import { AppRegistry, Navigator } from 'react-native';

import MyScene from './MyScene.betternavigation';

class SimpleNavigationApp extends Component {
    render() {
        return (
            <Navigator
                initialRoute={{ title: 'My Initial Scene', index: 0 }}
                /* Investige why wrapping this lambda in {} breaks the code*/
                renderScene={(route, navigator) =>
                    <MyScene
                        title={route.title}
                        onForward={() => {
                            const nextIndex = route.index + 1;
                            navigator.push({
                                title: 'Scene' + nextIndex,
                                index: nextIndex,
                            });
                        }}
                        onBack={() => {
                            if (route.index > 0) {
                                navigator.pop();
                            }
                        }
                        }
                        />
                } />
        );
    }
}

AppRegistry.registerComponent('AwesomeProject', () => SimpleNavigationApp);
