import Foundation

public class GHRepositoryWebService: SearchableWebService {
    public typealias T = GHRepository
    public init() { }
    
    //MARK: - SearchableWebService
    public func searchURL(withTerm term: String) -> URL {
        return URL(string:"https://api.github.com/search/repositories?q=\(term)")!
    }
}
