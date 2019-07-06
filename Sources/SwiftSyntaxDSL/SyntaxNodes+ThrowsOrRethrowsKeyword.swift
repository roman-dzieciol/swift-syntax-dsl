
import SwiftSyntax

public enum ThrowsOrRethrows {
    case `throws`
    case `rethrows`
}

public protocol SyntaxWithThrowsOrRethrowsKeyword {

    var `throws`: Self { get }
    var `rethrows`: Self { get }

    var throwsOrRethrowsKeyword: TokenSyntax? { get }
    func withThrowsOrRethrowsKeyword(_ newChild: TokenSyntax?) -> Self
}

extension FunctionTypeSyntax: SyntaxWithThrowsOrRethrowsKeyword {}
extension InitializerDeclSyntax: SyntaxWithThrowsOrRethrowsKeyword {}
extension FunctionSignatureSyntax: SyntaxWithThrowsOrRethrowsKeyword {}

public extension SyntaxWithThrowsOrRethrowsKeyword {

    var `throws`: Self {
        self.withThrowsOrRethrowsKeyword(SyntaxFactory.makeThrowsKeyword())
    }

    var `rethrows`: Self {
        self.withThrowsOrRethrowsKeyword(SyntaxFactory.makeRethrowsKeyword())
    }
}
