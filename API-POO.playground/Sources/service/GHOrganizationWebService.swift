import Foundation

public class GHOrganizationWebService: SingleObjectWebService {
    public typealias T = GHOrganization
    public init() { }

    //MARK: - SingleObjectWebService
    public func getURL(withKey key: String) -> URL {
        return URL(string: "https://api.github.com/orgs/\(key)")!
    }
}
