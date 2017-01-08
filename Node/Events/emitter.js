//Look at the events.js module in Node for a more robust implementation
function Emitter() {
    this.events = {}
}

//type =eventType, listener = function
Emitter.prototype.on = function(type, listener) {  
    this.events[type] = this.events[type] || []
    this.events[type].push(listener)
}

Emitter.prototype.emit = function(type) {
    if(this.events[type]) {
        this.events[type].forEach((listener) => listener())
    }
}

module.exports = Emitter