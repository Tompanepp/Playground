
function getIndexToIns(arr, num) {
  // Find my place in this sorted array.
  var arrSorted = arr.sort((a, b) => a - b);
  var indexUp = 1;
  var length = arr.length 
  for(var i = 0; i < arrSorted.length; i++){
      if(num > arrSorted[i] && num <= arrSorted[i + 1])
        return i + indexUp;
      else if (num == arrSorted[i])
        return i;
      else if(num > arrSorted[length - 1])
        return length
  }
}

var a = getIndexToIns([2, 5, 10], 15)
console.log(a)