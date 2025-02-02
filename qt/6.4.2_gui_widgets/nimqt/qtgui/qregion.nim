const headerFile* = "QtGui/qregion.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QRegion_RegionType* {.header:headerFile,importcpp:"QRegion::RegionType".} = enum Rectangle = 0, Ellipse = 0x1
    QRegion* {.header:headerFile,importcpp:"QRegion" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QRegion

# Public constructors for QRegion
proc newQRegion*(): QRegion {. header:headerFile, importcpp:"QRegion(@)", constructor .} #
proc newQRegion*(x: cint, y: cint, w: cint, h: cint, t: QRegion_RegionType): QRegion {. header:headerFile, importcpp:"QRegion(@)", constructor .} #
import nimqt/qtcore/qnamespace
import nimqt/qtgui/qpolygon
proc newQRegion*(pa: QPolygon, fillRule: Qt_FillRule): QRegion {. header:headerFile, importcpp:"QRegion(@)", constructor .} #
proc newQRegion*(region: QRegion): QRegion {. header:headerFile, importcpp:"QRegion(@)", constructor .} #
proc newQRegion*(other: QRegion): QRegion {. header:headerFile, importcpp:"QRegion(@)", constructor .} #

# Public methods for QRegion
proc swap*(this: QRegion, other: QRegion) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isEmpty*(this: QRegion): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isNull*(this: QRegion): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc translate*(this: QRegion, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translated*(this: QRegion, dx: cint, dy: cint): QRegion {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc united*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.united(@)".} # Public
proc intersected*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.intersected(@)".} # Public
proc subtracted*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.subtracted(@)".} # Public
proc xored*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.xored(@)".} # Public
proc intersects*(this: QRegion, r: QRegion): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public
proc rectCount*(this: QRegion): cint {.header:headerFile, importcpp:"#.rectCount(@)".} # Public
proc `|`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator|(@)".} # Public
proc `+`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator+(@)".} # Public
proc `&`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `-`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator-(@)".} # Public
proc `^`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator^(@)".} # Public
proc `|=`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `+=`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `&=`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `-=`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `^=`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator^=(@)".} # Public
proc `!=`*(this: QRegion, r: QRegion): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public

export qnamespace
export qpolygon