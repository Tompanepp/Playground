var axios = require('axios')

let id = "YOUR_CLIENT_ID"
let sec = "YOUR_SECRET_ID"
let params = "?client_id=" + id + "&client_secret=" + sec
let baseURL = 'https://api.github.com'

function getProfile(username) {
    return axios.get(baseURL + '/users/' + username + params)
        .then((user) => { return user.data })
}

function getRepos(username) {
    return axios.get(baseURL + '/users/' + username + '/repos' + params + '&per_page=100')
        .then((repos) => { return repos.data })
}

function getStartCount(repos) {
    return repos.reduce(
        (count, repo) => { return count + repo.stargazers_count }, 0)
}

function calculateScore(profile, repos) {
    let followers = profile.followers
    let totalStars = getStartCount(repos)

    return (followers * 3) + totalStars
}

function handleError(error) {
    console.warn(error)
    return null
}

function getUserData(player) {
    return axios.all([
        getProfile(player),
        getRepos(player)
    ]).then((data) => {
        let profile = data[0]
        let repos = data[1]

        return {
            profile: profile,
            score: calculateScore(profile, repos)
        }
    })
}

function sortPlayers(players) {
    return players.sort((x, y) => {
        return y.score - x.score
    })
}

module.exports = {

    battle: function (players) {
        return axios.all(players.map(getUserData))
            .then(sortPlayers)
            .catch(handleError)
    },

    fetchPopularRepos: function (language) {
        var encodedURI = window.encodeURI(
            baseURL + '/search/repositories?q=stars:>1+language:' + language + '&sort=stars&order=desc&type=Repositories');

        return axios.get(encodedURI).then((response) => response.data.items)
    }
}