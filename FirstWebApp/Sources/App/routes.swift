import Vapor

var imageURL: URL?

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, there!"
    }
    
    // Instead of stating another string we use a custom PathComponent using parameter
    router.get("greet", String.parameter) { request -> String in
        let name = try request.parameters.next(String.self)
        
        return "hello \(name)"
    }
  
    
    // Make Leaf your view priority
    router.get("/") { request -> Future<View> in
        
        return try request.view().render("welcome")
    }
}
