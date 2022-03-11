import UIKit

var greeting = "Hello, playground"




for i in 1...5{
    print(i)
}
print("\n")

for i in 1..<5{
    print(i)
}
print("\n")

for i in stride(from: 0, to: 10, by: 1)
{
    print(i)
}

print("\n")
var c = 10

while(c>0){
    
    c -= 1
    print(c)
}



let someCharacter: Character = "a"
switch someCharacter {
case "a":
    print("a")
case "z","a":
    print("z")
    
default:
    print("Some other character")
}

let num = 9

switch num {
case 0..<9:
    print("a")
case 9:
    print("z")
    
default:
    print("Some other  num")
}

//let p = (1, -1)
let p = (1,-3)
switch p {
case let (x, y) where x == y:
    print("(\(x), \(y)) line")
case let (x, y) where x == -y:
    print("(\(x), \(y)) -line")
case let (x, y):
    print("(\(x), \(y)) point")
}
