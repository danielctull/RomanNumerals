
public struct RomanNumeral: Equatable {
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

// MARK: - Integer conversion

extension RomanNumeral {

    public init(_ integer: Int) {

        var all = Symbol.allCases.sorted { Int($0) < Int($1) }

        var symbols: [Symbol] = []
        var value = integer
        while value > 0, let symbol = all.popLast() {
            let amount = value / Int(symbol)
            value %= Int(symbol)
            symbols.append(contentsOf: Array(repeating: symbol, count: amount))
        }

        self.symbols = symbols
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
