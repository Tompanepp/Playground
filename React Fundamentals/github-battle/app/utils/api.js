var axios = require('axios')

var id = "YOUR_CLIENT_ID"
var sec = "YOUR_SECRET_ID"
var params = "?client_id=" + id + "&client_secret=" + sec

var baseURL = 'https://api.github.com'

function getProfile(username) {
    return axios.get(baseURL + '/users/' + username + params)
        .then((user) => { return user.data })
}

function getRepos(username) {
    return axios.get(baseURL + '/users/' + username + '/repos' + params + '&per_page=100')
    //.then((repos) => { return repos.data })
}

function getStartCount(repos) {
    return repos.data.reduce(
        (count, repo) => { return count + repo.stargazers_count },
        0)
}

function calculateScore(profile, repos) {
    var followers = profile.followers
    var totalStars = getStartCount(repos)

    return (followers * 3) + totalStars
}


function handleError(erroe) {
    console.warn(error)
    return null
}

function getUserData(player) {
    return axios.all([]).then()

}
module.exports = {

    battle: function (players) {

    },

    fetchPopularRepos: function (language) {
        var encodedURI = window.encodeURI(
            baseURL + '/search/repositories?q=stars:>1+language:' + language + '&sort=stars&order=desc&type=Repositories');

        return axios.get(encodedURI).then((response) => response.data.items)
    }
}