/*:
 ## Exercise - Define a Base Class
 
 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. Throughout the exercises, you'll create classes to represent different types of spaceships that can be used in the game.
 
 Create a `Spaceship` class with three variable properties: `name`, `health`, and `position`. The default value of `name` should be an empty string and `health` should be 0. `position` will be represented by an `Int` where negative numbers place the ship further to the left and positive numbers place the ship further to the right. The default value of `position` should be 0.
 */
class Spaceship {
    
    var name = ""
    var health = 100
    var positionY: Int = 0
    var positionX: Int = 0
    var positionZ: Int = 0
    
    init(name: String, health: Int, positionY: Int, positionX: Int, positionZ: Int) {
        
        self.health = health
        self.name = name
        self.positionY = positionY
        self.positionX = positionX
        self.positionZ = positionZ
    }
    func moveRight() {
        positionY += 1
    }
    func moveleft() {
        positionY -= 1
    }
    func moveUp() {
        positionZ += 1
    }
    func moveDown() {
        positionZ -= 1
    }
    func moveFoward() {
        positionX += 1
    }
    func moveBackwards() {
        positionX -= 1
    }
    func wasHit() {
        health -= 5
        if health == 0 {
            print("sorry you died. would you like to play again?")
        }
    }
    
    
}

/*:
 Create a `let` constant called `falcon` and assign it to an instance of `Spaceship`. After initialization, set `name` to "Falcon".
 */
let falcon = Spaceship(name: "falcon Z", health: 100, positionY: 0, positionX: 0, positionZ: 0)

/*:
 Go back and add a method called `moveLeft()` to the definition of `Spaceship`. This method should adjust the position of the spaceship to the left by one. Add a similar method called `moveRight()` that moves the spaceship to the right. Once these methods exist, use them to move `falcon` to the left twice and to the right once. Print the new position of `falcon` after each change in position.
 */
print(falcon.positionY)
falcon.moveleft()
print(falcon.positionY)

/*:
 The last thing `Spaceship` needs for this example is a method to handle what happens if the ship gets hit. Go back and add a method `wasHit()` to `Spaceship` that will decrement the ship's health by 5, then if `health` is less than or equal to 0 will print "Sorry. Your ship was hit one too many times. Do you want to play again?" Once this method exists, call it on `falcon` and print out the value of `health`.
 */


//: page 1 of 4  |  [Next: Exercise - Create a Subclass](@next)
