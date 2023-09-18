import UIKit

class MainViewController: UITableViewController {
    
    // MARK: - Properties
    var viewModel = MainViewModel()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad();
        setup()
    }
}

extension MainViewController {
    private func configureView() {
        view.backgroundColor = .purple
    }
    
    func setup() -> Void {
        configureView()
        registerTableView()
    }
}
