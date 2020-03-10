# LearningSwift
A list of guides of Swift based in playgrounds

## Swift Playground

This playground provides a modified version of Apple’s playground [**Swift Tour** tutorial](https://docs.swift.org/swift-book/GuidedTour/GuidedTour.playground.zip).

### Exercises

The main playground contains a section with multiple exercises in order to consolidate learning.


## SwiftUI Playground

This playground provides a version of Apple’s [**Building Lists and Navigation** tutorial](https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation).

### Implementation

A `UIHostingController` can be used in a Playground Live View like this:

```swift
PlaygroundPage.current.liveView = UIHostingController(rootView: PlaygroundRootView())
```

The given root view must be `public`, along with its `init()` and `body`:

```swift
public struct PlaygroundRootView: View {
    public init() {}
    
    public var body: some View {
        LandmarkList()
    }
}
````

### Execution

Press the blue Play button next to the `PlaygroundPage.current.liveView` line or type **⇧⌘↵** to run the Playground.

## Combine Playground

This playground will help you to get started with [Combine - Apple Developer Documentation](https://developer.apple.com/documentation/combine).

- What is Combine?
- Publishers & Subscribers
- Rules of subscriptions
- Foundation and Combine
- @Published property and bindings
- Memory management explained with `AnyCancellable`
- Flatmap and matching error types
- Combining Publishers
- Future and Promises
- Custom `Publisher` and UIKit extensions
- Debugging publishers

## Requirements
- Xcode 11

