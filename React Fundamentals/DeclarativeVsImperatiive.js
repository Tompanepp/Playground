//Declarative
function double(numbers) {
    return numbers.map(x => x * 2)
}

let doubled = double([1,2,3])
console.log(doubled)


function addMine(numbers) {
    return numbers.map(x => sumer(x, 0)).sum
}

function sumer(number, total) {
    return number + total
}

// take number
// add to total
// repeat until the end of the list

let sumMine = addMine([1,2,3])
console.log(sumMine)

function add(numbers) {
    return numbers.reduce((prev, current) => prev + current, 0)
}

let sum = add([1,2,3])
console.log(sum)