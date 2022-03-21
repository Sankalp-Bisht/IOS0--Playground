import UIKit

//var greeting = "Hello, playground"


class Person {

    var first: String
    var last: String

    init(first: String, last: String) {
        self.first = first
        self.last = last
    }
    deinit {
        print("called")
    }

}

var Person1: Person?

Person1 = Person(first: "Sankalp", last: "Bisht")

var Person2 = Person1

print(Person1?.first)
print(Person2?.first)

Person2?.first = "Mukul"

print(Person1?.first)
print(Person2?.first)

Person1?.last = "Singh"

print(Person1?.last)
print(Person2?.last)



var Person3:Person?
var Person4:Person?

Person3 = Person(first: "Ram", last: "Agarwal")
Person4 = Person3

Person4 = nil


//Dinit will only be called when no object is referencing the instance of class


Person1 = nil
Person2 = nil

print(Person1?.last ?? "No Value")
print(Person2?.last ?? "No Value")
