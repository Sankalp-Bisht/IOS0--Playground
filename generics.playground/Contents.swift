import UIKit

//var greeting = "Hello, playground"
func swap<T>(a: inout T, b: inout T) {
    
    let c = a
    a = b
    b = c
    
}
var a = 100
var b = 200


swap(a: &a, b: &b)
print(a)
print(b)

var a2  = "Sankalp"
var b2  = "Bisht"

swap(a: &a2, b: &b2)
print(a2)
print(b2)

class something<T> {
  var somedata: T

  init (somedata: T) {
    self.somedata = somedata
  }
  func getData() -> T {
    return self.somedata
  }
}
var intThing = something<String>(somedata: "Sankalp")
print(intThing.getData())
var strThing = something<Double>(somedata: 13.45)
print(strThing.getData())
