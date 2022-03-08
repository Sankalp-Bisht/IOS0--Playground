import UIKit

//var greeting = "Hello, playground"

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

//let str = "589i"
let str = "33"
let num = Int(str)
print(num)
let num2 = Int(str)!


let age: Int! = nil

print(age)


func username(for id: Int) -> String? {
    if id == 1 {
        return "Sankalp Bisht"
    } else {
        return nil
    }
}

let user1 = username(for: 15) ?? "Anonymous"
let user2 = username(for: 1)

struct Employee {
    var username: String
    var password: String

    init?(username: String, password: String) {
        guard password.count >= 8 else { return nil }
        guard password.lowercased() != "password" else { return nil }

        self.username = username
        self.password = password
    }
}

let u1 = Employee(username: "Sankalp", password: "app1e")
let u2 = Employee(username: "Sankalp", password: "applelele")


