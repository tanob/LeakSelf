import UIKit

class RetainCycleViewController: UIViewController {

    var doDismissCompletion: (() -> Void)?

    @IBAction func backTouchUp() {
        self.doDismissCompletion = { _ in
            self.cleanUp()
        }
        dismiss(animated: true, completion: self.doDismissCompletion)
    }

    func cleanUp() {
        print("cleaning up stuff")
    }

    deinit {
        print("deinit of RetainCycleViewController")
    }
}
