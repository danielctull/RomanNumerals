
import ArgumentParser
import RomanNumerals

struct Roman: ParsableCommand {

    static let configuration = CommandConfiguration(
        abstract: "Roman numerals utility.",
        subcommands: [To.self, From.self])
}

extension Roman {

    struct From: ParsableCommand {

        @Argument(help: "The roman numerals to convert to numbers.")
        var numerals: String

        func run() throws {
            let numerals = try RomanNumeral(self.numerals)
            print(Int(numerals))
        }
    }

    struct To: ParsableCommand {

        @Argument(help: "The value to convert to roman numerals.")
        var value: Int

        func run() {
            let numerals = RomanNumeral(value)
            print(numerals.description)
        }
    }
}

Roman.main()
