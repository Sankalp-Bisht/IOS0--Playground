import UIKit

//var greeting = "Hello, playground"

struct techIntern {
   var ios: Int
   var marketing: Int
   var android: Int
   var monitization: Int
}

let Intern_2022 = techIntern(ios: 3, marketing: 5, android: 4, monitization: 7)

print(Intern_2022)


class Show{
    var name: String
    var type: String
    
    init(name: String,type: String)
    {
        self.name = name
        self.type = type
    }
}
class cartoon: Show{
    var channel: String
    
    init(name: String, type: String, channel: String){
        self.channel = channel
        super.init(name: name, type: type)
    }
}
class dailySoap: Show{
    var days: Int
    
    init(name: String, type: String, days: Int){
        self.days = days
        super.init(name: name, type: type)
    }
}

let pokemon = cartoon(name:"pokemon", type: "kids" ,channel: "CN")
let friends = dailySoap(name:"F.R.I.E.N.D.S",type: "adults", days: 5)

print(pokemon === friends)
print(pokemon.name == friends.name)



