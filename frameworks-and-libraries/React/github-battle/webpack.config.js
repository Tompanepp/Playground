var path = require('path')
var HtmlWebpackPlugin = require('html-webpack-plugin') //create index.html in 'dist' folder and include index_bundle in the file html file
var webpack = require('webpack')

var config = {
    entry: './app/index.js',
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: 'index_bundle.js',
        publicPath: '/' //base path for resources/assets
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
            { test: /\.css$/, use: ['style-loader', 'css-loader'] }
        ]
    },
    devServer: {
        historyApiFallback: true //redirect all '/*' paths to '/' and let ReactRouter route to '/*'
    }
    ,
    plugins: [
        new HtmlWebpackPlugin({
            template: 'app/index.html'
        })
    ]
}

if (process.env.NODE_ENV === 'production') {
    config.plugins.push(
        //set node environment to production
        new webpack.DefinePlugin({
            'process.env': {
                'NODE_ENV': process.env.NODE_ENV
            }
        }),
        new webpack.optimize.UglifyJsPlugin() //minify and optimise JS
    )
}


module.exports = config