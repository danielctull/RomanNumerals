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

    func test_int_1() throws {
        let numeral = try RomanNumeral("I")
        let integer = Int(numeral)
        XCTAssertEqual(integer, 1)
    }
}
