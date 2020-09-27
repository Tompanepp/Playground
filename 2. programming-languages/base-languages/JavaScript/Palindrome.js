
function palindrome(str) {
  // Good luck!
  let strLowerCaseAlphaNumeric  = str.replace(/[^0-9a-z]/gi, "").toLowerCase();
  let inputReversed = Array.from(strLowerCaseAlphaNumeric).reverse().join("");
  
  if(strLowerCaseAlphaNumeric === inputReversed)
    return true;
  else
     return false;
}



palindrome("_eye");
