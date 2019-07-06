
import SwiftSyntax


// MARK: - DeclSyntaxConvenience

public protocol DeclSyntaxConvenience {

}

extension AccessorDeclSyntax: DeclSyntaxConvenience {}
extension AssociatedtypeDeclSyntax: DeclSyntaxConvenience {}
extension ClassDeclSyntax: DeclSyntaxConvenience {}
extension DeinitializerDeclSyntax: DeclSyntaxConvenience {}
extension EnumCaseDeclSyntax: DeclSyntaxConvenience {}
extension EnumDeclSyntax: DeclSyntaxConvenience {}
extension ExtensionDeclSyntax: DeclSyntaxConvenience {}
extension FunctionDeclSyntax: DeclSyntaxConvenience {}
extension IfConfigDeclSyntax: DeclSyntaxConvenience {}
extension ImportDeclSyntax: DeclSyntaxConvenience {}
extension InitializerDeclSyntax: DeclSyntaxConvenience {}
extension OperatorDeclSyntax: DeclSyntaxConvenience {}
extension PoundErrorDeclSyntax: DeclSyntaxConvenience {}
extension PoundSourceLocationSyntax: DeclSyntaxConvenience {}
extension PoundWarningDeclSyntax: DeclSyntaxConvenience {}
extension PrecedenceGroupDeclSyntax: DeclSyntaxConvenience {}
extension ProtocolDeclSyntax: DeclSyntaxConvenience {}
extension StructDeclSyntax: DeclSyntaxConvenience {}
extension SubscriptDeclSyntax: DeclSyntaxConvenience {}
extension TypealiasDeclSyntax: DeclSyntaxConvenience {}
extension UnknownDeclSyntax: DeclSyntaxConvenience {}
extension VariableDeclSyntax: DeclSyntaxConvenience {}

// MARK: - ExprSyntaxConvenience

public protocol ExprSyntaxConvenience {

    var dotSelf: DotSelfExprSyntax { get }
}

public extension ExprSyntaxConvenience where Self: ExprSyntax {

    var dotSelf: DotSelfExprSyntax {
        return DotSelfExprSyntax {
            self
        }
    }
}

public extension ExprSyntax {

    var dotSelf: DotSelfExprSyntax {
        return DotSelfExprSyntax {
            self
        }
    }
}

extension ArrayExprSyntax: ExprSyntaxConvenience {}
extension ArrowExprSyntax: ExprSyntaxConvenience {}
extension AsExprSyntax: ExprSyntaxConvenience {}
extension AssignmentExprSyntax: ExprSyntaxConvenience {}
extension BinaryOperatorExprSyntax: ExprSyntaxConvenience {}
extension BooleanLiteralExprSyntax: ExprSyntaxConvenience {}
extension ClosureExprSyntax: ExprSyntaxConvenience {}
extension DictionaryExprSyntax: ExprSyntaxConvenience {}
extension DiscardAssignmentExprSyntax: ExprSyntaxConvenience {}
extension DotSelfExprSyntax: ExprSyntaxConvenience {}
extension EditorPlaceholderExprSyntax: ExprSyntaxConvenience {}
extension FloatLiteralExprSyntax: ExprSyntaxConvenience {}
extension ForcedValueExprSyntax: ExprSyntaxConvenience {}
extension FunctionCallExprSyntax: ExprSyntaxConvenience {}
extension IdentifierExprSyntax: ExprSyntaxConvenience {}
extension ImplicitMemberExprSyntax: ExprSyntaxConvenience {}
extension InOutExprSyntax: ExprSyntaxConvenience {}
extension IntegerLiteralExprSyntax: ExprSyntaxConvenience {}
extension IsExprSyntax: ExprSyntaxConvenience {}
extension KeyPathBaseExprSyntax: ExprSyntaxConvenience {}
extension KeyPathExprSyntax: ExprSyntaxConvenience {}
extension MemberAccessExprSyntax: ExprSyntaxConvenience {}
extension NilLiteralExprSyntax: ExprSyntaxConvenience {}
extension ObjcKeyPathExprSyntax: ExprSyntaxConvenience {}
extension ObjcSelectorExprSyntax: ExprSyntaxConvenience {}
extension ObjectLiteralExprSyntax: ExprSyntaxConvenience {}
extension OptionalChainingExprSyntax: ExprSyntaxConvenience {}
extension PostfixUnaryExprSyntax: ExprSyntaxConvenience {}
extension PoundColumnExprSyntax: ExprSyntaxConvenience {}
extension PoundDsohandleExprSyntax: ExprSyntaxConvenience {}
extension PoundFileExprSyntax: ExprSyntaxConvenience {}
extension PoundFunctionExprSyntax: ExprSyntaxConvenience {}
extension PoundLineExprSyntax: ExprSyntaxConvenience {}
extension PrefixOperatorExprSyntax: ExprSyntaxConvenience {}
extension SequenceExprSyntax: ExprSyntaxConvenience {}
extension SpecializeExprSyntax: ExprSyntaxConvenience {}
extension StringInterpolationExprSyntax: ExprSyntaxConvenience {}
extension StringLiteralExprSyntax: ExprSyntaxConvenience {}
extension SubscriptExprSyntax: ExprSyntaxConvenience {}
extension SuperRefExprSyntax: ExprSyntaxConvenience {}
extension SymbolicReferenceExprSyntax: ExprSyntaxConvenience {}
extension TernaryExprSyntax: ExprSyntaxConvenience {}
extension TryExprSyntax: ExprSyntaxConvenience {}
extension TupleExprSyntax: ExprSyntaxConvenience {}
extension TypeExprSyntax: ExprSyntaxConvenience {}
extension UnknownExprSyntax: ExprSyntaxConvenience {}
extension UnresolvedPatternExprSyntax: ExprSyntaxConvenience {}

// MARK: - PatternSyntaxConvenience

public protocol PatternSyntaxConvenience {

}

extension AsTypePatternSyntax: PatternSyntaxConvenience {}
extension EnumCasePatternSyntax: PatternSyntaxConvenience {}
extension ExpressionPatternSyntax: PatternSyntaxConvenience {}
extension IdentifierPatternSyntax: PatternSyntaxConvenience {}
extension IsTypePatternSyntax: PatternSyntaxConvenience {}
extension OptionalPatternSyntax: PatternSyntaxConvenience {}
extension TuplePatternSyntax: PatternSyntaxConvenience {}
extension UnknownPatternSyntax: PatternSyntaxConvenience {}
extension ValueBindingPatternSyntax: PatternSyntaxConvenience {}
extension WildcardPatternSyntax: PatternSyntaxConvenience {}

// MARK: - StmtSyntaxConvenience

public protocol StmtSyntaxConvenience {

}

extension BreakStmtSyntax: StmtSyntaxConvenience {}
extension ContinueStmtSyntax: StmtSyntaxConvenience {}
extension DeclarationStmtSyntax: StmtSyntaxConvenience {}
extension DeferStmtSyntax: StmtSyntaxConvenience {}
extension DoStmtSyntax: StmtSyntaxConvenience {}
extension ExpressionStmtSyntax: StmtSyntaxConvenience {}
extension FallthroughStmtSyntax: StmtSyntaxConvenience {}
extension ForInStmtSyntax: StmtSyntaxConvenience {}
extension GuardStmtSyntax: StmtSyntaxConvenience {}
extension IfStmtSyntax: StmtSyntaxConvenience {}
extension PoundAssertStmtSyntax: StmtSyntaxConvenience {}
extension RepeatWhileStmtSyntax: StmtSyntaxConvenience {}
extension ReturnStmtSyntax: StmtSyntaxConvenience {}
extension SwitchStmtSyntax: StmtSyntaxConvenience {}
extension ThrowStmtSyntax: StmtSyntaxConvenience {}
extension UnknownStmtSyntax: StmtSyntaxConvenience {}
extension WhileStmtSyntax: StmtSyntaxConvenience {}
extension YieldStmtSyntax: StmtSyntaxConvenience {}

// MARK: - SyntaxConvenience

public protocol SyntaxConvenience {

}

extension AccessLevelModifierSyntax: SyntaxConvenience {}
extension AccessorBlockSyntax: SyntaxConvenience {}
extension AccessorParameterSyntax: SyntaxConvenience {}
extension AccessPathComponentSyntax: SyntaxConvenience {}
extension ArrayElementSyntax: SyntaxConvenience {}
extension AttributeSyntax: SyntaxConvenience {}
extension AvailabilityArgumentSyntax: SyntaxConvenience {}
extension AvailabilityConditionSyntax: SyntaxConvenience {}
extension AvailabilityLabeledArgumentSyntax: SyntaxConvenience {}
extension AvailabilityVersionRestrictionSyntax: SyntaxConvenience {}
extension CaseItemSyntax: SyntaxConvenience {}
extension CatchClauseSyntax: SyntaxConvenience {}
extension ClosureCaptureItemSyntax: SyntaxConvenience {}
extension ClosureCaptureSignatureSyntax: SyntaxConvenience {}
extension ClosureParamSyntax: SyntaxConvenience {}
extension ClosureSignatureSyntax: SyntaxConvenience {}
extension CodeBlockItemSyntax: SyntaxConvenience {}
extension CodeBlockSyntax: SyntaxConvenience {}
extension CompositionTypeElementSyntax: SyntaxConvenience {}
extension ConditionElementSyntax: SyntaxConvenience {}
extension ConformanceRequirementSyntax: SyntaxConvenience {}
extension DeclModifierSyntax: SyntaxConvenience {}
extension DeclNameArgumentsSyntax: SyntaxConvenience {}
extension DeclNameArgumentSyntax: SyntaxConvenience {}
extension DeclNameSyntax: SyntaxConvenience {}
extension DictionaryElementSyntax: SyntaxConvenience {}
extension ElseBlockSyntax: SyntaxConvenience {}
extension ElseIfContinuationSyntax: SyntaxConvenience {}
extension EnumCaseElementSyntax: SyntaxConvenience {}
extension ExpressionSegmentSyntax: SyntaxConvenience {}
extension FunctionCallArgumentSyntax: SyntaxConvenience {}
extension FunctionParameterSyntax: SyntaxConvenience {}
extension FunctionSignatureSyntax: SyntaxConvenience {}
extension GenericArgumentClauseSyntax: SyntaxConvenience {}
extension GenericArgumentSyntax: SyntaxConvenience {}
extension GenericParameterClauseSyntax: SyntaxConvenience {}
extension GenericParameterSyntax: SyntaxConvenience {}
extension GenericWhereClauseSyntax: SyntaxConvenience {}
extension IfConfigClauseSyntax: SyntaxConvenience {}
extension ImplementsAttributeArgumentsSyntax: SyntaxConvenience {}
extension InheritedTypeSyntax: SyntaxConvenience {}
extension InitializerClauseSyntax: SyntaxConvenience {}
extension LabeledSpecializeEntrySyntax: SyntaxConvenience {}
extension MatchingPatternConditionSyntax: SyntaxConvenience {}
extension MemberDeclBlockSyntax: SyntaxConvenience {}
extension MemberDeclListItemSyntax: SyntaxConvenience {}
extension NamedAttributeStringArgumentSyntax: SyntaxConvenience {}
extension ObjcNamePieceSyntax: SyntaxConvenience {}
extension ObjCSelectorPieceSyntax: SyntaxConvenience {}
extension OperatorPrecedenceAndTypesSyntax: SyntaxConvenience {}
extension OptionalBindingConditionSyntax: SyntaxConvenience {}
extension ParameterClauseSyntax: SyntaxConvenience {}
extension PatternBindingSyntax: SyntaxConvenience {}
extension PoundSourceLocationArgsSyntax: SyntaxConvenience {}
extension PrecedenceGroupAssignmentSyntax: SyntaxConvenience {}
extension PrecedenceGroupAssociativitySyntax: SyntaxConvenience {}
extension PrecedenceGroupNameElementSyntax: SyntaxConvenience {}
extension PrecedenceGroupRelationSyntax: SyntaxConvenience {}
extension ReturnClauseSyntax: SyntaxConvenience {}
extension SameTypeRequirementSyntax: SyntaxConvenience {}
extension SourceFileSyntax: SyntaxConvenience {}
extension StringSegmentSyntax: SyntaxConvenience {}
extension SwitchCaseLabelSyntax: SyntaxConvenience {}
extension SwitchCaseSyntax: SyntaxConvenience {}
extension SwitchDefaultLabelSyntax: SyntaxConvenience {}
extension TupleElementSyntax: SyntaxConvenience {}
extension TuplePatternElementSyntax: SyntaxConvenience {}
extension TupleTypeElementSyntax: SyntaxConvenience {}
extension TypeAnnotationSyntax: SyntaxConvenience {}
extension TypeInheritanceClauseSyntax: SyntaxConvenience {}
extension TypeInitializerClauseSyntax: SyntaxConvenience {}
extension VersionTupleSyntax: SyntaxConvenience {}
extension WhereClauseSyntax: SyntaxConvenience {}
extension YieldListSyntax: SyntaxConvenience {}

// MARK: - TypeSyntaxConvenience

public protocol TypeSyntaxConvenience {
}

extension ArrayTypeSyntax: TypeSyntaxConvenience {}
extension AttributedTypeSyntax: TypeSyntaxConvenience {}
extension ClassRestrictionTypeSyntax: TypeSyntaxConvenience {}
extension CompositionTypeSyntax: TypeSyntaxConvenience {}
extension DictionaryTypeSyntax: TypeSyntaxConvenience {}
extension FunctionTypeSyntax: TypeSyntaxConvenience {}
extension ImplicitlyUnwrappedOptionalTypeSyntax: TypeSyntaxConvenience {}
extension MemberTypeIdentifierSyntax: TypeSyntaxConvenience {}
extension MetatypeTypeSyntax: TypeSyntaxConvenience {}
extension OptionalTypeSyntax: TypeSyntaxConvenience {}
extension SimpleTypeIdentifierSyntax: TypeSyntaxConvenience {}
extension TupleTypeSyntax: TypeSyntaxConvenience {}
extension UnknownTypeSyntax: TypeSyntaxConvenience {}
