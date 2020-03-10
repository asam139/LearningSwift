//: [Previous](@previous)

import Foundation
import UIKit
import Combine

//: ## @Published properties
//: A type that publishes a property marked with an attribute.
//: It is a property wrapper (@propertyWrapper)

class FormViewModel: ObservableObject {
    @Published var isSubmitAllowed: Bool = true
}

class FormViewController: UIViewController {

    var viewModel = FormViewModel()
    let submitButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.$isSubmitAllowed
            .receive(on: DispatchQueue.main)
            .print()
            .assign(to: \.isEnabled, on: submitButton)
    }
}

let formViewController = FormViewController(nibName: nil, bundle: nil)
print("Button enabled is \(formViewController.submitButton.isEnabled)")
formViewController.viewModel.isSubmitAllowed = false
print("Button enabled is \(formViewController.submitButton.isEnabled)")

//: [Next](@next)
