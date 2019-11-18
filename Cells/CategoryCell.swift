import UIKit
class CategoryCell: UICollectionViewCell {
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var completedItemsLabel: UILabel!
    static var defaultReuseIdentifier: String {
        return "\(self)"
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
    func shake() {
        let shakeAnimation = CABasicAnimation(keyPath: "transform.rotation")
        shakeAnimation.duration = 0.05
        shakeAnimation.repeatCount = 2
        shakeAnimation.autoreverses = true
        let startAngle: Float = (0.3) * 3.14159/180
        let stopAngle = -startAngle
        shakeAnimation.fromValue = NSNumber(value: startAngle as Float)
        shakeAnimation.toValue = NSNumber(value: 3 * stopAngle as Float)
        shakeAnimation.autoreverses = true
        shakeAnimation.duration = 0.15
        shakeAnimation.repeatCount = 10000
        shakeAnimation.timeOffset = 290 * drand48()
        let layer: CALayer = self.layer
        layer.add(shakeAnimation, forKey:"shaking")
    }
    func stopShaking() {
        let layer: CALayer = self.layer
        layer.removeAnimation(forKey: "shaking")
    }
}
