import UIKit

//var greeting = "Hello, playground"

var hw = {
  print("Hello, World!")
}

hw()

let greetUser = { (name: String)  in
    print("Hi, \(name).")
}


greetUser("Sankalp")

var findSq = { (num: Int) -> (Int) in
  let square = num * num
  return square
}

var result = findSq(3)

print("Square:",result)


func doSomeThings(search: ()->()) {
  print("done")

  search()
}

doSomeThings(search: {
   print("not done")
})




var completionHandlers: [() -> Void] = []
func escapingfunc(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func nonescapingfunc(closure: () -> Void) {
    closure()
}

class abc {
    var x = 10
    func doSomething() {
        escapingfunc { self.x = 100 }
        nonescapingfunc { x = 200 }
    }
}

let instance = abc()
instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)



class abc2{
    var x = 10
    func doSomething() {
        escapingfunc { [self] in x = 100 }
        nonescapingfunc { x = 200 }
    }
}

