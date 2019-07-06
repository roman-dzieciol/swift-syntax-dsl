
import SwiftSyntax

public protocol SyntaxWithLetOrVarKeyword {

    func withLetOrVarKeyword(_ newChild: TokenSyntax?) -> Self

}

public extension SyntaxWithLetOrVarKeyword {

    var `let`: Self {
        withLetOrVarKeyword(SyntaxFactory.makeLetKeyword())
    }

    var `var`: Self {
        withLetOrVarKeyword(SyntaxFactory.makeVarKeyword())
    }
}

extension VariableDeclSyntax: SyntaxWithLetOrVarKeyword {}
extension OptionalBindingConditionSyntax: SyntaxWithLetOrVarKeyword {}
extension ValueBindingPatternSyntax: SyntaxWithLetOrVarKeyword {}


public extension VariableDeclSyntax {

    enum LetOrVar {
        case `let`
        case `var`

        var tokenKind: TokenKind {
            switch self {
            case .let: return .letKeyword
            case .var: return .varKeyword
            }
        }
    }
}

