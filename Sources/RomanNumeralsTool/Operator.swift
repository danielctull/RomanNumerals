
enum Operator {
    case add
    case subtract
}

extension Operator {

    init(_ string: String) throws {
        switch string {
        case "+": self = .add
        case "-": self = .subtract
        default: throw UnknownOperator(value: string)
        }
    }
}

struct UnknownOperator: Error {
    let value: String
}

extension UnknownOperator: CustomStringConvertible {
    var description: String {
        """
        Unknown operator: \(value)
        Valid operators: + -
        """
    }
}
