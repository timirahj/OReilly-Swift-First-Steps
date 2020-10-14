import FluentSQLite
import Vapor
import Leaf

/// Called before your application initializes.
public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {
    // Register providers first
    try services.register(FluentSQLiteProvider())
    
    //register the Leaf provider
    try services.register(LeafProvider())
    
    //Make Leaf the preferred view renderer
    config.prefer(LeafRenderer.self, for: ViewRenderer.self)
    

    // Register routes to the router
    let router = EngineRouter.default()
    try routes(router)
    services.register(router, as: Router.self)

}
