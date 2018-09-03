import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var labelB: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // NG
        let layer = labelA.layer
        layer.shadowPath = UIBezierPath(rect: labelA.bounds).cgPath
        layer.shouldRasterize = true
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 5, height: 5)
        layer.shadowOpacity = 1
        layer.shadowRadius = 7
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        // OK
        let layer = labelB.layer
        layer.shadowPath = UIBezierPath(rect: labelB.bounds).cgPath
        layer.shouldRasterize = true
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 5, height: 5)
        layer.shadowOpacity = 1
        layer.shadowRadius = 7
    }
}
