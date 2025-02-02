const headerFile* = "QtGui/qdesktopservices.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QDesktopServices* {.header:headerFile,importcpp:"QDesktopServices" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QDesktopServices

# Public methods for QDesktopServices
import nimqt/qtcore/qstring
import nimqt/qtcore/qobject
proc static_QDesktopServices_setUrlHandler*(scheme: QString, receiver: ptr QObject, `method`: ptr char) {.header:headerFile, importcpp:"QDesktopServices::setUrlHandler(@)".} # Public static
proc static_QDesktopServices_unsetUrlHandler*(scheme: QString) {.header:headerFile, importcpp:"QDesktopServices::unsetUrlHandler(@)".} # Public static

export qstring
export qobject