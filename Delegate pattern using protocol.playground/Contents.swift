import UIKit

//var greeting = "Hello, playground"
import UIKit
import PlaygroundSupport


protocol AdditionResultDelegate : AnyObject
{
    func didFinishAddingTwoNumbers(result: Int)
}

class Developer
{
    weak var managerReference: AdditionResultDelegate?

    func developerWillAddTwoNumber(a: Int, b: Int)
    {
        let result = a + b
        managerReference?.didFinishAddingTwoNumbers(result: result)
    }
}

class Manager : AdditionResultDelegate
{
    var developer: Developer?

    init(_developer: Developer) {
        developer = _developer
        developer?.managerReference = self
    }

    func didFinishAddingTwoNumbers(result: Int)
    {
        debugPrint("result of addition = \(result)")
    }

    func addTwoNumber(x: Int, y: Int)
    {
        developer?.developerWillAddTwoNumber(a: x, b: y)
    }
}

let objManager = Manager(_developer: Developer())
objManager.addTwoNumber(x: 10, y: 10)




protocol Food : AnyObject{
    
    func eatfood()
    func bill(eaten: Bool)
}

class Resturant: Food{
    
    weak var customerReference: Customer?
    
    init(_customer: Customer){
        customerReference = _customer
        customerReference?.dining = self
    }
    func eatfood() {
        print("food is eaten")
        self.bill(eaten: true)
    }
    
    func storefood() {
        print("food is stored")
    }
    
    func bill(eaten: Bool){
        if(eaten == true){
            print("bill is ready")
        }
    }
    
    
}

class Customer{
    
    var dining:Food?

    func customer_went_to_eat(){
        dining?.eatfood()

    }
}



var SomeCustomer = Customer()
var resturant = Resturant(_customer: SomeCustomer)

SomeCustomer.customer_went_to_eat()
