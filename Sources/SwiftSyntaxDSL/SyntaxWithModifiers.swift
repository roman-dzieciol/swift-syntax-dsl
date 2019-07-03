//
//  File.swift
//  
//
//  Created by Roman Dzieciol on 6/30/19.
//

import SwiftSyntax


public protocol SyntaxWithModifiers {

    func setModifiers(@SyntaxBuilder _ item: () -> DeclModifierSyntax) -> Self
    func setModifiers(@SyntaxBuilder _ items: () -> [DeclModifierSyntax]) -> Self
    func setModifiers(@SyntaxBuilder _ items: () -> [[DeclModifierSyntax]]) -> Self

    var modifiers: ModifierListSyntax? { get }
    func addModifier(_ element: DeclModifierSyntax) -> Self
    func withModifiers(_ newChild: ModifierListSyntax?) -> Self
}

public extension SyntaxWithModifiers {

    func setModifiers(@SyntaxBuilder _ items: () -> [DeclModifierSyntax]) -> Self {
        return self.withModifiers(SyntaxFactory.makeModifierList(items()))
    }

    func setModifiers(@SyntaxBuilder _ items: () -> [[DeclModifierSyntax]]) -> Self {
        return self.setModifiers({ items().flatMap{ $0 } })
    }

    func setModifiers(@SyntaxBuilder _ items: () -> DeclModifierSyntax) -> Self {
        return self.setModifiers({ [items()] })
    }

    var `public`: Self {
        setModifiers { .public }
    }

    var `internal`: Self {
        setModifiers { .internal }
    }

    var `private`: Self {
        setModifiers { .private }
    }

    var `fileprivate`: Self {
        setModifiers { .fileprivate }
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

extension DeclModifierSyntax {

    public static var `public`: DeclModifierSyntax {
        return DeclModifierSyntax { (b) in
            b.useName(SyntaxFactory.makeToken(.publicKeyword, presence: .present))
        }
    }

    public static var `internal`: DeclModifierSyntax {
        return DeclModifierSyntax { (b) in
            b.useName(SyntaxFactory.makeToken(.internalKeyword, presence: .present))
        }
    }

    public static var `private`: DeclModifierSyntax {
        return DeclModifierSyntax { (b) in
            b.useName(SyntaxFactory.makeToken(.privateKeyword, presence: .present))
        }
    }

    public static var `fileprivate`: DeclModifierSyntax {
        return DeclModifierSyntax { (b) in
            b.useName(SyntaxFactory.makeToken(.fileprivateKeyword, presence: .present))
        }
    }
}




public protocol SyntaxWithMembers {

    func setMembers(@SyntaxBuilder _ item: () -> DeclSyntax) -> Self
    func setMembers(@SyntaxBuilder _ items: () -> [DeclSyntax]) -> Self
    func setMembers(@SyntaxBuilder _ items: () -> [[DeclSyntax]]) -> Self

    var members: MemberDeclBlockSyntax { get }
    func withMembers(_ newChild: MemberDeclBlockSyntax?) -> Self
}

extension ClassDeclSyntax: SyntaxWithMembers {}
extension StructDeclSyntax: SyntaxWithMembers {}
extension ProtocolDeclSyntax: SyntaxWithMembers {}
extension ExtensionDeclSyntax: SyntaxWithMembers {}
extension EnumDeclSyntax: SyntaxWithMembers {}

public extension SyntaxWithMembers {

    func setMembers(@SyntaxBuilder _ items: () -> [DeclSyntax]) -> Self {
        return self.withMembers(MemberDeclBlockSyntax({ (b) in
            items().forEach { (item) in
                b.addMemberDeclListItem(MemberDeclListItemSyntax({ (b) in
                    b.useDecl(item)
                }))
            }
            b.useLeftBrace(SyntaxFactory.makeLeftBraceToken())
            b.useRightBrace(SyntaxFactory.makeRightBraceToken())
        }))
    }

    func setMembers(@SyntaxBuilder _ items: () -> [[DeclSyntax]]) -> Self {
        return self.setMembers({ items().flatMap{ $0 } })
    }

    func setMembers(@SyntaxBuilder _ items: () -> DeclSyntax) -> Self {
        return self.setMembers({ [items()] })
    }
}

extension MemberDeclBlockSyntax {

    public init(@SyntaxBuilder _ items: () -> [DeclSyntax]) {
        self.init { (b) in
            items().forEach { (item) in
                b.addMemberDeclListItem(MemberDeclListItemSyntax({ (b) in
                    b.useDecl(item)
                }))
            }
            b.useLeftBrace(SyntaxFactory.makeLeftBraceToken())
            b.useRightBrace(SyntaxFactory.makeRightBraceToken())
        }
    }

    public init(@SyntaxBuilder _ item: () -> DeclSyntax) {
        self.init { [item()] }
    }
}

public protocol SyntaxWithInheritanceClause {

    func setInheritanceClause(@SyntaxBuilder _ item: () -> TypeSyntax) -> Self
    func setInheritanceClause(@SyntaxBuilder _ items: () -> [TypeSyntax]) -> Self
    func setInheritanceClause(@SyntaxBuilder _ items: () -> [[TypeSyntax]]) -> Self

    var inheritanceClause: TypeInheritanceClauseSyntax? { get }
    func withInheritanceClause(_ newChild: TypeInheritanceClauseSyntax?) -> Self
}

extension AssociatedtypeDeclSyntax: SyntaxWithInheritanceClause {}
extension ClassDeclSyntax: SyntaxWithInheritanceClause {}
extension StructDeclSyntax: SyntaxWithInheritanceClause {}
extension ProtocolDeclSyntax: SyntaxWithInheritanceClause {}
extension ExtensionDeclSyntax: SyntaxWithInheritanceClause {}
extension EnumDeclSyntax: SyntaxWithInheritanceClause {}

public extension SyntaxWithInheritanceClause {

    func setInheritanceClause(@SyntaxBuilder _ items: () -> [TypeSyntax]) -> Self {
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

    func setInheritanceClause(@SyntaxBuilder _ items: () -> [[TypeSyntax]]) -> Self {
        return self.setInheritanceClause({ items().flatMap{ $0 } })
    }

    func setInheritanceClause(@SyntaxBuilder _ items: () -> TypeSyntax) -> Self {
        return self.setInheritanceClause({ [items()] })
    }
}


public protocol SyntaxWithGenericArgumentClause {

    func setGenericArgumentClause(@SyntaxBuilder _ item: () -> TypeSyntax) -> Self
    func setGenericArgumentClause(@SyntaxBuilder _ items: () -> [TypeSyntax]) -> Self
    func setGenericArgumentClause(@SyntaxBuilder _ items: () -> [[TypeSyntax]]) -> Self

    // Not present in SpecializeExprSyntax
    //var genericArgumentClause: GenericArgumentClauseSyntax? { get }
    func withGenericArgumentClause(_ newChild: GenericArgumentClauseSyntax?) -> Self
}

extension MemberTypeIdentifierSyntax: SyntaxWithGenericArgumentClause {}
extension SimpleTypeIdentifierSyntax: SyntaxWithGenericArgumentClause {}
extension SpecializeExprSyntax: SyntaxWithGenericArgumentClause {}
extension SymbolicReferenceExprSyntax: SyntaxWithGenericArgumentClause {}

public extension SyntaxWithGenericArgumentClause {

    func setGenericArgumentClause(@SyntaxBuilder _ items: () -> [TypeSyntax]) -> Self {
        return self.withGenericArgumentClause(GenericArgumentClauseSyntax({ (b) in
            b.useLeftAngleBracket(SyntaxFactory.makeLeftAngleToken())
            b.useRightAngleBracket(SyntaxFactory.makeRightAngleToken())
            b.addGenericArgument(GenericArgumentSyntax({ (b) in
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

    func setGenericArgumentClause(@SyntaxBuilder _ items: () -> [[TypeSyntax]]) -> Self {
        return self.setGenericArgumentClause({ items().flatMap{ $0 } })
    }

    func setGenericArgumentClause(@SyntaxBuilder _ items: () -> TypeSyntax) -> Self {
        return self.setGenericArgumentClause({ [items()] })
    }
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

public protocol SyntaxWithCodeBlock {

    func withBody(_ newChild: CodeBlockSyntax?) -> Self

    func setCodeBlock(@SyntaxBuilder _ item: () -> Syntax) -> Self
    func setCodeBlock(@SyntaxBuilder _ items: () -> [Syntax]) -> Self
    func setCodeBlock(@SyntaxBuilder _ items: () -> [[Syntax]]) -> Self
}

public extension SyntaxWithCodeBlock {

    func setCodeBlock(@SyntaxBuilder _ items: () -> [Syntax]) -> Self {
        return self.withBody(CodeBlockSyntax({ (b) in
            items().forEach { (item) in
                b.addCodeBlockItem(CodeBlockItemSyntax({ (b) in
                    b.useItem(item)
                }))
            }
            b.useLeftBrace(SyntaxFactory.makeLeftBraceToken())
            b.useRightBrace(SyntaxFactory.makeRightBraceToken())
        }))
    }

    func setCodeBlock(@SyntaxBuilder _ items: () -> [[Syntax]]) -> Self {
        return self.setCodeBlock({ items().flatMap{ $0 } })
    }

    func setCodeBlock(@SyntaxBuilder _ items: () -> Syntax) -> Self {
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



public protocol SyntaxWithArgumentList {

    func withArgumentList(_ newChild: FunctionCallArgumentListSyntax?) -> Self

    func setArguments(@SyntaxBuilder _ item: () -> FunctionCallArgumentSyntax) -> Self
    func setArguments(@SyntaxBuilder _ items: () -> [FunctionCallArgumentSyntax]) -> Self
    func setArguments(@SyntaxBuilder _ items: () -> [[FunctionCallArgumentSyntax]]) -> Self
}

public extension SyntaxWithArgumentList {

    func setArguments(@SyntaxBuilder _ items: () -> [FunctionCallArgumentSyntax]) -> Self {
        let allItems = items()
        let commaSeparatedItems: [FunctionCallArgumentSyntax] = allItems.enumerated().map { (arg) in
            let (index, item) = arg
            if index.advanced(by: 1) != allItems.count {
                return item
            }
            return item
        }
        return self.withArgumentList(SyntaxFactory.makeFunctionCallArgumentList(commaSeparatedItems))
    }

    func setArguments(@SyntaxBuilder _ items: () -> [[FunctionCallArgumentSyntax]]) -> Self {
        return self.setArguments({ items().flatMap{ $0 } })
    }

    func setArguments(@SyntaxBuilder _ items: () -> FunctionCallArgumentSyntax) -> Self {
        return self.setArguments({ [items()] })
    }
}

extension FunctionCallExprSyntax: SyntaxWithArgumentList {}
extension SubscriptExprSyntax: SyntaxWithArgumentList {}


//public protocol SyntaxWithCalledExpression {
//
//    func withCalledExpression(_ newChild: ExprSyntax?) -> Self
//
//    func setCalledExpression(@SyntaxBuilder _ item: () -> FunctionCallArgumentSyntax) -> Self
//    func setCalledExpression(@SyntaxBuilder _ items: () -> [FunctionCallArgumentSyntax]) -> Self
//    func setCalledExpression(@SyntaxBuilder _ items: () -> [[FunctionCallArgumentSyntax]]) -> Self
//}
//
//public extension SyntaxWithArgumentList {
//
//    func setArguments(@SyntaxBuilder _ items: () -> [FunctionCallArgumentSyntax]) -> Self {
//        let allItems = items()
//        let commaSeparatedItems: [FunctionCallArgumentSyntax] = allItems.enumerated().map { (arg) in
//            let (index, item) = arg
//            if index.advanced(by: 1) != allItems.count {
//                return item
//            }
//            return item
//        }
//        return self.withArgumentList(SyntaxFactory.makeFunctionCallArgumentList(commaSeparatedItems))
//    }
//
//    func setArguments(@SyntaxBuilder _ items: () -> [[FunctionCallArgumentSyntax]]) -> Self {
//        return self.setArguments({ items().flatMap{ $0 } })
//    }
//
//    func setArguments(@SyntaxBuilder _ items: () -> FunctionCallArgumentSyntax) -> Self {
//        return self.setArguments({ [items()] })
//    }
//}
//
//extension FunctionCallExprSyntax: SyntaxWithArgumentList {}
//extension SubscriptExprSyntax: SyntaxWithArgumentList {}
