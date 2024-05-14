import SwiftUI

extension AnyTransition {
    static var slideInOutFromRight: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .move(edge: .trailing),
            removal: .move(edge: .trailing)
        )
    }
}
