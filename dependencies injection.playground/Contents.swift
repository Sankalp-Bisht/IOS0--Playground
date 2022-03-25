import UIKit

//var greeting = "Hello, playground"

class Employee{
    var name: String?
    
    init(_name:String){
        name = _name
        
    }
}
class intern:{
    var assign: String?
    var emp: Employee
    init(_name: String,_assign: String){
        assign = _assign
        emp = Employee(_name:_name)
    }
    
}

class SeniorSDE: Employee{
    var workExp: Int?
}



