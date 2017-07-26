.class public Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field public static final STROKE_END:I = 0x3e9

.field public static final STROKE_START:I = 0x3e8

.field public static final STROKE_WIDTH_DP:I = 0x2

.field private static final SWEEP_INC:F = 2.0f


# instance fields
.field private mBigOval:Landroid/graphics/RectF;

.field public mChangeDraw:Z

.field private mFramePaint:Landroid/graphics/Paint;

.field private mPaints:Landroid/graphics/Paint;

.field private mRadius:I

.field private mStroke:I

.field private mStrokeWidth:I

.field private mSweep:F

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStroke:I

    iput v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mType:I

    iput-boolean v7, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mChangeDraw:Z

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mRadius:I

    iput p3, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mType:I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getPixelValue(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    if-gez v0, :cond_0

    iput v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v7, :cond_1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStroke:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mPaints:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mPaints:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mPaints:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mPaints:Landroid/graphics/Paint;

    const/16 v1, 0x2d

    const/16 v2, 0x31

    const/16 v3, 0x38

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mPaints:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mPaints:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStroke:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStroke:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mRadius:I

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mRadius:I

    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mBigOval:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mPaints:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mFramePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mFramePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mFramePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x4e

    invoke-static {v1, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStrokeWidth:I

    goto/16 :goto_0
.end method

.method public static getSweepInc()I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v4, 0x0

    const/high16 v8, 0x43660000    # 230.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mBigOval:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mFramePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mBigOval:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mSweep:F

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mPaints:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mChangeDraw:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mSweep:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mSweep:F

    :goto_0
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mSweep:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_0

    iput v8, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mSweep:F

    :cond_0
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mSweep:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    iput v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mSweep:F

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->invalidate()V

    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mSweep:F

    sub-float/2addr v0, v7

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mSweep:F

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, -0x80000000

    iget v8, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mRadius:I

    iget v9, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStroke:I

    sub-int v1, v8, v9

    iget v8, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mRadius:I

    iget v9, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->mStroke:I

    sub-int v0, v8, v9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-ne v6, v11, :cond_0

    move v5, v7

    :goto_0
    if-ne v3, v11, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    if-ne v6, v10, :cond_1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_0

    :cond_2
    if-ne v3, v10, :cond_3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_1
.end method
