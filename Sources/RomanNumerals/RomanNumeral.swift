
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

        guard integer > 0 else {
            symbols = []
            return
        }

        var all = Symbol.allCases.sorted { Int($0) < Int($1) }

        var symbols: [Symbol] = []
        var previous: Symbol?
        var remainder = 0

        while let symbol = all.popLast() {

            defer { previous = symbol }

            remainder = integer % Int(symbol)
            let amount = integer / Int(symbol)

            guard amount > 0 else { continue }

            // If symbol has 1, but the next has 4, then symbol == V, next == I,
            // previous == X and this number is a 9. (Or equivalent for 900).
            if amount == 1, let previous = previous, let next = all.last, remainder / Int(next) == 4 {
                symbols.append(next)
                symbols.append(previous)
                remainder %= Int(next)
                break
            } else if amount <= 3 || symbol == .m {
                symbols.append(contentsOf: Array(repeating: symbol, count: amount))
                break
            } else if let previous = previous {
                symbols.append(symbol)
                symbols.append(previous)
                break
            }
        }

        self.symbols = symbols + RomanNumeral(remainder).symbols
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
