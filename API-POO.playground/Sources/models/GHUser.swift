import Foundation

public struct GHUser: JSONMappable {
    public var id: String
    public var login: String
    
    //MARK: - JSONMappable
    public init(json: JSON) {
        self.id = json["id"].stringValue
        self.login = json["login"].stringValue
    }
}
