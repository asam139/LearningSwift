//: [Previous](@previous)

import Combine
import UIKit

//: ## The rules of a subscription
//: Operators are functions defined on publisher instances...
//: - A subscriber will receive a _single_ subscription
//: - _Zero_ or _more_ values can be published
//: - At most _one_ completion will be called
//: - After completion, nothing more is received
//: - ... operators can be chained to add processing steps

enum ExampleError: Swift.Error {
    case somethingWentWrong
}

let subject = PassthroughSubject<String, ExampleError>()

// The handleEvents operator lets you intercept
// All stages of a subscription lifecycle
subject.handleEvents(receiveSubscription: { (subscription) in
        print("New subscription!")
    }, receiveOutput: { _ in
        print("Received new value!")
    }, receiveCompletion: { _ in
        print("A subscription completed")
    }, receiveCancel: {
        print("A subscription cancelled")
    })
    .replaceError(with: "Failure")
    .sink { (value) in
        print("Subscriber received value: \(value)")
    }

subject.send("Hello!")
subject.send("Hello again!")
subject.send("Hello for the last time!")
subject.send(completion: Subscribers.Completion<ExampleError>.failure(ExampleError.somethingWentWrong))
subject.send("Hello?? :(")

//: [Next](@next)
