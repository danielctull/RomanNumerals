import XCTest
import RomanNumerals

final class RomanNumeralsTests: XCTestCase {

    func test_init() {
        let numeral = RomanNumeral(.i, .v)
        XCTAssertEqual(numeral.symbols, [.i, .v])
    }

    func test_init_string() throws {
        let numeral = try RomanNumeral("XVI")
        XCTAssertEqual(numeral.symbols, [.x, .v, .i])
    }

    func test_init_string_error() throws {
        XCTAssertThrowsError(try RomanNumeral("A"))
    }

    // MARK: - Int.init

    func test_int_empty() throws {
        let numeral = try RomanNumeral("")
        XCTAssertEqual(Int(numeral), 0)
    }

    func test_int_1() throws {
        let numeral = try RomanNumeral("I")
        XCTAssertEqual(Int(numeral), 1)
    }

    func test_int_2() throws {
        let numeral = try RomanNumeral("II")
        XCTAssertEqual(Int(numeral), 2)
    }

    func test_int_3() throws {
        let numeral = try RomanNumeral("III")
        XCTAssertEqual(Int(numeral), 3)
    }

    func test_int_4() throws {
        let numeral = try RomanNumeral("IV")
        XCTAssertEqual(Int(numeral), 4)
    }

    func test_int_5() throws {
        let numeral = try RomanNumeral("V")
        XCTAssertEqual(Int(numeral), 5)
    }

    func test_int_6() throws {
        let numeral = try RomanNumeral("VI")
        XCTAssertEqual(Int(numeral), 6)
    }

    func test_int_7() throws {
        let numeral = try RomanNumeral("VII")
        XCTAssertEqual(Int(numeral), 7)
    }

    func test_int_8() throws {
        let numeral = try RomanNumeral("VIII")
        XCTAssertEqual(Int(numeral), 8)
    }

    func test_int_9() throws {
        let numeral = try RomanNumeral("IX")
        XCTAssertEqual(Int(numeral), 9)
    }

    func test_int_10() throws {
        let numeral = try RomanNumeral("X")
        XCTAssertEqual(Int(numeral), 10)
    }

    func test_int_50() throws {
        let numeral = try RomanNumeral("L")
        XCTAssertEqual(Int(numeral), 50)
    }

    func test_int_100() throws {
        let numeral = try RomanNumeral("C")
        XCTAssertEqual(Int(numeral), 100)
    }

    func test_int_500() throws {
        let numeral = try RomanNumeral("D")
        XCTAssertEqual(Int(numeral), 500)
    }

    func test_int_888() throws {
        let numeral = try RomanNumeral("DCCCLXXXVIII")
        XCTAssertEqual(Int(numeral), 888)
    }

    func test_int_1000() throws {
        let numeral = try RomanNumeral("M")
        XCTAssertEqual(Int(numeral), 1000)
    }

    func test_int_2019() throws {
        let numeral = try RomanNumeral("MMXIX")
        XCTAssertEqual(Int(numeral), 2019)
    }

    func test_int_2089() throws {
        let numeral = try RomanNumeral("MMLXXXIX")
        XCTAssertEqual(Int(numeral), 2089)
    }

    // MARK: - String.init

    func test_string_empty() throws {
        let numeral = try RomanNumeral("")
        XCTAssertEqual(String(numeral), "")
    }

    func test_string_1() throws {
        let numeral = try RomanNumeral("I")
        XCTAssertEqual(String(numeral), "I")
    }

    func test_string_5() throws {
        let numeral = try RomanNumeral("V")
        XCTAssertEqual(String(numeral), "V")
    }

    func test_string_10() throws {
        let numeral = try RomanNumeral("X")
        XCTAssertEqual(String(numeral), "X")
    }

    func test_string_50() throws {
        let numeral = try RomanNumeral("L")
        XCTAssertEqual(String(numeral), "L")
    }

    func test_string_100() throws {
        let numeral = try RomanNumeral("C")
        XCTAssertEqual(String(numeral), "C")
    }

    func test_string_500() throws {
        let numeral = try RomanNumeral("D")
        XCTAssertEqual(String(numeral), "D")
    }

    func test_string_1000() throws {
        let numeral = try RomanNumeral("M")
        XCTAssertEqual(String(numeral), "M")
    }
}
