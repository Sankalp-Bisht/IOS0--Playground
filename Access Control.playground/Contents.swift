import UIKit




public class employee{
    
    public var name:String
    init(name:String){
        self.name = name
    }
}

private class OneMgEmployee: employee{
    
    private var department:String
    private let id:Int
    
    init(name:String,department:String,id:Int){
        self.id = id
        self.department = department
        super.init(name : name)
    }
}

private class OneMgIntern: employee{
    private var technology: String
    init(name:String,tech:String){
        self.technology = tech
        super.init(name: name)
    }
}

private var IOSintern = OneMgIntern(name: "Sankalp", tech: "IOS")
private var IOSemploye = OneMgEmployee(name: "Sahil", department: "IOS", id: 21)


//private func printPrivateVariable(IOSintern: OneMgIntern){
//
//    print(IOSintern)
//}
//
//public class print{
//    private func printPrivateVariable2(IOSintern: OneMgIntern){
//        print()
//    }
//}
