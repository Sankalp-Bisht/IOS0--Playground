import UIKit

//var greeting = "Hello, playground"


func syncWork(){
        let northZone = DispatchQueue(label: "perform_task_with_team_north")
        let southZone = DispatchQueue(label: "perform_task_with_team_south")
        
        northZone.sync {
            for numer in 1...3{ print("North \(numer)")}
        }
        southZone.sync {
            for numer in 1...3{ print("South \(numer)") }
        }
    }

    syncWork()

print("\n")

func asyncWork(){
        let northZone = DispatchQueue(label: "perform_task_with_team_north")
        let southZone = DispatchQueue(label: "perform_task_with_team_south")
        
        northZone.async {
            for numer in 1...3{ print("North \(numer)") }
        }
        southZone.async {
            for numer in 1...3{ print("South \(numer)") }
        }
    }

asyncWork()

