function titleCase(str) {
    let words = str.split(" ");
    String.prototype.capitaliseFirstWord = function () {
        return this.charAt(0).toUpperCase() + this.slice(1).toLowerCase();
    }
    return words.map(x => x.capitaliseFirstWord()).join(" ");
}

console.log(titleCase("I'm a little tea POT"));