const headerFile* = "QtWidgets/qgraphicsview.h"

import nimqt/qtwidgets/qabstractscrollarea
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QGraphicsView_ViewportAnchor* {.header:headerFile,importcpp:"QGraphicsView::ViewportAnchor".} = enum NoAnchor = 0, AnchorViewCenter = 0x1, AnchorUnderMouse = 0x2
    QGraphicsView_CacheModeFlag* {.header:headerFile,importcpp:"QGraphicsView::CacheModeFlag".} = enum CacheNone = 0, CacheBackground = 0x1
    QGraphicsView_DragMode* {.header:headerFile,importcpp:"QGraphicsView::DragMode".} = enum NoDrag = 0, ScrollHandDrag = 0x1, RubberBandDrag = 0x2
    QGraphicsView_ViewportUpdateMode* {.header:headerFile,importcpp:"QGraphicsView::ViewportUpdateMode".} = enum FullViewportUpdate = 0, MinimalViewportUpdate = 0x1, SmartViewportUpdate = 0x2, NoViewportUpdate = 0x3, 
        BoundingRectViewportUpdate = 0x4
    QGraphicsView_OptimizationFlag* {.header:headerFile,importcpp:"QGraphicsView::OptimizationFlag".} = enum DontSavePainterState = 0, DontAdjustForAntialiasing = 0x1, IndirectPainting = 0x2
    QGraphicsView* {.header:headerFile,importcpp:"QGraphicsView" ,pure.} = object of QAbstractScrollArea
{.push warning[Deprecated]: on.}
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QGraphicsView_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QGraphicsView_Shape * = QFrame_Shape
    QGraphicsView_Shadow * = QFrame_Shadow
    QGraphicsView_StyleMask * = QFrame_StyleMask
    QGraphicsView_RenderFlag * = QWidget_RenderFlag
    QGraphicsView_RenderFlags * = QWidget_RenderFlags
    QGraphicsView_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QGraphicsView_CacheMode * = QFlags[QGraphicsView_CacheModeFlag]
    QGraphicsView_OptimizationFlags * = QFlags[QGraphicsView_OptimizationFlag]


export qabstractscrollarea
export qwidget
export qflags
export qpaintdevice
export qframe