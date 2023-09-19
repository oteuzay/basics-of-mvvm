import UIKit

class MainViewCell: UITableViewCell {
    
    // MARK: - Properties
    private let universityImageView: UIImageView = {
        let image = #imageLiteral(resourceName: "university")
        let imageView = UIImageView()
        
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        imageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        return imageView
    }()
    
    private let universityNameLabel: UILabel = {
        let label = UILabel()
        
        label.text = "University Name"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        
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
        stackView = UIStackView(arrangedSubviews: [universityImageView, universityNameLabel])
        
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    private func layout() {
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
        ])
    }
}
