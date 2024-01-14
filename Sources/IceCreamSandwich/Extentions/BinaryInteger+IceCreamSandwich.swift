//
//  BinaryInteger+IceCreamSandwich.swift
//  IceCreamSandwich
//

public extension BinaryInteger {
    /// Determines whether the integer representation follows the pattern of an Ice Cream Sandwich.
    ///
    /// An Ice Cream Sandwich pattern in this context involves treating the integer as a string
    /// and checking if it adheres to the same rules as described in the `isIceCreamSandwich` property
    /// for collections.
    ///
    /// Examples of Ice Cream Sandwich entities:
    ///
    /// ```swift
    /// 11211
    /// 1221
    /// 10101
    /// ```
    ///
    /// Examples not considered Ice Cream Sandwich:
    ///
    /// ```swift
    /// 12 // Does not have three segments
    /// 1231 // Does not have identical outer segments
    /// 10011 // Does not have identical outer segments
    /// ```
    var isIceCreamSandwich: Bool { String(self).isIceCreamSandwich }
}
