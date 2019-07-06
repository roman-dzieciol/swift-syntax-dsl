
import SwiftSyntax

public protocol SyntaxWithInheritanceClause {

    var inheritanceClause: TypeInheritanceClauseSyntax? { get }
    func withInheritanceClause(_ newChild: TypeInheritanceClauseSyntax?) -> Self

    func setInheritanceClause(@TypeSyntaxBuilder _ item: () -> TypeSyntax) -> Self
    func setInheritanceClauses(@TypeSyntaxBuilder _ items: () -> [TypeSyntax]) -> Self
    func setInheritanceClausesList(@TypeSyntaxBuilder _ items: () -> [[TypeSyntax]]) -> Self
}

extension AssociatedtypeDeclSyntax: SyntaxWithInheritanceClause {}
extension ClassDeclSyntax: SyntaxWithInheritanceClause {}
extension StructDeclSyntax: SyntaxWithInheritanceClause {}
extension ProtocolDeclSyntax: SyntaxWithInheritanceClause {}
extension ExtensionDeclSyntax: SyntaxWithInheritanceClause {}
extension EnumDeclSyntax: SyntaxWithInheritanceClause {}

public extension SyntaxWithInheritanceClause {

    func setInheritanceClauses(@TypeSyntaxBuilder _ items: () -> [TypeSyntax]) -> Self {
        return self.withInheritanceClause(TypeInheritanceClauseSyntax({ (b) in
            b.useColon(SyntaxFactory.makeColonToken())
            let allItems = items()
            allItems.enumerated().forEach { (index, item) in
                b.addInheritedType(InheritedTypeSyntax({ (b) in
                    b.useTypeName(item)
                    if index.advanced(by: 1) != allItems.count {
                        b.useTrailingComma(SyntaxFactory.makeCommaToken())
                    }
                }))
            }
        }))
    }

    func setInheritanceClausesList(@TypeSyntaxBuilder _ items: () -> [[TypeSyntax]]) -> Self {
        return self.setInheritanceClauses({ items().flatMap{ $0 } })
    }

    func setInheritanceClause(@TypeSyntaxBuilder _ items: () -> TypeSyntax) -> Self {
        return self.setInheritanceClauses({ [items()] })
    }
}
