import UIKit

//var greeting = "Hello, playground"

func makeA() -> some Equatable {
    let a = "A"
    return a
}

let a = makeA()
let anotherA = makeA()

print(a == anotherA)


//
//public protocol Equatable {
//    static func == (lhs: Self, rhs: Self) -> Bool
//}
//
//func makeTwo() -> Equatable { 2 }
//
//func makeThree() -> some Equatable { 3 }
