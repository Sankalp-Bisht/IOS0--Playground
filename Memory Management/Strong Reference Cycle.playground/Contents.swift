import UIKit
import Darwin

//var greeting = "Hello, playground"


class employee{
    var name: String
    var workExp: Int?
    var availabel: IOSdeveloper?
    
    init(name:String,workExp:Int?){
        self.name = name
        self.workExp = workExp
        
//        self.dept = oneMgEmployee(name: name, workExp: workExp,department: "IOS")
        
        self.availabel = IOSdeveloper(available: true)
    }
    
    func printavailablity(){
        print(availabel!)
    }
    
    deinit{
        
        print("employee deinit called")
    }
}

class oneMgEmployee{
//    var detail: employee?
    var department:String
    
    init(name:String,workExp:Int?,department:String){
//        self.detail = employee(name: name, workExp: workExp)
        self.department = department
    }
    
    deinit{
        print("OneMgEmployee deinit called")
    }
}

class IOSdeveloper{
    var available: Bool?
    weak var employee:oneMgEmployee?
    init(available: Bool?){
        self.available = available
        self.employee = oneMgEmployee(name: "Default Name", workExp: 0, department: "IOS" )
    }
    
    func printfunc(){
        print(employee!)
    }
    deinit{
        print("IOSDEveloper deinit called")
    }
}



print("Before1")

var iosdeveloper1 = IOSdeveloper(available: true)
var iosdeveloper2 = iosdeveloper1

//iosdeveloper2 = nil

print(iosdeveloper2)
//iosdeveloper1 = nil

print("After")
