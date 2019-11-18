import UIKit
class ItemCell: UITableViewCell {
    @IBOutlet weak var itemTextLabel: UILabel!
    @IBOutlet weak var checkmarkImageView: UIImageView!
    @IBOutlet weak var emptyCheckmark: UIImageView!
    @IBOutlet weak var dueDate: UILabel!
    static var defaultReuseIdentifier: String {
        return "\(self)"
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        checkmarkImageView.isHidden = true
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
