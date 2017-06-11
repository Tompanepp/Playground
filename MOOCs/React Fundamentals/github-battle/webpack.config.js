var path = require('path');
var HtmlWebpackPlugin = require('html-webpack-plugin'); //create index.html in 'dist' folder and include index_bundle in the file html file

module.exports = {
    entry: './app/index.js',
    output: {
        path: path.resolve(__dirname ,'dist'),
        filename: 'index_bundle.js'
    },
    module: {
        rules: [
            /* on execution will look for "babel" property in package.json that describes the transformations, 
            the actual loaders are in the devDependencies: 
                babel-preset-env = transpile to latest version of JavaScript
                babel-preset-react = transpile JSX to regular JavaScript
            */
            { test: /\.(js)$/, use: 'babel-loader' }, 
            /* 
               css-loader - takes "url('')" or imports and converts to require('')                                                          
               style-loader - inserts styles into the page to make them active on the page
            */
            { test: /\.css$/, use: [ 'style-loader', 'css-loader' ]}
        ]
    },
    plugins: [
        new HtmlWebpackPlugin({
            template: 'app/index.html'
        })
    ]
}