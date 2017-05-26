import UIKit

class RetainCycleViewController: UIViewController {

    var doDismissCompletion: (() -> Void)?

    @IBAction func backTouchUp() {
        // Solution #1: capture self weakly
        self.doDismissCompletion = { /*[weak self]*/ _ in
            self.cleanUp()
            //self?.cleanUp()
        }
        dismiss(animated: true, completion: self.doDismissCompletion)

        // Solution #2: comment previous code and uncomment the following line
        //dismiss(animated: true, completion: self.doDismissCompletionWithFunc)
    }

    func doDismissCompletionWithFunc() {
        self.cleanUp()
    }

    func cleanUp() {
        print("cleaning up stuff")
    }

    deinit {
        print("deinit of RetainCycleViewController")
    }
}
