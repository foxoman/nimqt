const headerFile* = "QtGui/qtextlayout.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QTextLayout_CursorMode* {.header:headerFile,importcpp:"QTextLayout::CursorMode".} = enum SkipCharacters = 0, SkipWords = 0x1
    QTextLine_Edge* {.header:headerFile,importcpp:"QTextLine::Edge".} = enum Leading = 0, Trailing = 0x1
    QTextLine_CursorPosition* {.header:headerFile,importcpp:"QTextLine::CursorPosition".} = enum CursorBetweenCharacters = 0, CursorOnCharacter = 0x1
    QTextInlineObject* {.header:headerFile,importcpp:"QTextInlineObject" ,pure.} = object {.inheritable.}
    QTextLayout* {.header:headerFile,importcpp:"QTextLayout" ,pure.} = object {.inheritable.}
    QTextLayout_FormatRange* {.header:headerFile,importcpp:"QTextLayout::FormatRange" ,pure.} = object {.inheritable.}
    QTextLine* {.header:headerFile,importcpp:"QTextLine" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QTextInlineObject

# Public constructors for QTextInlineObject
proc newQTextInlineObject*(): QTextInlineObject {. header:headerFile, importcpp:"QTextInlineObject(@)", constructor .} #

# Public methods for QTextInlineObject
proc isValid*(this: QTextInlineObject): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc width*(this: QTextInlineObject): cfloat {.header:headerFile, importcpp:"#.width(@)".} # Public
proc ascent*(this: QTextInlineObject): cfloat {.header:headerFile, importcpp:"#.ascent(@)".} # Public
proc descent*(this: QTextInlineObject): cfloat {.header:headerFile, importcpp:"#.descent(@)".} # Public
proc height*(this: QTextInlineObject): cfloat {.header:headerFile, importcpp:"#.height(@)".} # Public
import nimqt/qtcore/qnamespace
proc textDirection*(this: QTextInlineObject): Qt_LayoutDirection {.header:headerFile, importcpp:"#.textDirection(@)".} # Public
proc setWidth*(this: QTextInlineObject, w: cfloat) {.header:headerFile, importcpp:"#.setWidth(@)".} # Public
proc setAscent*(this: QTextInlineObject, a: cfloat) {.header:headerFile, importcpp:"#.setAscent(@)".} # Public
proc setDescent*(this: QTextInlineObject, d: cfloat) {.header:headerFile, importcpp:"#.setDescent(@)".} # Public
proc textPosition*(this: QTextInlineObject): cint {.header:headerFile, importcpp:"#.textPosition(@)".} # Public
proc formatIndex*(this: QTextInlineObject): cint {.header:headerFile, importcpp:"#.formatIndex(@)".} # Public
import nimqt/qtgui/qtextformat
proc format*(this: QTextInlineObject): QTextFormat {.header:headerFile, importcpp:"#.format(@)".} # Public
# Stuff for class QTextLayout

# Public constructors for QTextLayout
proc newQTextLayout*(): QTextLayout {. header:headerFile, importcpp:"QTextLayout(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQTextLayout*(text: QString): QTextLayout {. header:headerFile, importcpp:"QTextLayout(@)", constructor .} #
import nimqt/qtgui/qfont
import nimqt/qtgui/qpaintdevice
# 1 default parameters!
proc newQTextLayout*(text: QString, font: QFont, paintdevice: ptr QPaintDevice): QTextLayout {. header:headerFile, importcpp:"QTextLayout(@)", constructor .} #
proc newQTextLayout*(text: QString, font: QFont): QTextLayout {. header:headerFile, importcpp:"QTextLayout(@)", constructor .} #
import nimqt/qtgui/qtextobject
proc newQTextLayout*(b: QTextBlock): QTextLayout {. header:headerFile, importcpp:"QTextLayout(@)", constructor .} #

# Public methods for QTextLayout
proc setFont*(this: QTextLayout, f: QFont) {.header:headerFile, importcpp:"#.setFont(@)".} # Public
proc font*(this: QTextLayout): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
import nimqt/qtgui/qrawfont
proc setRawFont*(this: QTextLayout, rawFont: QRawFont) {.header:headerFile, importcpp:"#.setRawFont(@)".} # Public
proc setText*(this: QTextLayout, string: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc text*(this: QTextLayout): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
import nimqt/qtgui/qtextoption
proc setTextOption*(this: QTextLayout, option: QTextOption) {.header:headerFile, importcpp:"#.setTextOption(@)".} # Public
proc textOption*(this: QTextLayout): QTextOption {.header:headerFile, importcpp:"#.textOption(@)".} # Public
proc setPreeditArea*(this: QTextLayout, position: cint, text: QString) {.header:headerFile, importcpp:"#.setPreeditArea(@)".} # Public
proc preeditAreaPosition*(this: QTextLayout): cint {.header:headerFile, importcpp:"#.preeditAreaPosition(@)".} # Public
proc preeditAreaText*(this: QTextLayout): QString {.header:headerFile, importcpp:"#.preeditAreaText(@)".} # Public
proc clearFormats*(this: QTextLayout) {.header:headerFile, importcpp:"#.clearFormats(@)".} # Public
proc setCacheEnabled*(this: QTextLayout, enable: bool) {.header:headerFile, importcpp:"#.setCacheEnabled(@)".} # Public
proc cacheEnabled*(this: QTextLayout): bool {.header:headerFile, importcpp:"#.cacheEnabled(@)".} # Public
proc setCursorMoveStyle*(this: QTextLayout, style: Qt_CursorMoveStyle) {.header:headerFile, importcpp:"#.setCursorMoveStyle(@)".} # Public
proc cursorMoveStyle*(this: QTextLayout): Qt_CursorMoveStyle {.header:headerFile, importcpp:"#.cursorMoveStyle(@)".} # Public
proc beginLayout*(this: QTextLayout) {.header:headerFile, importcpp:"#.beginLayout(@)".} # Public
proc endLayout*(this: QTextLayout) {.header:headerFile, importcpp:"#.endLayout(@)".} # Public
proc clearLayout*(this: QTextLayout) {.header:headerFile, importcpp:"#.clearLayout(@)".} # Public
proc createLine*(this: QTextLayout): QTextLine {.header:headerFile, importcpp:"#.createLine(@)".} # Public
proc lineCount*(this: QTextLayout): cint {.header:headerFile, importcpp:"#.lineCount(@)".} # Public
proc lineAt*(this: QTextLayout, i: cint): QTextLine {.header:headerFile, importcpp:"#.lineAt(@)".} # Public
proc lineForTextPosition*(this: QTextLayout, pos: cint): QTextLine {.header:headerFile, importcpp:"#.lineForTextPosition(@)".} # Public
proc isValidCursorPosition*(this: QTextLayout, pos: cint): bool {.header:headerFile, importcpp:"#.isValidCursorPosition(@)".} # Public
proc nextCursorPosition*(this: QTextLayout, oldPos: cint, mode: QTextLayout_CursorMode): cint {.header:headerFile, importcpp:"#.nextCursorPosition(@)".} # Public
proc previousCursorPosition*(this: QTextLayout, oldPos: cint, mode: QTextLayout_CursorMode): cint {.header:headerFile, importcpp:"#.previousCursorPosition(@)".} # Public
proc leftCursorPosition*(this: QTextLayout, oldPos: cint): cint {.header:headerFile, importcpp:"#.leftCursorPosition(@)".} # Public
proc rightCursorPosition*(this: QTextLayout, oldPos: cint): cint {.header:headerFile, importcpp:"#.rightCursorPosition(@)".} # Public
proc minimumWidth*(this: QTextLayout): cfloat {.header:headerFile, importcpp:"#.minimumWidth(@)".} # Public
proc maximumWidth*(this: QTextLayout): cfloat {.header:headerFile, importcpp:"#.maximumWidth(@)".} # Public
proc setFlags*(this: QTextLayout, flags: cint) {.header:headerFile, importcpp:"#.setFlags(@)".} # Public
# Stuff for class QTextLine

# Public constructors for QTextLine
proc newQTextLine*(): QTextLine {. header:headerFile, importcpp:"QTextLine(@)", constructor .} #

# Public methods for QTextLine
proc isValid*(this: QTextLine): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc x*(this: QTextLine): cfloat {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: QTextLine): cfloat {.header:headerFile, importcpp:"#.y(@)".} # Public
proc width*(this: QTextLine): cfloat {.header:headerFile, importcpp:"#.width(@)".} # Public
proc ascent*(this: QTextLine): cfloat {.header:headerFile, importcpp:"#.ascent(@)".} # Public
proc descent*(this: QTextLine): cfloat {.header:headerFile, importcpp:"#.descent(@)".} # Public
proc height*(this: QTextLine): cfloat {.header:headerFile, importcpp:"#.height(@)".} # Public
proc leading*(this: QTextLine): cfloat {.header:headerFile, importcpp:"#.leading(@)".} # Public
proc setLeadingIncluded*(this: QTextLine, included: bool) {.header:headerFile, importcpp:"#.setLeadingIncluded(@)".} # Public
proc leadingIncluded*(this: QTextLine): bool {.header:headerFile, importcpp:"#.leadingIncluded(@)".} # Public
proc naturalTextWidth*(this: QTextLine): cfloat {.header:headerFile, importcpp:"#.naturalTextWidth(@)".} # Public
proc horizontalAdvance*(this: QTextLine): cfloat {.header:headerFile, importcpp:"#.horizontalAdvance(@)".} # Public
proc cursorToX*(this: QTextLine, cursorPos: ptr cint, edge: QTextLine_Edge): cfloat {.header:headerFile, importcpp:"#.cursorToX(@)".} # Public
proc cursorToX*(this: QTextLine, cursorPos: cint, edge: QTextLine_Edge): cfloat {.header:headerFile, importcpp:"#.cursorToX(@)".} # Public
proc xToCursor*(this: QTextLine, x: cfloat, arg_1: QTextLine_CursorPosition): cint {.header:headerFile, importcpp:"#.xToCursor(@)".} # Public
proc setLineWidth*(this: QTextLine, width: cfloat) {.header:headerFile, importcpp:"#.setLineWidth(@)".} # Public
proc setNumColumns*(this: QTextLine, columns: cint) {.header:headerFile, importcpp:"#.setNumColumns(@)".} # Public
proc setNumColumns*(this: QTextLine, columns: cint, alignmentWidth: cfloat) {.header:headerFile, importcpp:"#.setNumColumns(@)".} # Public
proc textStart*(this: QTextLine): cint {.header:headerFile, importcpp:"#.textStart(@)".} # Public
proc textLength*(this: QTextLine): cint {.header:headerFile, importcpp:"#.textLength(@)".} # Public
proc lineNumber*(this: QTextLine): cint {.header:headerFile, importcpp:"#.lineNumber(@)".} # Public

export qrawfont
export qfont
export qtextformat
export qstring
export qtextoption
export qnamespace
export qtextobject
export qpaintdevice