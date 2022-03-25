import UIKit

//var greeting = "Hello, playground"
class OneMgServices{
    
    static let newService = OneMgServices()
    
    var locationGranted: Bool?
    private init(){}
    
    func requestForLocation(){
        locationGranted = true
        print("Location granted")
    }
    
}

OneMgServices.newService.requestForLocation()


