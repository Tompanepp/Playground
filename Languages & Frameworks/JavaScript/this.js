let talk = function() {
  console.log(this.sound)
}

let boromir = {
  //speak: talk.bind(this),
  speak: talk,
  sound: 'One does simly walk into mordor!'
}

let gollum = {
  blabber: boromir.speak,
  sound: 'My preciousss....'
}
//boromir.speak = talk.bind(boromir)
boromir.speak()
gollum.blabber()
let blabber = boromir.speak
//blabber()
