
import SwiftSyntax


@_functionBuilder
public struct SyntaxBuilder {


    public static func buildBlock<T>(_ items: T...) -> [T] where T: Syntax {
        return items
    }

    public static func buildBlock<T>(_ items: [T]...) -> [T] where T: Syntax {
        return items.flatMap{$0}
    }


    public static func buildBlock<T>(_ items: T...) -> [Syntax] where T: Syntax {
        return items
    }

    public static func buildBlock<T>(_ items: [T]...) -> [Syntax] where T: Syntax {
        return items.flatMap{$0}
    }


    public static func buildBlock(_ items: DeclSyntax...) -> [DeclSyntax]  {
        return items
    }

    public static func buildBlock(_ items: [DeclSyntax]...) -> [DeclSyntax]  {
        return items.flatMap{$0}
    }


    public static func buildBlock(_ items: ExprSyntax...) -> [ExprSyntax]  {
        return items
    }

    public static func buildBlock(_ items: [ExprSyntax]...) -> [ExprSyntax]  {
        return items.flatMap{$0}
    }


    public static func buildBlock(_ items: StmtSyntax...) -> [StmtSyntax]  {
        return items
    }

    public static func buildBlock(_ items: [StmtSyntax]...) -> [StmtSyntax]  {
        return items.flatMap{$0}
    }


    public static func buildBlock(_ items: TypeSyntax...) -> [TypeSyntax]  {
        return items
    }

    public static func buildBlock(_ items: [TypeSyntax]...) -> [TypeSyntax]  {
        return items.flatMap{$0}
    }


    public static func buildBlock(_ items: PatternSyntax...) -> [PatternSyntax]  {
        return items
    }

    public static func buildBlock(_ items: [PatternSyntax]...) -> [PatternSyntax]  {
        return items.flatMap{$0}
    }
}
