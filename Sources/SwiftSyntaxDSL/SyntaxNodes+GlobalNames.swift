
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
    //    typealias Protocol = ProtocolDeclSyntax
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
    typealias DotSelf = DotSelfExprSyntax
    typealias EditorPlaceholder = EditorPlaceholderExprSyntax
    typealias FloatLiteral = FloatLiteralExprSyntax
    typealias ForcedValue = ForcedValueExprSyntax
    typealias FunctionCall = FunctionCallExprSyntax
    typealias Identifier = IdentifierExprSyntax
    typealias ImplicitMember = ImplicitMemberExprSyntax
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
    //    typealias Type = TypeExprSyntax
    typealias Unknown = UnknownExprSyntax
    typealias UnresolvedPattern = UnresolvedPatternExprSyntax
}

// MARK: - Pattern

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

// MARK: - Syntax

public extension Syntax {
    typealias AccessLevelModifier = AccessLevelModifierSyntax
    typealias AccessorBlock = AccessorBlockSyntax
    typealias AccessorParameter = AccessorParameterSyntax
    typealias AccessPathComponent = AccessPathComponentSyntax
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
    typealias CodeBlockItem = CodeBlockItemSyntax
    typealias CodeBlock = CodeBlockSyntax
    typealias CompositionTypeElement = CompositionTypeElementSyntax
    typealias ConditionElement = ConditionElementSyntax
    typealias ConformanceRequirement = ConformanceRequirementSyntax
    typealias DeclModifier = DeclModifierSyntax
    typealias DeclNameArguments = DeclNameArgumentsSyntax
    typealias DeclNameArgument = DeclNameArgumentSyntax
    typealias DeclName = DeclNameSyntax
    typealias DictionaryElement = DictionaryElementSyntax
    typealias ElseBlock = ElseBlockSyntax
    typealias ElseIfContinuation = ElseIfContinuationSyntax
    typealias EnumCaseElement = EnumCaseElementSyntax
    typealias ExpressionSegment = ExpressionSegmentSyntax
    typealias FunctionCallArgument = FunctionCallArgumentSyntax
    typealias FunctionParameter = FunctionParameterSyntax
    typealias FunctionSignature = FunctionSignatureSyntax
    typealias GenericArgumentClause = GenericArgumentClauseSyntax
    typealias GenericArgument = GenericArgumentSyntax
    typealias GenericParameterClause = GenericParameterClauseSyntax
    typealias GenericParameter = GenericParameterSyntax
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
    typealias ObjcNamePiece = ObjcNamePieceSyntax
    typealias ObjCSelectorPiece = ObjCSelectorPieceSyntax
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
    typealias SwitchCaseLabel = SwitchCaseLabelSyntax
    typealias SwitchCase = SwitchCaseSyntax
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

// MARK: - TypeSyntax

public extension TypeSyntax {
    typealias Array = ArrayTypeSyntax
    typealias Attributed = AttributedTypeSyntax
    typealias ClassRestriction = ClassRestrictionTypeSyntax
    typealias Composition = CompositionTypeSyntax
    typealias Dictionary = DictionaryTypeSyntax
    typealias Function = FunctionTypeSyntax
    typealias ImplicitlyUnwrappedOptional = ImplicitlyUnwrappedOptionalTypeSyntax
    typealias Member = MemberTypeIdentifierSyntax
    typealias Metatype = MetatypeTypeSyntax
    typealias Optional = OptionalTypeSyntax
    typealias Simple = SimpleTypeIdentifierSyntax
    typealias Tuple = TupleTypeSyntax
    typealias Unknown = UnknownTypeSyntax
}


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
public typealias DotSelfExpr = DotSelfExprSyntax
public typealias EditorPlaceholderExpr = EditorPlaceholderExprSyntax
public typealias FloatLiteralExpr = FloatLiteralExprSyntax
public typealias ForcedValueExpr = ForcedValueExprSyntax
public typealias FunctionCallExpr = FunctionCallExprSyntax
public typealias IdentifierExpr = IdentifierExprSyntax
public typealias ImplicitMemberExpr = ImplicitMemberExprSyntax
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
public typealias StringInterpolationExpr = StringInterpolationExprSyntax
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

// MARK: - Pattern

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

// MARK: - Syntax

public typealias AccessLevelModifier = AccessLevelModifierSyntax
public typealias AccessorBlock = AccessorBlockSyntax
public typealias AccessorParameter = AccessorParameterSyntax
public typealias AccessPathComponent = AccessPathComponentSyntax
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
public typealias CodeBlockItem = CodeBlockItemSyntax
public typealias CodeBlock = CodeBlockSyntax
public typealias CompositionTypeElement = CompositionTypeElementSyntax
public typealias ConditionElement = ConditionElementSyntax
public typealias ConformanceRequirement = ConformanceRequirementSyntax
public typealias DeclModifier = DeclModifierSyntax
public typealias DeclNameArguments = DeclNameArgumentsSyntax
public typealias DeclNameArgument = DeclNameArgumentSyntax
public typealias DeclName = DeclNameSyntax
public typealias DictionaryElement = DictionaryElementSyntax
public typealias ElseBlock = ElseBlockSyntax
public typealias ElseIfContinuation = ElseIfContinuationSyntax
public typealias EnumCaseElement = EnumCaseElementSyntax
public typealias ExpressionSegment = ExpressionSegmentSyntax
public typealias FunctionCallArgument = FunctionCallArgumentSyntax
public typealias FunctionParameter = FunctionParameterSyntax
public typealias FunctionSignature = FunctionSignatureSyntax
public typealias GenericArgumentClause = GenericArgumentClauseSyntax
public typealias GenericArgument = GenericArgumentSyntax
public typealias GenericParameterClause = GenericParameterClauseSyntax
public typealias GenericParameter = GenericParameterSyntax
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
public typealias ObjcNamePiece = ObjcNamePieceSyntax
public typealias ObjCSelectorPiece = ObjCSelectorPieceSyntax
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
public typealias SwitchCaseLabel = SwitchCaseLabelSyntax
public typealias SwitchCase = SwitchCaseSyntax
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
public typealias TupleType = TupleTypeSyntax
public typealias UnknownType = UnknownTypeSyntax

