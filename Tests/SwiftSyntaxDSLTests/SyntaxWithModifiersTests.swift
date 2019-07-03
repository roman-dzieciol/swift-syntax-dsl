import XCTest
import SwiftSyntaxDSL
import SwiftSyntax

final class SyntaxWithModifiersTests: XCTestCase {

    func testSyntaxWithModifiers() {

        XCTAssertEqual("\(SyntaxFactory.makeBlankClassDecl().public)", "public")
        XCTAssertEqual("\(SyntaxFactory.makeBlankClassDecl().internal)", "internal")
        XCTAssertEqual("\(SyntaxFactory.makeBlankClassDecl().private)", "private")
        XCTAssertEqual("\(SyntaxFactory.makeBlankClassDecl().fileprivate)", "fileprivate")
    }

}
