class MainViewModel {
    
    var dataResult: [University] = []
    
    func getData(completion: @escaping([University]?) -> Void) {
        Service.getData { [weak self] result in
            
            guard let self = self else { return }
            
            switch result {
                case .success(let dataResult):
                    self.dataResult = dataResult
                    completion(self.dataResult)
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.dataResult.count
    }
    
    func createMainViewCellViewModel(model: University) -> MainViewCellViewModel {
        let cellModel = MainViewCellViewModel(model: model)
        return cellModel
    }
}
