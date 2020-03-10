//: # A Swift Tour
//:
//: Your first program:
//:
print("Hello, world! 😎")

//: ## Simple Values
//:
//: Use `let` to make a constant and `var` to make a variable.
//:
var myVariable = 42
myVariable = 50
let myConstant = 42

//: A constant or variable must have the same type as the value you want to assign to it.
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

//:
//: Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.
//:
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//:
//: There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (`\`) before the parentheses. For example:
//:
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//:
//: Use three double quotation marks (`"""`) for strings that take up multiple lines.
//:
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

//: Create arrays and dictionaries using brackets (`[]`), and access their elements by writing the index or key in brackets.
//:
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ]
occupations["Jayne"] = "Public Relations"

//: Arrays automatically grow as you add elements.
//:
shoppingList.append("blue paint")
print(shoppingList)

//: To create an empty array or dictionary, use the initializer syntax.
//:
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//: If type information can be inferred, you can write an empty array as `[]` and an empty dictionary as `[:]`—for example, when you set a new value for a variable or pass an argument to a function.
//:
shoppingList = []
occupations = [:]



//: [Next](@next)
