public protocol Coordinator: class {
    
    var completionHandler: (()->())? {get set}
    
    func start()
}
