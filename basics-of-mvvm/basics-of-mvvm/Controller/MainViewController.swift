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
        view.backgroundColor = .white
    }
    
    private func configureNavigation() {
        self.navigationItem.title = "Universities"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setup() -> Void {
        configureView()
        configureNavigation()
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
