import UIKit

var greeting = "Hello, playground"


var name:String

name="Sankalp"
print(name)


var name2:String?
name2 = nil

print(name2)


var num = 100

print("num= \(num)")

var str = """
 This is a long
 String
 """
var str2 = "Sankalp Singh Bisht"
//print(str2[...6])
//print(str2[6...])

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]


for item in romeoAndJuliet{
    if item.hasPrefix("Act 2"){
        var index = item.firstIndex(of: ":")
        print(item[(index)!...])
    }
}

