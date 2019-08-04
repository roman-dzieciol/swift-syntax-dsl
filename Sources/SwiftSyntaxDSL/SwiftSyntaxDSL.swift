
import SwiftSyntax

public extension ArrayExprSyntax {

    init(@ExprSyntaxBuilder _ items: () -> [ExprSyntax]) {
        self.init { (b) in
            b.useLeftSquare(SyntaxFactory.makeLeftSquareBracketToken())
            b.useRightSquare(SyntaxFactory.makeRightSquareBracketToken())
            let items = items()
            items.enumerated().forEach { (index, item) in
                b.addElement(ArrayElementSyntax({ (b) in
                    if index != items.count - 1 {
                        b.useTrailingComma(SyntaxFactory.makeCommaToken())
                    }
                    b.useExpression(item)
                }))
            }
        }
    }

    init(@ExprSyntaxBuilder _ item: () -> ExprSyntax) {
        self.init { [item()] }
    }
}


public extension ArrayTypeSyntax {

    init(@TypeSyntaxBuilder _ item: () -> TypeSyntax) {
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

public extension ClassDeclSyntax {

    init(_ name: String, inherits: [TypeSyntax]? = nil, @DeclSyntaxBuilder _ items: () -> [DeclSyntax]) {
        self.init { (b) in
            b.useClassKeyword(SyntaxFactory.makeClassKeyword())
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
            if let inherits = inherits {
                b.useInheritanceClause(TypeInheritanceClauseSyntax {
                    inherits
                }.withColon(SyntaxFactory.makeColonToken()))
            }
            b.useMembers(MemberDeclBlockSyntax {
                items()
            })
        }
    }

    init(_ name: String, inherits: [TypeSyntax]? = nil, @DeclSyntaxBuilder _ items: () -> DeclSyntax) {
        self.init(name, inherits: inherits) {
            [items()]
        }
     }
}

public extension CodeBlockSyntax {

    init() {
        self.init { (b) in
            b.useLeftBrace(SyntaxFactory.makeLeftBraceToken())
            b.useRightBrace(SyntaxFactory.makeRightBraceToken())
        }
    }
}

public extension EnumCaseDeclSyntax {
    init(@SyntaxBuilder _ items: () -> [EnumCaseElementSyntax]) {
        self.init { (b) in
            b.useCaseKeyword(SyntaxFactory.makeCaseKeyword())
            items().forEach { (item) in
                b.addElement(item)
            }
        }
    }

    init(@SyntaxBuilder _ item: () -> EnumCaseElementSyntax) {
        self.init { [item()] }
    }
}


public extension EnumCaseElementSyntax {
    init(_ name: String) {
        self.init { (b) in
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
        }
    }
}

public extension EnumDeclSyntax {
    init(_ name: String, _ inherits: [TypeSyntax]?, _ cases: [String]) {
        self.init { (b) in
            b.useEnumKeyword(SyntaxFactory.makeEnumKeyword())
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
            b.useMembers(MemberDeclBlockSyntax{
                cases.map { name -> EnumCaseDecl in
                    EnumCaseDecl {
                        EnumCaseElement(name)
                    }
                }
            })
            if let inherits = inherits {
                b.useInheritanceClause(TypeInheritanceClauseSyntax {
                    inherits
                    }.withColon(SyntaxFactory.makeColonToken()))

            }
        }
    }

    init(_ name: String, @SyntaxBuilder _ items: () -> [EnumCaseDecl]) {
        self.init { (b) in
            b.useEnumKeyword(SyntaxFactory.makeEnumKeyword())
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
            b.useMembers(MemberDeclBlockSyntax{
                items()
            })
        }
    }

    init(_ name: String, @SyntaxBuilder _ item: () -> EnumCaseDecl) {
        self.init(name) { [item()] }
    }

    func inherits(@TypeSyntaxBuilder _ items: () -> [TypeSyntax]) -> Self {
        return withInheritanceClause(TypeInheritanceClauseSyntax {
            items()
        }.withColon(SyntaxFactory.makeColonToken()))
    }

    func inherits(@TypeSyntaxBuilder _ items: () -> TypeSyntax) -> Self {
        return withInheritanceClause(TypeInheritanceClauseSyntax {
            items()
        }.withColon(SyntaxFactory.makeColonToken()))
    }
}

public extension ExtensionDeclSyntax {
    init() {
        self.init { (b) in
            b.useExtensionKeyword(SyntaxFactory.makeExtensionKeyword())
        }
    }

    init(_ type: TypeSyntax, inherits: [TypeSyntax]? = nil, @DeclSyntaxBuilder _ items: () -> [DeclSyntax]) {
        self.init { (b) in
            b.useExtensionKeyword(SyntaxFactory.makeExtensionKeyword())
            b.useExtendedType(type)
            if let inherits = inherits {
                b.useInheritanceClause(TypeInheritanceClauseSyntax {
                    inherits
                })
            }
            b.useMembers(MemberDeclBlockSyntax {
                items()
            })
        }
    }

    init(_ type: TypeSyntax, inherits: [TypeSyntax]? = nil, @DeclSyntaxBuilder _ items: () -> DeclSyntax) {
        self.init(type, inherits: inherits) {
            [items()]
        }
    }
}

public extension FunctionCallExprSyntax {
    init(_ called: ExprSyntax? = nil, _ args: [FunctionCallArgument]) {
        self.init { (b) in
            b.useLeftParen(SyntaxFactory.makeLeftParenToken())
            b.useRightParen(SyntaxFactory.makeRightParenToken())
            if let called = called {
                b.useCalledExpression(called)
            }
            args.enumerated().forEach { (arg) in
                let (index, item) = arg
                if index.advanced(by: 1) != args.count {
                    b.addArgument(item.withTrailingComma(SyntaxFactory.makeCommaToken()))
                } else {
                    b.addArgument(item)
                }
            }
        }
    }

    init(_ called: ExprSyntax? = nil, _ args: FunctionCallArgument...) {
        self.init(called, args)
    }
}

public extension FunctionCallArgumentSyntax {
    init(_ label: String? = nil, _ item: ExprSyntax) {
        self.init { (b) in
            if let label = label {
                b.useLabel(SyntaxFactory.makeIdentifier(label))
                b.useColon(SyntaxFactory.makeColonToken())
            }
            b.useExpression(item)
        }
    }
}

public extension FunctionDeclSyntax {
    init(_ name: String, _ params: FunctionParameter...) {
        self.init { (b) in
            b.useFuncKeyword(SyntaxFactory.makeFuncKeyword())
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
            b.useSignature(FunctionSignatureSyntax {
                params
            })

        }
    }

    func returns(_ returnType: TypeSyntax) -> Self {
        self.withSignature(signature.withOutput(ReturnClauseSyntax(returnType)))
    }

    var `throws`: Self {
        self.withSignature(signature.throws)
    }

    var `rethrows`: Self {
        self.withSignature(signature.rethrows)
    }
}

public extension FunctionParameterSyntax {
    
    init(_ firstName: String, _ secondName: String? = nil, type: TypeSyntax) {
        self.init { (b) in
            b.useFirstName(SyntaxFactory.makeIdentifier(firstName))
            if let secondName = secondName {
                b.useSecondName(SyntaxFactory.makeIdentifier(secondName))
            }
            b.useColon(SyntaxFactory.makeColonToken())
            b.useType(type)
        }
    }
}

public extension FunctionSignature {
    init(@FunctionParameterSyntaxBuilder _ items: () -> [FunctionParameterSyntax]) {
        self.init { (b) in
            b.useInput(ParameterClauseSyntax {
                items()
            })
        }
    }

    init(@SyntaxBuilder _ item: () -> FunctionParameterSyntax) {
        self.init { [item()] }
    }
}


public extension IdentifierExprSyntax {
    init(_ name: String) {
        self.init { (b) in
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
        }
    }

    init(_ kind: TokenKind) {
        self.init { (b) in
            b.useIdentifier(SyntaxFactory.makeToken(kind, presence: .present))
        }
    }

    func member(_ name: String) -> MemberAccessExprSyntax {
        return MemberAccessExprSyntax(name).withBase(self)
    }
}

public extension IdentifierPatternSyntax {
    init(_ name: String) {
        self.init { (b) in
            b.useIdentifier(SyntaxFactory.makeIdentifier(name))
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
                b.addPathComponent(SyntaxFactory.makeAccessPathComponent(
                    name: SyntaxFactory.makeIdentifier(item),
                    trailingDot: isLastItem ? nil : SyntaxFactory.makePeriodToken()))
            }
        }
    }

    init(_ name: String) {
        self.init { [name] }
    }
}

public extension InitializerDeclSyntax {

    init(params: FunctionParameter...) {
        self.init { (b) in
            b.useInitKeyword(SyntaxFactory.makeInitKeyword())
            b.useParameters(ParameterClauseSyntax{
                params
            })
        }
    }

    init(params: [FunctionParameter]) {
        self.init { (b) in
            b.useInitKeyword(SyntaxFactory.makeInitKeyword())
            b.useParameters(ParameterClauseSyntax{
                params
            })
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
    init(_ name: String) {
        self.init { (b) in
            b.useDot(SyntaxFactory.makePeriodToken())
            b.useName(SyntaxFactory.makeIdentifier(name))
        }
    }

    init(_ base: String, _ name: String) {
        self.init { (b) in
            b.useDot(SyntaxFactory.makePeriodToken())
            b.useName(SyntaxFactory.makeIdentifier(name))
            b.useBase(IdentifierExpr(base))
        }
    }

    init(_ base: String, _ tokenKind: TokenKind) {
        self.init { (b) in
            b.useDot(SyntaxFactory.makePeriodToken())
            b.useName(SyntaxFactory.makeToken(tokenKind, presence: .present))
            b.useBase(IdentifierExpr(base))
        }
    }

    init(_ base: ExprSyntax, _ tokenKind: TokenKind) {
        self.init { (b) in
            b.useDot(SyntaxFactory.makePeriodToken())
            b.useName(SyntaxFactory.makeToken(tokenKind, presence: .present))
            b.useBase(base)
        }
    }

    init(self name: String) {
        self.init { (b) in
            b.useDot(SyntaxFactory.makePeriodToken())
            b.useName(SyntaxFactory.makeIdentifier(name))
            b.useBase(IdentifierExpr(.selfKeyword))
        }
    }

    init(super name: String) {
        self.init { (b) in
            b.useDot(SyntaxFactory.makePeriodToken())
            b.useName(SyntaxFactory.makeIdentifier(name))
            b.useBase(SuperRef())
        }
    }

    func call() -> FunctionCallExprSyntax {
        return FunctionCallExprSyntax().withCalledExpression(self)
    }
}

public extension MemberDeclBlockSyntax {

    init(@DeclSyntaxBuilder _ items: () -> [DeclSyntax]) {
        self.init { (b) in
            items().forEach { (item) in
                b.addMember(MemberDeclListItemSyntax({ (b) in
                    b.useDecl(item)
                }))
            }
            b.useLeftBrace(SyntaxFactory.makeLeftBraceToken())
            b.useRightBrace(SyntaxFactory.makeRightBraceToken())
        }
    }

    init(@DeclSyntaxBuilder _ items: () -> [[DeclSyntax]]) {
        self.init { items().flatMap { $0 } }
    }

    init(@DeclSyntaxBuilder _ item: () -> DeclSyntax) {
        self.init { [item()] }
    }
}

public extension OptionalTypeSyntax {

    init(@TypeSyntaxBuilder _ item: () -> TypeSyntax) {
        self.init { (b) in
            b.useQuestionMark(SyntaxFactory.makePostfixQuestionMarkToken())
            b.useWrappedType(item())
        }
    }
}

public extension ParameterClauseSyntax {

    init(@FunctionParameterSyntaxBuilder _ items: () -> [FunctionParameterSyntax]) {
        self.init { (b) in
            let allItems = items()
            allItems.enumerated().forEach { (index, item) in
                if index.advanced(by: 1) != allItems.count {
                    b.addParameter(item.withTrailingComma(SyntaxFactory.makeCommaToken()))
                } else {
                    b.addParameter(item)
                }
            }
            b.useLeftParen(SyntaxFactory.makeLeftParenToken())
            b.useRightParen(SyntaxFactory.makeRightParenToken())
        }
    }

    init(@SyntaxBuilder _ item: () -> FunctionParameterSyntax) {
        self.init { [item()] }
    }
}

public extension PatternBinding {
    init(_ pattern: PatternSyntax, type: TypeSyntax? = nil, value: ExprSyntax? = nil, accessor: Syntax? = nil) {
        self.init { (b) in
            b.usePattern(pattern)
            if let type = type {
                b.useTypeAnnotation(TypeAnnotationSyntax({ (b) in
                    b.useColon(SyntaxFactory.makeColonToken())
                    b.useType(type)
                }))
            }
            if let value = value {
                b.useInitializer(InitializerClauseSyntax({ (b) in
                    b.useEqual(SyntaxFactory.makeEqualToken())
                    b.useValue(value)
                }))
            }
            if let accessor = accessor {
                b.useAccessor(accessor)
            }
        }
    }
}

public extension ReturnClauseSyntax {
    init(_ returnType: TypeSyntax) {
        self.init { (b) in
            b.useReturnType(returnType)
            b.useArrow(SyntaxFactory.makeArrowToken())
        }
    }
}

public extension SequenceExprSyntax {

    init(@ExprSyntaxBuilder _ items: () -> [ExprSyntax]) {
        self.init { (b) in
            items().forEach { (item) in
                b.addElement(item)
            }
        }
    }

    init(@ExprSyntaxBuilder _ item: () -> ExprSyntax) {
        self.init { [item()] }
    }

}

public extension SimpleTypeIdentifierSyntax {

    init(_ name: String) {
        self.init { (b) in
            b.useName(SyntaxFactory.makeIdentifier(name))
        }
    }
}

public extension SourceFileSyntax {

    init(@SyntaxBuilder _ items: () -> [Syntax]) {
        self.init { (b) in
            items().forEach { (item) in
                b.addStatement(CodeBlockItemSyntax({ (b) in
                    b.useItem(item)
                }))
            }
            b.useEOFToken(SyntaxFactory.makeToken(.eof, presence: .present).withLeadingTrivia(.newlines(1)))
        }
    }

    init<T: Syntax>(@SyntaxBuilder _ item: () -> T) {
        self.init { [item()] }
    }
}

public extension SuperRefExpr {
    init() {
        self.init { (b) in
            b.useSuperKeyword(SyntaxFactory.makeSuperKeyword())
        }
    }
}

public extension TryExprSyntax {
    init(_ item: () -> ExprSyntax) {
        self.init { (b) in
            b.useTryKeyword(SyntaxFactory.makeTryKeyword())
            b.useExpression(item())
        }
    }
}

public extension TypeInheritanceClauseSyntax {
    init(@TypeSyntaxBuilder _ items: () -> [TypeSyntax]) {
        self.init { (b) in
            let allItems = items()
            allItems.enumerated().forEach { (arg) in
                let (index, item) = arg
                if index.advanced(by: 1) != allItems.count {
                    b.addInheritedType(InheritedTypeSyntax { (b) in
                        b.useTypeName(item)
                        b.useTrailingComma(SyntaxFactory.makeCommaToken())
                    })
                } else {
                    b.addInheritedType(InheritedTypeSyntax { (b) in
                        b.useTypeName(item)
                    })
                }
            }
        }
    }

    init(@TypeSyntaxBuilder _ item: () -> TypeSyntax) {
        self.init { [item()] }
    }
}


public extension VariableDeclSyntax {

    init() {
        self.init { (b) in
        }
    }
    
    init(_ letOrVar: LetOrVar, _ pattern: PatternSyntax, type: TypeSyntax? = nil, value: ExprSyntax? = nil, accessor: Syntax? = nil) {
        self.init { (b) in
            b.useLetOrVarKeyword(SyntaxFactory.makeToken(letOrVar.tokenKind, presence: .present))
            b.addBinding(PatternBindingSyntax(pattern, type: type, value: value, accessor: accessor))
        }
    }

    func binding(_ pattern: PatternSyntax, type: TypeSyntax? = nil, value: ExprSyntax? = nil, accessor: Syntax? = nil) -> Self {
        return self.addBinding(PatternBindingSyntax(pattern, type: type, value: value, accessor: accessor))

    }

}



