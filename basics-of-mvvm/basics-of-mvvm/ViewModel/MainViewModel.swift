class MainViewModel {
    
    var dataResult: [University] = []
    
    func getData(completion: @escaping([University]) -> Void) {
        Service.getData { result in
            switch result {
                
            case .success(let dataResult):
                self.dataResult = dataResult
                completion(dataResult)
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
}
