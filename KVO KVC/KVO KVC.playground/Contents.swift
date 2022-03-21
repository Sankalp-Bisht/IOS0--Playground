import UIKit

//class Pokemon {
//    var name: String
//
//    init(name: String) {
//       self.name = name
//    }
//}

// FROM Medium ARTICLE


class Pokemon: NSObject {
    @objc dynamic var name: String
    
    init(name: String) {
       self.name = name
    }
}

let myFirstPokemon = Pokemon(name: "Charmander")
print(myFirstPokemon.name)

myFirstPokemon.name = "Charmeleon"
print(myFirstPokemon.name)

let pokemonName = myFirstPokemon.value(forKey: "name")
myFirstPokemon.setValue("Charmeleon", forKey: "name")


myFirstPokemon.observe(\.name, options: [.old, .new]) { (pokemon, value) in
    print("old name \(value.oldValue!)")
    print("new name \(value.newValue!)")
}
//let pokemonName = myFirstPokemon.value(forKey: "name")
myFirstPokemon.setValue("Charlizard", forKey: "name")
