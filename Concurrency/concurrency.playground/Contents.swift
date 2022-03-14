import UIKit


func printName(name:String) async -> String {
    Thread.sleep(forTimeInterval: 0.1)
    return name
    
}
var Namearr = [String]()
Task{
let firstname = await printName(name: "Sankalp")
let secondname = await printName(name: "Amereshwar")
let thirdname = await printName(name: "Shaurya")

    Namearr.append(firstname)
    Namearr.append(secondname)
    Namearr.append(thirdname)
}
print(Namearr)



//async let firstName = printName(name: "Sankalp")
//async let secondName = printName(name: "Singh")
//async let thirdName = printName(name: "Bisht")



actor TemperatureLogger {
    let label: String
    var measurements: [Int]
    private(set) var max: Int

    init(label: String, measurement: Int) {
        self.label = label
        self.measurements = [measurement]
        self.max = measurement
    }
}

//let logger = TemperatureLogger(label: "Outdoors", measurement: 25)
//
//
//print(await logger.max)

Task{
    let logger = TemperatureLogger(label: "Room", measurement: 16)
    
    print(await logger.max)
}
