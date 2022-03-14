import UIKit

//var greeting = "Hello, playground"

var numbers = [1: "One", 2: "Two", 3: "Three"]
print(numbers)

var name_job = ["Sankalp": "IOS", "Amershwar": "IOS","Shaurya":"Android"]
print("Initial Dictionary: ",name_job)

name_job["Mukul"] = "Devops"

print("Updated Dictionary: ",name_job)
print(name_job["Japan"] ?? "Not present")

name_job["Mukul"] = "Senior Devops"

print(name_job)

//name_job.sorted(by: KeyPath)

//name_job.firstIndex()



