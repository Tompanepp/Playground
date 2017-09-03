var React = require('react');
var ReactDOM = require('react-dom');
var PropTypes = require('prop-types')

class Users extends React.Component {
    render() {
        // you can declare variables here
        var friends = this.props.list.filter((x) => x.friend)

        //<li key={'some key'}>: this enables React to intelligiently knowwhich list items have changed.
        //Note: Assuming x.name is unique in this example
        return (
            <div>
                <h1>Friends</h1>
                <ul>
                    {/*Create an <li> for every name in the list array who is also your friend*/
                        this.props.list.filter((x) => x.friend)
                            .map((x) => <li key={x.name}> {x.name} </li>)
                    }
                </ul>

                <hr />

                <h1> Non Friends </h1>
                <ul>
                    {/*Create an <li> for every name in the list array who is NOT your friend*/
                        this.props.list.filter((x) => !x.friend)
                            .map((x) => <li key={x.name}> {x.name} </li>)
                    }
                </ul>
            </div>
        )
    }
}

Users.propTypes = {
    list: PropTypes.arrayOf(PropTypes.shape({
        name: PropTypes.string.isRequired,
        friend: PropTypes.string.isRequired
    }))
}

ReactDOM.render(
    <Users list={[
        { name: 'Tyler', friend: true },
        { name: 'Ryan', friend: true },
        { name: 'Michael', friend: false },
        { name: 'Mikenzi', friend: false },
        { name: 'Jessica', friend: true },
        { name: 'Dan', friend: false }]}
    />,
    document.getElementById('app')
);