.class Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;
.super Landroid/view/ViewGroup;
.source "FancyCoverFlowItemWrapper.java"


# instance fields
.field private colorMatrix:Landroid/graphics/ColorMatrix;

.field public label:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private originalScaledownFactor:F

.field private paint:Landroid/graphics/Paint;

.field private rectPaint:Landroid/graphics/Paint;

.field private saturation:F

.field private textPaint:Landroid/graphics/Paint;

.field private wrappedViewBitmap:Landroid/graphics/Bitmap;

.field private wrappedViewDrawingCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    const v3, 0x7f0c00b2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->textPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080536

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->rectPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->rectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->rectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->colorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->setSaturation(F)V

    return-void
.end method

.method private remeasureChildren()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, -0x80000000

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getMeasuredHeight()I

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->originalScaledownFactor:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->originalScaledownFactor:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    float-to-int v1, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->originalScaledownFactor:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v2, v6

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->wrappedViewDrawingCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getHeight()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->isRuningAnim:Z

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 v9, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getMeasuredHeight()I

    move-result v5

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v7, v6, :cond_0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v7, v5, :cond_1

    :cond_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    new-instance v7, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->wrappedViewDrawingCanvas:Landroid/graphics/Canvas;

    :cond_1
    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v7, v6, v4

    div-int/lit8 v2, v7, 0x2

    sub-int v3, v6, v2

    invoke-virtual {v0, v2, v9, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->remeasureChildren()V

    return-void
.end method

.method public setSaturation(F)V
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->saturation:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->saturation:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->colorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->colorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method
