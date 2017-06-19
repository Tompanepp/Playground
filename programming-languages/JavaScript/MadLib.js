function wordBlanks(myNoun, myAdjective, myVerb, myAdverb) {
  var result = "";
  // Your code below this line
  var separator = " ";
  results  = myNoun + " is" + separator + myAdjective + separator + "and " + myVerb + separator + myAdverb ;

  console.log(results);
  // Your code above this line
  return result;
}

// Change the words here to test your function
wordBlanks("dog", "big", "ran", "quickly");
