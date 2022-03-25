import UIKit
import Darwin

//var greeting = "Hello, playground"


class Employee{
    var name: String
    var workExp: Int?
    
    
    init(name:String,workExp:Int?){
        self.name = name
        self.workExp = workExp
 
    }
    
    func printavailablity(){
        print("YEs")
    }
    
    deinit{
        
        print("employee deinit called")
    }
}

//class OneMgEmployee{
//    var detail: Employee?
//    var department:String
//
//    init(name:String,workExp:Int?,department:String){
//        self.detail = Employee(name: name, workExp: workExp)
//        self.department = department
//    }
//
//    deinit{
//        print("OneMgEmployee deinit called")
//    }
//}

class IOSdeveloper{
    var available: Bool?
    var otherDetail: Employee?
    init(available: Bool?, _employee: Employee){
        self.available = available
        self.otherDetail = _employee
        
    }
    
    func printfunc(){
        print("Function called")
    }
    deinit{
        print("IOSDEveloper deinit called")
    }
}

var employee = Employee(name: "Sankalp", workExp: 8)
var iosdeveloper1 = IOSdeveloper(available: true,_employee: employee)
var iosdeveloper2 = iosdeveloper1

//iosdeveloper2 = nil

print(iosdeveloper2)
//iosdeveloper1 = nil

print("After")
