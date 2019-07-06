import XCTest
@testable import SwiftSyntaxDSL
import SwiftSyntax

final class SyntaxBuilderTests: XCTestCase {

    func testSyntaxBuilderTypes() {

        let b = InitializerDeclSyntax().setCodeItem {
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))
        }
        XCTAssertEqual("\(b)", "init(){1}")

        let b2 = InitializerDeclSyntax().setCodeBlock {
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("2"))
        }
        XCTAssertEqual("\(b2)", "init(){12}")

        let b3 = InitializerDeclSyntax().setCodeBlock {
            [SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))]
        }
        XCTAssertEqual("\(b3)", "init(){1}")

        let b4 = InitializerDeclSyntax().setCodeBlock {
            [SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))]
            [SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("2"))]
        }
        XCTAssertEqual("\(b4)", "init(){12}")

        let b5 = InitializerDeclSyntax().setCodeBlock {
            [SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))]
            [SyntaxFactory.makeBlankVariableDecl().withLetOrVarKeyword(SyntaxFactory.makeLetKeyword())]
        }
        XCTAssertEqual("\(b5)", "init(){1let}")

        let b6 = InitializerDeclSyntax().setCodeBlock {
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))
            SyntaxFactory.makeBlankVariableDecl().withLetOrVarKeyword(SyntaxFactory.makeLetKeyword())
        }
        XCTAssertEqual("\(b6)", "init(){1let}")


        @SyntaxBuilder
        func build() -> [Syntax] {
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))
        }
        XCTAssertEqual(build().map { "\($0)" }, ["1"])

        @SyntaxBuilder
        func build2() -> [Syntax] {
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("2"))
        }
        XCTAssertEqual(build2().map { "\($0)" }, ["1", "2"])

        @SyntaxBuilder
        func build3() -> [Syntax] {
            [SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))]
        }
        XCTAssertEqual(build3().map { "\($0)" }, ["1"])

        @SyntaxBuilder
        func build4() -> [Syntax] {
            [SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))]
            [SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("2"))]
        }
        XCTAssertEqual(build4().map { "\($0)" }, ["1", "2"])

        @SyntaxBuilder
        func build5() -> [Syntax] {
            [SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))]
            [SyntaxFactory.makeBlankVariableDecl().withLetOrVarKeyword(SyntaxFactory.makeLetKeyword())]
        }
        XCTAssertEqual(build5().map { "\($0)" }, ["1", "let"])

        @SyntaxBuilder
        func build6() -> [Syntax] {
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))
            SyntaxFactory.makeBlankVariableDecl().withLetOrVarKeyword(SyntaxFactory.makeLetKeyword())
        }
        XCTAssertEqual(build6().map { "\($0)" }, ["1", "let"])

    }

    static var allTests = [
        ("testSyntaxBuilderTypes", testSyntaxBuilderTypes),
    ]
}
