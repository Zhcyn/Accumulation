import UIKit
class AddCategoryCell: UICollectionViewCell {
    static var defaultReuseIdentifier: String {
        return "\(self)"
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = #colorLiteral(red: 0.5206601024, green: 0.4249630868, blue: 0.6541044116, alpha: 1)
        layer.borderWidth = 1
        layer.cornerRadius = 5
    }
}
