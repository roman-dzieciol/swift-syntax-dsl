
import SwiftSyntax




public protocol SyntaxWithGenericArgumentClause {

    func setGenericArgumentClause(@TypeSyntaxBuilder _ item: () -> TypeSyntax) -> Self
    func setGenericArgumentClause(@TypeSyntaxBuilder _ items: () -> [TypeSyntax]) -> Self
    func setGenericArgumentClause(@TypeSyntaxBuilder _ items: () -> [[TypeSyntax]]) -> Self

    // Not present in SpecializeExprSyntax
    //var genericArgumentClause: GenericArgumentClauseSyntax? { get }
    func withGenericArgumentClause(_ newChild: GenericArgumentClauseSyntax?) -> Self
}

extension MemberTypeIdentifierSyntax: SyntaxWithGenericArgumentClause {}
extension SimpleTypeIdentifierSyntax: SyntaxWithGenericArgumentClause {}
extension SpecializeExprSyntax: SyntaxWithGenericArgumentClause {}
extension SymbolicReferenceExprSyntax: SyntaxWithGenericArgumentClause {}

public extension SyntaxWithGenericArgumentClause {

    func setGenericArgumentClause(@TypeSyntaxBuilder _ items: () -> [TypeSyntax]) -> Self {
        return self.withGenericArgumentClause(GenericArgumentClauseSyntax({ (b) in
            b.useLeftAngleBracket(SyntaxFactory.makeLeftAngleToken())
            b.useRightAngleBracket(SyntaxFactory.makeRightAngleToken())
            b.addArgument(GenericArgumentSyntax({ (b) in
                let allItems = items()
                allItems.enumerated().forEach { (index, item) in
                    b.useArgumentType(item)
                    if index.advanced(by: 1) != allItems.count {
                        b.useTrailingComma(SyntaxFactory.makeCommaToken())
                    }
                }
            }))
        }))
    }

    func setGenericArgumentClause(@TypeSyntaxBuilder _ items: () -> [[TypeSyntax]]) -> Self {
        return self.setGenericArgumentClause({ items().flatMap{ $0 } })
    }

    func setGenericArgumentClause(@TypeSyntaxBuilder _ items: () -> TypeSyntax) -> Self {
        return self.setGenericArgumentClause({ [items()] })
    }
}
