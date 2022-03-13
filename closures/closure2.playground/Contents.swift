import UIKit

//var greeting = "Hello, playground"

let count = {
    for i in 1...5{
        print(i)
        
    }
}


count()

let setname = { (name: String) in
    print("Name is \(name )")
}

setname("Sankalp")

let check = {(age : Int) -> Bool in
    
    return age>18
}

check(20)
check(18)


let setage = {(age : Int, setname : (String) -> Void) in
    
    print("Age is \(age)")
    setname("Sankalp")
}

//setage(18,setname: setname() )
setage(age:18, setnaem:setname())
