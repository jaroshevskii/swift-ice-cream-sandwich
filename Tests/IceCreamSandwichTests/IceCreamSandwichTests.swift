//
//  IceCreamSandwichTests.swift
//  IceCreamSandwich
//

import XCTest
@testable import IceCreamSandwich

final class IcecreamSandwichTests: XCTestCase {
    func testValidIcecreamSandwich() {
        XCTAssertTrue("CDC".isIceCreamSandwich)
        XCTAssertTrue("AABBBAA".isIceCreamSandwich)
        XCTAssertTrue("3&&3".isIceCreamSandwich)
    }

    func testInvalidIcecreamSandwich() {
        XCTAssertFalse("BBBBB".isIceCreamSandwich)
        XCTAssertFalse("AAACCCAA".isIceCreamSandwich)
        XCTAssertFalse("AACDCAA".isIceCreamSandwich)
        XCTAssertFalse("A".isIceCreamSandwich)
    }

    func testEmptyString() {
        XCTAssertFalse("".isIceCreamSandwich)
    }
}
