import Foundation

func delayAction(delay:Double, function:@escaping () -> ()) {
    let deadline = DispatchTime.now() + delay
    DispatchQueue.main.asyncAfter(deadline: deadline, execute: function)
}
