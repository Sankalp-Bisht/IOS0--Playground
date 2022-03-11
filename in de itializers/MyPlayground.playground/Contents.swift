import UIKit

//var greeting = "Hello, playground"
struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var f = Fahrenheit()
print("temp \(f)")

class info{
    var name: String
    var age: Int
    
    init(){
        name = "Sankalp"
        age = 22
    }
}

let stu = info()
print(stu.name)



struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}

