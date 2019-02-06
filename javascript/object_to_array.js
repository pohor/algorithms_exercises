function objectToArray(object) {
  var keyarray = Object.keys(object)
  var valuesarray = Object.values(object)
  var array = Array(keyarray.length)
  for(var i = 0; i < keyarray.length; i++) {
    array[i] = Array(2),
    array[i][0] = keyarray[i],
    array[i][1] = valuesarray[i]
  }
  return array
}


objectToArray({ a: 1, b: 2 })
objectToArray({ foo: 'bar' })
