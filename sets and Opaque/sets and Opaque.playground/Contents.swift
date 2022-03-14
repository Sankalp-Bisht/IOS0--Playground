import UIKit

//var greeting = "Hello, playground"



let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()

oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()


let uniqueName:Set = ["Sankalp","Sankalp","Sankalp","Sankalp","Singh"]


let subsetName:Set = ["Sankalp"]
let subsetNameAndMore:Set = ["Sankalp","Bisht"]
print(uniqueName)

uniqueName.isSubset(of: subsetName)
subsetName.isSubset(of: uniqueName)

uniqueName.isSuperset(of: subsetName)
subsetName.isSuperset(of: uniqueName)


uniqueName.isDisjoint(with: subsetName)
subsetName.isDisjoint(with: uniqueName)

uniqueName.isSubset(of: subsetNameAndMore)
subsetNameAndMore.isSubset(of: uniqueName)
