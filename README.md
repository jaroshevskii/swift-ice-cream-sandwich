<!-- > **Language**: 🇺🇸 English | 🇺🇦 [Українська](README.uk.md) | 🇯🇵 [日本語](README.ja.md) -->

# 🍨 IceCreamSandwich

The IceCreamSandwich library is a string manipulation tool specifically designed to detect Ice Cream Sandwich patterns in strings.

It was originally created to complete the first task in Chapter 1 of the [aCode C++ Practice Tasks](https://acode.com.ua/praktika-cpp-1/#toc-0).

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://vshymanskyy.github.io/StandWithUkraine)

## Ice Cream Sandwich Defined

An Ice Cream Sandwich is a string with matching and distinct left and right ends, surrounding a unique middle portion.

### Examples

- `AABBBAA`
- `3&&3`
- `yyyyymmmmmmmmyyyyy`
- `hhhhhhhhmhhhhhhhh`

### Criteria

1. **Distinct Ends**: Left and right ends must match in both length and repeated characters.
2. **Unique Middle**: The middle portion is distinct from the ends.
3. **Minimum Length**: Must be at least 3 characters.

## Usage

To use the library, include it in your Swift project and leverage the `isIceCreamSandwich` property on a string instance.

```swift
import IceCreamSandwich

let smileySandwich = "😊😊🍦😊😊"

if smileySandwich.isIceCreamSandwich {
    print("Yay! You've created a Ice Cream Sandwich!")
} else {
    print("Oops! Your arrangement doesn't form an Ice Cream Sandwich.")
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
   dependencies: [
       .package(url: "https://github.com/jaroshevskii/ice-cream-snadwich.git", from: "1.0.0"),
   ],
   targets: [
       .target(name: "YourTarget", dependencies: ["IceCreamSandwich"]),
   ]
   ```

2. Run `swift build` to fetch and integrate the package into your project.

### Manual

If you prefer manual installation, copy the [String+IceCreamSandwich.swift](Sources/IceCreamSandwich/Extentions/String/String%2BIcecreamSandwich.swift) file into your project.

## Contributions

Feel free to contribute, report issues, or suggest improvements! Let's make IceCreamSandwich even more delightful.

## License

Licensed under the [MIT License](LICENSE.txt).
