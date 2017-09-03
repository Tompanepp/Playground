var React = require('react');
var ReactDOM = require('react-dom');
var PropTypes = require('prop-types')

var USER_DATA = {
    name: 'Tyler McGinnis',
    img: 'https://avatars0.githubusercontent.com/u/2933430?v=3&s=460',
    username: 'tylermcginnis'
}

class Badge extends React.Component {
    render() {
        return (
            <div>
                <img src={this.props.user.img} />
                <h1>Name: {this.props.user.name}</h1>
                <h3>username:{this.props.user.username} </h3>
            </div>
        )
    }
}

Badge.protoTypes = {
    user: PropTypes.object
}

ReactDOM.render(
    <Badge user={USER_DATA} />,
    document.getElementById('app')
);