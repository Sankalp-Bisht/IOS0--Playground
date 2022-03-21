import UIKit
import CoreFoundation

enum type{
    case intern
    case sde1
    case sde2
    case sde3
    case manager
}

struct OneMgEmployee{
    
    var type: type
    var name: String
    var age: Int
    var workExperience: Int
    var id:Int
    
    init(_type: type, _name: String, _age:Int, _workExperience: Int,_id:Int){
        
        type  = _type
        name = _name
        age = _age
        workExperience = _workExperience
        id = _id
    }
}




class manageEmployee{
    
    var employees  = [OneMgEmployee]()
    var totalCount:Int = 0
    var typeCount = [type:Int]()
    
    
    
    func addEmployee(Employee: OneMgEmployee){
       
        guard employees.contains(where: {$0.id == Employee.id}) == false else {
            
            return
        }
         
        employees.append(Employee)
        totalCount+=1

        if typeCount[Employee.type] == nil{
           
            typeCount[Employee.type] = 0
        }else{
            
            typeCount[Employee.type]! += 1
        }
        
        print("Added employee - \(Employee.type)")
        
        
        
    }
    func removeEmployee(Employee: OneMgEmployee){
        employees = employees.filter({$0.id != Employee.id})
        print("Remove employee - \(Employee.type)")
    }
}

class Hire_Or_Fire{
    
    var manage = manageEmployee()
    
    func create_employee(type:type,name: String, age: Int, workExperience: Int, id: Int) -> OneMgEmployee{
        
        let emp =  OneMgEmployee(_type: type,_name: name,_age: age,_workExperience: workExperience,_id: id)
        notify(id: 1,emp:emp)
        
        return emp
    }
    func remove_employee(emp:OneMgEmployee ){
        notify(id: 0,emp:emp)
        
    }
    func notify(id: Int,emp: OneMgEmployee){
    
        if(id==1){
            manage.addEmployee(Employee: emp)
        }else{
            manage.removeEmployee(Employee: emp)
        }
        
    }
}
var Hire_Or_Fire_obj = Hire_Or_Fire()

var intern = Hire_Or_Fire_obj.create_employee(type: type.intern,name: "Sankalp",age: 22,workExperience: 0,id: 1)
Hire_Or_Fire_obj.create_employee(type: type.sde1,name: "Mukul",age: 23,workExperience: 3,id: 2)
Hire_Or_Fire_obj.create_employee(type: type.sde1,name: "Amereshwar",age: 27,workExperience: 5,id: 3)
Hire_Or_Fire_obj.create_employee(type: type.manager,name: "Shaurya",age: 29,workExperience: 6,id: 4)
Hire_Or_Fire_obj.create_employee(type: type.sde3,name: "Rajat",age: 31,workExperience: 9,id: 5)

Hire_Or_Fire_obj.remove_employee(emp: intern )

