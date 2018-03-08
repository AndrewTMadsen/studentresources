/*:
 ## Exercise - Optionals
 
  >Throughout the exercises in this playground, you will be printing optional values. The Swift compiler will display a warning: "Expression implicitly coerced from `Int?` to Any". For the purposes of these exercises, you can ignore this warning.

 Imagine you have an app that asks the user to enter his/her age using the keyboard. When your app allows a user the input text, what is captured for you is given as a `String`. However, you want to store this information as an `Int`. Is it possible for the user to make a mistake and for the input to not match the type you want to store?
 
 Declare a constant `userInputAge` of type `String` and assign it "34e" to simulate a typo while typing age. Then declare a constant `userAge` of type `Int` and use the `Int` initializer and pass in `userInputAge`. What error do you get?
*/
//let userInputAge: String = "34e"
//let userAge: Int = userInput
// you get a message saying cant covert a String to a Int
/*:
 Go back and change the type of `userAge` to `Int?`, and print the value of `userAge`. Why is `userAge`'s value `nil`? Provide your answer in a comment or print statement below.
 */
// it returns nil becuse it picks up the "e" and says thats not an Int so it becomes an optional
/*:
 Now go back and fix the typo on the value of `userInputAge`. Is there anything about the value printed that seems off?
 
 Print `userAge` again, but this time unwrap `userAge` using the bang operator.
 */
// it prints as an optional so it looks strange
// if we unwrap the userAge first it prints normal because unwraping it converts it from an optional to a Int
/*:
 Now use optional binding to unwrap `userAge`. If `userAge` has a value, print it to the console.
 */
let userImputAge: Int? = 34
let userAge = userImputAge!
print ("The User is \(String(describing: userAge))")
//: page 1 of 6  |  [Next: App Exercise - Finding a Heart Rate](@next)
