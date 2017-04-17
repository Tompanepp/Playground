
function multiplyAll(arr) {
  var product = 1;
  // Only change code below this line
  
  // Only change code above this line
  var length = arr.length;
  for(var i = 0; i < length; i++)
    for(var j = 0; j < arr[i].length; j++)
      product *= arr[i][j];
  
  return product;
}

// Modify values below to test your code
multiplyAll([
             [1],
             [2],
             [3]
            ]);