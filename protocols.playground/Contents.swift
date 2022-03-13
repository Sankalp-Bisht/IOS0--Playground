import UIKit

//var greeting = "Hello, playground"

protocol student{
    var name: String {get set}
    var id: Int {get set}
    
}

struct senior:student{
    var name: String
    var id: Int
    
    init(){
        name = "Sankalp"
        id = 25
    }
}

func display(seniorStudent: student) {
     print("ID is \(seniorStudent.id)")
     print("Name is \(seniorStudent.name)")
}

var newSenior = senior()
display(seniorStudent: newSenior)


extension Int {
    func squared() -> Int {
        return self * self
    }
}

var p: Int = 5

print(p.squared())

extension student{
    func idcheck()->Bool{
        return id > 10
    }
}

print(newSenior.idcheck())
