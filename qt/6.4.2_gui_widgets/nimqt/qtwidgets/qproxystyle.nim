const headerFile* = "QtWidgets/qproxystyle.h"

import nimqt/qtwidgets/qcommonstyle
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QProxyStyle* {.header:headerFile,importcpp:"QProxyStyle" ,pure.} = object of QCommonStyle
{.push warning[Deprecated]: on.}
import nimqt/qtwidgets/qstyle


type
    # typedefs found in the C++ code
    QProxyStyle_StateFlag * = QStyle_StateFlag
    QProxyStyle_PrimitiveElement * = QStyle_PrimitiveElement
    QProxyStyle_ControlElement * = QStyle_ControlElement
    QProxyStyle_SubElement * = QStyle_SubElement
    QProxyStyle_ComplexControl * = QStyle_ComplexControl
    QProxyStyle_SubControl * = QStyle_SubControl
    QProxyStyle_PixelMetric * = QStyle_PixelMetric
    QProxyStyle_ContentsType * = QStyle_ContentsType
    QProxyStyle_RequestSoftwareInputPanel * = QStyle_RequestSoftwareInputPanel
    QProxyStyle_StyleHint * = QStyle_StyleHint
    QProxyStyle_StandardPixmap * = QStyle_StandardPixmap
    QProxyStyle_State * = QStyle_State
    QProxyStyle_SubControls * = QStyle_SubControls

# Stuff for class QProxyStyle

# Public constructors for QProxyStyle
# 1 default parameters!
proc newQProxyStyle*(style: ptr QStyle): ptr QProxyStyle {. header:headerFile, importcpp:"new QProxyStyle(@)" .} #
proc newQProxyStyle*(): ptr QProxyStyle {. header:headerFile, importcpp:"new QProxyStyle(@)" .} #
import nimqt/qtcore/qstring
proc newQProxyStyle*(key: QString): ptr QProxyStyle {. header:headerFile, importcpp:"new QProxyStyle(@)" .} #

# Public methods for QProxyStyle
# 1 default parameters!
proc static_QProxyStyle_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QProxyStyle::tr(@)".} # Public static
proc static_QProxyStyle_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QProxyStyle::tr(@)".} # Public static
proc baseStyle*(this: ptr QProxyStyle): ptr QStyle {.header:headerFile, importcpp:"#.baseStyle(@)".} # Public
proc setBaseStyle*(this: ptr QProxyStyle, style: ptr QStyle) {.header:headerFile, importcpp:"#.setBaseStyle(@)".} # Public
import nimqt/qtgui/qpalette
proc standardPalette*(this: ptr QProxyStyle): QPalette {.header:headerFile, importcpp:"#.standardPalette(@)".} # Public
import nimqt/qtwidgets/qwidget
proc polish*(this: ptr QProxyStyle, widget: ptr QWidget) {.header:headerFile, importcpp:"#.polish(@)".} # Public
proc polish*(this: ptr QProxyStyle, pal: QPalette) {.header:headerFile, importcpp:"#.polish(@)".} # Public
import nimqt/qtwidgets/qapplication
proc polish*(this: ptr QProxyStyle, app: ptr QApplication) {.header:headerFile, importcpp:"#.polish(@)".} # Public
proc unpolish*(this: ptr QProxyStyle, widget: ptr QWidget) {.header:headerFile, importcpp:"#.unpolish(@)".} # Public
proc unpolish*(this: ptr QProxyStyle, app: ptr QApplication) {.header:headerFile, importcpp:"#.unpolish(@)".} # Public

# Protected methods methods for QProxyStyle
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QProxyStyle, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qstring
export qcommonstyle
export qstyle
export qwidget
export qcoreevent
export qpalette
export qapplication