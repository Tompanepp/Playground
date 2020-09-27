var apiUrl="http://api.forismatic.com/api/1.0/?method=getQuote&format=json&lang=en"

function getQuote() {
  console.log("getting quote")
  var xhr = new XMLHttpRequest();
  xhr.open("GET", apiUrl, false);
  xhr.send(num);
  console.log(xhr.status);
  console.log(xhr.statusText);
}

function generateQuote(){
  console.log("in generateQuote")
  /*var quoteView = document.getElementById("quoteView");
  quoteView.value = getQuote() */
  getQuote()
}


generateQuote()