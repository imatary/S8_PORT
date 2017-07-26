.class public Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;
.super Landroid/view/View;
.source "ArcView.java"


# instance fields
.field protected mAngle:F

.field protected mFramePaint:Landroid/graphics/Paint;

.field protected mPaints:Landroid/graphics/Paint;

.field protected mRect:Landroid/graphics/RectF;

.field protected mStart:F

.field private mStroke:I

.field protected mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FFIII)V
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStart:F

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mAngle:F

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStrokeWidth:I

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStroke:I

    int-to-double v0, p6

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStrokeWidth:I

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStrokeWidth:I

    if-gez v0, :cond_0

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStrokeWidth:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStrokeWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStroke:I

    const/4 v0, -0x1

    if-eq p4, v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mPaints:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mPaints:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mPaints:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mPaints:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mPaints:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mPaints:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mFramePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mFramePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStroke:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStroke:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStroke:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStroke:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->setStart(F)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->setAngle(F)V

    return-void
.end method

.method private getDpToPix(Landroid/content/Context;D)I
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    float-to-double v6, v0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v1, p2, v4

    if-gez v1, :cond_0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v4

    :cond_0
    double-to-int v1, v2

    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mPaints:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mPaints:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStart:F

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mAngle:F

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mFramePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStroke:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStroke:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStroke:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStroke:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method protected setAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mAngle:F

    return-void
.end method

.method protected setStart(F)V
    .locals 1

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, p1, v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;->mStart:F

    return-void
.end method
