> **Language**: 🇺🇸 [English](README.md) | 🇺🇦 [Українська](README.uk.md) | 🇯🇵 日本語

> [!IMPORTANT] 
> この翻訳は日本語ゼロの人が作成しました😅。日本語に詳しい方で、翻訳の間違いや改善点にお気づきの方は、ぜひご投稿ください。

# 🍨 IceCreamSandwich

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fjaroshevskii%2Fswift-ice-cream-sandwich%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/jaroshevskii/swift-ice-cream-sandwich)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fjaroshevskii%2Fswift-ice-cream-sandwich%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/jaroshevskii/swift-ice-cream-sandwich)

IceCreamSandwich は、文字列、コレクション、整数内の Ice Cream Sandwich パターンを識別するために設計された、多目的な Swift ライブラリです。元々は、[aCode C++ 練習用タスク](https://acode.com.ua/praktika-cpp-1/#toc-0) の第1章の最初のタスクのために作成されました。

IceCreamSandwich は、Hashable プロトコルと BinaryInteger プロトコルに準拠した拡張を通して、コレクションと整数をシームレスに扱います。

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://vshymanskyy.github.io/StandWithUkraine)

## 定義

アイスクリーム・サンドイッチは、左右の端が一致し、中央のユニークな部分を包むパターンである。

### 例

- `"AABBBAA"`
- `[1, 2, 3, 3, 2, 1]`
- `505`

### 基準

1. **区別できる端**： 左端と右端は、長さと繰り返し文字の両方が一致していなければならない。
2. **ユニークな中間部**： 中央部分は両端と区別できる。
3. **最小長**： 3文字以上であること。

## 使い方

IceCreamSandwich ライブラリを使用するには、プロジェクトにインクルードし、インスタンスで `isIceCreamSandwich` プロパティを使用します。

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

## インストール

### Xcode

1. Xcode で、`File` > `Swift Packages` > `Add Package Dependency...` を選択する。
2. URL を入力する： https://github.com/jaroshevskii/swift-ice-cream-sandwich.git`
3. 希望するバージョンを指定するか、最新のものを使用し、インストールのプロンプトに従ってください。

Xcode に Swift Packages を追加する詳細については、[Hacking with Swift チュートリアル](https://www.hackingwithswift.com/books/ios-swiftui/adding-swift-package-dependencies-in-xcode) をお読みください。

### Swift パッケージマネージャ

1. 依存関係として IceCreamSandwich を Package.swift ファイルに追加します：
    
      ```swift
   let package = Package(
        // name, platforms, products, など
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

2. `swift build` を実行してパッケージを取得し、プロジェクトに統合する。

## 貢献

問題点を報告したり、改善点を提案したり、自由に貢献してください！IceCreamSandwich をもっと楽しくしましょう。

## ライセンス

[MIT license](LICENSE.txt) の下でライセンスされています。
