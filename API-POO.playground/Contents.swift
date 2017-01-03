import Foundation
import PlaygroundSupport

GHUserWebService().getBy(key: "kaiobrito") { debugPrint($0) }
GHUserWebService().search(term: "kaio") { users in debugPrint(users) }
GHRepositoryWebService().search(term: "madewithlove") { debugPrint($0) }
GHOrganizationWebService().getBy(key: "madewithlove") { debugPrint($0) }

PlaygroundPage.current.needsIndefiniteExecution = true




