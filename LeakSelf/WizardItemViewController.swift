import UIKit

class WizardItemViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    @IBAction func backTouchUp() {
        dismiss(animated: true)
    }

    deinit {
        print("deinit of WizardItemViewController: \(String(describing: label.text))")
    }
}
