import Foundation
import RealmSwift
class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
    var user = LinkingObjects(fromType: User.self, property: "categories")
}
