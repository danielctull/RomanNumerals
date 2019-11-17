
import RomanNumerals

struct Expression {
    private let `operator`: Operator
    private let numeral1: RomanNumeral
    private let numeral2: RomanNumeral
}

extension Expression {

    init(arguments: [String]) throws {

        guard arguments.count == 3 else {
            throw InvalidInput()
        }

        `operator` = try Operator(arguments[0])
        numeral1 = try RomanNumeral(arguments[1])
        numeral2 = try RomanNumeral(arguments[2])
    }
}

extension Expression {

    func calculate() -> RomanNumeral {
        switch `operator` {
        case .add: return numeral1 + numeral2
        case .subtract: return numeral1 - numeral2
        }
    }
}

struct InvalidInput: Error {}

extension InvalidInput: CustomStringConvertible {

    var description: String {
        """
        Need to input an operator followed by two roman numerals, such as
        "+ XX XI".

        Supported operators: + -
        """
    }
}
