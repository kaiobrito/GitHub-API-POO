import Foundation

public protocol SingleObjectWebService {
    associatedtype T: JSONMappable
    typealias SingleObjectResponse = (T?) -> Void
    func getURL(withKey key: String) -> URL
    func getBy(key: String, response: SingleObjectResponse?)
}

extension SingleObjectWebService {
    public func getBy(key: String, response: SingleObjectResponse? = nil) {
        let url = getURL(withKey: key)
        let task = URLSession.shared.dataTask(with: url) { data, _ , _ in
            if let data = data {
                let json = JSON(data: data)
                response?(T.init(json: json))
            } else {
                response?(nil)
            }
        }
        task.resume()
    }
}
