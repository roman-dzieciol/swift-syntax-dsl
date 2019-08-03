import re
import sys
from pathlib import Path
from collections import defaultdict

def strip_end(text, suffix):
    if not text.endswith(suffix):
        return text
    return text[:len(text)-len(suffix)]

pattern = re.compile(r"struct ([A-Za-z0-9_]+?)Syntax: ([A-Za-z0-9]*?)Syntax")

nodes_by_type = defaultdict(list)

syntaxNodesPath = Path(sys.argv[1]) / "Sources/SwiftSyntax/gyb_generated/SyntaxNodes.swift"
print("syntaxNodesPath:", syntaxNodesPath)

with syntaxNodesPath.open() as f:
    for line in f:
        match = re.search(pattern, line)
        if match:
            nodes_by_type[match.groups(0)[1]] += [match.groups(0)[0]]


syntax_convenience = ["import SwiftSyntax", ""]
for (key,values) in nodes_by_type.items():
    syntax_convenience += ["", f"// MARK: - {key}SyntaxConvenience", "", f"public protocol {key}SyntaxConvenience {{}}",""]
    values.sort()
    for value in values:
        syntax_convenience += [f"extension {value}Syntax: {key}SyntaxConvenience {{}}"]
        

syntax_globals_short = ["import SwiftSyntax", ""]
for (key,values) in nodes_by_type.items():
    syntax_globals_short += ["", f"// MARK: - {key}Syntax", "", f"public extension {key}Syntax {{",""]
    values.sort()
    for value in values:
        syntax_globals_short += [f"    typealias {strip_end(value,key)} = {value}Syntax"]
    syntax_globals_short += ["}"]


syntax_globals_med = ["import SwiftSyntax", ""]
for (key,values) in nodes_by_type.items():
    syntax_globals_med += ["", f"// MARK: - {key}Syntax",""]
    values.sort()
    for value in values:
        syntax_globals_med += [f"public typealias {value} = {value}Syntax"]


generated_path = Path("sources/SwiftSyntaxDSL/generated")
generated_path.mkdir(parents=True,exist_ok=True)

(generated_path / "SyntaxConvenience.swift").write_text("\n".join(syntax_convenience))
(generated_path / "SyntaxGlobalsShort.swift").write_text("\n".join(syntax_globals_short))
(generated_path / "SyntaxGlobalsMedium.swift").write_text("\n".join(syntax_globals_med))

