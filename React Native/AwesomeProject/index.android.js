import React, { Component} from 'react';
import {AppRegistry, View, ListView, Image, Text} from 'react-native';

/*
    Displays vertically
             scrolling
             list of changing 
             but similar data
    
*/
class ListViewBasics extends Component {
    constructor(props){
        super(props);
        const ds = new ListView.DataSource({rowHasChanged: (r1, r2) => r1 != r2});
        this.state = {
            dataSource: ds.cloneWithRows(['John', 'Joel', 'James', 'Jimmy', 'Jackson', 'Jillian', 'Julie', 'Devin'])
        }
    };

    render(){
        return(
            <View style={{flex: 1, paddingTop:22}}>
                <ListView
                    dataSource= {this.state.dataSource}
                    renderRow= {(rowData) => <Text>{rowData}</Text>}>
                </ListView>
            </View>
        );
    }
}

AppRegistry.registerComponent('AwesomeProject', () => ListViewBasics);