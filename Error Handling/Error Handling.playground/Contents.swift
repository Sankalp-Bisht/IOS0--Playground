import UIKit

enum DepartmentError: Error {
    case overStaffed
    case underStaffed
    case noValue
    }
    


struct Team {
    let name: String
    let count: Int?
    init(name:String,count:Int?){
        self.name = name
        self.count = count
    }
}

class Department {
    
    let departmentID: Int
    let teamDetail: Team
    
    init(Did: Int,name:String,count:Int?){
        self.departmentID=Did
        self.teamDetail = Team(name:name , count: count)
        
    }

    func Capacitycheck(departmentInfo: Department) throws {
        
        print(departmentInfo.teamDetail)
        guard departmentInfo.teamDetail.count != nil  else {
            throw DepartmentError.noValue
        }

        guard departmentInfo.teamDetail.count! < 25 else {
            throw DepartmentError.overStaffed
        }

        guard departmentInfo.teamDetail.count! > 10 else {
            throw DepartmentError.underStaffed
        }
        print("No Problem")
    }
}

var ios = Department(Did: 1, name: "IOS", count: 15)
var android = Department(Did: 2, name: "Android", count: 20)
var Monitization = Department(Did: 3, name: "Monitization", count: 9)
var AdRevenue = Department(Did: 4, name: "Ad Revenue", count: 26)



func error_handle(dep:Department) throws{
    
    do{
        try dep.Capacitycheck(departmentInfo: dep)
        print("Correct Capacity")
    }catch DepartmentError.noValue{
        print("no value")
    }catch DepartmentError.overStaffed{
        print("Need less Resources")
    }catch DepartmentError.underStaffed{
        print("Need more Resources")
    }
    
}

do{
    try
        error_handle(dep: ios)
    try
        error_handle(dep: android)
    try
        error_handle(dep: Monitization)
    try
        error_handle(dep: AdRevenue)
}
    
    
