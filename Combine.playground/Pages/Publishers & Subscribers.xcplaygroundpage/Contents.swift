import Foundation
import Combine

//: ## Publishers
//: Declares that a type can transmit a sequence of values over time.
let publisher = Just(28)

// We want to receive values from this publisher
let subscription = publisher.sink { value in
    print("Received value: \(value)")
}
//: [Next](@next)
