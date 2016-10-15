/*
  obj: does string 1 contain all the letter of string 2??
*/

function mutation(arr) {
  var allfound = true
  var srtArr1 = Array.from(arr[0]);
  var srtArr2 = Array.from(arr[1]);

  for(var i = 0; i < srtArr2.length; i++){
      if(srtArr1.indexOf(srtArr2[i]) == -1)
         allfound = false
  }
  
  return allfound;
}

mutation(["hello", "hey"]);
