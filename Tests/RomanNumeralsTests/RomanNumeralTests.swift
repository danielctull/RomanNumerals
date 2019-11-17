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

    func test_int_empty() throws {
        let numeral = try RomanNumeral("")
        XCTAssertEqual(Int(numeral), 0)
    }

    func test_int_1() throws {
        let numeral = try RomanNumeral("I")
        XCTAssertEqual(Int(numeral), 1)
    }

    func test_int_5() throws {
        let numeral = try RomanNumeral("V")
        XCTAssertEqual(Int(numeral), 5)
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

    func test_int_1000() throws {
        let numeral = try RomanNumeral("M")
        XCTAssertEqual(Int(numeral), 1000)
    }
}
