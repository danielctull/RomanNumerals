
import Foundation
import RomanNumerals

let arguments = CommandLine.arguments

do {
    let expression = try Expression(arguments: Array(arguments.dropFirst()))
    let result = expression.calculate()
    print(result)
} catch {
    print(error)
}
