
import SwiftSyntax

public protocol SyntaxWithModifiers {

    var modifiers: ModifierListSyntax? { get }
    func addModifier(_ element: DeclModifierSyntax) -> Self
    func withModifiers(_ newChild: ModifierListSyntax?) -> Self

    func addModifier(@SyntaxBuilder _ item: () -> DeclModifierSyntax) -> Self
    func addModifiers(@SyntaxBuilder _ items: () -> [DeclModifierSyntax]) -> Self
    func addModifiersList(@SyntaxBuilder _ items: () -> [[DeclModifierSyntax]]) -> Self
}

public extension SyntaxWithModifiers {

    func addModifiers(@SyntaxBuilder _ items: () -> [DeclModifierSyntax]) -> Self {
        return items().reduce(self) { (result, modifier) -> Self in
            return result.addModifier(modifier)
        }
    }

    func addModifiersList(@SyntaxBuilder _ items: () -> [[DeclModifierSyntax]]) -> Self {
        return self.addModifiers({ items().flatMap{ $0 } })
    }

    func addModifier(@SyntaxBuilder _ items: () -> DeclModifierSyntax) -> Self {
        return self.addModifiers({ [items()] })
    }
}

extension TypealiasDeclSyntax: SyntaxWithModifiers {}
extension AssociatedtypeDeclSyntax: SyntaxWithModifiers {}
extension ClassDeclSyntax: SyntaxWithModifiers {}
extension StructDeclSyntax: SyntaxWithModifiers {}
extension ProtocolDeclSyntax: SyntaxWithModifiers {}
extension ExtensionDeclSyntax: SyntaxWithModifiers {}
extension FunctionDeclSyntax: SyntaxWithModifiers {}
extension InitializerDeclSyntax: SyntaxWithModifiers {}
extension DeinitializerDeclSyntax: SyntaxWithModifiers {}
extension SubscriptDeclSyntax: SyntaxWithModifiers {}
extension ImportDeclSyntax: SyntaxWithModifiers {}
extension VariableDeclSyntax: SyntaxWithModifiers {}
extension EnumCaseDeclSyntax: SyntaxWithModifiers {}
extension EnumDeclSyntax: SyntaxWithModifiers {}
extension OperatorDeclSyntax: SyntaxWithModifiers {}
extension PrecedenceGroupDeclSyntax: SyntaxWithModifiers {}

public extension SyntaxWithModifiers {

    var `public`: Self {
        addModifier { .public }
    }

    var `internal`: Self {
        addModifier { .internal }
    }

    var `private`: Self {
        addModifier { .private }
    }

    var `fileprivate`: Self {
        addModifier { .fileprivate }
    }
}

public func Public<T: SyntaxWithModifiers & DeclSyntax>(@DeclSyntaxBuilder _ items: () -> T) -> T {
    return items().public
}

public func Internal<T: SyntaxWithModifiers & DeclSyntax>(@DeclSyntaxBuilder _ items: () -> T) -> T {
    return items().internal
}

public func Private<T: SyntaxWithModifiers & DeclSyntax>(@DeclSyntaxBuilder _ items: () -> T) -> T {
    return items().private
}

public func FilePrivate<T: SyntaxWithModifiers & DeclSyntax>(@DeclSyntaxBuilder _ items: () -> T) -> T {
    return items().fileprivate
}

public extension DeclModifierSyntax {

    static var `public`: DeclModifierSyntax {
        return DeclModifierSyntax { (b) in
            b.useName(SyntaxFactory.makeToken(.publicKeyword, presence: .present))
        }
    }

    static var `internal`: DeclModifierSyntax {
        return DeclModifierSyntax { (b) in
            b.useName(SyntaxFactory.makeToken(.internalKeyword, presence: .present))
        }
    }

    static var `private`: DeclModifierSyntax {
        return DeclModifierSyntax { (b) in
            b.useName(SyntaxFactory.makeToken(.privateKeyword, presence: .present))
        }
    }

    static var `fileprivate`: DeclModifierSyntax {
        return DeclModifierSyntax { (b) in
            b.useName(SyntaxFactory.makeToken(.fileprivateKeyword, presence: .present))
        }
    }

    static var override: DeclModifierSyntax {
        return DeclModifierSyntax { (b) in
            b.useName(SyntaxFactory.makeIdentifier("override"))
        }
    }
}
