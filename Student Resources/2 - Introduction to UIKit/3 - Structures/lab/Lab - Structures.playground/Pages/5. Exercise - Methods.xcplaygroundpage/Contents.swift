/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Movie {
    var title: String
    var yearMade: Int
    var length: String
    var price: Double
}
var myFavoriteMovie = Movie(title: "the Goonies", yearMade: 1985, length: "1 Hour and 54 minutes", price: 7.99)
print("My favorite movie is \(myFavoriteMovie.title) it came out in \(myFavoriteMovie.yearMade) it is \(myFavoriteMovie.length) and you can buy it now for \(myFavoriteMovie.price) ")

/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func counter(by amount: Int) {
    likes += amount
    }
}
var myPost = Post(message: "Today i leared struct's", likes: 2, numberOfComments: 6)
print(myPost.likes)
myPost.counter(by: 2)
print(myPost.likes)
//: [Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
