
public enum Symbol {
    case i
    case v
    case x
    case l
    case c
    case d
    case m
}

public struct InvalidCharacter: Error {
    let character: Character
}

extension Symbol {

    init(character: Character) throws {
        switch character {
        case "I": self = .i
        case "V": self = .v
        case "X": self = .x
        case "L": self = .l
        case "C": self = .c
        case "D": self = .d
        case "M": self = .m
        default: throw InvalidCharacter(character: character)
        }
    }
}

extension Int {

    init(_ symbol: Symbol) {
        switch symbol {
        case .i: self = 1
        case .v: self = 5
        case .x: self = 10
        case .l: self = 50
        case .c: self = 100
        case .d: self = 500
        case .m: self = 1000
        }
    }
}

extension String {

    init(_ symbol: Symbol) {
        switch symbol {
        case .i: self = "I"
        case .v: self = "V"
        case .x: self = "X"
        case .l: self = "L"
        case .c: self = "C"
        case .d: self = "D"
        case .m: self = "M"
        }
    }
}
