//: Playground - noun: a place where people can play

import UIKit


// To urwrap an Optional you can use many differant way the easiest way of doing so is force unwraping it witch althought easy is not very practical

var number1: String? = "Hello"
let number1ForceUnwrapped = number1!
print( number1ForceUnwrapped )
print("this will crash yout app if the optional String returns nil")








// if lets and gaurds
// if letss are simple to understand and are fairly safe to use if you know what you are doing however if you need to check/unwrap multiple things gaurds will not only save your time but also make your code look nice and can be easily maintained
// if let

// Question #1
// take  the variable given below and unwrap it use your unwraped variable in a print statement - First steps
let name: String? = ""
if let name = name {
    print(name)
}
// Question #2
// set up the following using only if let statements
let firstName = ""
let age: Int? = nil
let city = ""

if let age = age {
    print(age)
}


// Question #3 set up the following only using gaurds
let lastName = ""
let ageInMonths: Int? = 27
let town = ""

guard let ageInMonths = ageInMonths else {
    fatalError()
}
print(ageInMonths)

// Question #4
// discuss the ddifferences between if let and gaurd as well as why and when to use them
print("You dont have to write any code for this one... unless you want to be THAT Guy 😒")
