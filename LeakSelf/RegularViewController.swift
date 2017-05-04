import UIKit

class RegularViewController: UIViewController {

    @IBAction func backTouchUp() {
        dismiss(animated: true)
    }

    deinit {
        print("deinit of RegularViewController")
    }
}
