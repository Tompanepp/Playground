function slasher(arr, howMany) {
  return arr.slice(howMany, arr.length);
}

let a = slasher([1, 2, 3], 2);
console.log(a);