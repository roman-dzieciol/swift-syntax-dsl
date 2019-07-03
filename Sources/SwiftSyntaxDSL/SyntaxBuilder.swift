
import SwiftSyntax


//@_functionBuilder
//public struct SyntaxBuilder {
//
//
//    public static func buildBlock<T>(_ items: T...) -> [T] where T: Syntax {
//        return items
//    }
//
//    public static func buildBlock<T>(_ items: [T]...) -> [T] where T: Syntax {
//        return items.flatMap{$0}
//    }
//
//
//    public static func buildBlock<T>(_ items: T...) -> [Syntax] where T: Syntax {
//        return items
//    }
//
//    public static func buildBlock<T>(_ items: [T]...) -> [Syntax] where T: Syntax {
//        return items.flatMap{$0}
//    }
//
//
//    public static func buildBlock(_ items: DeclSyntax...) -> [DeclSyntax]  {
//        return items
//    }
//
//    public static func buildBlock(_ items: [DeclSyntax]...) -> [DeclSyntax]  {
//        return items.flatMap{$0}
//    }
//
//
//    public static func buildBlock(_ items: ExprSyntax...) -> [ExprSyntax]  {
//        return items
//    }
//
//    public static func buildBlock(_ items: [ExprSyntax]...) -> [ExprSyntax]  {
//        return items.flatMap{$0}
//    }
//
//
//    public static func buildBlock(_ items: StmtSyntax...) -> [StmtSyntax]  {
//        return items
//    }
//
//    public static func buildBlock(_ items: [StmtSyntax]...) -> [StmtSyntax]  {
//        return items.flatMap{$0}
//    }
//
//
//    public static func buildBlock(_ items: TypeSyntax...) -> [TypeSyntax]  {
//        return items
//    }
//
//    public static func buildBlock(_ items: [TypeSyntax]...) -> [TypeSyntax]  {
//        return items.flatMap{$0}
//    }
//
//
//    public static func buildBlock(_ items: PatternSyntax...) -> [PatternSyntax]  {
//        return items
//    }
//
//    public static func buildBlock(_ items: [PatternSyntax]...) -> [PatternSyntax]  {
//        return items.flatMap{$0}
//    }
//}

@_functionBuilder
public struct SyntaxBuilder {

    static func buildBlock() -> [Syntax] {
        return []
    }

    static func buildBlock<T1: ItemOrArray>(_ t1: T1) -> [Syntax] {
        return t1.array()
    }
}

public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray>(_ t1: T1,
                         _ t2: T2) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray>(_ t1: T1,
                         _ t2: T2,
                         _ t3: T3) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray>(_ t1: T1,
                         _ t2: T2,
                         _ t3: T3,
                         _ t4: T4) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray>(_ t1: T1,
                         _ t2: T2,
                         _ t3: T3,
                         _ t4: T4,
                         _ t5: T5) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray>(_ t1: T1,
                         _ t2: T2,
                         _ t3: T3,
                         _ t4: T4,
                         _ t5: T5,
                         _ t6: T6) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray>(_ t1: T1,
                         _ t2: T2,
                         _ t3: T3,
                         _ t4: T4,
                         _ t5: T5,
                         _ t6: T6,
                         _ t7: T7) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray>(_ t1: T1,
                         _ t2: T2,
                         _ t3: T3,
                         _ t4: T4,
                         _ t5: T5,
                         _ t6: T6,
                         _ t7: T7,
                         _ t8: T8) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray>(_ t1: T1,
                         _ t2: T2,
                         _ t3: T3,
                         _ t4: T4,
                         _ t5: T5,
                         _ t6: T6,
                         _ t7: T7,
                         _ t8: T8,
                         _ t9: T9) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray,
        T10: ItemOrArray>(_ t1: T1,
                          _ t2: T2,
                          _ t3: T3,
                          _ t4: T4,
                          _ t5: T5,
                          _ t6: T6,
                          _ t7: T7,
                          _ t8: T8,
                          _ t9: T9,
                          _ t10: T10) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        result += t10.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray,
        T10: ItemOrArray,
        T11: ItemOrArray>(_ t1: T1,
                          _ t2: T2,
                          _ t3: T3,
                          _ t4: T4,
                          _ t5: T5,
                          _ t6: T6,
                          _ t7: T7,
                          _ t8: T8,
                          _ t9: T9,
                          _ t10: T10,
                          _ t11: T11) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        result += t10.array()
        result += t11.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray,
        T10: ItemOrArray,
        T11: ItemOrArray,
        T12: ItemOrArray>(_ t1: T1,
                          _ t2: T2,
                          _ t3: T3,
                          _ t4: T4,
                          _ t5: T5,
                          _ t6: T6,
                          _ t7: T7,
                          _ t8: T8,
                          _ t9: T9,
                          _ t10: T10,
                          _ t11: T11,
                          _ t12: T12) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        result += t10.array()
        result += t11.array()
        result += t12.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray,
        T10: ItemOrArray,
        T11: ItemOrArray,
        T12: ItemOrArray,
        T13: ItemOrArray>(_ t1: T1,
                          _ t2: T2,
                          _ t3: T3,
                          _ t4: T4,
                          _ t5: T5,
                          _ t6: T6,
                          _ t7: T7,
                          _ t8: T8,
                          _ t9: T9,
                          _ t10: T10,
                          _ t11: T11,
                          _ t12: T12,
                          _ t13: T13) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        result += t10.array()
        result += t11.array()
        result += t12.array()
        result += t13.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray,
        T10: ItemOrArray,
        T11: ItemOrArray,
        T12: ItemOrArray,
        T13: ItemOrArray,
        T14: ItemOrArray>(_ t1: T1,
                          _ t2: T2,
                          _ t3: T3,
                          _ t4: T4,
                          _ t5: T5,
                          _ t6: T6,
                          _ t7: T7,
                          _ t8: T8,
                          _ t9: T9,
                          _ t10: T10,
                          _ t11: T11,
                          _ t12: T12,
                          _ t13: T13,
                          _ t14: T14) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        result += t10.array()
        result += t11.array()
        result += t12.array()
        result += t13.array()
        result += t14.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray,
        T10: ItemOrArray,
        T11: ItemOrArray,
        T12: ItemOrArray,
        T13: ItemOrArray,
        T14: ItemOrArray,
        T15: ItemOrArray>(_ t1: T1,
                          _ t2: T2,
                          _ t3: T3,
                          _ t4: T4,
                          _ t5: T5,
                          _ t6: T6,
                          _ t7: T7,
                          _ t8: T8,
                          _ t9: T9,
                          _ t10: T10,
                          _ t11: T11,
                          _ t12: T12,
                          _ t13: T13,
                          _ t14: T14,
                          _ t15: T15) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        result += t10.array()
        result += t11.array()
        result += t12.array()
        result += t13.array()
        result += t14.array()
        result += t15.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray,
        T10: ItemOrArray,
        T11: ItemOrArray,
        T12: ItemOrArray,
        T13: ItemOrArray,
        T14: ItemOrArray,
        T15: ItemOrArray,
        T16: ItemOrArray>(_ t1: T1,
                          _ t2: T2,
                          _ t3: T3,
                          _ t4: T4,
                          _ t5: T5,
                          _ t6: T6,
                          _ t7: T7,
                          _ t8: T8,
                          _ t9: T9,
                          _ t10: T10,
                          _ t11: T11,
                          _ t12: T12,
                          _ t13: T13,
                          _ t14: T14,
                          _ t15: T15,
                          _ t16: T16) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        result += t10.array()
        result += t11.array()
        result += t12.array()
        result += t13.array()
        result += t14.array()
        result += t15.array()
        result += t16.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray,
        T10: ItemOrArray,
        T11: ItemOrArray,
        T12: ItemOrArray,
        T13: ItemOrArray,
        T14: ItemOrArray,
        T15: ItemOrArray,
        T16: ItemOrArray,
        T17: ItemOrArray>(_ t1: T1,
                          _ t2: T2,
                          _ t3: T3,
                          _ t4: T4,
                          _ t5: T5,
                          _ t6: T6,
                          _ t7: T7,
                          _ t8: T8,
                          _ t9: T9,
                          _ t10: T10,
                          _ t11: T11,
                          _ t12: T12,
                          _ t13: T13,
                          _ t14: T14,
                          _ t15: T15,
                          _ t16: T16,
                          _ t17: T17) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        result += t10.array()
        result += t11.array()
        result += t12.array()
        result += t13.array()
        result += t14.array()
        result += t15.array()
        result += t16.array()
        result += t17.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray,
        T10: ItemOrArray,
        T11: ItemOrArray,
        T12: ItemOrArray,
        T13: ItemOrArray,
        T14: ItemOrArray,
        T15: ItemOrArray,
        T16: ItemOrArray,
        T17: ItemOrArray,
        T18: ItemOrArray>(_ t1: T1,
                          _ t2: T2,
                          _ t3: T3,
                          _ t4: T4,
                          _ t5: T5,
                          _ t6: T6,
                          _ t7: T7,
                          _ t8: T8,
                          _ t9: T9,
                          _ t10: T10,
                          _ t11: T11,
                          _ t12: T12,
                          _ t13: T13,
                          _ t14: T14,
                          _ t15: T15,
                          _ t16: T16,
                          _ t17: T17,
                          _ t18: T18) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        result += t10.array()
        result += t11.array()
        result += t12.array()
        result += t13.array()
        result += t14.array()
        result += t15.array()
        result += t16.array()
        result += t17.array()
        result += t18.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray,
        T10: ItemOrArray,
        T11: ItemOrArray,
        T12: ItemOrArray,
        T13: ItemOrArray,
        T14: ItemOrArray,
        T15: ItemOrArray,
        T16: ItemOrArray,
        T17: ItemOrArray,
        T18: ItemOrArray,
        T19: ItemOrArray>(_ t1: T1,
                          _ t2: T2,
                          _ t3: T3,
                          _ t4: T4,
                          _ t5: T5,
                          _ t6: T6,
                          _ t7: T7,
                          _ t8: T8,
                          _ t9: T9,
                          _ t10: T10,
                          _ t11: T11,
                          _ t12: T12,
                          _ t13: T13,
                          _ t14: T14,
                          _ t15: T15,
                          _ t16: T16,
                          _ t17: T17,
                          _ t18: T18,
                          _ t19: T19) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        result += t10.array()
        result += t11.array()
        result += t12.array()
        result += t13.array()
        result += t14.array()
        result += t15.array()
        result += t16.array()
        result += t17.array()
        result += t18.array()
        result += t19.array()
        return result
    }
}
public extension SyntaxBuilder {
    static func buildBlock<T1: ItemOrArray,
        T2: ItemOrArray,
        T3: ItemOrArray,
        T4: ItemOrArray,
        T5: ItemOrArray,
        T6: ItemOrArray,
        T7: ItemOrArray,
        T8: ItemOrArray,
        T9: ItemOrArray,
        T10: ItemOrArray,
        T11: ItemOrArray,
        T12: ItemOrArray,
        T13: ItemOrArray,
        T14: ItemOrArray,
        T15: ItemOrArray,
        T16: ItemOrArray,
        T17: ItemOrArray,
        T18: ItemOrArray,
        T19: ItemOrArray,
        T20: ItemOrArray>(_ t1: T1,
                          _ t2: T2,
                          _ t3: T3,
                          _ t4: T4,
                          _ t5: T5,
                          _ t6: T6,
                          _ t7: T7,
                          _ t8: T8,
                          _ t9: T9,
                          _ t10: T10,
                          _ t11: T11,
                          _ t12: T12,
                          _ t13: T13,
                          _ t14: T14,
                          _ t15: T15,
                          _ t16: T16,
                          _ t17: T17,
                          _ t18: T18,
                          _ t19: T19,
                          _ t20: T20) -> [Syntax] {
        var result: [Syntax] = []
        result += t1.array()
        result += t2.array()
        result += t3.array()
        result += t4.array()
        result += t5.array()
        result += t6.array()
        result += t7.array()
        result += t8.array()
        result += t9.array()
        result += t10.array()
        result += t11.array()
        result += t12.array()
        result += t13.array()
        result += t14.array()
        result += t15.array()
        result += t16.array()
        result += t17.array()
        result += t18.array()
        result += t19.array()
        result += t20.array()
        return result
    }
}


public protocol ItemOrArray {
    func array() -> [Syntax]
}

extension ItemOrArray where Self: Syntax {
    public func array() -> [Syntax] {
        return [self]
    }
}

extension Array: ItemOrArray where Element: Syntax {
    public func array() -> [Syntax] {
        return self
    }
}


