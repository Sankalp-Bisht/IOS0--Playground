import UIKit

//var greeting = "Hello, playground"

let name = ["Sankalp", "Singh", "Bisht"]

if name.contains("Sankalp") {
  print("Available")
}


let index = name.firstIndex(where: {$0.elementsEqual("Sankalp")})

if index != nil {
  print("Sankalp is Available at position \(index ?? -1)")
} else {
  print("Sankalp is not Available")
}


if let index = name.firstIndex(where: {$0.elementsEqual("Sankalp")}) {
    print("Sankalp is Available at position \(index )")
  } else {
    print("Sankalp is not Available")
  }

func checkGuard(){
 
    guard name.firstIndex(where: {$0.elementsEqual("Sankalp")}) != nil
    else {
        print("Sankalp is not Available")
        return
      }
}

checkGuard()
