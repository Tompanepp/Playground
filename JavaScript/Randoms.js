function ourRandomRange(ourMin, ourMax) {

  return Math.floor(Math.random() * (ourMax - ourMin + 1)) + ourMin;
}

ourRandomRange(1, 9);

// Only change code below this line.
//>= myMin and <= myMax
//(myMax - myMin + 1) ensure Max can be generated
//remove the myMin because it's already added by the last addition
//add 1 because the random can never be 1 (we are relying on floor to remove the extra decimal values we get)
function randomRange(myMin, myMax) {

 return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin;/* ensure that the minimum can be generated */
}

// Change these values to test your function
var myRandom = randomRange(5, 15);
