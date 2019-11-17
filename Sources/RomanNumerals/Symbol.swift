
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
