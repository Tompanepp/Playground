var React = require('react');
var NavLink = require('react-router-dom').NavLink;

/*
    only defines the links, you still need to Route those links to Components
    refer to the App component for the actual mapping
*/
function Nav() {
    return (
        <ul className='nav'>
            <li>
                <NavLink exact activeClassName='active' to='/'>
                    Home
                </NavLink>
            </li>
            <li>
                <NavLink activeClassName='active' to='/battle'>
                    Battle
                </NavLink>
            </li>
            <li>
                <NavLink activeClassName='active' to='/popular'>
                    Popular
                </NavLink>
            </li>
        </ul>
    )
}

module.exports = Nav;