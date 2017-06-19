let React = require('react');
let PropTypes = require('prop-types');
let api = require('../utils/api');
let Loading = require('./Loading')


function RepoGrid(props) {
    return (
        <ul className='popular-list'>
            {props.repos.map((repo, index) => {
                return (
                    <li key={repo.name} className='popular-item'>
                        <div className='popular-rank'>#{index + 1}</div>
                        <ul className='space-list-items'>
                            <li>
                                <img
                                    className='avatar'
                                    src={repo.owner.avatar_url}
                                    alt={'Avatar for ' + repo.owner.login}
                                />
                            </li>
                            <li> <a href={repo.html_url}> {repo.name}> </a> </li>
                            <li> @{repo.owner.login} </li>
                            <li> {repo.stargazers_count} stars </li>
                        </ul>
                    </li>
                )
            })}
        </ul>
    )
}

RepoGrid.propTypes = {
    repos: PropTypes.array.isRequired
}
//Stateless Functional Component
//no render method, the function returns UI
function SelectLanguage(props) {

    var languages = ['All', 'JavaScript', 'Ruby', 'Java', 'CSS', 'Python'];
    return (
        <ul className='languages'>
            {languages.map((x) =>
                <li style={x === props.selectedLanguage ? { color: '#d0021b' } : null}
                    onClick={props.OnSelect.bind(null, x)}
                    key={x}>
                    {x}
                </li>)}
        </ul>
    )
}

SelectLanguage.propTypes = {
    selectedLanguage: PropTypes.string.isRequired,
    OnSelect: PropTypes.func.isRequired
}

class Popular extends React.Component {
    /*
        add state to:
            keep track of currently selected tab(to highlight)
            render the list repositories based on the CURRENTLY selected tab
            
        We use the costructor to add state
    */
    constructor(props) {
        super(props);
        this.state = {
            selectedLanguage: 'All', // this adds the property 'selectedLanguage' that can later be updated using 'this.setState'
            repos: null
        };
        this.updateLanguage = this.updateLanguage.bind(this); // ensure execution context is always the component itself, we're explicitly binding the 'this' keyword
    }

    //LifeCycle event
    componentDidMount() {
        this.updateLanguage(this.state.selectedLanguage)
    }

    updateLanguage(lang) {
        /*
            Explicit Mutation: updating the state (i.e. selectedLanguage )
            this.setState(() => {{ selectedLanguage: lang }}) : This does not work!!! not sure why we need the return statement in a lambda
        */
        this.setState(() => {
            return {
                selectedLanguage: lang,
                repos: null
            }
        });

        api.fetchPopularRepos(lang)
            .then((repos) =>
                this.setState(() => {
                    return { repos: repos }
                }))
    }

    /*
        languages.map(f(x), this) = inject the component as the execution context 
        (i.e set 'this' to the component during the execution of the lambda when 'mapping' through each element)
    */

    render() {
        return (
            <div>
                <SelectLanguage
                    selectedLanguage={this.state.selectedLanguage}
                    OnSelect={this.updateLanguage} />

                {!this.state.repos
                    ? <Loading />
                    : <RepoGrid repos={this.state.repos} />
                }
            </div>
        )
    }
}

module.exports = Popular;