
import SwiftSyntax

public protocol SyntaxWithArgumentList {

    func withArgumentList(_ newChild: FunctionCallArgumentListSyntax?) -> Self

    func setArguments(@FunctionCallArgumentSyntaxBuilder _ item: () -> FunctionCallArgumentSyntax) -> Self
    func setArguments(@FunctionCallArgumentSyntaxBuilder _ items: () -> [FunctionCallArgumentSyntax]) -> Self
    func setArguments(@FunctionCallArgumentSyntaxBuilder _ items: () -> [[FunctionCallArgumentSyntax]]) -> Self
}

public extension SyntaxWithArgumentList {

    func setArguments(@FunctionCallArgumentSyntaxBuilder _ items: () -> [FunctionCallArgumentSyntax]) -> Self {
        let allItems = items()
        let commaSeparatedItems: [FunctionCallArgumentSyntax] = allItems.enumerated().map { (arg) in
            let (index, item) = arg
            if index.advanced(by: 1) != allItems.count {
                return item.withTrailingComma(SyntaxFactory.makeCommaToken())
            }
            return item
        }
        return self.withArgumentList(SyntaxFactory.makeFunctionCallArgumentList(commaSeparatedItems))
    }

    func setArguments(@FunctionCallArgumentSyntaxBuilder _ items: () -> [[FunctionCallArgumentSyntax]]) -> Self {
        return self.setArguments({ items().flatMap{ $0 } })
    }

    func setArguments(@FunctionCallArgumentSyntaxBuilder _ items: () -> FunctionCallArgumentSyntax) -> Self {
        return self.setArguments({ [items()] })
    }
}

extension FunctionCallExprSyntax: SyntaxWithArgumentList {}
extension SubscriptExprSyntax: SyntaxWithArgumentList {}
