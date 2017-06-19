import React, { Component} from 'react';
import {AppRegistry, View, ListView, Image, Text} from 'react-native';

async function getMoviesFromAPI() {
        try
        {        
            let response = await fetch('https://facebook.github.io/react-native/movies.json');
            let responseJSON = await response.json();
            return responseJSON.movies;
        }
        catch(error){
            console.log(error);
        }

}

class NetworkingBasics extends Component {
        constructor(props){
        super(props);
        const ds = new ListView.DataSource({rowHasChanged: (r1, r2) => r1 != r2});
        let movies = getMoviesFromAPI()
        this.state = {
            dataSource: ds.cloneWithRows({movies})
        }
    };

    render(){
        let data = getMoviesFromAPI()
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

AppRegistry.registerComponent('AwesomeProject', () => NetworkingBasics);