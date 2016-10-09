
function rot13(str) { // LBH QVQ VG!
    var letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
    var places = 13
    var decipheredLetters = []

    /*
      convert letter to Alphabet position
      Retrieve letter at {position - 3}
    */
    for (var i = 0; i < str.length; i++) {
        var letterIndex = letters.indexOf(str[i]);
        if (letterIndex >= 0) {
            var letterShiftDifference = letterIndex - places;
            if (letterShiftDifference >= 0)
                decipheredLetters.push(letters[letterShiftDifference]);
            else
                decipheredLetters.push(letters[letterIndex + places]);
        }
        else
            decipheredLetters.push(str[i])
    }


    return decipheredLetters.join("");
}

// Change the inputs below to test
console.log(rot13("GUR DHVPX OEBJA QBT WHZCRQ BIRE GUR YNML SBK."));
