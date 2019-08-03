import SwiftSyntax


// MARK: - DeclSyntax

public extension DeclSyntax {

    typealias Accessor = AccessorDeclSyntax
    typealias Associatedtype = AssociatedtypeDeclSyntax
    typealias Class = ClassDeclSyntax
    typealias Deinitializer = DeinitializerDeclSyntax
    typealias EnumCase = EnumCaseDeclSyntax
    typealias Enum = EnumDeclSyntax
    typealias Extension = ExtensionDeclSyntax
    typealias Function = FunctionDeclSyntax
    typealias IfConfig = IfConfigDeclSyntax
    typealias Import = ImportDeclSyntax
    typealias Initializer = InitializerDeclSyntax
    typealias Operator = OperatorDeclSyntax
    typealias PoundError = PoundErrorDeclSyntax
    typealias PoundSourceLocation = PoundSourceLocationSyntax
    typealias PoundWarning = PoundWarningDeclSyntax
    typealias PrecedenceGroup = PrecedenceGroupDeclSyntax
    //typealias Protocol = ProtocolDeclSyntax
    typealias Struct = StructDeclSyntax
    typealias Subscript = SubscriptDeclSyntax
    typealias Typealias = TypealiasDeclSyntax
    typealias Unknown = UnknownDeclSyntax
    typealias Variable = VariableDeclSyntax
}

// MARK: - ExprSyntax

public extension ExprSyntax {

    typealias Array = ArrayExprSyntax
    typealias Arrow = ArrowExprSyntax
    typealias As = AsExprSyntax
    typealias Assignment = AssignmentExprSyntax
    typealias BinaryOperator = BinaryOperatorExprSyntax
    typealias BooleanLiteral = BooleanLiteralExprSyntax
    typealias Closure = ClosureExprSyntax
    typealias Dictionary = DictionaryExprSyntax
    typealias DiscardAssignment = DiscardAssignmentExprSyntax
    typealias EditorPlaceholder = EditorPlaceholderExprSyntax
    typealias FloatLiteral = FloatLiteralExprSyntax
    typealias ForcedValue = ForcedValueExprSyntax
    typealias FunctionCall = FunctionCallExprSyntax
    typealias Identifier = IdentifierExprSyntax
    typealias InOut = InOutExprSyntax
    typealias IntegerLiteral = IntegerLiteralExprSyntax
    typealias Is = IsExprSyntax
    typealias KeyPathBase = KeyPathBaseExprSyntax
    typealias KeyPath = KeyPathExprSyntax
    typealias MemberAccess = MemberAccessExprSyntax
    typealias NilLiteral = NilLiteralExprSyntax
    typealias ObjcKeyPath = ObjcKeyPathExprSyntax
    typealias ObjcSelector = ObjcSelectorExprSyntax
    typealias ObjectLiteral = ObjectLiteralExprSyntax
    typealias OptionalChaining = OptionalChainingExprSyntax
    typealias PostfixUnary = PostfixUnaryExprSyntax
    typealias PoundColumn = PoundColumnExprSyntax
    typealias PoundDsohandle = PoundDsohandleExprSyntax
    typealias PoundFile = PoundFileExprSyntax
    typealias PoundFunction = PoundFunctionExprSyntax
    typealias PoundLine = PoundLineExprSyntax
    typealias PrefixOperator = PrefixOperatorExprSyntax
    typealias Sequence = SequenceExprSyntax
    typealias Specialize = SpecializeExprSyntax
    typealias StringInterpolation = StringInterpolationExprSyntax
    typealias StringLiteral = StringLiteralExprSyntax
    typealias Subscript = SubscriptExprSyntax
    typealias SuperRef = SuperRefExprSyntax
    typealias SymbolicReference = SymbolicReferenceExprSyntax
    typealias Ternary = TernaryExprSyntax
    typealias Try = TryExprSyntax
    typealias Tuple = TupleExprSyntax
    //typealias Type = TypeExprSyntax
    typealias Unknown = UnknownExprSyntax
    typealias UnresolvedPattern = UnresolvedPatternExprSyntax
}

// MARK: - StmtSyntax

public extension StmtSyntax {

    typealias Break = BreakStmtSyntax
    typealias Continue = ContinueStmtSyntax
    typealias Declaration = DeclarationStmtSyntax
    typealias Defer = DeferStmtSyntax
    typealias Do = DoStmtSyntax
    typealias Expression = ExpressionStmtSyntax
    typealias Fallthrough = FallthroughStmtSyntax
    typealias ForIn = ForInStmtSyntax
    typealias Guard = GuardStmtSyntax
    typealias If = IfStmtSyntax
    typealias PoundAssert = PoundAssertStmtSyntax
    typealias RepeatWhile = RepeatWhileStmtSyntax
    typealias Return = ReturnStmtSyntax
    typealias Switch = SwitchStmtSyntax
    typealias Throw = ThrowStmtSyntax
    typealias Unknown = UnknownStmtSyntax
    typealias While = WhileStmtSyntax
    typealias Yield = YieldStmtSyntax
}

// MARK: - TypeSyntax

public extension TypeSyntax {

    typealias Array = ArrayTypeSyntax
    typealias Attributed = AttributedTypeSyntax
    typealias ClassRestriction = ClassRestrictionTypeSyntax
    typealias Composition = CompositionTypeSyntax
    typealias Dictionary = DictionaryTypeSyntax
    typealias Function = FunctionTypeSyntax
    typealias ImplicitlyUnwrappedOptional = ImplicitlyUnwrappedOptionalTypeSyntax
    typealias MemberTypeIdentifier = MemberTypeIdentifierSyntax
    typealias Metatype = MetatypeTypeSyntax
    typealias Optional = OptionalTypeSyntax
    typealias SimpleTypeIdentifier = SimpleTypeIdentifierSyntax
    typealias Some = SomeTypeSyntax
    typealias Tuple = TupleTypeSyntax
    typealias Unknown = UnknownTypeSyntax
}

// MARK: - PatternSyntax

public extension PatternSyntax {

    typealias AsType = AsTypePatternSyntax
    typealias EnumCase = EnumCasePatternSyntax
    typealias Expression = ExpressionPatternSyntax
    typealias Identifier = IdentifierPatternSyntax
    typealias IsType = IsTypePatternSyntax
    typealias Optional = OptionalPatternSyntax
    typealias Tuple = TuplePatternSyntax
    typealias Unknown = UnknownPatternSyntax
    typealias ValueBinding = ValueBindingPatternSyntax
    typealias Wildcard = WildcardPatternSyntax
}

// MARK: - Syntax

public extension Syntax {

    typealias AccessLevelModifier = AccessLevelModifierSyntax
    typealias AccessPathComponent = AccessPathComponentSyntax
    typealias AccessorBlock = AccessorBlockSyntax
    typealias AccessorParameter = AccessorParameterSyntax
    typealias ArrayElement = ArrayElementSyntax
    typealias Attribute = AttributeSyntax
    typealias AvailabilityArgument = AvailabilityArgumentSyntax
    typealias AvailabilityCondition = AvailabilityConditionSyntax
    typealias AvailabilityLabeledArgument = AvailabilityLabeledArgumentSyntax
    typealias AvailabilityVersionRestriction = AvailabilityVersionRestrictionSyntax
    typealias CaseItem = CaseItemSyntax
    typealias CatchClause = CatchClauseSyntax
    typealias ClosureCaptureItem = ClosureCaptureItemSyntax
    typealias ClosureCaptureSignature = ClosureCaptureSignatureSyntax
    typealias ClosureParam = ClosureParamSyntax
    typealias ClosureSignature = ClosureSignatureSyntax
    typealias CodeBlock = CodeBlockSyntax
    typealias CodeBlockItem = CodeBlockItemSyntax
    typealias CompositionTypeElement = CompositionTypeElementSyntax
    typealias ConditionElement = ConditionElementSyntax
    typealias ConformanceRequirement = ConformanceRequirementSyntax
    typealias CustomAttribute = CustomAttributeSyntax
    typealias DeclModifier = DeclModifierSyntax
    typealias DeclName = DeclNameSyntax
    typealias DeclNameArgument = DeclNameArgumentSyntax
    typealias DeclNameArguments = DeclNameArgumentsSyntax
    typealias DictionaryElement = DictionaryElementSyntax
    typealias ElseBlock = ElseBlockSyntax
    typealias ElseIfContinuation = ElseIfContinuationSyntax
    typealias EnumCaseElement = EnumCaseElementSyntax
    typealias ExpressionSegment = ExpressionSegmentSyntax
    typealias FunctionCallArgument = FunctionCallArgumentSyntax
    typealias FunctionParameter = FunctionParameterSyntax
    typealias FunctionSignature = FunctionSignatureSyntax
    typealias GenericArgument = GenericArgumentSyntax
    typealias GenericArgumentClause = GenericArgumentClauseSyntax
    typealias GenericParameter = GenericParameterSyntax
    typealias GenericParameterClause = GenericParameterClauseSyntax
    typealias GenericWhereClause = GenericWhereClauseSyntax
    typealias IfConfigClause = IfConfigClauseSyntax
    typealias ImplementsAttributeArguments = ImplementsAttributeArgumentsSyntax
    typealias InheritedType = InheritedTypeSyntax
    typealias InitializerClause = InitializerClauseSyntax
    typealias LabeledSpecializeEntry = LabeledSpecializeEntrySyntax
    typealias MatchingPatternCondition = MatchingPatternConditionSyntax
    typealias MemberDeclBlock = MemberDeclBlockSyntax
    typealias MemberDeclListItem = MemberDeclListItemSyntax
    typealias NamedAttributeStringArgument = NamedAttributeStringArgumentSyntax
    typealias ObjCSelectorPiece = ObjCSelectorPieceSyntax
    typealias ObjcNamePiece = ObjcNamePieceSyntax
    typealias OperatorPrecedenceAndTypes = OperatorPrecedenceAndTypesSyntax
    typealias OptionalBindingCondition = OptionalBindingConditionSyntax
    typealias ParameterClause = ParameterClauseSyntax
    typealias PatternBinding = PatternBindingSyntax
    typealias PoundSourceLocationArgs = PoundSourceLocationArgsSyntax
    typealias PrecedenceGroupAssignment = PrecedenceGroupAssignmentSyntax
    typealias PrecedenceGroupAssociativity = PrecedenceGroupAssociativitySyntax
    typealias PrecedenceGroupNameElement = PrecedenceGroupNameElementSyntax
    typealias PrecedenceGroupRelation = PrecedenceGroupRelationSyntax
    typealias ReturnClause = ReturnClauseSyntax
    typealias SameTypeRequirement = SameTypeRequirementSyntax
    typealias SourceFile = SourceFileSyntax
    typealias StringSegment = StringSegmentSyntax
    typealias SwitchCase = SwitchCaseSyntax
    typealias SwitchCaseLabel = SwitchCaseLabelSyntax
    typealias SwitchDefaultLabel = SwitchDefaultLabelSyntax
    typealias TupleElement = TupleElementSyntax
    typealias TuplePatternElement = TuplePatternElementSyntax
    typealias TupleTypeElement = TupleTypeElementSyntax
    typealias TypeAnnotation = TypeAnnotationSyntax
    typealias TypeInheritanceClause = TypeInheritanceClauseSyntax
    typealias TypeInitializerClause = TypeInitializerClauseSyntax
    typealias VersionTuple = VersionTupleSyntax
    typealias WhereClause = WhereClauseSyntax
    typealias YieldList = YieldListSyntax
}
