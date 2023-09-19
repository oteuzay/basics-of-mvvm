class ServiceConstant {
    
    public static var shared = ServiceConstant()
    
    public var url: String {
        get {
            return "http://universities.hipolabs.com/search?country=turkey"
        }
    }
    
    private init() {}
}
