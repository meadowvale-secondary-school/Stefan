/*:
 ## Exercise - For-In Loops
 
 Create a for-in loop that loops through values 1 to 100, and prints each of the values.
 */
/*
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
for (index,letters) in alphabet.enumerated(){
    print (index,letters)
}
*/
/*:
 Create a `[String: String]` dictionary, where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, then use a for-in loop to iterate over the pairs and print out the keys and values in a sentence.
 */
var geography:[String:String]=["Ontario":"Toronto", "Alberta":"Calgary", "Quebec":"Quebec City"]
for (provinces,cities) in geography {
    print("The province of \(provinces) has a capital called \(cities)")
}
//: page 1 of 6  |  [Next: App Exercise - Movements](@next)
