
import SwiftSyntax

extension ArrayExprSyntax {

    public init(@SyntaxBuilder _ items: () -> [ExprSyntax]) {
        self.init { (b) in
            b.useLeftSquare(SyntaxFactory.makeLeftSquareBracketToken())
            b.useRightSquare(SyntaxFactory.makeRightSquareBracketToken())
            let items = items()
            items.enumerated().forEach { (index, item) in
                b.addArrayElement(ArrayElementSyntax({ (b) in
                    if index != items.count - 1 {
                        b.useTrailingComma(SyntaxFactory.makeCommaToken())
                    }
                    b.useExpression(item)
                }))
            }
        }
    }

    public init(@SyntaxBuilder _ item: () -> ExprSyntax) {
        self.init { [item()] }
    }
}


extension ArrayTypeSyntax {

    public init(@SyntaxBuilder _ item: () -> TypeSyntax) {
        self.init { (b) in
            b.useElementType(item())
            b.useLeftSquareBracket(SyntaxFactory.makeLeftSquareBracketToken())
            b.useRightSquareBracket(SyntaxFactory.makeRightSquareBracketToken())
        }
    }
}

public extension AssignmentExprSyntax {
    init() {
        self.init { (b) in
            b.useAssignToken(SyntaxFactory.makeEqualToken())
        }
    }
}

extension ClassDeclSyntax {

    public init(name: String) {
        self.init { (b) in
            b.useClassKeyword(SyntaxFactory.makeClassKeyword())
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
        }
    }
}

extension CodeBlockSyntax {

    public init() {
        self.init { (b) in
            b.useLeftBrace(SyntaxFactory.makeLeftBraceToken())
            b.useRightBrace(SyntaxFactory.makeRightBraceToken())
        }
    }
}

public extension DotSelfExprSyntax {
    init(@SyntaxBuilder _ item: () -> ExprSyntax) {
        self.init { (b) in
            b.useDot(SyntaxFactory.makePeriodToken())
            b.useSelfKeyword(SyntaxFactory.makeSelfKeyword())
            b.useExpression(item())
        }
    }
}

extension EnumCaseDeclSyntax {
    public init(@SyntaxBuilder _ items: () -> [EnumCaseElementSyntax]) {
        self.init { (b) in
            b.useCaseKeyword(SyntaxFactory.makeCaseKeyword())
            items().forEach { (item) in
                b.addEnumCaseElement(item)
            }
        }
    }

    public init(@SyntaxBuilder _ item: () -> EnumCaseElementSyntax) {
        self.init { [item()] }
    }
}


extension EnumCaseElementSyntax {
    public init(name: String) {
        self.init { (b) in
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
        }
    }
}

extension EnumDeclSyntax {
    public init(name: String) {
        self.init { (b) in
            b.useEnumKeyword(SyntaxFactory.makeEnumKeyword())
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
        }
    }
}

public extension ExtensionDeclSyntax {
    init() {
        self.init { (b) in
            b.useExtensionKeyword(SyntaxFactory.makeExtensionKeyword())
        }
    }
}

public extension FunctionCallExprSyntax {
    init() {
        self.init { (b) in
            b.useLeftParen(SyntaxFactory.makeLeftParenToken())
            b.useRightParen(SyntaxFactory.makeRightParenToken())
        }
    }
}

public extension FunctionCallArgumentSyntax {
    init(label: String? = nil, @SyntaxBuilder _ item: () -> ExprSyntax) {
        self.init { (b) in
            b.useExpression(item())
            if let label = label {
                b.useLabel(SyntaxFactory.makeIdentifier(label))
                b.useColon(SyntaxFactory.makePoundColorLiteralKeyword())
            }
        }
    }
}

public extension IdentifierExprSyntax {
    init(name: String) {
        self.init { (b) in
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
        }
    }
}

public extension ImplicitMemberExprSyntax {
    init(name: String) {
        self.init { (b) in
            b.useDot(SyntaxFactory.makePeriodToken())
            b.useName(SyntaxFactory.makeIdentifier(name))
        }
    }
}

public extension ImportDeclSyntax {
    init(@SyntaxBuilder _ items: () -> [String]) {
        self.init { (b) in
            b.useImportTok(SyntaxFactory.makeImportKeyword())
            let allItems = items()
            allItems.enumerated().forEach { index, item in
                let isLastItem = index.advanced(by: 1) == allItems.count
                b.addAccessPathComponent(SyntaxFactory.makeAccessPathComponent(
                    name: SyntaxFactory.makeIdentifier(item),
                    trailingDot: isLastItem ? nil : SyntaxFactory.makePeriodToken()))
            }
        }
    }

    init(name: String) {
        self.init { [name] }
    }
}

public extension InitializerDeclSyntax {
    init() {
        self.init { (b) in
            b.useInitKeyword(SyntaxFactory.makeInitKeyword())
        }
    }

    var optional: InitializerDeclSyntax {
        self.withOptionalMark(SyntaxFactory.makePostfixQuestionMarkToken())
    }

    var required: InitializerDeclSyntax {
        self.addModifier(DeclModifierSyntax({ (b) in
            b.useName(SyntaxFactory.makeIdentifier("required"))
        }))
    }
}

public extension MemberAccessExprSyntax {
    init(name: String) {
        self.init { (b) in
            b.useDot(SyntaxFactory.makePeriodToken())
            b.useName(SyntaxFactory.makeIdentifier(name))
        }
    }
}

extension OptionalTypeSyntax {

    public init(@SyntaxBuilder _ item: () -> TypeSyntax) {
        self.init { (b) in
            b.useQuestionMark(SyntaxFactory.makePostfixQuestionMarkToken())
            b.useWrappedType(item())
        }
    }
}

extension ParameterClauseSyntax {

    public init(@SyntaxBuilder _ items: () -> [FunctionParameterSyntax]) {
        self.init { (b) in
            items().forEach { (item) in
                b.addFunctionParameter(item)
            }
            b.useLeftParen(SyntaxFactory.makeLeftParenToken())
            b.useRightParen(SyntaxFactory.makeRightParenToken())
        }
    }

    public init(@SyntaxBuilder _ item: () -> FunctionParameterSyntax) {
        self.init { [item()] }
    }
}

extension SequenceExprSyntax {

    public init(@SyntaxBuilder _ items: () -> [ExprSyntax]) {
        self.init { (b) in
            items().forEach { (item) in
                b.addExpression(item)
            }
        }
    }

    public init(@SyntaxBuilder _ item: () -> ExprSyntax) {
        self.init { [item()] }
    }

}

extension SimpleTypeIdentifierSyntax {

    public init(name: String) {
        self.init { (b) in
            b.useName(SyntaxFactory.makeIdentifier(name))
        }
    }
}

extension SourceFileSyntax {

    public init(@SyntaxBuilder _ items: () -> [Syntax]) {
        self.init { (b) in
            items().forEach { (item) in
                b.addCodeBlockItem(CodeBlockItemSyntax({ (b) in
                    b.useItem(item)
                }))
            }
            b.useEOFToken(SyntaxFactory.makeToken(.eof, presence: .present).withLeadingTrivia(.newlines(1)))
        }
    }

    public init<T: Syntax>(@SyntaxBuilder _ item: () -> T) {
        self.init { [item()] }
    }
}

public extension TryExprSyntax {
    init(@SyntaxBuilder _ item: () -> ExprSyntax) {
        self.init { (b) in
            b.useTryKeyword(SyntaxFactory.makeTryKeyword())
            b.useExpression(item())
        }
    }
}


public extension VariableDeclSyntax {
    init() {
        self.init { (b) in
        }
    }
}



