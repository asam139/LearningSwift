import Foundation
import Combine

//: ## Subjects
//: A publisher that exposes a method for outside callers to publish elements.
let subject = PassthroughSubject<String, Never>()

let subscription = subject.sink { value in
    print("Received value: \(value)")
}

//: Manually send a value through the subject
subject.send("Hello!")

//: Subscribe the subject to a publisher, it relays the values
let publisher = Just("Here we go")
publisher.subscribe(subject)

//: [Next](@next)
