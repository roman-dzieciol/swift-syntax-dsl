
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

extension ClassDeclSyntax {

    public init(name: String, @SyntaxBuilder _ items: () -> [DeclSyntax]) {
        self.init { (b) in
            b.useClassKeyword(SyntaxFactory.makeClassKeyword())
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
            b.useMembers(MemberDeclBlockSyntax {
                items()
            })
        }
    }

    public init(name: String, @SyntaxBuilder _ item: () -> DeclSyntax) {
        self.init(name: name) { [item()] }
    }

    public init(name: String, @SyntaxBuilder _ items: () -> [[DeclSyntax]]) {
        self.init(name: name) { items().flatMap { $0 } }
    }
}

extension CodeBlockSyntax {

    public init(@SyntaxBuilder _ items: () -> [Syntax]) {
        self.init { (b) in
            items().forEach { (item) in
                b.addCodeBlockItem(CodeBlockItemSyntax({ (b) in
                    b.useItem(item)
                }))
            }
            b.useLeftBrace(SyntaxFactory.makeLeftBraceToken())
            b.useRightBrace(SyntaxFactory.makeRightBraceToken())
        }
    }

    public init(@SyntaxBuilder _ item: () -> Syntax) {
        self.init { [item()] }
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




