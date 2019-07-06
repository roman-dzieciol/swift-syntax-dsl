

import SwiftSyntax


public protocol SyntaxWithMembers {

    var members: MemberDeclBlockSyntax { get }
    func withMembers(_ newChild: MemberDeclBlockSyntax?) -> Self

    func addMember(@DeclSyntaxBuilder _ item: () -> DeclSyntax) -> Self
    func addMembers(@DeclSyntaxBuilder _ items: () -> [DeclSyntax]) -> Self
    func addMembersList(@DeclSyntaxBuilder _ items: () -> [[DeclSyntax]]) -> Self
}

extension ClassDeclSyntax: SyntaxWithMembers {}
extension StructDeclSyntax: SyntaxWithMembers {}
extension ProtocolDeclSyntax: SyntaxWithMembers {}
extension ExtensionDeclSyntax: SyntaxWithMembers {}
extension EnumDeclSyntax: SyntaxWithMembers {}

public extension SyntaxWithMembers {

    func addMembers(@DeclSyntaxBuilder _ items: () -> [DeclSyntax]) -> Self {
        return self.withMembers(MemberDeclBlockSyntax {
            self.members.members.map { (item: MemberDeclListItemSyntax) -> DeclSyntax in
                item.decl
            }
            items()
        })
    }

    func addMembersList(@DeclSyntaxBuilder _ items: () -> [[DeclSyntax]]) -> Self {
        return self.addMembers({ items().flatMap{ $0 } })
    }

    func addMember(@DeclSyntaxBuilder _ items: () -> DeclSyntax) -> Self {
        return self.addMembers({ [items()] })
    }
}
