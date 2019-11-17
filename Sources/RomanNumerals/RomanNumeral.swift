
public struct RomanNumeral {
    public let symbols: [Symbol]
}

extension RomanNumeral {

    public init(_ symbols: Symbol...) {
        self.symbols = symbols
    }
}

extension RomanNumeral {

    public init(_ string: String) throws {
        symbols = try string.map(Symbol.init)
    }
}
