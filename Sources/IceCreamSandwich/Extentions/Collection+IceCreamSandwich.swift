//
//  Collection+IceCreamSandwich.swift
//  IceCreamSandwich
//

public extension Collection where Element: Hashable {
    /// Determines whether a given entity follows the pattern of an Ice Cream Sandwich.
    ///
    /// An Ice Cream Sandwich pattern consists of three distinct segments, where both the
    /// outer segments are identical and composed of repeated elements, and the middle
    /// segment is different from the outer ones.
    ///
    /// Examples of Ice Cream Sandwich entities:
    /// 
    /// ```swift
    /// "AABBA"
    /// [1, 2, 2, 1]
    /// true, true, false, true, true
    /// ```
    ///
    /// Examples not considered Ice Cream Sandwich:
    /// 
    /// ```swift
    /// "ABBA" // Outer segments must be identical
    /// [1, 2, 3, 1] // Must have three segments
    /// false, true, false // Fails to meet the pattern requirements
    /// ```
    var isIceCreamSandwich: Bool {
        guard count >= 3 else { return false }

        let uniqueElements = Set(self)
        guard uniqueElements.count == 2 else { return false }

        return self.elementsEqual(self.reversed())
    }
}
