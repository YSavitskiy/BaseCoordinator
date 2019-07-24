open class BaseCoordinator: Coordinator, ChildCoordinable {
    
    open var childCoordinators: [Coordinator] = []
    
    open var completionHandler: (() -> ())?
    
    open func start() {
        
    }
    
    open func addDependency(_ coordinator: Coordinator) {
        for element in childCoordinators {
            if element === coordinator { return }
        }
        childCoordinators.append(coordinator)
    }
    
    open func removeDependency(_ coordinator: Coordinator?) {
        guard
            childCoordinators.isEmpty == false,
            let coordinator = coordinator
            else { return }
        
        for (index, element) in childCoordinators.enumerated() {
            if element === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    public init() {
        
    }
}
