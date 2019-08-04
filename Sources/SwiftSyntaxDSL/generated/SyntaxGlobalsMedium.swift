import SwiftSyntax


// MARK: - DeclSyntax

public typealias AccessorDecl = AccessorDeclSyntax
public typealias AssociatedtypeDecl = AssociatedtypeDeclSyntax
public typealias ClassDecl = ClassDeclSyntax
public typealias DeinitializerDecl = DeinitializerDeclSyntax
public typealias EnumCaseDecl = EnumCaseDeclSyntax
public typealias EnumDecl = EnumDeclSyntax
public typealias ExtensionDecl = ExtensionDeclSyntax
public typealias FunctionDecl = FunctionDeclSyntax
public typealias IfConfigDecl = IfConfigDeclSyntax
public typealias ImportDecl = ImportDeclSyntax
public typealias InitializerDecl = InitializerDeclSyntax
public typealias OperatorDecl = OperatorDeclSyntax
public typealias PoundErrorDecl = PoundErrorDeclSyntax
public typealias PoundSourceLocation = PoundSourceLocationSyntax
public typealias PoundWarningDecl = PoundWarningDeclSyntax
public typealias PrecedenceGroupDecl = PrecedenceGroupDeclSyntax
public typealias ProtocolDecl = ProtocolDeclSyntax
public typealias StructDecl = StructDeclSyntax
public typealias SubscriptDecl = SubscriptDeclSyntax
public typealias TypealiasDecl = TypealiasDeclSyntax
public typealias UnknownDecl = UnknownDeclSyntax
public typealias VariableDecl = VariableDeclSyntax

// MARK: - ExprSyntax

public typealias ArrayExpr = ArrayExprSyntax
public typealias ArrowExpr = ArrowExprSyntax
public typealias AsExpr = AsExprSyntax
public typealias AssignmentExpr = AssignmentExprSyntax
public typealias BinaryOperatorExpr = BinaryOperatorExprSyntax
public typealias BooleanLiteralExpr = BooleanLiteralExprSyntax
public typealias ClosureExpr = ClosureExprSyntax
public typealias DictionaryExpr = DictionaryExprSyntax
public typealias DiscardAssignmentExpr = DiscardAssignmentExprSyntax
public typealias EditorPlaceholderExpr = EditorPlaceholderExprSyntax
public typealias FloatLiteralExpr = FloatLiteralExprSyntax
public typealias ForcedValueExpr = ForcedValueExprSyntax
public typealias FunctionCallExpr = FunctionCallExprSyntax
public typealias IdentifierExpr = IdentifierExprSyntax
public typealias InOutExpr = InOutExprSyntax
public typealias IntegerLiteralExpr = IntegerLiteralExprSyntax
public typealias IsExpr = IsExprSyntax
public typealias KeyPathBaseExpr = KeyPathBaseExprSyntax
public typealias KeyPathExpr = KeyPathExprSyntax
public typealias MemberAccessExpr = MemberAccessExprSyntax
public typealias NilLiteralExpr = NilLiteralExprSyntax
public typealias ObjcKeyPathExpr = ObjcKeyPathExprSyntax
public typealias ObjcSelectorExpr = ObjcSelectorExprSyntax
public typealias ObjectLiteralExpr = ObjectLiteralExprSyntax
public typealias OptionalChainingExpr = OptionalChainingExprSyntax
public typealias PostfixUnaryExpr = PostfixUnaryExprSyntax
public typealias PoundColumnExpr = PoundColumnExprSyntax
public typealias PoundDsohandleExpr = PoundDsohandleExprSyntax
public typealias PoundFileExpr = PoundFileExprSyntax
public typealias PoundFunctionExpr = PoundFunctionExprSyntax
public typealias PoundLineExpr = PoundLineExprSyntax
public typealias PrefixOperatorExpr = PrefixOperatorExprSyntax
public typealias SequenceExpr = SequenceExprSyntax
public typealias SpecializeExpr = SpecializeExprSyntax
public typealias StringLiteralExpr = StringLiteralExprSyntax
public typealias SubscriptExpr = SubscriptExprSyntax
public typealias SuperRefExpr = SuperRefExprSyntax
public typealias SymbolicReferenceExpr = SymbolicReferenceExprSyntax
public typealias TernaryExpr = TernaryExprSyntax
public typealias TryExpr = TryExprSyntax
public typealias TupleExpr = TupleExprSyntax
public typealias TypeExpr = TypeExprSyntax
public typealias UnknownExpr = UnknownExprSyntax
public typealias UnresolvedPatternExpr = UnresolvedPatternExprSyntax

// MARK: - StmtSyntax

public typealias BreakStmt = BreakStmtSyntax
public typealias ContinueStmt = ContinueStmtSyntax
public typealias DeclarationStmt = DeclarationStmtSyntax
public typealias DeferStmt = DeferStmtSyntax
public typealias DoStmt = DoStmtSyntax
public typealias ExpressionStmt = ExpressionStmtSyntax
public typealias FallthroughStmt = FallthroughStmtSyntax
public typealias ForInStmt = ForInStmtSyntax
public typealias GuardStmt = GuardStmtSyntax
public typealias IfStmt = IfStmtSyntax
public typealias PoundAssertStmt = PoundAssertStmtSyntax
public typealias RepeatWhileStmt = RepeatWhileStmtSyntax
public typealias ReturnStmt = ReturnStmtSyntax
public typealias SwitchStmt = SwitchStmtSyntax
public typealias ThrowStmt = ThrowStmtSyntax
public typealias UnknownStmt = UnknownStmtSyntax
public typealias WhileStmt = WhileStmtSyntax
public typealias YieldStmt = YieldStmtSyntax

// MARK: - TypeSyntax

public typealias ArrayType = ArrayTypeSyntax
public typealias AttributedType = AttributedTypeSyntax
public typealias ClassRestrictionType = ClassRestrictionTypeSyntax
public typealias CompositionType = CompositionTypeSyntax
public typealias DictionaryType = DictionaryTypeSyntax
public typealias FunctionType = FunctionTypeSyntax
public typealias ImplicitlyUnwrappedOptionalType = ImplicitlyUnwrappedOptionalTypeSyntax
public typealias MemberTypeIdentifier = MemberTypeIdentifierSyntax
public typealias MetatypeType = MetatypeTypeSyntax
public typealias OptionalType = OptionalTypeSyntax
public typealias SimpleTypeIdentifier = SimpleTypeIdentifierSyntax
public typealias SomeType = SomeTypeSyntax
public typealias TupleType = TupleTypeSyntax
public typealias UnknownType = UnknownTypeSyntax

// MARK: - PatternSyntax

public typealias AsTypePattern = AsTypePatternSyntax
public typealias EnumCasePattern = EnumCasePatternSyntax
public typealias ExpressionPattern = ExpressionPatternSyntax
public typealias IdentifierPattern = IdentifierPatternSyntax
public typealias IsTypePattern = IsTypePatternSyntax
public typealias OptionalPattern = OptionalPatternSyntax
public typealias TuplePattern = TuplePatternSyntax
public typealias UnknownPattern = UnknownPatternSyntax
public typealias ValueBindingPattern = ValueBindingPatternSyntax
public typealias WildcardPattern = WildcardPatternSyntax

// MARK: - Syntax

public typealias AccessLevelModifier = AccessLevelModifierSyntax
public typealias AccessPathComponent = AccessPathComponentSyntax
public typealias AccessorBlock = AccessorBlockSyntax
public typealias AccessorParameter = AccessorParameterSyntax
public typealias ArrayElement = ArrayElementSyntax
public typealias Attribute = AttributeSyntax
public typealias AvailabilityArgument = AvailabilityArgumentSyntax
public typealias AvailabilityCondition = AvailabilityConditionSyntax
public typealias AvailabilityLabeledArgument = AvailabilityLabeledArgumentSyntax
public typealias AvailabilityVersionRestriction = AvailabilityVersionRestrictionSyntax
public typealias CaseItem = CaseItemSyntax
public typealias CatchClause = CatchClauseSyntax
public typealias ClosureCaptureItem = ClosureCaptureItemSyntax
public typealias ClosureCaptureSignature = ClosureCaptureSignatureSyntax
public typealias ClosureParam = ClosureParamSyntax
public typealias ClosureSignature = ClosureSignatureSyntax
public typealias CodeBlock = CodeBlockSyntax
public typealias CodeBlockItem = CodeBlockItemSyntax
public typealias CompositionTypeElement = CompositionTypeElementSyntax
public typealias ConditionElement = ConditionElementSyntax
public typealias ConformanceRequirement = ConformanceRequirementSyntax
public typealias CustomAttribute = CustomAttributeSyntax
public typealias DeclModifier = DeclModifierSyntax
public typealias DeclName = DeclNameSyntax
public typealias DeclNameArgument = DeclNameArgumentSyntax
public typealias DeclNameArguments = DeclNameArgumentsSyntax
public typealias DictionaryElement = DictionaryElementSyntax
public typealias ElseBlock = ElseBlockSyntax
public typealias ElseIfContinuation = ElseIfContinuationSyntax
public typealias EnumCaseElement = EnumCaseElementSyntax
public typealias ExpressionSegment = ExpressionSegmentSyntax
public typealias FunctionCallArgument = FunctionCallArgumentSyntax
public typealias FunctionParameter = FunctionParameterSyntax
public typealias FunctionSignature = FunctionSignatureSyntax
public typealias GenericArgument = GenericArgumentSyntax
public typealias GenericArgumentClause = GenericArgumentClauseSyntax
public typealias GenericParameter = GenericParameterSyntax
public typealias GenericParameterClause = GenericParameterClauseSyntax
public typealias GenericWhereClause = GenericWhereClauseSyntax
public typealias IfConfigClause = IfConfigClauseSyntax
public typealias ImplementsAttributeArguments = ImplementsAttributeArgumentsSyntax
public typealias InheritedType = InheritedTypeSyntax
public typealias InitializerClause = InitializerClauseSyntax
public typealias LabeledSpecializeEntry = LabeledSpecializeEntrySyntax
public typealias MatchingPatternCondition = MatchingPatternConditionSyntax
public typealias MemberDeclBlock = MemberDeclBlockSyntax
public typealias MemberDeclListItem = MemberDeclListItemSyntax
public typealias NamedAttributeStringArgument = NamedAttributeStringArgumentSyntax
public typealias ObjCSelectorPiece = ObjCSelectorPieceSyntax
public typealias ObjcNamePiece = ObjcNamePieceSyntax
public typealias OperatorPrecedenceAndTypes = OperatorPrecedenceAndTypesSyntax
public typealias OptionalBindingCondition = OptionalBindingConditionSyntax
public typealias ParameterClause = ParameterClauseSyntax
public typealias PatternBinding = PatternBindingSyntax
public typealias PoundSourceLocationArgs = PoundSourceLocationArgsSyntax
public typealias PrecedenceGroupAssignment = PrecedenceGroupAssignmentSyntax
public typealias PrecedenceGroupAssociativity = PrecedenceGroupAssociativitySyntax
public typealias PrecedenceGroupNameElement = PrecedenceGroupNameElementSyntax
public typealias PrecedenceGroupRelation = PrecedenceGroupRelationSyntax
public typealias ReturnClause = ReturnClauseSyntax
public typealias SameTypeRequirement = SameTypeRequirementSyntax
public typealias SourceFile = SourceFileSyntax
public typealias StringSegment = StringSegmentSyntax
public typealias SwitchCase = SwitchCaseSyntax
public typealias SwitchCaseLabel = SwitchCaseLabelSyntax
public typealias SwitchDefaultLabel = SwitchDefaultLabelSyntax
public typealias TupleElement = TupleElementSyntax
public typealias TuplePatternElement = TuplePatternElementSyntax
public typealias TupleTypeElement = TupleTypeElementSyntax
public typealias TypeAnnotation = TypeAnnotationSyntax
public typealias TypeInheritanceClause = TypeInheritanceClauseSyntax
public typealias TypeInitializerClause = TypeInitializerClauseSyntax
public typealias VersionTuple = VersionTupleSyntax
public typealias WhereClause = WhereClauseSyntax
public typealias YieldList = YieldListSyntax