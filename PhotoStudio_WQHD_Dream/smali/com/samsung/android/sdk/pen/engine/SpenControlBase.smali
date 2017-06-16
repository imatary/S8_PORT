.class public abstract Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.super Landroid/view/View;
.source "SpenControlBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;,
        Lcom/samsung/android/sdk/pen/engine/SpenControlBase$TouchManagerListener;,
        Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;,
        Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;,
        Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;,
        Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;,
        Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;
    }
.end annotation


# static fields
.field protected static final ALL:I = -0x1

.field private static final ANGLE_RECT_HEIGHT:I = 0x28

.field private static final ANGLE_RECT_WIDTH:I = 0x48

.field private static final ANGLE_TEXT_SIZE:I = 0xe

.field protected static final CONTEXT_MENU_HIDE_MOVE_THRESHOLD:I = 0x46

.field private static final DBG:Z = false

.field protected static final DEFAULT_DEGREE_STRING:Ljava/lang/String; = "\u00b0"

.field private static final DEFAULT_DENSITY_DPI:I = 0xa0

.field protected static final DEFAULT_RESIZE_POINT:Ljava/lang/String; = "selection_handler"

.field protected static final DEFAULT_ROTATE_POINT:Ljava/lang/String; = "note_handwriting_selection_rotate"

.field private static final DELTA_EDGE:I = 0x1

.field protected static final DIMMING_BG_COLOR:I = 0x40000000

.field protected static final FLIP_DIRECTION_HORIZONTAL:I = 0x2

.field protected static final FLIP_DIRECTION_NONE:I = 0x0

.field protected static final FLIP_DIRECTION_VERTICAL:I = 0x1

.field protected static final HOVERING_SPENICON_ICON_SIZE:I = 0x17

.field protected static final HOVERING_SPENICON_ICON_SIZE_N1:I = 0x26

.field protected static final HOVERING_SPENICON_MOVE:Ljava/lang/String; = "pen_basic_ic_moving_mtrl"

.field protected static final HOVERING_SPENICON_RESIZING_LEFT_RIGHT:Ljava/lang/String; = "pen_basic_ic_resizing_mtrl_01"

.field protected static final HOVERING_SPENICON_RESIZING_TOP_BOTTOM:Ljava/lang/String; = "pen_basic_ic_resizing_mtrl_02"

.field protected static final HOVERING_SPENICON_RESIZING_TOP_LEFT:Ljava/lang/String; = "pen_basic_ic_resizing_mtrl_03"

.field protected static final HOVERING_SPENICON_RESIZING_TOP_RIGHT:Ljava/lang/String; = "pen_basic_ic_resizing_mtrl_00"

.field protected static final HOVERING_SPENICON_ROTATE:Ljava/lang/String; = "pen_basic_ic_rotating_mtrl_00"

.field protected static final SIGMA:F = 1.0E-4f

.field public static final STYLE_BORDER_NONE:I = 0x1

.field public static final STYLE_BORDER_NONE_ACTION_NONE:I = 0x3

.field public static final STYLE_BORDER_OBJECT:I = 0x0

.field public static final STYLE_BORDER_STATIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpenControlBase"

.field protected static final TRIVIAL_MOVING_CRITERIA:I = 0x14

.field private static arabicChars:[C


# instance fields
.field private mActiveRect:Landroid/graphics/RectF;

.field private mBorderPointDrawable:Landroid/graphics/drawable/Drawable;

.field private mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

.field private mBorderStyle:I

.field private final mContext:Landroid/content/Context;

.field private final mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

.field private mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

.field private mControlPointRadius:F

.field private final mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

.field private mDensityDpi:I

.field private mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

.field private mHoveringIcon:Landroid/graphics/drawable/Drawable;

.field private mIsClosed:Z

.field private mIsDimmed:Z

.field private mIsFlipDirectionHorizontal:Z

.field private mIsFlipDirectionVertical:Z

.field private mIsHoverCursorEnable:Z

.field private mIsLongPress:Z

.field private mIsObjectChange:Z

.field private mIsObjectRestrictedMoving:Z

.field private mIsRotatable:Z

.field private mIsSizeChanged:Z

.field private mIsSmartGuideEnabled:Z

.field private mIsTouchDownEventHistory:Z

.field private mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

.field private mMaximumResizeRect:Landroid/graphics/RectF;

.field private mMinimumResizeRect:Landroid/graphics/RectF;

.field private mObjRestrictedMovingRect:Landroid/graphics/RectF;

.field private mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

.field private mObjectOutlineEnable:Z

.field private mObjectRect:Landroid/graphics/RectF;

.field private mOnePT:F

.field private mOrgRotatedPoint:Landroid/graphics/PointF;

.field private mOriginalObjectRect:Landroid/graphics/RectF;

.field private mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

.field private mPageDocHeight:I

.field private mPageDocWidth:I

.field private mPanBackup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevHoverTouchZoneType:I

.field private mPrevPoint:Landroid/graphics/PointF;

.field private mResizeOption:I

.field private mResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mRotateAngle:F

.field private mRotatePointDrawable:Landroid/graphics/drawable/Drawable;

.field private mRotatePointShadowBitmap:Landroid/graphics/Bitmap;

.field private mRotateTempAngle:F

.field private final mSelectContextMenuListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

.field private mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

.field private mTouchDownPoint:Landroid/graphics/PointF;

.field private mTouchEnable:Z

.field private mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

.field private final mTouchZoneIdList:[I

.field private mTrivialMovingEn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->arabicChars:[C

    return-void

    :array_0
    .array-data 2
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    const/16 v0, 0xff

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointShadowBitmap:Landroid/graphics/Bitmap;

    iput v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOnePT:F

    iput v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateTempAngle:F

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsRotatable:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsDimmed:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectOutlineEnable:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchEnable:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsClosed:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectChange:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsFlipDirectionHorizontal:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsFlipDirectionVertical:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsTouchDownEventHistory:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsHoverCursorEnable:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsLongPress:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSizeChanged:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSmartGuideEnabled:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPanBackup:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mActiveRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$1;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSelectContextMenuListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->initialize(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    return-void
.end method

.method private AbsoluteCoordinate(Landroid/graphics/PointF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)Landroid/graphics/PointF;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v1, v2

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v1, v2

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method private Increase2MinimumRect(Landroid/graphics/RectF;)V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    :cond_3
    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->updateContextMenu()V

    return-void
.end method

.method private calculateContextMenuPosition(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getObjectDrawnRect()Landroid/graphics/RectF;

    move-result-object v10

    if-nez v10, :cond_0

    const/4 v15, 0x0

    :goto_0
    return-object v15

    :cond_0
    const-string v15, "SpenControlBase"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "calculateContextMenuPosition drawnrect : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " rotation : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " rect : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isRotatable()Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v15, v10, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRect(ILandroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v15

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v15, v18

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    add-float v15, v15, v18

    sub-float/2addr v15, v5

    float-to-double v0, v15

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v6, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    int-to-float v0, v6

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v7, v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    if-nez v9, :cond_2

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    if-nez v15, :cond_3

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getRect()Landroid/graphics/Rect;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    if-ge v15, v7, :cond_9

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v15

    :goto_2
    iget v15, v10, Landroid/graphics/RectF;->top:F

    cmpl-float v15, v4, v15

    if-lez v15, :cond_5

    iget v15, v10, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    int-to-float v4, v15

    :cond_5
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    if-le v15, v7, :cond_a

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v15

    :goto_3
    iget v15, v10, Landroid/graphics/RectF;->bottom:F

    cmpg-float v15, v2, v15

    if-gez v15, :cond_6

    iget v15, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v15, v15

    int-to-float v2, v15

    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v4, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    add-float/2addr v2, v15

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float v15, v3, v15

    float-to-int v11, v15

    if-gez v11, :cond_b

    const/4 v11, 0x0

    :cond_7
    :goto_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    sub-float v15, v4, v15

    float-to-int v13, v15

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v15, v2

    float-to-int v14, v15

    move v12, v13

    if-gez v13, :cond_d

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    if-lt v14, v15, :cond_d

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    cmpl-float v15, v15, v16

    if-lez v15, :cond_c

    const/4 v12, 0x0

    :cond_8
    :goto_5
    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v16

    add-int v16, v16, v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v11, v12, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0

    :cond_9
    int-to-float v4, v7

    goto/16 :goto_2

    :cond_a
    int-to-float v2, v7

    goto :goto_3

    :cond_b
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int/2addr v15, v11

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v11, v15, v16

    goto :goto_4

    :cond_c
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v16

    sub-int v12, v15, v16

    goto :goto_5

    :cond_d
    if-gez v13, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15

    sub-int v12, v14, v15

    goto :goto_5
.end method

.method private checkAllRectOutOfCanvas(Landroid/graphics/RectF;FI)Z
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPivot(I)Landroid/graphics/PointF;

    move-result-object v4

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/PointF;->y:F

    new-instance v10, Landroid/graphics/PointF;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v10, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p2

    float-to-double v8, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    new-instance v16, Landroid/graphics/PointF;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p2

    float-to-double v14, v0

    move-object/from16 v11, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v16

    new-instance v22, Landroid/graphics/PointF;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v17, p0

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual/range {v17 .. v22}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v22

    new-instance v28, Landroid/graphics/PointF;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v28

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v23, p0

    move/from16 v24, v6

    move/from16 v25, v7

    invoke-virtual/range {v23 .. v28}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    move-object/from16 v3, v28

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->findPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)[F

    move-result-object v29

    new-instance v30, Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget v5, v29, v5

    const/4 v8, 0x1

    aget v8, v29, v8

    const/4 v9, 0x2

    aget v9, v29, v9

    const/4 v11, 0x3

    aget v11, v29, v11

    move-object/from16 v0, v30

    invoke-direct {v0, v5, v8, v9, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v31, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v5, v5, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v8, v8, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v11, v11, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    move-object/from16 v0, v31

    invoke-direct {v0, v5, v8, v9, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {v30 .. v31}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private checkRestrictedRect(Landroid/graphics/RectF;FFFFI)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p6, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v2, p2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, p4

    if-gtz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, p3

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, p5

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v2, p2

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, p4

    if-lez v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, p3

    if-ltz v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, p5

    if-lez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private converToPixel(F)F
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private convertToArabicNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->arabicChars:[C

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private findPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)[F
    .locals 6

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_8

    iget v1, p1, Landroid/graphics/PointF;->x:F

    :goto_0
    iget v4, p3, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_0

    iget v1, p3, Landroid/graphics/PointF;->x:F

    :cond_0
    iget v4, p4, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_1

    iget v1, p4, Landroid/graphics/PointF;->x:F

    :cond_1
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_9

    iget v2, p1, Landroid/graphics/PointF;->x:F

    :goto_1
    iget v4, p3, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_2

    iget v2, p3, Landroid/graphics/PointF;->x:F

    :cond_2
    iget v4, p4, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_3

    iget v2, p4, Landroid/graphics/PointF;->x:F

    :cond_3
    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_a

    iget v3, p1, Landroid/graphics/PointF;->y:F

    :goto_2
    iget v4, p3, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_4

    iget v3, p3, Landroid/graphics/PointF;->y:F

    :cond_4
    iget v4, p4, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_5

    iget v3, p4, Landroid/graphics/PointF;->y:F

    :cond_5
    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_b

    iget v0, p1, Landroid/graphics/PointF;->y:F

    :goto_3
    iget v4, p3, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_6

    iget v0, p3, Landroid/graphics/PointF;->y:F

    :cond_6
    iget v4, p4, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_7

    iget v0, p4, Landroid/graphics/PointF;->y:F

    :cond_7
    const/4 v4, 0x4

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v5, 0x2

    aput v2, v4, v5

    const/4 v5, 0x3

    aput v0, v4, v5

    return-object v4

    :cond_8
    iget v1, p2, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_9
    iget v2, p2, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :cond_a
    iget v3, p2, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_b
    iget v0, p2, Landroid/graphics/PointF;->y:F

    goto :goto_3
.end method

.method private findResizeRate(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 5

    const v4, 0x38d1b717    # 1.0E-4f

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    iget v3, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/PointF;->y:F

    return-object v1
.end method

.method private getBorderRect()Landroid/graphics/RectF;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    goto :goto_0
.end method

.method private getFixedPoint(ILandroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_3
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_4
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_5
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_6
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_7
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_8
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method private getObjectDrawnRect()Landroid/graphics/RectF;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    goto :goto_0
.end method

.method private getOffsetWhenRotation(ILandroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/PointF;
    .locals 14

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getFixedPoint(ILandroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v13

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget v4, v13, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, v13, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getFixedPoint(ILandroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v12

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget v4, v12, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, v12, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v10, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iput v3, v11, Landroid/graphics/PointF;->x:F

    iget v3, v10, Landroid/graphics/PointF;->y:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iput v3, v11, Landroid/graphics/PointF;->y:F

    return-object v11
.end method

.method private getStartEndBitmapCalcPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 16

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/PointF;->x:F

    sub-float v5, v9, v10

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/PointF;->y:F

    sub-float v6, v9, v10

    const/4 v7, 0x0

    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v10, v4

    float-to-double v12, v3

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    const-wide v12, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr v10, v12

    double-to-float v2, v10

    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    const/4 v9, 0x0

    cmpg-float v9, v5, v9

    if-gez v9, :cond_1

    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_1

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_2

    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_2

    const/4 v7, 0x3

    goto :goto_0

    :cond_2
    const/4 v7, 0x4

    goto :goto_0

    :pswitch_0
    const/high16 v9, 0x42b40000    # 90.0f

    sub-float/2addr v9, v2

    const v10, 0x3c8efa35

    mul-float v8, v9, v10

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/PointF;->x:F

    float-to-double v10, v9

    move/from16 v0, p4

    float-to-double v12, v0

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/PointF;->y:F

    float-to-double v10, v9

    move/from16 v0, p4

    float-to-double v12, v0

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :pswitch_1
    const v9, 0x3c8efa35

    mul-float v8, v2, v9

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/PointF;->x:F

    float-to-double v10, v9

    move/from16 v0, p4

    float-to-double v12, v0

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/PointF;->y:F

    float-to-double v10, v9

    move/from16 v0, p4

    float-to-double v12, v0

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :pswitch_2
    const v9, 0x3c8efa35

    mul-float v8, v2, v9

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/PointF;->x:F

    float-to-double v10, v9

    move/from16 v0, p4

    float-to-double v12, v0

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/PointF;->y:F

    float-to-double v10, v9

    move/from16 v0, p4

    float-to-double v12, v0

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    :pswitch_3
    const/high16 v9, 0x42b40000    # 90.0f

    sub-float/2addr v9, v2

    const v10, 0x3c8efa35

    mul-float v8, v9, v10

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/PointF;->x:F

    float-to-double v10, v9

    move/from16 v0, p4

    float-to-double v12, v0

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/PointF;->y:F

    float-to-double v10, v9

    move/from16 v0, p4

    float-to-double v12, v0

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initialize(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 14

    const/high16 v4, -0x1000000

    const/4 v5, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v3, 0x0

    const-string v0, "SpenControlBase"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPrevHoverTouchZoneType:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocWidth:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocHeight:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$TouchManagerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$TouchManagerListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->setListener(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPrevPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOrgRotatedPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchDownPoint:Landroid/graphics/PointF;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mResourceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPanBackup:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v0, v9, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOnePT:F

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-static {v5, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    mul-float v11, v0, v13

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-static {v5, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    mul-float v10, v0, v13

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v11, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMaximumResizeRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->setMinimumResizeRect(Landroid/graphics/RectF;)V

    iget v0, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_2

    const/16 v0, 0xa0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mDensityDpi:I

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOnePT:F

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOnePT:F

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->setControlTouchManager(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;)V

    const/4 v8, 0x0

    :goto_2
    const/16 v0, 0xff

    if-ge v8, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/4 v1, 0x0

    aput v1, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x140

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mDensityDpi:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContext:Landroid/content/Context;

    const-string v1, "control_handler_rotate_icon_size"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    const-string v0, "note_handwriting_selection_rotate"

    invoke-virtual {p0, v0, v12, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeImage(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/4 v5, 0x3

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->addShadow(Landroid/graphics/drawable/Drawable;IIIIFF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointShadowBitmap:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContext:Landroid/content/Context;

    const-string v1, "control_handler_resize_icon_size"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    const-string v0, "selection_handler"

    invoke-virtual {p0, v0, v12, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeImage(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/4 v5, 0x3

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->addShadow(Landroid/graphics/drawable/Drawable;IIIIFF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    :cond_5
    int-to-float v0, v12

    div-float/2addr v0, v13

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    goto/16 :goto_0
.end method

.method private isClippedObjectMovingOutsideFrameRect(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z
    .locals 3

    const v2, 0x3951b717    # 2.0E-4f

    const v1, -0x472e48e9    # -1.0E-4f

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocWidth:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p4, Landroid/graphics/PointF;->x:F

    iget v2, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isObjectAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOutOfViewEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isOutOfViewEnabled()Z

    move-result v0

    return v0
.end method

.method private isRotatable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isRotatable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveIntoPageDoc(Landroid/graphics/RectF;)V
    .locals 21

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    const/4 v3, 0x4

    new-array v0, v3, [Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    float-to-double v8, v10

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    float-to-double v8, v10

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v19, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v10

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v19, v20

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v10

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v19, v20

    const/4 v3, 0x0

    aget-object v3, v19, v3

    iget v0, v3, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    const/4 v3, 0x0

    aget-object v3, v19, v3

    iget v0, v3, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    const/4 v3, 0x0

    aget-object v3, v19, v3

    iget v15, v3, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aget-object v3, v19, v3

    iget v0, v3, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, v19

    array-length v3, v0

    if-ge v11, v3, :cond_4

    aget-object v3, v19, v11

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v16, v3

    if-ltz v3, :cond_0

    aget-object v3, v19, v11

    iget v0, v3, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    :cond_0
    aget-object v3, v19, v11

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v15, v3

    if-gtz v3, :cond_1

    aget-object v3, v19, v11

    iget v15, v3, Landroid/graphics/PointF;->x:F

    :cond_1
    aget-object v3, v19, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v18, v3

    if-ltz v3, :cond_2

    aget-object v3, v19, v11

    iget v0, v3, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    :cond_2
    aget-object v3, v19, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v17, v3

    if-gtz v3, :cond_3

    aget-object v3, v19, v11

    iget v0, v3, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v15, v3

    if-lez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v15

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v12, v3, v4

    :cond_5
    const/4 v3, 0x0

    cmpg-float v3, v16, v3

    if-gez v3, :cond_6

    move/from16 v0, v16

    neg-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v12, v3, v4

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v17, v3

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v3, v17

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v13, v3, v4

    :cond_7
    const/4 v3, 0x0

    cmpg-float v3, v18, v3

    if-gez v3, :cond_8

    move/from16 v0, v18

    neg-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v13, v3, v4

    :cond_8
    add-float/2addr v6, v12

    add-float/2addr v7, v13

    const/4 v3, 0x0

    aget-object v3, v19, v3

    invoke-virtual {v3, v12, v13}, Landroid/graphics/PointF;->offset(FF)V

    const/4 v3, 0x3

    aget-object v3, v19, v3

    invoke-virtual {v3, v12, v13}, Landroid/graphics/PointF;->offset(FF)V

    const/4 v3, 0x4

    new-array v14, v3, [Landroid/graphics/PointF;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    const/4 v4, 0x0

    aget-object v4, v19, v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    aget-object v5, v19, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v8, v10

    float-to-double v8, v8

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v14, v20

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    const/4 v4, 0x3

    aget-object v4, v19, v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x3

    aget-object v5, v19, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v8, v10

    float-to-double v8, v8

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v14, v20

    const/4 v3, 0x0

    aget-object v3, v14, v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    aget-object v4, v14, v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x3

    aget-object v5, v14, v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x3

    aget-object v8, v14, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    return-void
.end method

.method private normalizeDegree(F)F
    .locals 4

    const/high16 v3, -0x3c4c0000    # -360.0f

    const/high16 v2, 0x43b40000    # 360.0f

    move v0, p1

    cmpl-float v1, v3, p1

    if-ltz v1, :cond_0

    add-float v0, p1, v2

    :cond_0
    cmpg-float v1, v2, p1

    if-gtz v1, :cond_1

    sub-float v0, p1, v2

    :cond_1
    cmpl-float v1, v3, v0

    if-gez v1, :cond_2

    cmpg-float v1, v2, v0

    if-gtz v1, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->normalizeDegree(F)F

    move-result v0

    :cond_3
    return v0
.end method

.method private resize(Landroid/graphics/PointF;Landroid/graphics/RectF;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isOutOfViewEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v4

    invoke-direct {p0, p2, v4, p3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->checkAllRectOutOfCanvas(Landroid/graphics/RectF;FI)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_1
    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeL2R(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeT2B(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeT2B(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v4

    if-ne v4, v7, :cond_0

    cmpl-float v4, v1, v5

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v3

    mul-float v5, v6, v1

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    iput v4, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v3

    mul-float v5, v6, v1

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    iput v4, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeR2L(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeT2B(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeL2R(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v4

    if-ne v4, v7, :cond_0

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v1

    mul-float v5, v6, v3

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    iput v4, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v1

    mul-float v5, v6, v3

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    iput v4, p2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeR2L(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v4

    if-ne v4, v7, :cond_0

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v1

    mul-float v5, v6, v3

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    iput v4, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v1

    mul-float v5, v6, v3

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    iput v4, p2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeL2R(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeB2T(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeB2T(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v4

    if-ne v4, v7, :cond_0

    cmpl-float v4, v1, v5

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v3

    mul-float v5, v6, v1

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    iput v4, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v3

    mul-float v5, v6, v1

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    iput v4, p2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeR2L(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeB2T(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private resize2Threshold(ILandroid/graphics/RectF;)Z
    .locals 21

    move-object/from16 v11, p2

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderRect()Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x38d1b717    # 1.0E-4f

    cmpg-float v18, v18, v19

    if-ltz v18, :cond_0

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x38d1b717    # 1.0E-4f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1

    :cond_0
    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->left:F

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->right:F

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->top:F

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v18

    const v19, 0x3f800347    # 1.0001f

    cmpg-float v18, v18, v19

    if-lez v18, :cond_2

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v18

    const v19, 0x3f800347    # 1.0001f

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->Increase2MinimumRect(Landroid/graphics/RectF;)V

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v18

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v19

    div-float v10, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMaximumResizeRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    move/from16 v19, v0

    mul-float v6, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMaximumResizeRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    move/from16 v19, v0

    mul-float v5, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    move/from16 v19, v0

    mul-float v8, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    move/from16 v19, v0

    mul-float v7, v18, v19

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v18, v18, v6

    if-gez v18, :cond_4

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v8

    if-lez v18, :cond_4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v7

    if-lez v18, :cond_4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v18, v18, v5

    if-gez v18, :cond_4

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0x6

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0x8

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    :cond_5
    if-nez v4, :cond_7

    :cond_6
    mul-float v18, v10, v5

    cmpl-float v18, v6, v18

    if-lez v18, :cond_d

    mul-float v16, v10, v5

    :goto_1
    cmpg-float v18, v16, v6

    if-gez v18, :cond_e

    move/from16 v6, v16

    :goto_2
    mul-float v18, v10, v7

    cmpg-float v18, v8, v18

    if-gez v18, :cond_f

    mul-float v17, v10, v7

    :goto_3
    cmpl-float v18, v17, v8

    if-lez v18, :cond_10

    move/from16 v8, v17

    :cond_7
    :goto_4
    const/4 v12, 0x1

    const/4 v3, 0x0

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v6

    if-lez v18, :cond_11

    move v15, v6

    :goto_5
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v5

    if-lez v18, :cond_12

    move v14, v5

    :goto_6
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v6

    if-gtz v18, :cond_8

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v18, v18, v8

    if-gez v18, :cond_9

    :cond_8
    packed-switch p1, :pswitch_data_0

    :goto_7
    :pswitch_0
    const/4 v3, 0x1

    :cond_9
    const/4 v12, 0x1

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v5

    if-gtz v18, :cond_a

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v18, v18, v7

    if-gez v18, :cond_b

    :cond_a
    packed-switch p1, :pswitch_data_1

    :goto_8
    :pswitch_1
    const/4 v3, 0x1

    :cond_b
    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    packed-switch p1, :pswitch_data_2

    :cond_c
    :goto_9
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v13, v11, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getOffsetWhenRotation(ILandroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/PointF;

    move-result-object v9

    iget v0, v9, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_d
    move/from16 v16, v6

    goto/16 :goto_1

    :cond_e
    div-float v5, v6, v10

    goto/16 :goto_2

    :cond_f
    move/from16 v17, v8

    goto/16 :goto_3

    :cond_10
    div-float v7, v8, v10

    goto/16 :goto_4

    :cond_11
    move v15, v8

    goto/16 :goto_5

    :cond_12
    move v14, v7

    goto/16 :goto_6

    :pswitch_3
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_13

    const/4 v12, -0x1

    :cond_13
    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    mul-float v19, v19, v15

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->left:F

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->right:F

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_14

    const/4 v12, -0x1

    :cond_14
    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    mul-float v19, v19, v15

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->right:F

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->left:F

    goto/16 :goto_7

    :pswitch_5
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_15

    const/4 v12, -0x1

    :cond_15
    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    mul-float v19, v19, v15

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->right:F

    goto/16 :goto_7

    :pswitch_6
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_16

    const/4 v12, -0x1

    :cond_16
    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    mul-float v19, v19, v14

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_8

    :pswitch_7
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_17

    const/4 v12, -0x1

    :cond_17
    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    mul-float v19, v19, v14

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->top:F

    goto/16 :goto_8

    :pswitch_8
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_18

    const/4 v12, -0x1

    :cond_18
    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    mul-float v19, v19, v14

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->top:F

    goto/16 :goto_8

    :pswitch_9
    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v15, v19

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->right:F

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    sub-float v18, v18, v15

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->left:F

    goto/16 :goto_9

    :pswitch_a
    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v14, v19

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    sub-float v18, v18, v14

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->top:F

    goto/16 :goto_9

    :pswitch_b
    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v14, v19

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    sub-float v18, v18, v14

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->top:F

    goto/16 :goto_9

    :pswitch_c
    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v15, v19

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->right:F

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    sub-float v18, v18, v15

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/RectF;->left:F

    goto/16 :goto_9

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_9
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_c
    .end packed-switch
.end method

.method private resizeB2T(Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private resizeL2R(Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method private resizeR2L(Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method private resizeT2B(Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method private setPathToNextPoint(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    const/high16 v2, 0x41700000    # 15.0f

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v1, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget v1, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-void

    :cond_0
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->y:F

    iget v2, p4, Landroid/graphics/PointF;->x:F

    iget v3, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0
.end method

.method private setSmartGuideParameter()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->setRotateAngle(F)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->setControlPivot(Landroid/graphics/PointF;)V

    return-void
.end method

.method private setSmartGuideRectList()V
    .locals 10

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    const/16 v8, 0x46

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectRectList(I)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v2, 0x1

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v3, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    iget v7, v4, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    if-ne v7, v8, :cond_0

    iget v7, v4, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    if-ne v7, v8, :cond_0

    iget v7, v4, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    if-ne v7, v8, :cond_0

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    if-ne v7, v8, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    invoke-virtual {v7, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->setRectList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v7, "SpenControlBase"

    const-string v8, "SmartGuide is not supported in Lite version"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateContextMenu()V
    .locals 9

    const-string v4, "SpenControlBase"

    const-string v5, "updateContextMenu"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mItemList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->isDirty()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    new-instance v5, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mItemList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSelectContextMenuListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    invoke-direct {v5, v6, p0, v7, v8}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;)V

    iput-object v5, v4, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getActiveTouchZoneType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBoundBox(I)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->calculateContextMenuPosition(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->setRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method protected UpdateObjectRect(Landroid/graphics/RectF;Z)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    goto :goto_0
.end method

.method protected absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v0, v1

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v0, v1

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v0, v1

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v0, v1

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method protected addShadow(Landroid/graphics/drawable/Drawable;IIIIFF)Landroid/graphics/Bitmap;
    .locals 15

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gez p5, :cond_1

    :cond_0
    const/4 v11, 0x7

    invoke-static {v11}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v11, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v2, v11, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    move/from16 v0, p5

    int-to-float v11, v0

    sget-object v12, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v11, v12}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v8}, Landroid/graphics/Paint;->reset()V

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v11, 0x33

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v11, 0x2

    new-array v7, v11, [I

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    aget v11, v7, v11

    sub-int v11, p3, v11

    move/from16 v0, p6

    float-to-int v12, v0

    add-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v7, v12

    sub-int v12, p2, v12

    move/from16 v0, p7

    float-to-int v13, v0

    add-int/2addr v12, v13

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v10, v5, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v2, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method protected adjustObjectRect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 14

    if-eqz p1, :cond_0

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v6, 0x41200000    # 10.0f

    iget v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocWidth:I

    mul-int/lit8 v12, v12, 0x2

    int-to-float v5, v12

    iget v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocHeight:I

    mul-int/lit8 v12, v12, 0x2

    int-to-float v4, v12

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getMinWidth()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getMaxWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getMinHeight()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getMaxHeight()F

    move-result v0

    const/4 v12, 0x0

    cmpg-float v12, v3, v12

    if-lez v12, :cond_0

    const/4 v12, 0x0

    cmpg-float v12, v2, v12

    if-lez v12, :cond_0

    const/4 v12, 0x0

    cmpg-float v12, v1, v12

    if-lez v12, :cond_0

    const/4 v12, 0x0

    cmpg-float v12, v0, v12

    if-lez v12, :cond_0

    sub-float v12, v7, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x38d1b717    # 1.0E-4f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    sub-float v12, v5, v1

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x38d1b717    # 1.0E-4f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    sub-float v12, v6, v2

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x38d1b717    # 1.0E-4f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    sub-float v12, v4, v0

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x38d1b717    # 1.0E-4f

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v12, v11, v3

    if-gez v12, :cond_3

    move v11, v3

    const/4 v9, 0x1

    :cond_3
    cmpg-float v12, v8, v2

    if-gez v12, :cond_4

    move v8, v2

    const/4 v9, 0x1

    :cond_4
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-lez v12, :cond_5

    cmpl-float v12, v1, v3

    if-ltz v12, :cond_5

    cmpl-float v12, v11, v1

    if-lez v12, :cond_5

    move v11, v1

    const/4 v9, 0x1

    :cond_5
    const/4 v12, 0x0

    cmpl-float v12, v0, v12

    if-lez v12, :cond_6

    cmpl-float v12, v0, v2

    if-ltz v12, :cond_6

    cmpl-float v12, v8, v0

    if-lez v12, :cond_6

    move v8, v0

    const/4 v9, 0x1

    :cond_6
    if-eqz v9, :cond_0

    iget v12, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v11

    iput v12, v10, Landroid/graphics/RectF;->right:F

    iget v12, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v8

    iput v12, v10, Landroid/graphics/RectF;->bottom:F

    const/4 v12, 0x0

    invoke-virtual {p1, v10, v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    goto/16 :goto_0
.end method

.method protected cancelTouchEvent()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setRotateAngle(F)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointShadowBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsClosed:Z

    if-nez v0, :cond_3

    const-string v0, "SpenControlBase"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getObjectList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;->onClosed(Ljava/util/ArrayList;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsClosed:Z

    :cond_3
    return-void
.end method

.method protected drawControlPoints(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Landroid/graphics/RectF;Z)V
    .locals 14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v10, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v10, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPaint()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    move-result-object v10

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v7

    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v5

    iget v11, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v6

    iget v12, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v5

    iget v13, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v6

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v5

    iget v11, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v6

    iget v12, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v5

    iget v13, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v6

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v5

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v6

    iget v12, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v5

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v6

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v5

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v6

    iget v12, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v5

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v6

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-nez p4, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    const/high16 v12, 0x40800000    # 4.0f

    mul-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_0

    sub-int v10, v1, v5

    iget v11, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v6

    add-int v12, v1, v5

    iget v13, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v6

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sub-int v10, v1, v5

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v6

    add-int v12, v1, v5

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v6

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    const/high16 v12, 0x40800000    # 4.0f

    mul-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v5

    sub-int v11, v2, v6

    iget v12, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v5

    add-int v13, v2, v6

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v5

    sub-int v11, v2, v6

    iget v12, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v5

    add-int v13, v2, v6

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointShadowBitmap:Landroid/graphics/Bitmap;

    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected drawDimmingWindow(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isDimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderAngle()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mActiveRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mActiveRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mActiveRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected drawHighlightObject(Landroid/graphics/Canvas;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectOutlineEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected drawHighlightStroke(Landroid/graphics/Canvas;Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V
    .locals 32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectOutlineEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenName()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_0

    const-string v5, "com.samsung.android.sdk.pen.pen.preload.Beautify"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getXPoints()[F

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getYPoints()[F

    move-result-object v28

    if-eqz v27, :cond_0

    if-eqz v28, :cond_0

    move-object/from16 v0, v27

    array-length v15, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    move/from16 v14, v16

    :goto_1
    new-array v0, v14, [Landroid/graphics/PointF;

    move-object/from16 v18, v0

    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v5, v0

    if-ge v13, v5, :cond_3

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    aput-object v5, v18, v13

    aget-object v5, v18, v13

    aget v6, v27, v13

    iput v6, v5, Landroid/graphics/PointF;->x:F

    aget-object v5, v18, v13

    aget v6, v28, v13

    iput v6, v5, Landroid/graphics/PointF;->y:F

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    move v14, v15

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenSize()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v6, v6, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenSize()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v6, v6, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_4

    aget-object v5, v18, v13

    aget-object v6, v18, v13

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->x:F

    aget-object v5, v18, v13

    aget-object v6, v18, v13

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->y:F

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    const/16 v5, 0x64

    if-gt v14, v5, :cond_15

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->isCurveEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v14, :cond_6

    aget-object v5, v18, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isContained(Ljava/util/ArrayList;Landroid/graphics/PointF;)Z

    move-result v5

    if-nez v5, :cond_5

    aget-object v5, v18, v13

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "com.samsung.android.sdk.pen.pen.preload.Pencil"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v13, 0x0

    :goto_5
    add-int/lit8 v5, v23, -0x1

    if-ge v13, v5, :cond_9

    new-instance v6, Landroid/graphics/PointF;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v5, v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->y:F

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    invoke-direct {v6, v7, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    :goto_6
    add-int/lit8 v5, v23, -0x2

    if-ge v13, v5, :cond_8

    new-instance v6, Landroid/graphics/PointF;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    add-int/lit8 v5, v13, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v5, v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->y:F

    add-int/lit8 v5, v13, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    invoke-direct {v6, v7, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x2

    goto :goto_6

    :cond_8
    const/4 v5, 0x1

    move/from16 v0, v23

    if-le v0, v5, :cond_9

    add-int/lit8 v5, v23, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/4 v5, 0x0

    aget-object v5, v18, v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    aget-object v6, v18, v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    new-instance v31, Landroid/graphics/PointF;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/PointF;-><init>()V

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    new-instance v21, Landroid/graphics/PointF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PointF;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    const/4 v5, 0x3

    move/from16 v0, v23

    if-lt v0, v5, :cond_13

    const-string v5, "com.samsung.android.sdk.pen.pen.preload.Marker"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "com.samsung.android.sdk.pen.pen.preload.Brush"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_a
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v11, v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getStartEndBitmapCalcPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    new-instance v29, Landroid/graphics/PointF;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/PointF;-><init>()V

    iget v6, v11, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, v29

    iput v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v11, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, v29

    iput v5, v0, Landroid/graphics/PointF;->y:F

    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v6, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v6, v11, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v6, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, v29

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v29

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-direct {v0, v4, v1, v12, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setPathToNextPoint(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/16 v30, 0x0

    const/4 v13, 0x1

    :goto_7
    add-int/lit8 v5, v23, -0x1

    if-ge v13, v5, :cond_b

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/graphics/PointF;

    new-instance v17, Landroid/graphics/PointF;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-float v5, v6

    move-object/from16 v0, v17

    iput v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/PointF;->y:F

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-float v5, v6

    move-object/from16 v0, v17

    iput v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, v30

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-direct {v0, v4, v1, v12, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setPathToNextPoint(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v30, v17

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, v30

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v5, v23, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    add-int/lit8 v5, v23, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-direct {v0, v4, v1, v12, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setPathToNextPoint(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_c
    :goto_8
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_d
    const-string v5, "com.samsung.android.sdk.pen.pen.preload.Pencil"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v13, 0x0

    :goto_9
    move/from16 v0, v20

    if-ge v13, v0, :cond_e

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-direct {v0, v4, v1, v12, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setPathToNextPoint(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v5, v23, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    add-int/lit8 v5, v23, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    :cond_f
    const-string v5, "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    rem-int/lit8 v5, v23, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    const/4 v13, 0x0

    :goto_a
    add-int/lit8 v5, v20, -0x1

    if-ge v13, v5, :cond_c

    mul-int/lit8 v5, v13, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    mul-int/lit8 v5, v13, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-direct {v0, v4, v1, v12, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setPathToNextPoint(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_10
    const/4 v13, 0x0

    :goto_b
    add-int/lit8 v5, v20, -0x2

    if-ge v13, v5, :cond_11

    mul-int/lit8 v5, v13, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    mul-int/lit8 v5, v13, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-direct {v0, v4, v1, v12, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setPathToNextPoint(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_11
    add-int/lit8 v5, v20, -0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-int/lit8 v6, v20, -0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-int/lit8 v7, v20, -0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-int/lit8 v8, v20, -0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-int/lit8 v9, v20, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-int/lit8 v10, v20, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_8

    :cond_12
    const/4 v13, 0x0

    :goto_c
    add-int/lit8 v5, v20, -0x1

    if-ge v13, v5, :cond_c

    mul-int/lit8 v5, v13, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    mul-int/lit8 v5, v13, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-direct {v0, v4, v1, v12, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setPathToNextPoint(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_13
    const/4 v5, 0x2

    move/from16 v0, v23

    if-ne v0, v5, :cond_14

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_14
    const/4 v5, 0x1

    move/from16 v0, v23

    if-ne v0, v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenSize()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v6, v6, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v5, 0x0

    aget-object v5, v18, v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    aget-object v6, v18, v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenSize()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v8, v8, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x0

    aget-object v5, v18, v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    aget-object v6, v18, v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->setLastPoint(FF)V

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v14, :cond_16

    aget-object v5, v18, v13

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v6, v18, v13

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_16
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public fit()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "SpenControlBase"

    const-string v1, "fit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SpenControlBase"

    const-string v1, "Already deleted object (getRect() is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->close()V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mResizeOption:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsRotatable:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isRotatable()Z

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->registerTouchZone()V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resetCoordinateInfo()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->fit(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectChange:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->updateTouchZoneList()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->show()V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    goto :goto_0
.end method

.method protected fit(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/RectF;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-virtual {p0, p2, v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    goto :goto_0
.end method

.method protected getBorderAngle()F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v0

    goto :goto_0
.end method

.method protected getBoundBox(I)Landroid/graphics/RectF;
    .locals 19

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPivot(I)Landroid/graphics/PointF;

    move-result-object v2

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x4

    new-array v0, v3, [Landroid/graphics/PointF;

    move-object/from16 v17, v0

    const/16 v16, 0x0

    const/16 v3, 0xe

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getObjectDrawnRect()Landroid/graphics/RectF;

    move-result-object v16

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    int-to-float v5, v5

    float-to-double v8, v10

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    int-to-float v5, v5

    float-to-double v8, v10

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v17, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    int-to-float v5, v5

    float-to-double v8, v10

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v17, v18

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    int-to-float v5, v5

    float-to-double v8, v10

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v17, v18

    const/4 v3, 0x0

    aget-object v3, v17, v3

    iget v13, v3, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aget-object v3, v17, v3

    iget v15, v3, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x0

    aget-object v3, v17, v3

    iget v12, v3, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aget-object v3, v17, v3

    iget v14, v3, Landroid/graphics/PointF;->y:F

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v11, v3, :cond_6

    aget-object v3, v17, v11

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v13, v3

    if-ltz v3, :cond_1

    aget-object v3, v17, v11

    iget v13, v3, Landroid/graphics/PointF;->x:F

    :cond_1
    aget-object v3, v17, v11

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_2

    aget-object v3, v17, v11

    iget v12, v3, Landroid/graphics/PointF;->x:F

    :cond_2
    aget-object v3, v17, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v15, v3

    if-ltz v3, :cond_3

    aget-object v3, v17, v11

    iget v15, v3, Landroid/graphics/PointF;->y:F

    :cond_3
    aget-object v3, v17, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v14, v3

    if-gtz v3, :cond_4

    aget-object v3, v17, v11

    iget v14, v3, Landroid/graphics/PointF;->y:F

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    goto/16 :goto_1

    :cond_6
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v13, v15, v12, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0
.end method

.method protected getConnectorPosition(IF)Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextMenu()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getControlPaint()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    return-object v0
.end method

.method protected getControlPivot(I)Landroid/graphics/PointF;
    .locals 5

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    :goto_0
    return-object v2

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getObjectDrawnRect()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getControlPoint(IF)Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    return-object v0
.end method

.method protected getDrawableImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 18

    if-nez p1, :cond_1

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mResourceMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v15

    const-string v2, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mResourceMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    const/4 v1, 0x0

    :try_start_1
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const-class v2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    if-eqz v14, :cond_3

    :try_start_2
    invoke-virtual {v14}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    :cond_3
    :try_start_3
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mDensityDpi:I

    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-static {v12, v5, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mResourceMap:Ljava/util/Map;

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object v8, v1

    goto/16 :goto_0

    :catch_1
    move-exception v10

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v11

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_5
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method protected getListener()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    return-object v0
.end method

.method public getMinResizeRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getObjectBase()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    return-object v0
.end method

.method public getObjectList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getPageDoc()Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    return-object v0
.end method

.method protected getPanKey(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPixel(II)I
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    if-eqz v3, :cond_0

    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getTouchManager()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getAbsoluteCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;->onRequestPixel(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getPopupMenu()Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->getPopupMenu()Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getRotateAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    return v0
.end method

.method protected getSmartGuideEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSmartGuideEnabled:Z

    return v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    return v0
.end method

.method protected getTouchManager()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    return-object v0
.end method

.method protected getTouchState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getActiveTouchZoneType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected handleHoverEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x2

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPrevHoverTouchZoneType:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v6

    if-ne v5, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsHoverCursorEnable:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x17

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getType()I

    move-result v5

    if-ne v5, v8, :cond_1

    const/16 v3, 0x26

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    int-to-float v5, v3

    invoke-static {v8, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v2, v5

    new-instance v4, Landroid/graphics/Point;

    div-int/lit8 v5, v2, 0x2

    div-int/lit8 v6, v2, 0x2

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoveringIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    sget v6, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setHoveringSpenIcon(I)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPrevHoverTouchZoneType:I

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isRotatable()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "pen_basic_ic_rotating_mtrl_00"

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v6

    invoke-virtual {p0, v5, v3, v3, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeImage(Ljava/lang/String;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setCustomHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v5

    if-eq v5, v7, :cond_2

    const-string v5, "pen_basic_ic_resizing_mtrl_03"

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v6

    invoke-virtual {p0, v5, v3, v3, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeImage(Ljava/lang/String;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setCustomHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v5

    if-eq v5, v7, :cond_2

    const-string v5, "pen_basic_ic_resizing_mtrl_02"

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v6

    invoke-virtual {p0, v5, v3, v3, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeImage(Ljava/lang/String;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setCustomHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V

    goto :goto_1

    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v5

    if-eq v5, v7, :cond_2

    const-string v5, "pen_basic_ic_resizing_mtrl_00"

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v6

    invoke-virtual {p0, v5, v3, v3, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeImage(Ljava/lang/String;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setCustomHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V

    goto :goto_1

    :pswitch_4
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v5

    if-eq v5, v7, :cond_2

    const-string v5, "pen_basic_ic_resizing_mtrl_01"

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v6

    invoke-virtual {p0, v5, v3, v3, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeImage(Ljava/lang/String;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setCustomHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isMovable()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "pen_basic_ic_moving_mtrl"

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v6

    invoke-virtual {p0, v5, v3, v3, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resizeImage(Ljava/lang/String;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setCustomHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    sget v6, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setHoveringSpenIcon(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoveringIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setCustomHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected handleMoveControl(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 15

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isMovable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v12, v1, v2

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v13, v1, v2

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsLongPress:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    goto :goto_0

    :cond_3
    new-instance v14, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-direct {v14, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v12

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v13

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v12

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v13

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSmartGuideEnabled:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPivot(I)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->setControlPivot(Landroid/graphics/PointF;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignment(Landroid/graphics/RectF;I)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isOutOfViewEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v12

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v13

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v12

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v13

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v11, p3

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isClippedObject(Landroid/graphics/RectF;ZZZFFFZFI)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_6
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSizeChanged:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSizeChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->show()V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->reset()V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onRectChanged(Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPrevPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPrevPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v11, p3

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isClippedObject(Landroid/graphics/RectF;ZZZFFFZFI)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v2

    move/from16 v0, p3

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->checkAllRectOutOfCanvas(Landroid/graphics/RectF;FI)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    iget v4, v14, Landroid/graphics/RectF;->right:F

    iget v5, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1
.end method

.method protected handleResizeControl(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z
    .locals 31

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v3

    const/4 v9, 0x2

    if-eq v3, v9, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    new-instance v23, Landroid/graphics/PointF;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOrgRotatedPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v9

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOrgRotatedPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v9

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/PointF;->y:F

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderRect()Landroid/graphics/RectF;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->findResizeRate(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v9, 0x3f800347    # 1.0001f

    cmpl-float v3, v3, v9

    if-lez v3, :cond_4

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v9, 0x3f800347    # 1.0001f

    cmpl-float v3, v3, v9

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v3

    const/4 v9, 0x2

    if-eq v3, v9, :cond_4

    :cond_3
    packed-switch p3, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getMinWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getMinHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getMaxWidth()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getMaxHeight()F

    move-result v8

    const/16 v22, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v5, v3

    if-lez v3, :cond_5

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v6, v3

    if-gtz v3, :cond_6

    :cond_5
    cmpl-float v3, v7, v5

    if-lez v3, :cond_7

    cmpl-float v3, v8, v6

    if-lez v3, :cond_7

    :cond_6
    const/16 v22, 0x1

    :cond_7
    new-instance v28, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderRect()Landroid/graphics/RectF;

    move-result-object v29

    new-instance v24, Landroid/graphics/PointF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object/from16 v0, v30

    iget v9, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v9

    move-object/from16 v0, v24

    iput v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v3

    move-object/from16 v0, v30

    iget v9, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v9

    move-object/from16 v0, v24

    iput v3, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resize(Landroid/graphics/PointF;Landroid/graphics/RectF;I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resize(Landroid/graphics/PointF;Landroid/graphics/RectF;I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSmartGuideEnabled:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPivot(I)Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->setControlPivot(Landroid/graphics/PointF;)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_9

    const/16 v25, 0x1

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_a

    const/16 v26, 0x1

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move/from16 v0, p3

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v3, v9, v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignmentWithFlip(Landroid/graphics/RectF;IZZ)V

    :cond_b
    if-eqz v22, :cond_17

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    invoke-virtual {v4}, Landroid/graphics/RectF;->sort()V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3, v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    invoke-virtual {v10}, Landroid/graphics/RectF;->sort()V

    move-object/from16 v3, p0

    move/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->checkRestrictedRect(Landroid/graphics/RectF;FFFFI)Z

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    move-object/from16 v9, p0

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    move/from16 v15, p3

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->checkRestrictedRect(Landroid/graphics/RectF;FFFFI)Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isOutOfViewEnabled()Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, p0

    move/from16 v21, p3

    invoke-virtual/range {v11 .. v21}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isClippedObject(Landroid/graphics/RectF;ZZZFFFZFI)Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSizeChanged:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSizeChanged:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v9, 0x3

    if-eq v3, v9, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->show()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->reset()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onRectChanged(Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v3

    if-nez v3, :cond_19

    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v30

    iget v9, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_f

    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/PointF;->x:F

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    move-object/from16 v0, v30

    iget v9, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_10

    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/PointF;->x:F

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    move-object/from16 v0, v30

    iget v9, v0, Landroid/graphics/PointF;->y:F

    neg-float v9, v9

    cmpl-float v3, v3, v9

    if-lez v3, :cond_11

    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/PointF;->x:F

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v30

    iget v9, v0, Landroid/graphics/PointF;->y:F

    neg-float v9, v9

    cmpl-float v3, v3, v9

    if-lez v3, :cond_12

    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/PointF;->x:F

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isOutOfViewEnabled()Z

    move-result v3

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    if-eqz v3, :cond_15

    move-object/from16 v9, p0

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    move/from16 v15, p3

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->checkRestrictedRect(Landroid/graphics/RectF;FFFFI)Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, p0

    move/from16 v21, p3

    invoke-virtual/range {v11 .. v21}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isClippedObject(Landroid/graphics/RectF;ZZZFFFZFI)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v18

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float v20, v3, v9

    move-object/from16 v11, p0

    move/from16 v21, p3

    invoke-virtual/range {v11 .. v21}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isClippedObject(Landroid/graphics/RectF;ZZZFFFZFI)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    if-eqz v3, :cond_c

    move-object/from16 v9, p0

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    move/from16 v15, p3

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->checkRestrictedRect(Landroid/graphics/RectF;FFFFI)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isOutOfViewEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, p0

    move/from16 v21, p3

    invoke-virtual/range {v11 .. v21}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isClippedObject(Landroid/graphics/RectF;ZZZFFFZFI)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v18

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float v20, v3, v9

    move-object/from16 v11, p0

    move/from16 v21, p3

    invoke-virtual/range {v11 .. v21}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isClippedObject(Landroid/graphics/RectF;ZZZFFFZFI)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v28

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    cmpl-float v3, v3, v9

    if-eqz v3, :cond_1a

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onFlip(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_1a
    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v28

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    cmpl-float v3, v3, v9

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onFlip(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    const/4 v3, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleRotationControl(Landroid/graphics/PointF;I)V
    .locals 29

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPivot(I)Landroid/graphics/PointF;

    move-result-object v13

    iget v2, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float v16, v2, v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v13, Landroid/graphics/PointF;->x:F

    sub-float v17, v2, v3

    move/from16 v0, v17

    float-to-double v2, v0

    move/from16 v0, v16

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v22

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v2, v2, v22

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-float v9, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->normalizeDegree(F)F

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSizeChanged:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSizeChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateTempAngle:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->show()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->reset()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isOutOfViewEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move/from16 v12, p2

    invoke-virtual/range {v2 .. v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isClippedObject(Landroid/graphics/RectF;ZZZFFFZFI)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateTempAngle:F

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getTouchZoneRect(I)Landroid/graphics/RectF;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v28, 0x0

    if-eqz v24, :cond_6

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->centerX()F

    move-result v25

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->centerY()F

    move-result v28

    :cond_6
    iget v14, v13, Landroid/graphics/PointF;->x:F

    iget v15, v13, Landroid/graphics/PointF;->y:F

    sub-float v2, v14, v25

    sub-float v3, v14, v25

    mul-float/2addr v2, v3

    sub-float v3, v15, v28

    sub-float v4, v15, v28

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float v2, v14, v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float v3, v14, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float v3, v15, v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float v4, v15, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v9

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    const-wide v2, 0x4051800000000000L    # 70.0

    add-double v2, v2, v26

    cmpg-double v2, v20, v2

    if-gez v2, :cond_9

    const/high16 v2, 0x43320000    # 178.0f

    cmpl-float v2, v9, v2

    if-lez v2, :cond_7

    const/high16 v2, 0x43380000    # 184.0f

    cmpg-float v2, v9, v2

    if-gez v2, :cond_7

    const/high16 v9, 0x43340000    # 180.0f

    :cond_7
    const/high16 v2, -0x3cc80000    # -184.0f

    cmpl-float v2, v9, v2

    if-lez v2, :cond_8

    const/high16 v2, -0x3cce0000    # -178.0f

    cmpg-float v2, v9, v2

    if-gez v2, :cond_8

    const/high16 v9, -0x3ccc0000    # -180.0f

    :cond_8
    float-to-int v2, v9

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isRotatable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderAngle()F

    move-result v3

    sub-float v19, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderAngle()F

    move-result v2

    add-float v2, v2, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->normalizeDegree(F)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onRotationChanged(FLcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto/16 :goto_0
.end method

.method protected handleTouchDownEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;Z)V
    .locals 12

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "SpenControlBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touchDown handleTouchDownEvent touch zone type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateTempAngle:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    const/4 v10, 0x0

    const/4 v0, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsFlipDirectionHorizontal:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsFlipDirectionVertical:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPivot(I)Landroid/graphics/PointF;

    move-result-object v8

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/PointF;->x:F

    iget v5, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderAngle()F

    move-result v6

    neg-float v6, v6

    float-to-double v6, v6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v11

    new-instance v10, Landroid/graphics/Point;

    iget v1, v11, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, v11, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-direct {v10, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->Increase2MinimumRect(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOrgRotatedPoint:Landroid/graphics/PointF;

    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOrgRotatedPoint:Landroid/graphics/PointF;

    iget v2, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resize2Threshold(ILandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    :cond_4
    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOriginalObjectRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected handleTouchMoveEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPivot(I)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderAngle()F

    move-result v6

    neg-float v6, v6

    float-to-double v6, v6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->handleRotationControl(Landroid/graphics/PointF;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v1

    invoke-virtual {p0, p2, v8, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->handleResizeControl(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v1

    invoke-virtual {p0, p2, v8, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->handleMoveControl(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected handleTouchUpEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "SpenControlBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTouchUpEvent touch zone type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->show()V

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isOutOfViewEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getActiveTouchZoneType()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->isMoveZone(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->moveIntoPageDoc(Landroid/graphics/RectF;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    :cond_3
    iput-boolean v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBoundBox(I)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v2, v4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onObjectChanged()V

    goto/16 :goto_0

    :pswitch_0
    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsFlipDirectionHorizontal:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iput v3, v4, Landroid/graphics/RectF;->left:F

    :cond_6
    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsFlipDirectionVertical:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected hideControlContextMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->hide()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->setDirty()V

    :cond_0
    return-void
.end method

.method protected isClippedObject(Landroid/graphics/RectF;ZZZFFFZFI)Z
    .locals 40

    const/16 v34, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resetCoordinateInfo()V

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    new-instance v34, Landroid/graphics/RectF;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    :cond_1
    :goto_0
    if-nez v34, :cond_3

    const/4 v5, 0x0

    :goto_1
    return v5

    :cond_2
    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v34

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_9

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    :goto_2
    if-eqz p3, :cond_c

    const/16 v31, 0x0

    const/16 v30, 0x0

    new-instance v10, Landroid/graphics/PointF;

    move-object/from16 v0, v34

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v34

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v10, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v8, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    new-instance v16, Landroid/graphics/PointF;

    move-object/from16 v0, v34

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v34

    iget v8, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v14, v0

    move-object/from16 v11, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v16

    new-instance v22, Landroid/graphics/PointF;

    move-object/from16 v0, v34

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v34

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v17, p0

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual/range {v17 .. v22}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v22

    new-instance v28, Landroid/graphics/PointF;

    move-object/from16 v0, v34

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v34

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v28

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v23, p0

    move/from16 v24, v6

    move/from16 v25, v7

    invoke-virtual/range {v23 .. v28}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    move-object/from16 v3, v28

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->findPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)[F

    move-result-object v33

    const/4 v5, 0x0

    aget v32, v33, v5

    const/4 v5, 0x1

    aget v39, v33, v5

    const/4 v5, 0x2

    aget v35, v33, v5

    const/4 v5, 0x3

    aget v4, v33, v5

    const/4 v5, 0x0

    cmpg-float v5, v32, v5

    if-gez v5, :cond_4

    const/4 v5, 0x0

    sub-float v30, v5, v32

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocWidth:I

    int-to-float v5, v5

    cmpl-float v5, v35, v5

    if-lez v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocWidth:I

    int-to-float v5, v5

    sub-float v30, v5, v35

    :cond_5
    const/4 v5, 0x0

    cmpg-float v5, v39, v5

    if-gez v5, :cond_6

    const/4 v5, 0x0

    sub-float v31, v5, v39

    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocHeight:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocHeight:I

    int-to-float v5, v5

    sub-float v31, v5, v4

    :cond_7
    const/4 v5, 0x0

    cmpl-float v5, v30, v5

    if-nez v5, :cond_8

    const/4 v5, 0x0

    cmpl-float v5, v31, v5

    if-eqz v5, :cond_b

    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPivot(I)Landroid/graphics/PointF;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->AbsoluteCoordinate(Landroid/graphics/PointF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)Landroid/graphics/PointF;

    move-result-object v37

    if-eqz v37, :cond_a

    move-object/from16 v29, v37

    :cond_a
    move-object/from16 v0, v29

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_2

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_c
    if-eqz p4, :cond_f

    new-instance v38, Landroid/graphics/RectF;

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v38

    iget v8, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_d

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v36, v0

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v38

    iput v5, v0, Landroid/graphics/RectF;->left:F

    move/from16 v0, v36

    move-object/from16 v1, v38

    iput v0, v1, Landroid/graphics/RectF;->right:F

    :cond_d
    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v38

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_e

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v38

    iput v5, v0, Landroid/graphics/RectF;->top:F

    move/from16 v0, v36

    move-object/from16 v1, v38

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    :cond_e
    new-instance v10, Landroid/graphics/PointF;

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v38

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v10, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v8, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    new-instance v16, Landroid/graphics/PointF;

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v38

    iget v8, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v14, v0

    move-object/from16 v11, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v16

    new-instance v22, Landroid/graphics/PointF;

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v38

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v17, p0

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual/range {v17 .. v22}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v22

    new-instance v28, Landroid/graphics/PointF;

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v38

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v28

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v23, p0

    move/from16 v24, v6

    move/from16 v25, v7

    invoke-virtual/range {v23 .. v28}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v28

    move-object/from16 v9, p0

    move-object/from16 v11, v16

    move-object/from16 v12, v22

    move-object/from16 v13, v28

    move/from16 v14, p10

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isClippedObjectMovingOutsideFrameRect(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_f
    if-eqz p2, :cond_11

    new-instance v10, Landroid/graphics/PointF;

    move-object/from16 v0, v34

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v34

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v10, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v8, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    new-instance v16, Landroid/graphics/PointF;

    move-object/from16 v0, v34

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v34

    iget v8, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v14, v0

    move-object/from16 v11, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v16

    new-instance v22, Landroid/graphics/PointF;

    move-object/from16 v0, v34

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v34

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v17, p0

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual/range {v17 .. v22}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v22

    new-instance v28, Landroid/graphics/PointF;

    move-object/from16 v0, v34

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v34

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v28

    invoke-direct {v0, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v23, p0

    move/from16 v24, v6

    move/from16 v25, v7

    invoke-virtual/range {v23 .. v28}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    move-object/from16 v3, v28

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->findPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)[F

    move-result-object v33

    const/4 v5, 0x0

    aget v32, v33, v5

    const/4 v5, 0x1

    aget v39, v33, v5

    const/4 v5, 0x2

    aget v35, v33, v5

    const/4 v5, 0x3

    aget v4, v33, v5

    const/4 v5, 0x0

    cmpg-float v5, v32, v5

    if-ltz v5, :cond_10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocWidth:I

    int-to-float v5, v5

    cmpl-float v5, v35, v5

    if-gtz v5, :cond_10

    const/4 v5, 0x0

    cmpg-float v5, v39, v5

    if-ltz v5, :cond_10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPageDocHeight:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_11

    :cond_10
    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsClosed:Z

    return v0
.end method

.method protected isContained(Ljava/util/ArrayList;Landroid/graphics/PointF;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/PointF;",
            ")Z"
        }
    .end annotation

    const v4, 0x38d1b717    # 1.0E-4f

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isContextMenuItemEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getItemEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isContextMenuVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->isVisible()Z

    move-result v0

    return v0
.end method

.method protected isControlContextMenuShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDimEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsDimmed:Z

    return v0
.end method

.method protected isHoverEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsHoverCursorEnable:Z

    return v0
.end method

.method protected isLongPressStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsLongPress:Z

    return v0
.end method

.method protected isObjectChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isObjectOutlineEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectOutlineEnable:Z

    return v0
.end method

.method public isTouchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchEnable:Z

    return v0
.end method

.method protected onCanvasHoverEnter()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getActiveTouchZoneType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onObjectChanged()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSmartGuideEnabled:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->drawSmartGuide(Landroid/graphics/Canvas;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-boolean v13, v13, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mFirstDraw:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mFirstDraw:Z

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onPrepareDraw(Landroid/graphics/Canvas;)V

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->normalizeDegree(F)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderRect()Landroid/graphics/RectF;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mActiveRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mActiveRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->Increase2MinimumRect(Landroid/graphics/RectF;)V

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->drawDimmingWindow(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderAngle()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mActiveRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mActiveRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mActiveRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onDrawBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getActiveTouchZoneType()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPivot(I)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    float-to-int v5, v7

    if-gez v5, :cond_4

    add-int/lit16 v5, v5, 0x168

    :cond_4
    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSizeChanged:Z

    if-nez v13, :cond_6

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOnePT:F

    const/high16 v14, 0x42900000    # 72.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float v13, v3, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOnePT:F

    const/high16 v15, 0x42200000    # 40.0f

    mul-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v14, v4, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOnePT:F

    const/high16 v16, 0x42900000    # 72.0f

    mul-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v15, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mOnePT:F

    move/from16 v16, v0

    const/high16 v17, 0x42200000    # 40.0f

    mul-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v16, v16, v4

    move/from16 v0, v16

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v13, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->converToPixel(F)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v9, v9, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->convertToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\u00b0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v15

    add-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v14, v4, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v3, v14, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getActiveTouchZoneType()I

    move-result v13

    if-ltz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getActiveTouchZoneType()I

    move-result v13

    const/16 v14, 0xa

    if-gt v13, v14, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    if-eqz v13, :cond_b

    const/16 v13, 0xa

    if-eq v12, v13, :cond_7

    const/16 v13, 0x9

    if-eq v12, v13, :cond_7

    if-nez v12, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateTempAngle:F

    float-to-int v13, v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    invoke-virtual {v13, v6}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onDrawMinMaxRestrictedObject(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectChange:Z

    if-eqz v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectChanged()Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getObjectList()Ljava/util/ArrayList;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;->onObjectChanged(Ljava/util/ArrayList;)V

    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectChange:Z

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSizeChanged:Z

    if-nez v13, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v13, v6}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v13}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onDrawObject(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2
.end method

.method protected onDrawBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isRotatable()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    move-object/from16 v0, p2

    invoke-static {v5, v0, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRect(ILandroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v20

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v12, v5, v6

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    move/from16 v16, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    float-to-double v8, v5

    new-instance v10, Landroid/graphics/PointF;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerY()F

    move-result v22

    move/from16 v0, v22

    invoke-direct {v10, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getTemplateProperty()Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    iget v5, v13, Landroid/graphics/PointF;->x:F

    add-float v5, v5, v16

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iget v5, v13, Landroid/graphics/PointF;->x:F

    sub-float v5, v5, v16

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iget v5, v13, Landroid/graphics/PointF;->y:F

    add-float v5, v5, v16

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iget v5, v13, Landroid/graphics/PointF;->y:F

    sub-float v5, v5, v16

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointDrawable:Landroid/graphics/drawable/Drawable;

    sub-float v6, v4, v16

    float-to-int v6, v6

    sub-float v7, v11, v16

    float-to-int v7, v7

    add-float v8, v4, v16

    float-to-int v8, v8

    add-float v9, v11, v16

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPaint()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotatePointShadowBitmap:Landroid/graphics/Bitmap;

    float-to-int v6, v4

    int-to-float v6, v6

    sub-float v6, v6, v16

    float-to-int v7, v11

    int-to-float v7, v7

    sub-float v7, v7, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v14

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->left:F

    const/high16 v6, 0x40800000    # 4.0f

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x40800000    # 4.0f

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v9, 0x40800000    # 4.0f

    add-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderPointDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v6, v1, v2, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->drawControlPoints(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Landroid/graphics/RectF;Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onDrawMinMaxRestrictedObject(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    const/high16 v5, 0x40400000    # 3.0f

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v5

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onDrawObject(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 6

    const/high16 v5, 0x40400000    # 3.0f

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getActiveTouchZoneType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->isMoveZone(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->Increase2MinimumRect(Landroid/graphics/RectF;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v5

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPaint:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onFlip(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 0

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTrivialMovingEn:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchEnable:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isClosed()Z

    move-result v3

    if-ne v3, v1, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    if-nez v3, :cond_4

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsHoverCursorEnable:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    const/4 v2, -0x2

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPrevHoverTouchZoneType:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    sget v3, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setHoveringSpenIcon(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resetCurrentHoveringIcon()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    sget v3, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->setHoveringSpenIcon(I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->onHoverEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method protected onMenuSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getObjectList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;->onMenuSelected(Ljava/util/ArrayList;I)V

    :cond_0
    return-void
.end method

.method protected onObjectChanged()V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-boolean v7, v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mFirstDraw:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getActiveTouchZoneType()I

    move-result v6

    const/4 v0, 0x0

    invoke-static {v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->isResizeZone(I)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resize2Threshold(ILandroid/graphics/RectF;)Z

    move-result v0

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isOutOfViewEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-direct {p0, v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->moveIntoPageDoc(Landroid/graphics/RectF;)V

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-virtual {p0, v3, v7, v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isFlipEnabled()Z

    move-result v7

    if-nez v7, :cond_6

    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v8, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    iget v5, v3, Landroid/graphics/RectF;->right:F

    iget v7, v3, Landroid/graphics/RectF;->left:F

    iput v7, v3, Landroid/graphics/RectF;->right:F

    iput v5, v3, Landroid/graphics/RectF;->left:F

    :cond_5
    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    iput v7, v3, Landroid/graphics/RectF;->top:F

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    :cond_6
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->UpdateObjectRect(Landroid/graphics/RectF;Z)V

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderAngle()F

    move-result v8

    sub-float v4, v7, v8

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderAngle()F

    move-result v8

    sub-float v4, v7, v8

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v7

    add-float/2addr v7, v4

    invoke-direct {p0, v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->normalizeDegree(F)F

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isRotatable()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRotation(F)V

    :cond_7
    iget-boolean v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSmartGuideEnabled:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->reset()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setSmartGuideParameter()V

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->fit()V

    goto/16 :goto_0
.end method

.method protected onObjectChanged(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getObjectList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;->onObjectChanged(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->show()V

    return-void
.end method

.method protected onRectChanged(Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;->onRectChanged(Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_0
    return-void
.end method

.method protected onRequestScroll(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;->onRequestScroll(FF)V

    :cond_0
    return-void
.end method

.method protected onRotationChanged(FLcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;->onRotationChanged(FLcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 19

    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const-string v14, "SpenControlBase"

    const-string v15, "onSizeChanged"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isObjectAvailable()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSizeChanged:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsObjectRestrictedMoving:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjRestrictedMovingRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v14, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->setDirty()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resetCoordinateInfo()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v14, v14, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v6, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v14, v14, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v7, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p0 .. p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getPanKey(II)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPanBackup:Ljava/util/HashMap;

    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Point;

    if-eqz v11, :cond_3

    iget v14, v11, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float/2addr v14, v6

    iget v15, v11, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    sub-float/2addr v15, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onRequestScroll(FF)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPanBackup:Ljava/util/HashMap;

    invoke-virtual {v14, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v14, v14, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v15}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getActiveTouchZoneType()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBoundBox(I)Landroid/graphics/RectF;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mPanBackup:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getPanKey(II)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v5

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isOutOfViewEnabled()Z

    move-result v14

    if-nez v14, :cond_7

    if-nez v5, :cond_7

    :cond_4
    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v10, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    iget v14, v10, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float v13, v14, v15

    :cond_5
    :goto_1
    iget v14, v10, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_a

    iget v14, v10, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float v12, v14, v15

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onRequestScroll(FF)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSmartGuideEnabled:Z

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSmartGuide:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->reset()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setSmartGuideParameter()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->fit()V

    goto/16 :goto_0

    :cond_9
    iget v14, v10, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_5

    iget v14, v10, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float v13, v14, v15

    goto :goto_1

    :cond_a
    iget v14, v10, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_6

    iget v14, v10, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v15, v15, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float v12, v14, v15

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchEnable:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->isClosed()Z

    move-result v4

    if-ne v4, v2, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->close()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    if-nez v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->close()V

    goto :goto_0

    :cond_6
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsTouchDownEventHistory:Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :pswitch_1
    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsTouchDownEventHistory:Z

    if-nez v4, :cond_7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsTouchDownEventHistory:Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsTouchDownEventHistory:Z

    if-eqz v3, :cond_4

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    const/16 v3, 0x46

    if-le v0, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->hide()V

    goto/16 :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    if-nez v4, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->close()V

    goto/16 :goto_0

    :cond_9
    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsTouchDownEventHistory:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->hide()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->setDirty()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->show()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    const-string v0, "SpenControlBase"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getBorderAngle()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->fit()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected onZoom()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->fit()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    return-void
.end method

.method protected registerTouchZone()V
    .locals 14

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v10

    iput v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mResizeOption:I

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isRotatable()Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsRotatable:Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->resetCoordinateInfo()V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->setObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v10

    iput v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v11, v11, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v12, v12, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    iget-object v13, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v13, v13, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->setCoordinateInfo(Landroid/graphics/PointF;FLandroid/graphics/RectF;)V

    new-instance v3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/16 v10, 0xa

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    invoke-direct {v3, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/16 v11, 0xa

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v12, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->add(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v12

    aput v12, v10, v11

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    new-instance v8, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/4 v10, 0x1

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    invoke-direct {v8, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v12, v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->add(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v12

    aput v12, v10, v11

    new-instance v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/4 v10, 0x3

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v12, v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->add(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v12

    aput v12, v10, v11

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/4 v10, 0x6

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    invoke-direct {v1, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/4 v11, 0x6

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v12, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->add(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v12

    aput v12, v10, v11

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/16 v10, 0x8

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    invoke-direct {v2, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/16 v11, 0x8

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v12, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->add(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v12

    aput v12, v10, v11

    :cond_0
    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    new-instance v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/4 v10, 0x2

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    invoke-direct {v7, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v12, v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->add(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v12

    aput v12, v10, v11

    new-instance v4, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/4 v10, 0x4

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    invoke-direct {v4, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v12, v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->add(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v12

    aput v12, v10, v11

    new-instance v5, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/4 v10, 0x5

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    invoke-direct {v5, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/4 v11, 0x5

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v12, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->add(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v12

    aput v12, v10, v11

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/4 v10, 0x7

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/4 v11, 0x7

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->add(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v12

    aput v12, v10, v11

    :cond_1
    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isRotatable()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    new-instance v6, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/4 v10, 0x0

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mControlPointRadius:F

    invoke-direct {v6, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchZoneIdList:[I

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v12, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->add(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v12

    aput v12, v10, v11

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->updateTouchZoneList()V

    return-void
.end method

.method protected relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v0, v1

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v0, v1

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v0, v1

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v0, v1

    iget-object v1, p3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method protected resetCoordinateInfo()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->reset()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;->onRequestCoordinateInfo(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget v2, v2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mCoordinateInfo:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->setCoordinateInfo(Landroid/graphics/PointF;FLandroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method protected resetCurrentHoveringIcon()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;->onRequestHoveringImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mHoveringIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method protected resizeImage(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 16

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    const-string v2, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v1, 0x0

    if-eqz v10, :cond_4

    invoke-static {v9, v10}, Lcom/samsung/android/spr/drawable/Spr;->isSpr(Landroid/content/res/Resources;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v9, v10}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromResourceStream(Landroid/content/res/Resources;I)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/spr/drawable/SprDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, p2

    int-to-float v2, v0

    int-to-float v3, v4

    div-float v14, v2, v3

    move/from16 v0, p3

    int-to-float v2, v0

    int-to-float v3, v5

    div-float v13, v2, v3

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, v14, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v9, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected resizeImage(Ljava/lang/String;IIF)Landroid/graphics/drawable/Drawable;
    .locals 20

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    const/16 v16, 0x7

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    const/16 v16, 0x0

    :goto_0
    return-object v16

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    const-string v16, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/16 v16, 0x1

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v16

    move/from16 v0, v16

    float-to-int v12, v0

    const/16 v16, 0x1

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v16

    move/from16 v0, v16

    float-to-int v11, v0

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    invoke-static {v12, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v16, v12, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-int/lit8 v17, v11, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, p4

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v3, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 21

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v16, v16, p1

    move/from16 v0, v16

    float-to-double v12, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v16, v16, p2

    move/from16 v0, v16

    float-to-double v14, v0

    mul-double v16, v12, v2

    mul-double v18, v14, v10

    sub-double v16, v16, v18

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v6, v16, v18

    mul-double v16, v12, v10

    mul-double v18, v14, v2

    add-double v16, v16, v18

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v8, v16, v18

    new-instance v16, Landroid/graphics/PointF;

    double-to-float v0, v6

    move/from16 v17, v0

    double-to-float v0, v8

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v16
.end method

.method public setContextMenu(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iput-object p1, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getListener()Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mSelectContextMenuListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->setListener(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->setDirty()V

    return-void
.end method

.method public setContextMenu(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iput-object p1, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mItemList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->setDirty()V

    return-void
.end method

.method public setContextMenuItemEnabled(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->setItemEnabled(IZ)V

    goto :goto_0
.end method

.method public setContextMenuVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->setVisible(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->hide()V

    goto :goto_0
.end method

.method public setDimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsDimmed:Z

    return-void
.end method

.method protected setHoverEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsHoverCursorEnable:Z

    return-void
.end method

.method protected setListener(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    return-void
.end method

.method protected setLongPressStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsLongPress:Z

    return-void
.end method

.method public setMinResizeRect(Landroid/graphics/RectF;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x7

    const-string v1, " rect must be not null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->setMinimumResizeRect(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method protected setObjectBase(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "SpenControlBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setObjectBase type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->registerTouchZone()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setSmartGuideRectList()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setSmartGuideParameter()V

    goto :goto_0
.end method

.method public setObjectOutlineEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mObjectOutlineEnable:Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->invalidate()V

    return-void
.end method

.method protected setRotateAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mRotateAngle:F

    return-void
.end method

.method protected setSmartGuideEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mIsSmartGuideEnabled:Z

    return-void
.end method

.method public setStyle(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const-string v0, "SpenControlBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStyle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mBorderStyle:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mTouchEnable:Z

    return-void
.end method

.method protected showControlContextMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->mContextMenuMgr:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->show()V

    :cond_0
    return-void
.end method
