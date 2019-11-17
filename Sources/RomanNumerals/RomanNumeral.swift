
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

extension Int {

    public init(_ numeral: RomanNumeral) {

        struct Calculation {
            var total: Int = 0
            var value: Int = 0
            var currentSymbol: Symbol = .i
        }

        let calculation = numeral
            .symbols
            .reduce(into: Calculation()) { (caluclation, symbol) in

                defer { caluclation.currentSymbol = symbol }

                let runningValue = caluclation.value
                let previous = Int(caluclation.currentSymbol)
                let current = Int(symbol)

                if current > previous {
                    caluclation.value = current - runningValue
                } else if current < previous {
                    caluclation.total += runningValue
                    caluclation.value = current
                } else {
                    caluclation.value += current
                }
            }

        self = calculation.total + calculation.value
    }
}

extension String {

    public init(_ numeral: RomanNumeral) {
        self = numeral.symbols.reduce(into: "") { $0.append(String($1)) }
    }
}
