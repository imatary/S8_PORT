.class public Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;
.super Ljava/lang/Object;
.source "SpenControlBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ControlSmartGuide"
.end annotation


# static fields
.field private static final SMART_GUIDE_EXTEND_LINE:F = 10.0f

.field private static final SMART_GUIDE_PAINT_COLOR:I = -0x434344

.field private static final SMART_GUIDE_PAINT_WIDTH:I = 0x1

.field private static final SMART_GUIDE_THRESHOLD:F = 3.5f


# instance fields
.field private mAlignBottomEnd:Landroid/graphics/PointF;

.field private mAlignBottomStart:Landroid/graphics/PointF;

.field private mAlignCenterXEnd:Landroid/graphics/PointF;

.field private mAlignCenterXStart:Landroid/graphics/PointF;

.field private mAlignCenterYEnd:Landroid/graphics/PointF;

.field private mAlignCenterYStart:Landroid/graphics/PointF;

.field private mAlignLeftEnd:Landroid/graphics/PointF;

.field private mAlignLeftStart:Landroid/graphics/PointF;

.field private mAlignRightEnd:Landroid/graphics/PointF;

.field private mAlignRightStart:Landroid/graphics/PointF;

.field private mAlignTopEnd:Landroid/graphics/PointF;

.field private mAlignTopStart:Landroid/graphics/PointF;

.field private mControlPivot:Landroid/graphics/PointF;

.field private final mExtendLine:F

.field private mIsAlignBottom:Z

.field private mIsAlignCenterX:Z

.field private mIsAlignCenterY:Z

.field private mIsAlignLeft:Z

.field private mIsAlignRight:Z

.field private mIsAlignTop:Z

.field private mIsMove:Z

.field private mObjectRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mRotateAngle:F

.field private final mThreshold:F

.field private mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

.field private mTouchZoneType:I


# direct methods
.method public constructor <init>(F)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignCenterX:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignCenterY:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignLeft:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignRight:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignTop:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignBottom:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXStart:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXEnd:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYStart:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYEnd:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mControlPivot:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    const/high16 v0, 0x40600000    # 3.5f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mThreshold:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXStart:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXEnd:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYStart:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYEnd:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    mul-float v1, v3, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    const v1, -0x434344

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private checkAlignByBottom(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignBottom:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    if-eqz v4, :cond_1

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    iput v6, v5, Landroid/graphics/PointF;->y:F

    iput v6, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    :goto_1
    return v3

    :cond_1
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v8, :cond_2

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v7, :cond_3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iput v4, v1, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v9, :cond_0

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iput v4, v1, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_4
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignBottom:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    if-eqz v4, :cond_6

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    iget v6, p2, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/PointF;->y:F

    iput v6, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    goto/16 :goto_1

    :cond_6
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v8, :cond_7

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_7
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v7, :cond_8

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iput v4, v1, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_8
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v9, :cond_5

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iput v4, v1, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private checkAlignByCenterX(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mThreshold:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignCenterX:Z

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXStart:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXEnd:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXStart:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXEnd:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXEnd:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkAlignByCenterY(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mThreshold:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignCenterY:Z

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYStart:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYEnd:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYStart:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYEnd:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYEnd:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkAlignByLeft(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignLeft:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    if-eqz v4, :cond_1

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    iget v6, p2, Landroid/graphics/RectF;->left:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    iput v6, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    :goto_1
    return v3

    :cond_1
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v7, :cond_2

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iput v4, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v3, :cond_3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v8, :cond_0

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_4
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignLeft:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    if-eqz v4, :cond_6

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    iget v6, p2, Landroid/graphics/RectF;->right:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    iput v6, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    :cond_6
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v7, :cond_7

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iput v4, p1, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_7
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v3, :cond_8

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_8
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v8, :cond_5

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private checkAlignByRight(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignRight:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    if-eqz v4, :cond_1

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    iget v6, p2, Landroid/graphics/RectF;->right:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    iput v6, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    :goto_1
    return v3

    :cond_1
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v8, :cond_2

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v7, :cond_3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v9, :cond_0

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_4
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignRight:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    if-eqz v4, :cond_6

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    iget v6, p2, Landroid/graphics/RectF;->left:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    iput v6, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    :cond_6
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v8, :cond_7

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_7
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v7, :cond_8

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_8
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v9, :cond_5

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private checkAlignByTop(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignTop:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    if-eqz v4, :cond_1

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    iget v6, p2, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/PointF;->y:F

    iput v6, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    :goto_1
    return v3

    :cond_1
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v7, :cond_2

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v3, :cond_3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iput v4, v1, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v8, :cond_0

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iput v4, v1, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_4
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignTop:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    if-eqz v4, :cond_6

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    iput v6, v5, Landroid/graphics/PointF;->y:F

    iput v6, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    goto/16 :goto_1

    :cond_6
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v7, :cond_7

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_7
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v3, :cond_8

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iput v4, v1, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_8
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    if-ne v4, v8, :cond_5

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v1

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iput v4, v1, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    neg-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private getRotatedPoint(FFF)Landroid/graphics/PointF;
    .locals 20

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mControlPivot:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v16, p1, v16

    move/from16 v0, v16

    float-to-double v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mControlPivot:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v16, p2, v16

    move/from16 v0, v16

    float-to-double v14, v0

    mul-double v16, v12, v2

    mul-double v18, v14, v10

    sub-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mControlPivot:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v6, v16, v18

    mul-double v16, v12, v10

    mul-double v18, v14, v2

    add-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mControlPivot:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

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

.method private getRotatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mControlPivot:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mControlPivot:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mControlPivot:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mControlPivot:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v1
.end method


# virtual methods
.method public checkAlignment(Landroid/graphics/RectF;I)V
    .locals 15

    if-eqz p1, :cond_0

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mControlPivot:Landroid/graphics/PointF;

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getAbsoluteRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    move/from16 v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchZoneType:I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXStart:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->left:F

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXStart:Landroid/graphics/PointF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXEnd:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->right:F

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXEnd:Landroid/graphics/PointF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYStart:Landroid/graphics/PointF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYStart:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYEnd:Landroid/graphics/PointF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYEnd:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->left:F

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->left:F

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->right:F

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->right:F

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->left:F

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->right:F

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->left:F

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->right:F

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    iput v13, v12, Landroid/graphics/PointF;->y:F

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignCenterX:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignCenterY:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignLeft:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignRight:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignTop:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignBottom:Z

    const/16 v12, 0x9

    move/from16 v0, p2

    if-eq v0, v12, :cond_2

    const/16 v12, 0xa

    move/from16 v0, p2

    if-ne v0, v12, :cond_5

    :cond_2
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    const/4 v5, 0x0

    :goto_1
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByCenterX(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByTop(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByBottom(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_3
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByCenterY(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByLeft(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByRight(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_8

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    iget v12, v1, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->top:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v12, v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v10

    iget v12, v10, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_6

    iget v12, v10, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_6

    const/4 v5, 0x0

    :goto_2
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByTop(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByLeft(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget v12, v10, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_7

    const/4 v5, 0x0

    :goto_3
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByTop(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    iget v12, v10, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_15

    const/4 v5, 0x0

    :goto_4
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByLeft(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v12, 0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_b

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    iget v12, v1, Landroid/graphics/RectF;->right:F

    iget v13, v1, Landroid/graphics/RectF;->top:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v12, v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v11

    iget v12, v11, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_9

    iget v12, v11, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_9

    const/4 v5, 0x0

    :goto_5
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByTop(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByRight(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    iget v12, v11, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_a

    const/4 v5, 0x0

    :goto_6
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByTop(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    iget v12, v11, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_15

    const/4 v5, 0x0

    :goto_7
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByRight(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    const/4 v12, 0x6

    move/from16 v0, p2

    if-ne v0, v12, :cond_e

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    iget v12, v1, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v12, v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v3

    iget v12, v3, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_c

    iget v12, v3, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_c

    const/4 v5, 0x0

    :goto_8
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByBottom(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByLeft(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    iget v12, v3, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_d

    const/4 v5, 0x0

    :goto_9
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByBottom(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    iget v12, v3, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_15

    const/4 v5, 0x0

    :goto_a
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByLeft(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_e
    const/16 v12, 0x8

    move/from16 v0, p2

    if-ne v0, v12, :cond_11

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    iget v12, v1, Landroid/graphics/RectF;->right:F

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v12, v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v4

    iget v12, v4, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_f

    iget v12, v4, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_f

    const/4 v5, 0x0

    :goto_b
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByBottom(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByRight(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_f
    iget v12, v4, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_10

    const/4 v5, 0x0

    :goto_c
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByBottom(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_10
    iget v12, v4, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_15

    const/4 v5, 0x0

    :goto_d
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByRight(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_11
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_12

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    iget v13, v1, Landroid/graphics/RectF;->top:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v12, v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v9

    iget v12, v9, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_15

    const/4 v5, 0x0

    :goto_e
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByTop(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_12
    const/4 v12, 0x7

    move/from16 v0, p2

    if-ne v0, v12, :cond_13

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v12, v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v2

    iget v12, v2, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_15

    const/4 v5, 0x0

    :goto_f
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByBottom(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_13
    const/4 v12, 0x4

    move/from16 v0, p2

    if-ne v0, v12, :cond_14

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    iget v12, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v12, v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v6

    iget v12, v6, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_15

    const/4 v5, 0x0

    :goto_10
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByLeft(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_14
    const/4 v12, 0x5

    move/from16 v0, p2

    if-ne v0, v12, :cond_15

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsMove:Z

    iget v12, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    invoke-direct {p0, v12, v13, v14}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->getRotatedPoint(FFF)Landroid/graphics/PointF;

    move-result-object v7

    iget v12, v7, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    if-ne v12, v13, :cond_15

    const/4 v5, 0x0

    :goto_11
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v5, v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignByRight(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_15
    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v12, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXStart:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    sub-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXEnd:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    sub-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    sub-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYStart:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->y:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    sub-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYEnd:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->y:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->y:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    sub-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->y:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->y:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    sub-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->y:F

    iget v14, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mExtendLine:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0
.end method

.method public checkAlignmentWithFlip(Landroid/graphics/RectF;IZZ)V
    .locals 2

    if-eqz p3, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p4, :cond_1

    packed-switch p2, :pswitch_data_1

    :cond_1
    :goto_1
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->sort()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->checkAlignment(Landroid/graphics/RectF;I)V

    if-eqz p3, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_2
    if-eqz p4, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void

    :pswitch_2
    const/4 p2, 0x5

    goto :goto_0

    :pswitch_3
    const/4 p2, 0x3

    goto :goto_0

    :pswitch_4
    const/16 p2, 0x8

    goto :goto_0

    :pswitch_5
    const/4 p2, 0x4

    goto :goto_0

    :pswitch_6
    const/4 p2, 0x1

    goto :goto_0

    :pswitch_7
    const/4 p2, 0x6

    goto :goto_0

    :pswitch_8
    const/4 p2, 0x7

    goto :goto_1

    :pswitch_9
    const/4 p2, 0x6

    goto :goto_1

    :pswitch_a
    const/16 p2, 0x8

    goto :goto_1

    :pswitch_b
    const/4 p2, 0x2

    goto :goto_1

    :pswitch_c
    const/4 p2, 0x1

    goto :goto_1

    :pswitch_d
    const/4 p2, 0x3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public drawSmartGuide(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignCenterX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXStart:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterXEnd:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->y:F

    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v4, v6, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignTop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopStart:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignTopEnd:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->y:F

    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v4, v6, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignBottom:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomStart:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignBottomEnd:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->y:F

    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v4, v6, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignCenterY:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYStart:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignCenterYEnd:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->y:F

    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v4, v6, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignLeft:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftStart:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignLeftEnd:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->y:F

    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v4, v6, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignRight:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightStart:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mAlignRightEnd:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->y:F

    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v4, v6, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignCenterX:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignCenterY:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignLeft:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignRight:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignTop:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mIsAlignBottom:Z

    return-void
.end method

.method public setControlPivot(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getAbsoluteCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mControlPivot:Landroid/graphics/PointF;

    return-void
.end method

.method public setControlTouchManager(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mTouchManager:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;

    return-void
.end method

.method public setRectList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mObjectRectList:Ljava/util/ArrayList;

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlSmartGuide;->mRotateAngle:F

    return-void
.end method
