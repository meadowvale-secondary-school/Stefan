/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let randomArray:[Any]=[14,15.6,"Hoop",false]
print(randomArray)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for i in randomArray{
    if let string = i as? String{
        print(string)
    }
    if let integernum = i as? Int{
        print("The integer is \(integernum)")
    }
    if let doublenum = i as? Double{
        print("The double is \(doublenum)")
    }
    if let boolval = i as? Bool{
        print("The bool value is \(boolval)")
    }
    
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var ranDict:[String:Any]=["First":14, "Second":90.7, "Third":false, "Fourth":"Hola"]
print (ranDict)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total:Double=0
for x in ranDict{
    if let addIntVal = x.value as? Int{
        total += Double(addIntVal)
    }
    if let addDoubleVal = x.value as? Double{
        total+=addDoubleVal
    }
    if let addStringVal = x.value as? String{
        total+=1
    }
    if let addBoolVal = x.value as? Bool{
        if addBoolVal == false{
            total-=3
        }else{
            total+=2
        }
    }
}
print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
/*Dont understand want it wants me to do exactly, how do I make the string value of Hola into a number*/
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
