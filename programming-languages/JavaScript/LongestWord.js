
function findLongestWord(str) {
    let words = str.split(" ");
    let wordLengths = words.map(x => x.length)
    /*let length = words.length;
    let longest = 0

    for (var i = 0; i < length; i++) {
        if (words[i].length > longest) {
            longest = words[i].length
        }
    }
    return longest;*/

    return Math.max.apply(Math, wordLengths)

}

console.log(findLongestWord("The quick brown fox jumped over the lazy dog"));
