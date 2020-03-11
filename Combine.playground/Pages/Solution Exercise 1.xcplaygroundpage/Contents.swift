//: [Previous](@previous)

import PlaygroundSupport
import Foundation
import Combine

//: ## Exercise Combine
// Movie web service
// Documentation: https://developers.themoviedb.org/3/getting-started
let apiKey = "1d9b898a212ea52e283351e521e17871"
let baseURL = URL(string: "http://api.themoviedb.org/3/movie/popular?api_key=\(apiKey)")!

// 1º Define models --> Codable protocol
public struct Pagination<T: Codable>: Codable {
    var page: Int
    var totalResults: Int
    var totalPages: Int

    var results:[T] = []

    enum CodingKeys: String, CodingKey {
        case page
        case totalResults = "total_results"
        case totalPages = "total_pages"
        case results
    }
}

struct Movie: Codable {
    var title: String
    var overview: String
}


// 2º Create data task publisher --> Take a look to section "Foundation and Combine"
let _ = URLSession.shared.dataTaskPublisher(for: baseURL)
    .map { $0.data }
    .decode(type: Pagination<Movie>.self, decoder: JSONDecoder())
    .sink(receiveCompletion: { (result) in
        switch result {
        case .failure(let error):
            print(error)
        case .finished:
            print("Finished")
        }
    }, receiveValue: { (pagination) in
        print(pagination)
    })
