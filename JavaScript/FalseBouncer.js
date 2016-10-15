function bouncer(arr) {
  // Don't show a false ID to this bouncer.
  /*return arr.filter((x) => x !== false && x !== null && x  !== 0 || x !== "" && x !== undefined 
  && x !== NaN)*/

  return arr.filter((x) => new Boolean(x).valueOf())
}

