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

    func test_init_integer_3() {
        try XCTAssertEqual(RomanNumeral(3), RomanNumeral("III"))
    }

    func test_init_integer_4() {
        try XCTAssertEqual(RomanNumeral(4), RomanNumeral("IV"))
    }

    func test_init_integer_5() {
        try XCTAssertEqual(RomanNumeral(5), RomanNumeral("V"))
    }

    func test_init_integer_9() {
        try XCTAssertEqual(RomanNumeral(9), RomanNumeral("IX"))
    }

    func test_init_integer_10() {
        try XCTAssertEqual(RomanNumeral(10), RomanNumeral("X"))
    }

    func test_init_integer_40() {
        try XCTAssertEqual(RomanNumeral(40), RomanNumeral("XL"))
    }

    func test_init_integer_49() {
        try XCTAssertEqual(RomanNumeral(49), RomanNumeral("XLIX"))
    }

    func test_init_integer_45() {
        try XCTAssertEqual(RomanNumeral(45), RomanNumeral("XLV"))
    }

    func test_init_integer_50() {
        try XCTAssertEqual(RomanNumeral(50), RomanNumeral("L"))
    }

    func test_init_integer_100() {
        try XCTAssertEqual(RomanNumeral(100), RomanNumeral("C"))
    }

    func test_init_integer_500() {
        try XCTAssertEqual(RomanNumeral(500), RomanNumeral("D"))
    }

    func test_init_integer_888() throws {
        try XCTAssertEqual(RomanNumeral(888), RomanNumeral("DCCCLXXXVIII"))
    }

    func test_init_integer_900() {
        try XCTAssertEqual(RomanNumeral(900), RomanNumeral("CM"))
    }

    func test_init_integer_1000() {
        try XCTAssertEqual(RomanNumeral(1000), RomanNumeral("M"))
    }

    func test_init_integer_1666() throws {
        try XCTAssertEqual(RomanNumeral(1666), RomanNumeral("MDCLXVI"))
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

    func test_int_45() throws {
        try XCTAssertEqual(Int(RomanNumeral("XLV")), 45)
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

    // MARK: - AdditiveArithmetic

    func test_add_1_1() throws {
        try XCTAssertEqual(RomanNumeral("I") + RomanNumeral("I"), RomanNumeral("II"))
    }

    func test_add_10_1000() throws {
        try XCTAssertEqual(RomanNumeral("X") + RomanNumeral("M"), RomanNumeral("MX"))
    }

    func test_add_270_301() throws {
        var numeral = try RomanNumeral("CCLXX")
        numeral += try RomanNumeral("CCCI")
        try XCTAssertEqual(numeral, RomanNumeral("DLXXI"))
    }

    func test_subtract_190_26() throws {
        try XCTAssertEqual(RomanNumeral("CXC") - RomanNumeral("XXVI"), RomanNumeral("CLXIV"))
    }

    func test_subtract_10_6() throws {
        try XCTAssertEqual(RomanNumeral("X") - RomanNumeral("VI"), RomanNumeral("IV"))
    }

    func test_subtract_10_3() throws {
        var numeral = try RomanNumeral("X")
        numeral -= try RomanNumeral("III")
        try XCTAssertEqual(numeral, RomanNumeral("VII"))
    }

    // MARK: - CustomStringConvertible

    func test_description() throws {
        try XCTAssertEqual(RomanNumeral("MDCLXVI").description, "MDCLXVI")
    }
}
