var count = 0;

/*
  objective:
    increment or decrement count
      according to card's value map in the table

     if count Positive
       return count + "Bet"
     if count 0 or negative
       return count + "Hold"
*/
function cc(card) {
  // Only change code below this line

  var lowPositives = [2, 3, 4, 5, 6];
  var highPositives = [7, 8, 9];
  var negatives = [10, 'J', 'Q', 'K', 'A'];

  if(lowPositives.indexOf(card) > -1)
    count += 1;
  else if(highPositives.indexOf(card) > -1)
    count += 0;
  else if(negatives.indexOf(card) > -1)
    count -= 1;


     if (count > 0)
       return count + " Bet";
     else if (count <= 0)
       return count + " Hold";


  // Only change code above this line
}

var testValues = [2, 3, 4, 5, 6 ]
var result = testValues.map(cc)
console.log(result)