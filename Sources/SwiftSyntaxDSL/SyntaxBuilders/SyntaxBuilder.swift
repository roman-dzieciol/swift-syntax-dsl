
import SwiftSyntax

@_functionBuilder
public struct SyntaxBuilder {

    public static func buildBlock() -> [Syntax] {
        return []
    }
    public static func buildBlock(_ t1: Syntax) -> [Syntax] {
        return [t1]
    }
    public static func buildBlock(_ t1: Syntax...) -> [Syntax] {
        return t1
    }
    public static func buildBlock(_ t1: [Syntax]...) -> [Syntax] {
        return t1.flatMap { $0 }
    }

    public static func buildIf(_ t1: Syntax?...) -> [Syntax] {
        return t1.compactMap { $0 }
    }
    public static func buildIf(_ t1: [Syntax]?...) -> [Syntax] {
        return t1.flatMap { $0 ?? [] }
    }

    public static func buildEither(first: Syntax?...) -> [Syntax] {
        return first.compactMap { $0 }
    }
    public static func buildEither(first: [Syntax]?...) -> [Syntax] {
        return first.flatMap { $0 ?? [] }
    }

    public static func buildEither(second: Syntax?...) -> [Syntax] {
        return second.compactMap { $0 }
    }
    public static func buildEither(second: [Syntax]?...) -> [Syntax] {
        return second.flatMap { $0 ?? [] }
    }
}

@_functionBuilder
public struct DeclSyntaxBuilder {

    public static func buildBlock() -> [DeclSyntax] {
        return []
    }
    public static func buildBlock(_ t1: DeclSyntax) -> [DeclSyntax] {
        return [t1]
    }
    public static func buildBlock(_ t1: DeclSyntax...) -> [DeclSyntax] {
        return t1
    }
    public static func buildBlock(_ t1: [DeclSyntax]...) -> [DeclSyntax] {
        return t1.flatMap { $0 }
    }

    public static func buildIf(_ t1: DeclSyntax?...) -> [DeclSyntax] {
        return t1.compactMap { $0 }
    }
    public static func buildIf(_ t1: [DeclSyntax]?...) -> [DeclSyntax] {
        return t1.flatMap { $0 ?? [] }
    }

    public static func buildEither(first: DeclSyntax?...) -> [DeclSyntax] {
        return first.compactMap { $0 }
    }
    public static func buildEither(first: [DeclSyntax]?...) -> [DeclSyntax] {
        return first.flatMap { $0 ?? [] }
    }

    public static func buildEither(second: DeclSyntax?...) -> [DeclSyntax] {
        return second.compactMap { $0 }
    }
    public static func buildEither(second: [DeclSyntax]?...) -> [DeclSyntax] {
        return second.flatMap { $0 ?? [] }
    }
}

@_functionBuilder
public struct TypeSyntaxBuilder {

    public static func buildBlock() -> [TypeSyntax] {
        return []
    }
    public static func buildBlock(_ t1: TypeSyntax) -> [TypeSyntax] {
        return [t1]
    }
    public static func buildBlock(_ t1: TypeSyntax...) -> [TypeSyntax] {
        return t1
    }
    public static func buildBlock(_ t1: [TypeSyntax]...) -> [TypeSyntax] {
        return t1.flatMap { $0 }
    }

    public static func buildIf(_ t1: TypeSyntax?...) -> [TypeSyntax] {
        return t1.compactMap { $0 }
    }
    public static func buildIf(_ t1: [TypeSyntax]?...) -> [TypeSyntax] {
        return t1.flatMap { $0 ?? [] }
    }

    public static func buildEither(first: TypeSyntax?...) -> [TypeSyntax] {
        return first.compactMap { $0 }
    }
    public static func buildEither(first: [TypeSyntax]?...) -> [TypeSyntax] {
        return first.flatMap { $0 ?? [] }
    }

    public static func buildEither(second: TypeSyntax?...) -> [TypeSyntax] {
        return second.compactMap { $0 }
    }
    public static func buildEither(second: [TypeSyntax]?...) -> [TypeSyntax] {
        return second.flatMap { $0 ?? [] }
    }
}

@_functionBuilder
public struct ExprSyntaxBuilder {

    public static func buildBlock() -> [ExprSyntax] {
        return []
    }
    public static func buildBlock(_ t1: ExprSyntax) -> [ExprSyntax] {
        return [t1]
    }
    public static func buildBlock(_ t1: ExprSyntax...) -> [ExprSyntax] {
        return t1
    }
    public static func buildBlock(_ t1: [ExprSyntax]...) -> [ExprSyntax] {
        return t1.flatMap { $0 }
    }

    public static func buildIf(_ t1: ExprSyntax?...) -> [ExprSyntax] {
        return t1.compactMap { $0 }
    }
    public static func buildIf(_ t1: [ExprSyntax]?...) -> [ExprSyntax] {
        return t1.flatMap { $0 ?? [] }
    }

    public static func buildEither(first: ExprSyntax?...) -> [ExprSyntax] {
        return first.compactMap { $0 }
    }
    public static func buildEither(first: [ExprSyntax]?...) -> [ExprSyntax] {
        return first.flatMap { $0 ?? [] }
    }

    public static func buildEither(second: ExprSyntax?...) -> [ExprSyntax] {
        return second.compactMap { $0 }
    }
    public static func buildEither(second: [ExprSyntax]?...) -> [ExprSyntax] {
        return second.flatMap { $0 ?? [] }
    }
}

@_functionBuilder
public struct PatternSyntaxBuilder {

    public static func buildBlock() -> [PatternSyntax] {
        return []
    }
    public static func buildBlock(_ t1: PatternSyntax) -> [PatternSyntax] {
        return [t1]
    }
    public static func buildBlock(_ t1: PatternSyntax...) -> [PatternSyntax] {
        return t1
    }
    public static func buildBlock(_ t1: [PatternSyntax]...) -> [PatternSyntax] {
        return t1.flatMap { $0 }
    }

    public static func buildIf(_ t1: PatternSyntax?...) -> [PatternSyntax] {
        return t1.compactMap { $0 }
    }
    public static func buildIf(_ t1: [PatternSyntax]?...) -> [PatternSyntax] {
        return t1.flatMap { $0 ?? [] }
    }

    public static func buildEither(first: PatternSyntax?...) -> [PatternSyntax] {
        return first.compactMap { $0 }
    }
    public static func buildEither(first: [PatternSyntax]?...) -> [PatternSyntax] {
        return first.flatMap { $0 ?? [] }
    }

    public static func buildEither(second: PatternSyntax?...) -> [PatternSyntax] {
        return second.compactMap { $0 }
    }
    public static func buildEither(second: [PatternSyntax]?...) -> [PatternSyntax] {
        return second.flatMap { $0 ?? [] }
    }
}

@_functionBuilder
public struct StmtSyntaxBuilder {

    public static func buildBlock() -> [StmtSyntax] {
        return []
    }
    public static func buildBlock(_ t1: StmtSyntax) -> [StmtSyntax] {
        return [t1]
    }
    public static func buildBlock(_ t1: StmtSyntax...) -> [StmtSyntax] {
        return t1
    }
    public static func buildBlock(_ t1: [StmtSyntax]...) -> [StmtSyntax] {
        return t1.flatMap { $0 }
    }

    public static func buildIf(_ t1: StmtSyntax?...) -> [StmtSyntax] {
        return t1.compactMap { $0 }
    }
    public static func buildIf(_ t1: [StmtSyntax]?...) -> [StmtSyntax] {
        return t1.flatMap { $0 ?? [] }
    }

    public static func buildEither(first: StmtSyntax?...) -> [StmtSyntax] {
        return first.compactMap { $0 }
    }
    public static func buildEither(first: [StmtSyntax]?...) -> [StmtSyntax] {
        return first.flatMap { $0 ?? [] }
    }

    public static func buildEither(second: StmtSyntax?...) -> [StmtSyntax] {
        return second.compactMap { $0 }
    }
    public static func buildEither(second: [StmtSyntax]?...) -> [StmtSyntax] {
        return second.flatMap { $0 ?? [] }
    }
}

@_functionBuilder
public struct FunctionParameterSyntaxBuilder {

    public static func buildBlock() -> [FunctionParameterSyntax] {
        return []
    }
    public static func buildBlock(_ t1: FunctionParameterSyntax) -> [FunctionParameterSyntax] {
        return [t1]
    }
    public static func buildBlock(_ t1: FunctionParameterSyntax...) -> [FunctionParameterSyntax] {
        return t1
    }
    public static func buildBlock(_ t1: [FunctionParameterSyntax]...) -> [FunctionParameterSyntax] {
        return t1.flatMap { $0 }
    }

    public static func buildIf(_ t1: FunctionParameterSyntax?...) -> [FunctionParameterSyntax] {
        return t1.compactMap { $0 }
    }
    public static func buildIf(_ t1: [FunctionParameterSyntax]?...) -> [FunctionParameterSyntax] {
        return t1.flatMap { $0 ?? [] }
    }

    public static func buildEither(first: FunctionParameterSyntax?...) -> [FunctionParameterSyntax] {
        return first.compactMap { $0 }
    }
    public static func buildEither(first: [FunctionParameterSyntax]?...) -> [FunctionParameterSyntax] {
        return first.flatMap { $0 ?? [] }
    }

    public static func buildEither(second: FunctionParameterSyntax?...) -> [FunctionParameterSyntax] {
        return second.compactMap { $0 }
    }
    public static func buildEither(second: [FunctionParameterSyntax]?...) -> [FunctionParameterSyntax] {
        return second.flatMap { $0 ?? [] }
    }
}

@_functionBuilder
public struct FunctionCallArgumentSyntaxBuilder {

    public static func buildBlock() -> [FunctionCallArgumentSyntax] {
        return []
    }
    public static func buildBlock(_ t1: FunctionCallArgumentSyntax) -> [FunctionCallArgumentSyntax] {
        return [t1]
    }
    public static func buildBlock(_ t1: FunctionCallArgumentSyntax...) -> [FunctionCallArgumentSyntax] {
        return t1
    }
    public static func buildBlock(_ t1: [FunctionCallArgumentSyntax]...) -> [FunctionCallArgumentSyntax] {
        return t1.flatMap { $0 }
    }

    public static func buildIf(_ t1: FunctionCallArgumentSyntax?...) -> [FunctionCallArgumentSyntax] {
        return t1.compactMap { $0 }
    }
    public static func buildIf(_ t1: [FunctionCallArgumentSyntax]?...) -> [FunctionCallArgumentSyntax] {
        return t1.flatMap { $0 ?? [] }
    }

    public static func buildEither(first: FunctionCallArgumentSyntax?...) -> [FunctionCallArgumentSyntax] {
        return first.compactMap { $0 }
    }
    public static func buildEither(first: [FunctionCallArgumentSyntax]?...) -> [FunctionCallArgumentSyntax] {
        return first.flatMap { $0 ?? [] }
    }

    public static func buildEither(second: FunctionCallArgumentSyntax?...) -> [FunctionCallArgumentSyntax] {
        return second.compactMap { $0 }
    }
    public static func buildEither(second: [FunctionCallArgumentSyntax]?...) -> [FunctionCallArgumentSyntax] {
        return second.flatMap { $0 ?? [] }
    }
}

