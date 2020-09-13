const hasDuplicatesN2 = (arr) => {
    for (i = 0; i < arr.length; i++) {
        for (j = 0; j < arr.length; j++) {
            if (i != j && arr[i] == arr[j]) {
                return true;
            }
        }
    }
    return false;
}

//only works for positive integers
const hasDuplicatesN = (arr) => {
    number_exists = []

    for (i = 0; i < arr.length; i++) {
        if (number_exists[arr[i]] == undefined) {
            number_exists[arr[i]] = 1
        }
        else {
            return true;
        }
    }
    return false;
}

console.log(hasDuplicatesN2([1, 2, 3, 4, 5, 7, 8]))
console.log(hasDuplicatesN([1, 2, 3, 4, 5, 7, 8]))
