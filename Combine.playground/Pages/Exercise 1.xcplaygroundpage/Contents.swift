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
// Example:
/*
 struct MyCar: Codable {
     var model: String
     var wheels: Int = 4
 }
 */

// 2º Create data task publisher --> Take a look to section "Foundation and Combine"

//: [Next](@next)
