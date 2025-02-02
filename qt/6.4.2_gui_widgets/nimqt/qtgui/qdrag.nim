const headerFile* = "QtGui/qdrag.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QDrag* {.header:headerFile,importcpp:"QDrag" ,pure.} = object of QObject
{.push warning[Deprecated]: on.}

# Stuff for class QDrag

# Public constructors for QDrag
proc newQDrag*(dragSource: ptr QObject): ptr QDrag {. header:headerFile, importcpp:"new QDrag(@)" .} #

# Public methods for QDrag
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QDrag_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QDrag::tr(@)".} # Public static
proc static_QDrag_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QDrag::tr(@)".} # Public static
import nimqt/qtgui/qpixmap
proc setPixmap*(this: ptr QDrag, arg_0: QPixmap) {.header:headerFile, importcpp:"#.setPixmap(@)".} # Public
proc pixmap*(this: ptr QDrag): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc source*(this: ptr QDrag): ptr QObject {.header:headerFile, importcpp:"#.source(@)".} # Public
proc target*(this: ptr QDrag): ptr QObject {.header:headerFile, importcpp:"#.target(@)".} # Public
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc exec*(this: ptr QDrag, supportedActions: Qt_DropActions): Qt_DropAction {.header:headerFile, importcpp:"#.exec(@)".} # Public
proc exec*(this: ptr QDrag): Qt_DropAction {.header:headerFile, importcpp:"#.exec(@)".} # Public
proc exec*(this: ptr QDrag, supportedActions: Qt_DropActions, defaultAction: Qt_DropAction): Qt_DropAction {.header:headerFile, importcpp:"#.exec(@)".} # Public
proc setDragCursor*(this: ptr QDrag, cursor: QPixmap, action: Qt_DropAction) {.header:headerFile, importcpp:"#.setDragCursor(@)".} # Public
proc dragCursor*(this: ptr QDrag, action: Qt_DropAction): QPixmap {.header:headerFile, importcpp:"#.dragCursor(@)".} # Public
proc supportedActions*(this: ptr QDrag): Qt_DropActions {.header:headerFile, importcpp:"#.supportedActions(@)".} # Public
proc defaultAction*(this: ptr QDrag): Qt_DropAction {.header:headerFile, importcpp:"#.defaultAction(@)".} # Public
proc static_QDrag_cancel*() {.header:headerFile, importcpp:"QDrag::cancel(@)".} # Public static
proc actionChanged*(this: ptr QDrag, action: Qt_DropAction) {.header:headerFile, importcpp:"#.actionChanged(@)".} # Public
proc targetChanged*(this: ptr QDrag, newTarget: ptr QObject) {.header:headerFile, importcpp:"#.targetChanged(@)".} # Public

export qpixmap
export qstring
export qnamespace
export qobject