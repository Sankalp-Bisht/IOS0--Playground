import UIKit

//var greeting = "Hello, playground"


class employee{
    
    var name:String
    init(name:String){
        self.name = name
    }
}

class OneMgEmployee: employee{
    
    var department:String
    let id:Int
    
    init(name:String,department:String,id:Int){
        self.id = id
        self.department = department
        super.init(name : name)
    }
}

class OneMgIntern: employee{
    var technology: String
    init(name:String,tech:String){
        self.technology = tech
        super.init(name: name)
    }
}

let doctor = OneMgEmployee(name: "Sankalp", department: "Orthodontist", id: 1)

let studentDoc = OneMgIntern(name: "Mukul",tech: "IOS")
print(doctor)


var mixArray = [Any]()
var intArray = [Int]()
var stringArray = [String]()

mixArray += ["Sankalp",10,"-",99.22]
intArray += [1,2,3,4]
stringArray += ["Sankalp","Bisht"]

print(intArray)
print(stringArray)
print(mixArray)

var empArray = [doctor, studentDoc]

print(empArray)

