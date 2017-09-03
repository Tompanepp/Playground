let React = require('react')
let PropTypes = require('prop-types')


let styles = {
    content: {
        textAlign: 'center',
        fontSize: '35px'
    }
}

class Loading extends React.Component {

    constructor(props) {
        super(props)

        this.state = {
            text: props.text
        }
    }

    componentDidMount() {
        let terminalText = this.props.text + '...'
        this.interval = window.setInterval(() => {
            if (this.state.text === terminalText) {
                this.setState(() => {
                    return {
                        text: this.props.text
                    }
                })
            } else {
                this.setState((prevState) => {
                    return {
                        text: prevState.text + '.'
                    }
                })
                console.log('in componentDidMount')
            }
        }, this.props.speed)
    }

    //Ensure the callback in componentDidMount does not run forever
    componentWillUnmount() {
        window.clearInterval(this.interval)
    }

    render() {
        return (
            <p style={styles.content}>
                {this.state.text}
            </p>
        )
    }
}

Loading.propTypes = {
    text: PropTypes.string.isRequired,
    speed: PropTypes.number.isRequired
}

Loading.defaultProps = {
    text: 'Loading',
    speed: 300
}

module.exports = Loading