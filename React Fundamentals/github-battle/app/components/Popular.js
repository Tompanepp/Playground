var React = require('react');

class Popular extends React.Component {
    /*
        add state to:
            keep track of currently selected tab(to highlight)
            render the list repositories based on the CURRENTLY selected tab
    */
    constructor(props) {
        super(props);
        this.state = {
            selectedLanguage: 'All' // this adds the property 'selectedLanguage' that can later be updated using 'this.setState'
        };
        this.updateLanguage = this.updateLanguage.bind(this); // ensure execution context is always the component itself, we're explicitly binding the 'this' keyword
    }

    updateLanguage(lang) {
        /*
            Explicit Mutation: updating the state (i.e. selectedLanguage )
            this.setState(() => {{ selectedLanguage: lang }}) : This does not work!!! not sure why we need the return statement in a lambda
        */
        this.setState(() => {
            return { selectedLanguage: lang }
        });
    }

    /*
        languages.map(f(x), this) = inject the component as the execution context 
        (i.e set 'this' to the component during the execution of the lambda when 'mapping' through each element)
    */

    render() {
        var languages = ['All', 'JavaScript', 'Ruby', 'Java', 'CSS', 'Python'];
        return (
            <ul className='languages'>
                {languages.map((x) =>
                    <li style={x === this.state.selectedLanguage ? { color: '#d0021b' } : null}
                        onClick={this.updateLanguage.bind(null, x)}
                        key={x}>
                        {x}
                    </li>)}
            </ul>
        )
    }
}

module.exports = Popular;