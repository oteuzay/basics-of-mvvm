import UIKit

struct MainViewCellViewModel {
    private let model: University
    
    var url: URL? {
        return URL(string: model.webPages.first ?? "https://www.apple.com/")
    }
    
    var name: String? {
        return model.name
    }
    
    init(model: University) {
        self.model = model
    }
}
