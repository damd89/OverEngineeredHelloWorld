protocol HelloProtocol {
    var greeting: String { get set }
    /// Prints "Hello, World"
    func sayHello()
}

extension HelloProtocol {
    func sayHello() {
        print("Hello, World")
    }
}

protocol WorldProtocol {
    var name: String { get set }
}


struct Earth: WorldProtocol, HelloProtocol {
    var greeting: String
    var name: String

    func sayHello() {
        print("\(greeting), \(name)")
    }
}

let earth = Earth(greeting: "Hello",
                  name: "Earth")
earth.sayHello()
