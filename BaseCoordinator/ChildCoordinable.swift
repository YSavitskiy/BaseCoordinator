public protocol ChildCoordinable {
    var childCoordinators: [Coordinator] { get set }
    func addDependency(_ coordinator: Coordinator)
    func removeDependency(_ coordinator: Coordinator?)
}
