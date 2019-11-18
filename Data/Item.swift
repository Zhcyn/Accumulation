import Foundation
import RealmSwift
class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dueDate = Date()
    var category = LinkingObjects(fromType: Category.self, property: "items")
}
