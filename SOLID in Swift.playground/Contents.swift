import UIKit

//var greeting = "Hello, playground"


//Single Responsibility Principle
class hire_or_promote{
    
    func hire(){
        print("Hired")
    }
    
    func promote(){
        print("Promote")
    }
}


class hire{
    func hire(){
        print("Hired")
    }
}

class fired{
    func fired(){
        print("Fired")
    }
}


//Open Closed

protocol vehicle{
    func printDetails()-> String
}

class Car :vehicle{
    let name: String
    let color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
   func printDetails() -> String {
        return "I have \(self.color) color \(self.name)."
    }
}
class Bike :vehicle{
    let name: String
    let color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    func printDetails() -> String {
        return "I have \(self.name) bike of color \(self.color)."
    }
}
class Logger {
    func printData() {
//        let cars = [ Car(name: "BMW", color: "Red"),
//                     Car(name: "Audi", color: "Black")]
//         cars.forEach { car in
//             print(car.printDetails())
//         }
//        let bikes = [ Bike(name: "Homda CBR", color: "Black"),
//                      Bike(name: "Triumph", color: "White")]
//        bikes.forEach { bike in
//             print(bike.printDetails())
        
        let vehicles = [Bike(name: "Homda CBR", color: "Black"), Car(name: "BMW", color: "Red")] as [vehicle]
        
        print(vehicles)
         }
     }





//Liskov’s Subsititution

"""
 The Liskov Substitution Principle in practical software development. The principle defines that objects of a superclass shall be replaceable with objects of its subclasses without breaking the application.for example @overright
 """
//Interface Segregation

protocol Workable {
    func work()
}

protocol Feedable {
    func eat()
}

struct ManWorker: Feedable, Workable {
    func work() {
        print("Man Worker working...")
    }
    
    func eat() {
        print("Man Worker eating...")
    }
}

struct WomanWorker: Feedable, Workable {
    func work() {
        print("Woman Worker working...")
    }
    
    func eat() {
        print("Woman Worker eating...")
    }
}

struct Robot: Workable {
    func work() {
        print("Robot working...")
    }
}

let man = ManWorker()
man.work()
man.eat()

let women = WomanWorker()
women.work()
women.eat()

let robot = Robot()
robot.work()


//Dependency Inversion

"""
Use of protocol for dependencies.

The Dependency Inversion Principle (DIP) states that high level modules should not depend on low level modules; both should depend on abstractions.
"""
