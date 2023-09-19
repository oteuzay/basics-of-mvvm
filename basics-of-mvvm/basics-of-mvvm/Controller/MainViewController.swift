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
        viewModel.getData { [weak self] result in
            guard let self = self else { return }
            guard let resultData = result else { return }
            self.dataResult = resultData
        }
    }
}
