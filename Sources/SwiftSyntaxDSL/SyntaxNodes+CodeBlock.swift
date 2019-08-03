
import SwiftSyntax


public protocol SyntaxWithCodeBlock {

    func withBody(_ newChild: CodeBlockSyntax?) -> Self

    func setCodeItem(@SyntaxBuilder _ item: () -> Syntax) -> Self
    func setCodeBlock(@SyntaxBuilder _ items: () -> [Syntax]) -> Self
    func setCodeBlocks(@SyntaxBuilder _ items: () -> [[Syntax]]) -> Self
}

public extension SyntaxWithCodeBlock {

    func setCodeBlock(@SyntaxBuilder _ items: () -> [Syntax]) -> Self {
        return self.withBody(CodeBlockSyntax({ (b) in
            items().forEach { (item) in
                b.addStatement(CodeBlockItemSyntax({ (b) in
                    b.useItem(item)
                }))
            }
            b.useLeftBrace(SyntaxFactory.makeLeftBraceToken())
            b.useRightBrace(SyntaxFactory.makeRightBraceToken())
        }))
    }

    func setCodeBlocks(@SyntaxBuilder _ items: () -> [[Syntax]]) -> Self {
        return self.setCodeBlock({ items().flatMap{ $0 } })
    }

    func setCodeItem(@SyntaxBuilder _ items: () -> Syntax) -> Self {
        return self.setCodeBlock({ [items()] })
    }

}

extension FunctionDeclSyntax: SyntaxWithCodeBlock {}
extension InitializerDeclSyntax: SyntaxWithCodeBlock {}
extension DeinitializerDeclSyntax: SyntaxWithCodeBlock {}
extension AccessorDeclSyntax: SyntaxWithCodeBlock {}
extension WhileStmtSyntax: SyntaxWithCodeBlock {}
extension DeferStmtSyntax: SyntaxWithCodeBlock {}
extension RepeatWhileStmtSyntax: SyntaxWithCodeBlock {}
extension GuardStmtSyntax: SyntaxWithCodeBlock {}
extension ForInStmtSyntax: SyntaxWithCodeBlock {}
extension DoStmtSyntax: SyntaxWithCodeBlock {}
extension IfStmtSyntax: SyntaxWithCodeBlock {}
extension ElseBlockSyntax: SyntaxWithCodeBlock {}
extension CatchClauseSyntax: SyntaxWithCodeBlock {}
