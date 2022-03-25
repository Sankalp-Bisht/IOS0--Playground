import UIKit

// raywenderlich

import Foundation


public class Door {
  public var isOpen = false
}

// MARK: - Command
// 1
public class DoorCommand {
  public let door: Door
  public init(_ door: Door) {
    self.door = door
  }
  public func execute() { }
}

// 2
public class OpenCommand: DoorCommand {
  public override func execute() {
    print("opening the door...")
    door.isOpen = true
  }
}

// 3
public class CloseCommand: DoorCommand {
  public override func execute() {
    print("closing the door...")
    door.isOpen = false
  }
}


// MARK: - Invoker
// 1
public class Doorman {

  // 2
  public let commands: [DoorCommand]
  public let door: Door

  // 3
  public init(door: Door) {
    let commandCount = arc4random_uniform(10) + 1
    self.commands = (0 ..< commandCount).map { index in
      return index % 2 == 0 ?
        OpenCommand(door) : CloseCommand(door)
    }
    self.door = door
  }

  // 4
  public func execute() {
    print("Doorman is...")
    commands.forEach { $0.execute() }
  }
}


// MARK: - Example
public let isOpen = true
print("You predict the door will be " +
  "\(isOpen ? "open" : "closed").")
print("")

let door = Door()
let doorman = Doorman(door: door)
doorman.execute()
print("")




if door.isOpen == isOpen {
  print("You were right! :]")
} else {
  print("You were wrong :[")
}
print("The door is \(door.isOpen ? "open" : "closed").")

