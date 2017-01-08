let Emitter = require('./emitter')

let emtr = new Emitter()

//Registering events and listeners
emtr.on('greet', () => console.log('A greeting happened'))
emtr.on('greet', () => console.log('I am responding to a "greet" event§'))
emtr.on('SystemDatesChanged', () => console.log('It is a new day'))

//Emitting and event

emtr.emit('greet')
emtr.emit('SystemDatesChanged')