circleOpeningBracket = '('
circleClosingBracket = ')'
curlyOpeningBracket = '{'
curlyClosingBracket = '}'
squareOpeningBracket = '['
squareClosingBracket = ']'

const bracketsMatch = (code) => {
    characters = code.split('')
    //stack in name for learning
    openingBracketStack = []
    for (i = 0; i < characters.length; i++) {
        character = characters[i]
        if (isOpeningBrace(character)) {
            openingBracketStack.push(character)
        } else if (isClosingBrace(character)) {
            if (!isClosingBracketOfRecentOpeningBracket(character, openingBracketStack)) {
                return false
            }
        }
    }
    return openingBracketStack.length == 0;
}

const isClosingBracketOfRecentOpeningBracket = (character, openingBracketStack) => {
    const openingBracket = {
        circleClosingBracket: circleOpeningBracket,
        curlyClosingBracket: curlyOpeningBracket,
        squareClosingBracket: squareOpeningBracket
    }
    return openingBracket[character] == openingBracketStack.pop
}

const isOpeningBrace = (character) => [circleOpeningBracket, curlyOpeningBracket, squareOpeningBracket].includes(character)

const isClosingBrace = (character) => [circleClosingBracket, curlyClosingBracket, squareClosingBracket].includes(character)

console.log('Should be invalid: is valid', bracketsMatch('[(,()}])'))
console.log('Should be valid: is valid', bracketsMatch('[[({})t]]'))
console.log('Should be invalid: is valid', bracketsMatch('[}])'))
console.log('Should be invalid: is valid', bracketsMatch('[[[({})t]])'))