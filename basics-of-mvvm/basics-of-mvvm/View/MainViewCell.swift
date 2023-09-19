import UIKit

class MainViewCell: UITableViewCell {
    
    // MARK: - Properties
    var viewModel: MainViewCellViewModel? {
        didSet {
            configure()
        }
    }
        
    private let universityNameLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Name"
        label.textColor = .darkText
        
        return label
    }()
    
    private let universityURLLabel: UILabel = {
        let label = UILabel()
        
        label.text = "URL"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        
        return label
    }()
    
    private var stackView: UIStackView!
    
    // MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
}

extension MainViewCell {
    private func setup() {
        stackView = UIStackView(arrangedSubviews: [universityNameLabel, universityURLLabel])
        
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layout() {
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 19),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
        ])
    }
    
    private func configure() {
        guard let viewModel = self.viewModel else { return }
        
        if let name = viewModel.name {
            self.universityNameLabel.text = name
        } else {
            self.universityNameLabel.text = "No Name Available."
        }
        
        if let url = viewModel.url {
            if let cleaned = url.host()?.replacingOccurrences(of: "www.", with: "") {
                self.universityURLLabel.text = "\(cleaned)"
            }
        } else {
            self.universityURLLabel.text = "No URL Available."
        }
        
    }
}
