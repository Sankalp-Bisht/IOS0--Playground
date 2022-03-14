import UIKit

//var greeting = "Hello, playground"


enum teams{
    case ios
    case android
    case dataEng
    case qa
}

var sankalp =  teams.ios
var naman = teams.dataEng
var shaurya = teams.android
var mukul = teams.qa

print(mukul)


enum DepartmentError: Error {
    case overStaffed
    case underStaffed
    case noValue
    }
    
var staff = 100
do{
    try staff > 50
}catch DepartmentError.overStaffed {
    print("Overataffed")
}


