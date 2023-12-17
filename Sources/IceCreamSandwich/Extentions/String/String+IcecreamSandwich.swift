//
//  String+IcecreamSandwich.swift
//  IcecreamSandwich
//

extension String {
    /// Determines whether a given string represents an Ice Cream Sandwich.
    ///
    /// An Ice Cream Sandwich is defined as a string with identical ends, a different middle,
    /// and where both the left and right ends have the same length and consist of repeated characters.
    /// The middle is a third set of characters different from the first two ends.
    ///
    /// Examples of Ice Cream Sandwich:
    /// 
    /// ```swift
    /// "AABBBAA"`
    /// "3&&3"
    /// "yyyyymmmmmmmmyyyyy"
    /// "hhhhhhhhmhhhhhhhh"
    /// ```
    ///
    /// Examples not considered Ice Cream Sandwich:
    /// 
    /// ```swift
    /// "BBBBB" // Cannot have only filling without the sandwich
    /// "AAACCCAA" // Ends must be of equal length
    /// "AACDCAA" // The filling cannot contain different characters
    /// "A" // The sandwich must have a minimum length of 3 characters
    /// ```
    var isIceCreamSandwich: Bool {
        guard count >= 3 else { return false }

        let uniqueCharacterCount = Set(self).count
        guard uniqueCharacterCount == 2 else { return false }

        return self == String(self.reversed())
    }
}