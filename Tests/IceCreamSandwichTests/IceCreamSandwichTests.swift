//
//  IceCreamSandwichTests.swift
//  IceCreamSandwich
//

import XCTest
@testable import IceCreamSandwich

final class IcecreamSandwichTests: XCTestCase {
    func testStringIceCreamSandwich() {
        XCTAssertTrue("AABBAA".isIceCreamSandwich)
    }
    
    func testArrayIceCreamSandwich() {
        XCTAssertTrue([1, 2, 2, 1].isIceCreamSandwich)
    }
    
    func testBoolArrayIceCreamSandwich() {
        XCTAssertTrue([true, true, false, true, true].isIceCreamSandwich)
    }

    func testStringNotIceCreamSandwich() {
        XCTAssertFalse("ABB".isIceCreamSandwich)
    }
    
    func testArrayNotIceCreamSandwich() {
        XCTAssertFalse([1, 2, 3, 1].isIceCreamSandwich)
    }
    
    func testBoolArrayNotIceCreamSandwich() {
        XCTAssertFalse([false, false].isIceCreamSandwich)
    }
    
    func testTooShortCollection() {
        XCTAssertFalse("AA".isIceCreamSandwich)
    }
    
    func testIntegerIceCreamSandwich() {
        XCTAssertTrue(11211.isIceCreamSandwich)
    }
    
    func testAnotherIntegerIceCreamSandwich() {
        XCTAssertTrue(1221.isIceCreamSandwich)
    }

    func testIntegerNotIceCreamSandwich() {
        XCTAssertFalse(12.isIceCreamSandwich)
    }
    
    func testAnotherIntegerNotIceCreamSandwich() {
        XCTAssertFalse(1231.isIceCreamSandwich)
    }

    func testEmptyCollection() {
        XCTAssertFalse("".isIceCreamSandwich)
        XCTAssertFalse([Int]().isIceCreamSandwich)
        XCTAssertFalse([Bool]().isIceCreamSandwich)
    }
}
