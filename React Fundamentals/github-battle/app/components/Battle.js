var React = require('react')
var PropTypes = require('prop-types')
var Link = require('react-router-dom').Link



function PlayerPreview(props) {
    return (
        <div>
            <div className='column'>
                <img
                    className='avatar'
                    src={props.avatar}
                    alt={'Avatar for ' + props.username}
                />
                <h2 className='username'>@{props.username}></h2>
                <button
                    className='reset'
                    onClick={props.onReset.bind(null, props.id)}>
                    Reset
                </button>
            </div>
        </div>
    )
}

PlayerPreview.propTypes = {
    avatar: PropTypes.string.isRequired,
    username: PropTypes.string.isRequired,
    id: PropTypes.string.isRequired,
    onReset: PropTypes.func.isRequired
}

/*
    note: input fields are bound to the state (note: state is NOT bound to input fields)
    i.e. When the STATE changes, we update the UI (not the other way around)
    Called a 'Controlled component' in React when input fields(forms etc) are implemented with this binding schemes

    value={this.state.username}:binds state value (username) to text box input field
    onChange={this.state.handleChange}: invoked when text box value changes(which changes when the state changes)

    Encapsulates complexity (not very complex here) of the Battle page
*/
class PlayeInput extends React.Component {
    constructor(props) {
        super(props)

        this.state = {
            username: ''
        }

        this.handleChange = this.handleChange.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    //executed when the input field changes, the state is updated and then the 'value' of the input field
    handleChange(event) {
        console.log('player input state changed')
        var value = event.target.value
        this.setState(() => {
            return {
                username: value
            }
        })
    }

    //IS THIS INVOKED?: Yes
    handleSubmit(event) {
        console.log('player input handleSubmit invoked')
        event.preventDefault //do not submit to a server

        this.props.onSubmit(
            this.props.id,
            this.state.username
        )
    }

    render() {
        return (
            <form className='column' onSubmit={this.handleSubmit}>
                <label className='header' htmlFor='username'>
                    {this.props.label}
                </label>
                <input
                    id='username'
                    placeholder='github username'
                    type='text'
                    autoComplete='off'
                    value={this.state.username}
                    onChange={this.handleChange}
                />
                <button
                    className='button'
                    type='submit'
                    disabled={!this.state.username}>
                    Submit
                </button>
            </form >
        )
    }
}

PlayeInput.propTypes = {
    id: PropTypes.string.isRequired,
    label: PropTypes.string.isRequired,
    onSubmit: PropTypes.func.isRequired
}

class Battle extends React.Component {

    constructor(props) {
        super(props)

        this.state = {
            playerOneName: '',
            playerTwoName: '',
            playerOneImage: null,
            playerTwoImage: null
        }
        //Ensure the correct(i.e. the component) 'this' is used
        this.handleSubmit = this.handleSubmit.bind(this)
        this.handleReset = this.handleReset.bind(this)
    }

    //IS THIS INVOKED? : YES
    //id = playerOne/playerTwo
    handleSubmit(id, username) {
        console.log('parent state updated')
        console.log('id: ' + id + ' ' + 'username ' + username)
        this.setState(() => {
            var newstate = {}
            newstate[id + 'Name'] = username;
            newstate[id + 'Image'] = 'https://github.com/' + username + '.png?size200'
            return newstate;
        }
        )
    }

    handleReset(id) {
        this.setState(() => {
            var newstate = {}
            newstate[id + 'Name'] = ''
            newstate[id + 'Image'] = null
            return newstate;
        })
    }

    render() {
        //Value from the input textboxes
        var match = this.props.match
        var playerOneName = this.state.playerOneName
        var playerTwoName = this.state.playerTwoName
        var playerOneImage = this.state.playerOneImage
        var playerTwoImage = this.state.playerTwoImage
        // {!playerOneName && <PlayeInput />}:
        //&& = short hand for if the expression on the left is true do x(in this case render PlayeInput)
        //onSubmit={this.handleSubmit} 'callack' to update the state of the parant component
        return (
            <div>
                <div className='row'>
                    {!playerOneName &&
                        <PlayeInput
                            id='playerOne'
                            label='Player One'
                            onSubmit={this.handleSubmit} />}

                    {playerOneImage !== null &&
                        <PlayerPreview
                            avatar={playerOneImage}
                            username={playerOneName}
                            onReset={this.handleReset}
                            id='playerOne'
                        />}

                    {!playerTwoName &&
                        <PlayeInput
                            id='playerTwo'
                            label='Player Two'
                            onSubmit={this.handleSubmit} />}

                    {playerTwoImage !== null &&
                        <PlayerPreview
                            avatar={playerTwoImage}
                            username={playerTwoName}
                            onReset={this.handleReset}
                            id='playerTwo'
                        />}
                </div>
                {playerOneImage && playerTwoImage &&
                    <Link
                        className='button'
                        to={{
                            pathname: match.url + '/results',
                            search: `?playerOneName=` + playerOneName + '&playerTwoName=' + playerTwoName
                        }}>
                        Battle
                    </Link>
                }
            </div >
        )
    }
}


module.exports = Battle;