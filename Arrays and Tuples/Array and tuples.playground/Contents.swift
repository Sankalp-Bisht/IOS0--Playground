import UIKit

//var greeting = "Hello, playground"
//var numbers: [Int] = [51, 54, 54, 52]
//
//print(numbers)
//
//numbers.append(32)
//
//print("After Append: \(numbers)")

var IntnameArr = ["Sankalp","Mukul"]
var Empnamearr = ["Sahil","Abhijeet"]

IntnameArr.append(contentsOf: Empnamearr)

print(IntnameArr)
print(Empnamearr)

let removedValue = IntnameArr.remove(at: 1)

print("Updated Array: \(IntnameArr)")
print("Removed value: \(removedValue)")

IntnameArr.isEmpty
IntnameArr.removeAll()
IntnameArr.isEmpty


let fruits = ["Apple", "Peach", "Mango"]

for fruit in fruits {
  print(fruit)
}

var address: [Any] = ["Scranton", 570]
 
print(address)
