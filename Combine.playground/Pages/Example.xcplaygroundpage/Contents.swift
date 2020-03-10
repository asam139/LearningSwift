//: [Previous](@previous)

import PlaygroundSupport
import Foundation
import SwiftUI
import Combine

//: ## Example mixing SwiftUI + Combine
//: Binding to SwiftUI views (structs)
let subject = PassthroughSubject<String, Never>()

class Texts: ObservableObject {
    @Published var firstText: String = "Hello World!"
    @Published var secondText: String = "Awesome"
}

struct ContentView: View {
    @ObservedObject var texts: Texts = Texts()

    var subject: PassthroughSubject<String, Never>
    var cancellable = Set<AnyCancellable>()

    init(subject: PassthroughSubject<String, Never>) {
        self.subject = subject
        self.subject
            .map { "New value: \($0)!!!" }
            .assign(to: \.secondText, on: texts)
            .store(in: &cancellable)
    }

    var body: some View {
        VStack {
            Text(texts.firstText).onTapGesture {
                self.texts.firstText = self.texts.firstText + " 👨‍💻"
            }
            Text(texts.secondText)
        }
    }
}
PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView(subject: subject))

//: Send value
subject.send("😍")

// Movie web service
//let baseURL = URL(string: "http://api.themoviedb.org/3/movie/popular?api_key=1d9b898a212ea52e283351e521e17871")!
//let apiKey = ""
