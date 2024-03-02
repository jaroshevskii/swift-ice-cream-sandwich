> **Language**: 🇺🇸 English | 🇺🇦 [Українська](README.uk.md) | 🇯🇵 [日本語](README.ja.md)

# 🍨 IceCreamSandwich

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fjaroshevskii%2Fswift-ice-cream-sandwich%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/jaroshevskii/swift-ice-cream-sandwich)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fjaroshevskii%2Fswift-ice-cream-sandwich%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/jaroshevskii/swift-ice-cream-sandwich)

IceCreamSandwich is a versatile Swift library designed to identify Ice Cream Sandwich patterns within strings, collections, and integers. Originally created for the first task in Chapter 1 of the [aCode C++ Practice Tasks](https://acode.com.ua/praktika-cpp-1/#toc-0).

IceCreamSandwich seamlessly handles collections and integers through extensions that conform to the Hashable and BinaryInteger protocols.

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://vshymanskyy.github.io/StandWithUkraine)

## Definition

An Ice Cream Sandwich is a pattern with matching and distinct left and right ends, enveloping a unique middle portion.

### Examples

- `"AABBBAA"`
- `[1, 2, 3, 3, 2, 1]`
- `505`

### Criteria

1. **Distinct Ends**: Left and right ends must match in both length and repeated characters.
2. **Unique Middle**: The middle portion is distinct from the ends.
3. **Minimum Length**: Must be at least 3 characters.

## Usage

To use the IceCreamSandwich library, include it in your project and utilize the `isIceCreamSandwich` property on instances.

```swift
import IceCreamSandwich

// String
let smileySandwich = "😊😊🍦😊😊"
if smileySandwich.isIceCreamSandwich {
    print("Yay! You've created an Ice Cream Sandwich!")
} else {
    print("Oops! Your arrangement doesn't form an Ice Cream Sandwich.")
}

// Collection
let numberSandwich = [1, 2, 3, 3, 2, 1]
if numberSandwich.isIceCreamSandwich {
    print("Congratulations! You've assembled a numeric Ice Cream Sandwich!")
} else {
    print("Oops! Your arrangement doesn't form a numeric Ice Cream Sandwich.")
}

// Integer
let integerSandwich = 505
if integerSandwich.isIceCreamSandwich {
    print("Awesome! You've crafted a numeric Ice Cream Sandwich!")
} else {
    print("Oops! Your numeric arrangement doesn't form an Ice Cream Sandwich.")
}
```

## Installation

### Xcode

1. In Xcode, go to `File` > `Swift Packages` > `Add Package Dependency...`
2. Enter the URL: `https://github.com/jaroshevskii/swift-ice-cream-sandwich.git`
3. Specify the desired version or use the latest, and follow the installation prompts.

For more information on adding Swift Packages to Xcode, you can read the [Hacking with Swift tutorial](https://www.hackingwithswift.com/books/ios-swiftui/adding-swift-package-dependencies-in-xcode).

### Swift Package Manager

1. Add IceCreamSandwich to your Package.swift file as a dependency:

   ```swift
   let package = Package(
        // name, platforms, products, etc.
        dependencies: [
            .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
        ],
        targets: [
            .target(
                name: "YourTargetName",
                dependencies: [
                    .product(name: "IceCreamSandwich", package: "swift-ice-cream-sandwich"),
                ]),
        ]
    )
   ```

2. Run `swift build` to fetch and integrate the package into your project.

## Contributions

Feel free to contribute, report issues, or suggest improvements! Let's make IceCreamSandwich even more delightful.

## License

Licensed under the [MIT license](LICENSE.txt).
