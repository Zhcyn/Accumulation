import UIKit
extension UIViewController {
    func displayAlert(title: String, with message: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alertVC, animated: true, completion: nil)
    }
    func subscribeToItemNotifications(selector: Selector) {
        NotificationCenter.default.addObserver(self, selector: selector, name: .didAddOrUpdateItem, object: nil)
    }
    func unsubscribeToItemNotifications() {
        NotificationCenter.default.removeObserver(self, name: .didAddOrUpdateItem, object: nil)
    }
}
extension Notification.Name {
    static let didAddOrUpdateItem = Notification.Name("didAddOrUpdateItem")
}
