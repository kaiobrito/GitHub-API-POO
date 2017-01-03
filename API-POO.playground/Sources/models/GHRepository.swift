import Foundation

public struct GHRepository: JSONMappable {
    public var id: String
    public var name: String
    
    //MARK: - JSONMappable
    public init(json: JSON) {
        self.id = json["id"].stringValue
        self.name = json["name"].stringValue
    }
}
