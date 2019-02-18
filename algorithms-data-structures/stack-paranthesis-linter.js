function bracketsMatch(characters) {
    //stack in name for learning
    openingBracketStack = []
    circleOpeningBracket = '('
    curlyOpeningBracket = '{'
    squareOpeningBracket = '['
    for (i = 0; i < characters.length; i++) {
        bracket = characters[i]
        if (bracket == circleOpeningBracket || bracket == curlyOpeningBracket || bracket == squareOpeningBracket) {
            openingBracketStack.push(bracket)
        } else if (bracket == ')' && openingBracketStack.pop() != circleOpeningBracket) {
            return false;
        } else if (bracket == ']' && openingBracketStack.pop() != squareOpeningBracket) {
            return false;
        } else if (bracket == '}' && openingBracketStack.pop() != curlyOpeningBracket) {
            return false;
        }
    }
    return openingBracketStack == 0;
}

console.log('Should be invalid: is valid', bracketsMatch(['(', ',', '(', ')', '}']))
console.log('Should be valid: is valid', bracketsMatch(['[', '(', '{', '}', ')', 't', ']']))
console.log('Should be invalid: is valid', bracketsMatch(['}']))
console.log('Should be invalid: is valid', bracketsMatch(['[', '[', '(', '{', '}', ')', 't', ']']))