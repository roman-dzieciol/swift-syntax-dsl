import XCTest
import SwiftSyntaxDSL
import SwiftSyntax

final class SwiftSyntaxDSLTests: XCTestCase {

    func testArrayExprSyntax() {
        let s = ArrayExprSyntax {
            SyntaxFactory.makeTypeExpr(type: SyntaxFactory.makeTypeIdentifier("1"))
        }
        XCTAssertEqual("\(s)", "[1]")

        let s2 = ArrayExprSyntax {
            SyntaxFactory.makeTypeExpr(type: SyntaxFactory.makeTypeIdentifier("1"))
            SyntaxFactory.makeTypeExpr(type: SyntaxFactory.makeTypeIdentifier("2"))
        }
        XCTAssertEqual("\(s2)", "[1,2]")
    }

    func testArrayTypeSyntax() {
        let s = ArrayTypeSyntax {
            SyntaxFactory.makeTypeIdentifier("1")
        }
        XCTAssertEqual("\(s)", "[1]")
    }

    func testClassDeclSyntax() {
        let s = ClassDeclSyntax(name: "n") {
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))
            SyntaxFactory.makeBlankVariableDecl().withLetOrVarKeyword(SyntaxFactory.makeLetKeyword())
        }
        XCTAssertEqual("\(s)", "classn{1let}")
    }

    func testCodeBlockSyntax() {
        let s = CodeBlockSyntax {
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))
            SyntaxFactory.makeBlankVariableDecl().withLetOrVarKeyword(SyntaxFactory.makeLetKeyword())
        }
        XCTAssertEqual("\(s)", "{1let}")
    }

    func testMemberDeclBlockSyntax() {
        let s = MemberDeclBlockSyntax {
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))
            SyntaxFactory.makeBlankVariableDecl().withLetOrVarKeyword(SyntaxFactory.makeLetKeyword())
        }
        XCTAssertEqual("\(s)", "{1let}")
    }

    func testOptionalTypeSyntax() {
        let s = OptionalTypeSyntax {
            SyntaxFactory.makeTypeIdentifier("T")
        }
        XCTAssertEqual("\(s)", "T?")
    }

    func testParameterClauseSyntax() {
        let s = ParameterClauseSyntax {
            SyntaxFactory.makeBlankFunctionParameter().withFirstName(SyntaxFactory.makeIdentifier("A"))
            SyntaxFactory.makeBlankFunctionParameter().withFirstName(SyntaxFactory.makeIdentifier("B"))
        }
        XCTAssertEqual("\(s)", "(AB)")
    }

    func testSourceFileSyntax() {
        let s = SourceFileSyntax {
            SyntaxFactory.makeBlankFunctionDecl().withIdentifier(SyntaxFactory.makeIdentifier("1"))
            SyntaxFactory.makeBlankVariableDecl().withLetOrVarKeyword(SyntaxFactory.makeLetKeyword())
        }
        XCTAssertEqual("\(s)", "1let\n")
    }

//    static var allTests = [
//        ("testExample", testExample),
//    ]
}
