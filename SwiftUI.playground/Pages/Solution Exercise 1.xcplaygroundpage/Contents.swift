//: [Previous](@previous)

//: ## Exercise 1
//: - Animate drag & drop of the main image in the details view

//: ### 1º Create offset state

//@State var offset = CGSize.zero

//: ### 2º Manage drag & drop
/*
 Example
 .gesture(
     DragGesture().onChanged { value in
         self.offset = value.translation
     }
     .onEnded { value in
         self.offset = .zero
     }
 )
 */

//: ### 3º Set offset in the view

//.offset(x: offset.width, y: offset.height)

//: ### 4º Animate
//.animation(.spring())

//: [Next](@next)
