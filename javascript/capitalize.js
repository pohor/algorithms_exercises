function capitalize(string) {
  var string = string.split(' ')
  for( var i=0; i < string.length; i++) {
    string[i].toUpperCase()
  }
  return string = string.join(" ")
}

capitalize('one two three')
capitalize('ala, ma kota.')
