/*:
 ## Exercise - Failable Initializers
 
 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2017.
 */
struct Computer {
    var ram: Int
    var yearMade: Int
    
    init? (ram: Int, yearMade: Int) {
        if ram > 0 && yearMade > 1970 && yearMade < 2018 {
            return nil
        } else {
            self.ram = ram
            self.yearMade = yearMade
        }
    }
}

/*:
 Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
 */
let computer1 = Computer(ram: 8, yearMade: 2017)
let computer2 = Computer(ram: 0, yearMade: 1971)
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
