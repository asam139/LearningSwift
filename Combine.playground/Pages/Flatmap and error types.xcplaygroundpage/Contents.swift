//: [Previous](@previous)

import Foundation
import UIKit
import Combine

//: ## Flatmap and matching error types
//: - Flatmapping into a new `Publisher` type requires to match the original streams types. It allows you to take a value and return a new `Publisher`.
//: - Using `mapError` to change the `DataTaskPublisher.URLError` to our own `RequestError` type
enum RequestError: Error {
    case sessionError(error: Error)
}

let URLPublisher = PassthroughSubject<URL, RequestError>()

let subscription = URLPublisher
    .flatMap { requestURL in
        URLSession.shared
            .dataTaskPublisher(for: requestURL)
            .mapError { error -> RequestError in
                RequestError.sessionError(error: error)
            }
    }
    .assertNoFailure()
    .sink { result in
        print("Request finished!")
        _ = UIImage(data: result.data)
    }

URLPublisher.send(URL(string: "https://httpbin.org/image/jpeg")!)
//: [Next](@next)
