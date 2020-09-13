function intersection(first_array, second_array) {
    var result = [];
    var comparisons = 0;
    for (var i = 0; i < first_array.length; i++) {
        for (var j = 0; j < second_array.length; j++) {
            if (first_array[i] == second_array[j]) {
                result.push(first_array[i]);
                break;
            }
            comparisons++;
        }
    }
    console.log(comparisons)
    return result;
}

const data1 = [4, 2, 1, 3];
const data2 = [4, 2, 1, 3];

console.log(intersection(data1, data2))
