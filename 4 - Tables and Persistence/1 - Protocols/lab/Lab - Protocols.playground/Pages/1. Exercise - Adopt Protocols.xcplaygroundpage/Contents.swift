/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
import Foundation

class Human: CustomStringConvertible, Equatable, Comparable, Codable{
    let name : String
    var age : Int
    
    init(name:String, age:Int){
        self.name = name
        self.age = age
    }
    var description: String{
        return "This human's name is \(name), and his/her age is \(age)"
    }
    static func ==(lhs: Human, rhs: Human) -> Bool{
        return lhs.name==rhs.name && lhs.age==rhs.age
    }
    static func < (lhs: Human, rhs: Human) -> Bool{
        return lhs.age > rhs.age
    }
    
}

let stefan = Human(name: "Stefan", age: 16)
let julian = Human(name: "Julian", age: 17)
let monacco = Human(name: "Monacco", age: 21)
let nick = Human(name: "Nick", age: 9)
let sam = Human(name: "Sam", age: 13)
print(stefan)
print(julian)
print (stefan != julian)
let people = [stefan, julian, monacco, nick, sam]
let sortedPeople = people.sorted(by: <)
for people in sortedPeople{
    print(people)
}
/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */


/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */


/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */


/*:
 Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
 */



//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
