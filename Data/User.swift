import Foundation
import RealmSwift
class User: Object {
    @objc dynamic var username: String?
    @objc dynamic var password: String?
    let categories = List<Category>()
}
