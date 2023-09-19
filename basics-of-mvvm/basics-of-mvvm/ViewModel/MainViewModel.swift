class MainViewModel {
    
    func getData() {
        Service.getData()
    }
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return 11
    }
}
