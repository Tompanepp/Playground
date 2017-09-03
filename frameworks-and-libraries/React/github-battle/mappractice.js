var React = require('react');
var ReactDOM = require('react-dom');

class Users extends React.Component {
    render() {
        return (
            <ul>
                {/*Create an <li> for every name in the list array*/
                    //note that  st.map((x) => <li> x</li>) does not work, you neeed to wrap the x in an expression

                    this.props.list.map((x) => <li> {x} </li>)
                }
            </ul>
        )
    }
}

ReactDOM.render(
    <Users list={['Tyler', 'Mikenzi', 'Ryan', 'Michael']} />,
    document.getElementById('app')
);