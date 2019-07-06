
import SwiftSyntax

public protocol SyntaxWithAttributes {
    var attributes: AttributeListSyntax? { get }
    func addAttribute(_ element: AttributeSyntax) -> Self
    func withAttributes(_ newChild: AttributeListSyntax?) -> Self

    func setAttributes(@SyntaxBuilder _ item: () -> AttributeSyntax) -> Self
    func setAttributes(@SyntaxBuilder _ items: () -> [AttributeSyntax]) -> Self
    func setAttributes(@SyntaxBuilder _ items: () -> [[AttributeSyntax]]) -> Self
}

extension TypealiasDeclSyntax: SyntaxWithAttributes {}
extension AssociatedtypeDeclSyntax: SyntaxWithAttributes {}
extension ClassDeclSyntax: SyntaxWithAttributes {}
extension StructDeclSyntax: SyntaxWithAttributes {}
extension ProtocolDeclSyntax: SyntaxWithAttributes {}
extension ExtensionDeclSyntax: SyntaxWithAttributes {}
extension FunctionParameterSyntax: SyntaxWithAttributes {}
extension FunctionDeclSyntax: SyntaxWithAttributes {}
extension InitializerDeclSyntax: SyntaxWithAttributes {}
extension DeinitializerDeclSyntax: SyntaxWithAttributes {}
extension SubscriptDeclSyntax: SyntaxWithAttributes {}
extension ImportDeclSyntax: SyntaxWithAttributes {}
extension AccessorDeclSyntax: SyntaxWithAttributes {}
extension VariableDeclSyntax: SyntaxWithAttributes {}
extension EnumCaseDeclSyntax: SyntaxWithAttributes {}
extension EnumDeclSyntax: SyntaxWithAttributes {}
extension OperatorDeclSyntax: SyntaxWithAttributes {}
extension PrecedenceGroupDeclSyntax: SyntaxWithAttributes {}
extension GenericParameterSyntax: SyntaxWithAttributes {}
extension AttributedTypeSyntax: SyntaxWithAttributes {}

public extension SyntaxWithAttributes {

    func setAttributes(@SyntaxBuilder _ items: () -> [AttributeSyntax]) -> Self {
        return self.withAttributes(SyntaxFactory.makeAttributeList(items()))
    }

    func setAttributes(@SyntaxBuilder _ items: () -> [[AttributeSyntax]]) -> Self {
        return self.setAttributes({ items().flatMap{ $0 } })
    }

    func setAttributes(@SyntaxBuilder _ items: () -> AttributeSyntax) -> Self {
        return self.setAttributes({ [items()] })
    }
}
