
function destroyer(arr) {
  // Remove all the values
 var args = Array.from(arguments)
 var targets = args.slice(1, args.length)
 
 return arr.filter((x) => !targets.includes(x));
}

var a = destroyer([1, 2, 3, 1, 2, 3], 2, 3);
console.log(a)