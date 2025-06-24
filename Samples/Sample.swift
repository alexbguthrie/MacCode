import Foundation

/**
 * A sample struct to demonstrate syntax highlighting.
 */
struct Person {
    let name: String
    var age: Int

    func greet() {
        print("Hello, my name is \(name).")
    }
}

class Greeter {
    func sayHello(to person: Person) {
        if person.age >= 18 {
            person.greet()
        } else {
            print("Hello, young one.")
        }
    }
} 