> **Language**: 🇺🇸 [English](README.md) | 🇺🇦 Українська | 🇯🇵 [日本語](README.ja.md)

# 🍨 IceCreamSandwich

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fjaroshevskii%2Fswift-ice-cream-sandwich%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/jaroshevskii/swift-ice-cream-sandwich)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fjaroshevskii%2Fswift-ice-cream-sandwich%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/jaroshevskii/swift-ice-cream-sandwich)

IceCreamSandwich - це універсальна бібліотека Swift, призначена для виявлення шаблонів Ice Cream Sandwich у рядках, колекціях та цілих числах. Спочатку її було створено для виконання першого завдання з глави 1 [aCode C++ Практичні завдання](https://acode.com.ua/praktika-cpp-1/#toc-0).

IceCreamSandwich легко обробляє колекції та цілі числа за допомогою розширень, які відповідають протоколам Hashable та BinaryInteger.

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://vshymanskyy.github.io/StandWithUkraine)

## Визначення

Сендвіч з морозивом - це шаблон з однаковими та відмінними лівим та правим кінцями, що обволікають унікальну середню частину.

### Приклади

- `"AABBBAA"`
- `[1, 2, 3, 3, 2, 1]`
- `505`

### Критерії

1. **Різні кінці**: Лівий та правий кінці повинні збігатися як за довжиною, так і за кількістю символів, що повторюються.
2. **Унікальна середина**: Середня частина відрізняється від кінців.
3. **Мінімальна довжина**: Повинна бути не менше 3 символів.

## Використання

Щоб використовувати бібліотеку IceCreamSandwich, включіть її до вашого проекту і використовуйте властивість `isIceCreamSandwich` на екземплярах.

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

## Встановлення

### Xcode

1. У Xcode перейдіть до `File` > `Swift Packages` > `Add Package Dependency...`.
2. Введіть URL-адресу: `https://github.com/jaroshevskii/swift-ice-cream-sandwich.git`
3. Вкажіть потрібну версію або використовуйте найновішу і дотримуйтесь вказівок щодо встановлення.

Для отримання додаткової інформації про додавання Swift-пакетів до Xcode, ви можете прочитати [Туторіал Hacking with Swift](https://www.hackingwithswift.com/books/ios-swiftui/adding-swift-package-dependencies-in-xcode).

### Менеджер пакунків Swift

1. Додайте IceCreamSandwich до файлу Package.swift як залежність:
    
   ```swift
   let package = Package(
        // name, platforms, products і т.д.
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

2. Запустіть `swift build`, щоб отримати та інтегрувати пакунок у ваш проект.

## Внески

Не соромтеся робити внесок, повідомляти про проблеми або пропонувати покращення! Давайте зробимо IceCreamSandwich ще більш чудовим.

## Ліцензія

Випускається на умовах [MIT license](LICENSE.txt).
