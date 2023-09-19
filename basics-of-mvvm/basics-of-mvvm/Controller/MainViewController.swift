import UIKit

class MainViewController: UITableViewController {
    
    // MARK: - Properties
    var viewModel = MainViewModel()
    var dataResult: [University] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
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
        getData()
    }
    
    func getData() {
        viewModel.getData { result in
            self.dataResult = result
        }
    }
}
