import XCTest
import RomanNumerals

final class RomanNumeralTests: XCTestCase {

    func test_init() {
        XCTAssertEqual(RomanNumeral(.i, .v).symbols, [.i, .v])
    }

    func test_init_string() throws {
        try XCTAssertEqual(RomanNumeral("MDCLXVI").symbols, [.m, .d, .c, .l, .x, .v, .i])
    }

    func test_init_string_error() throws {
        XCTAssertThrowsError(try RomanNumeral("A"))
    }

    // MARK: - RomanNumeral.init Integer

    func test_init_integer_1() {
        try XCTAssertEqual(RomanNumeral(1), RomanNumeral("I"))
    }

    func test_init_integer_2() {
        try XCTAssertEqual(RomanNumeral(2), RomanNumeral("II"))
    }

    // MARK: - Int.init

    func test_int_empty() throws {
        try XCTAssertEqual(Int(RomanNumeral("")), 0)
    }

    func test_int_1() throws {
        try XCTAssertEqual(Int(RomanNumeral("I")), 1)
    }

    func test_int_2() throws {
        try XCTAssertEqual(Int(RomanNumeral("II")), 2)
    }

    func test_int_3() throws {
        try XCTAssertEqual(Int(RomanNumeral("III")), 3)
    }

    func test_int_4() throws {
        try XCTAssertEqual(Int(RomanNumeral("IV")), 4)
    }

    func test_int_5() throws {
        try XCTAssertEqual(Int(RomanNumeral("V")), 5)
    }

    func test_int_6() throws {
        try XCTAssertEqual(Int(RomanNumeral("VI")), 6)
    }

    func test_int_7() throws {
        try XCTAssertEqual(Int(RomanNumeral("VII")), 7)
    }

    func test_int_8() throws {
        try XCTAssertEqual(Int(RomanNumeral("VIII")), 8)
    }

    func test_int_9() throws {
        try XCTAssertEqual(Int(RomanNumeral("IX")), 9)
    }

    func test_int_10() throws {
        try XCTAssertEqual(Int(RomanNumeral("X")), 10)
    }

    func test_int_50() throws {
        try XCTAssertEqual(Int(RomanNumeral("L")), 50)
    }

    func test_int_100() throws {
        try XCTAssertEqual(Int(RomanNumeral("C")), 100)
    }

    func test_int_500() throws {
        try XCTAssertEqual(Int(RomanNumeral("D")), 500)
    }

    func test_int_888() throws {
        try XCTAssertEqual(Int(RomanNumeral("DCCCLXXXVIII")), 888)
    }

    func test_int_1000() throws {
        try XCTAssertEqual(Int(RomanNumeral("M")), 1000)
    }

    func test_int_1666() throws {
        try XCTAssertEqual(Int(RomanNumeral("MDCLXVI")), 1666)
    }

    func test_int_2019() throws {
        try XCTAssertEqual(Int(RomanNumeral("MMXIX")), 2019)
    }

    func test_int_2089() throws {
        try XCTAssertEqual(Int(RomanNumeral("MMLXXXIX")), 2089)
    }

    // MARK: - String.init

    func test_string_empty() throws {
        try XCTAssertEqual(String(RomanNumeral("")), "")
    }

    func test_string_1() throws {
        try XCTAssertEqual(String(RomanNumeral("I")), "I")
    }

    func test_string_5() throws {
        try XCTAssertEqual(String(RomanNumeral("V")), "V")
    }

    func test_string_10() throws {
        try XCTAssertEqual(String(RomanNumeral("X")), "X")
    }

    func test_string_50() throws {
        try XCTAssertEqual(String(RomanNumeral("L")), "L")
    }

    func test_string_100() throws {
        try XCTAssertEqual(String(RomanNumeral("C")), "C")
    }

    func test_string_500() throws {
        try XCTAssertEqual(String(RomanNumeral("D")), "D")
    }

    func test_string_1000() throws {
        try XCTAssertEqual(String(RomanNumeral("M")), "M")
    }
}
