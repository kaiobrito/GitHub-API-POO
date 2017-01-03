import Foundation

public protocol SearchableWebService {
    typealias SearchResponseHandler = (([T]?) -> Void)
    associatedtype T: JSONMappable
    func searchURL(withTerm term: String) -> URL
    func search(term: String, handler: SearchResponseHandler?)
}

extension SearchableWebService {
    public func search(term: String, handler: SearchResponseHandler? = nil) {
        let url = self.searchURL(withTerm: term)
        let task = URLSession.shared.dataTask(with: url) { data, _ , _ in
            if let data = data {
                let json = JSON(data: data)
                handler?(json["items"].arrayValue.map(T.init))
            } else {
                handler?(nil)
            }
        }
        task.resume()
    }
}

