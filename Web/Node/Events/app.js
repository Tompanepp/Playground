//let Emitter = require('./emitter')
let Emitter = require('events')//Using Nodes Event emitter
let events  = require('./config').events

let emtr = new Emitter()

//Registering events and listeners
emtr.on(events.GREET, () => console.log('A greeting happened'))
emtr.on(events.GREET, () => console.log('I am responding to a "greet" event§'))
emtr.on(events.SYSTEMDATESCHANGED, () => console.log('It is a new day'))

//Emitting and event

emtr.emit('greet')
emtr.emit('SystemDatesChanged')