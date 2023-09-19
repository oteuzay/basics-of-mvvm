struct University: Decodable {
    
    let name: String
    let country: String
    let domains: [String]
    let webPages: [String]
    
    private enum CodingKeys: String, CodingKey {
        case country, domains, name
        case webPages = "web_pages"
    }
}
