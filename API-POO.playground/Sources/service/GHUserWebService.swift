import Foundation

public class GHUserWebService: SearchableWebService, SingleObjectWebService {
    public typealias T  = GHUser
    public init() { }

    //MARK: - SearchableWebService
    public func searchURL(withTerm term: String) -> URL {
        return URL(string: "https://api.github.com/search/users?q=\(term)")!
    }

    //MARK: - SingleObjectWebService
    public func getURL(withKey key: String) -> URL {
        return URL(string: "https://api.github.com/users/\(key)")!
    }
}
