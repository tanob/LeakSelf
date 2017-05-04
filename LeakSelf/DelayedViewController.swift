import UIKit

class DelayedViewController: UIViewController {

    @IBAction func backTouchUp(_ sender: Any) {
        dismiss(animated: true)
    }

    @IBAction func delayOperation(_ sender: Any) {
        delayAction(delay: 4) {
            print("calling print from DelayedViewController with strong (\(String(describing: self))")
        }
    }

    @IBAction func delayOperationWithWeak(_ sender: Any) {
        delayAction(delay: 4) { [weak self] in
            print("calling print from DelayedViewController with weak (\(String(describing: self)))")
        }
    }

    @IBAction func delayOperationWithUnowned(_ sender: Any) {
        delayAction(delay: 4) { [unowned self] in
            print("calling print from DelayedViewController with owned (\(String(describing: self)))")
        }
    }

    func delayAction(delay:Double, function:@escaping () -> ()) {
        let deadline = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: deadline, execute: function)
    }

    deinit {
        print("deinit of DelayedViewController")
    }
}
