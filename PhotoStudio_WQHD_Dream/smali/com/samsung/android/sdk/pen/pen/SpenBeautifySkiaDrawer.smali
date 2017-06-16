.class public Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;
.super Ljava/lang/Object;
.source "SpenBeautifySkiaDrawer.java"


# static fields
.field public static final ADVANCEDSETTING_LINETYPE_BLUR:I = 0x3

.field public static final ADVANCEDSETTING_LINETYPE_EMBOSS:I = 0x2

.field public static final ADVANCEDSETTING_LINETYPE_GRADIENT:I = 0x1

.field public static final GRADIENT_COLORS:[I

.field private static final LOG_TAG:Ljava/lang/String; = "SpenBeautifySkiaDrawer"


# instance fields
.field beautifyPaint:Landroid/graphics/Paint;

.field resultPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->GRADIENT_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0x5b00
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0x5fdf10
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->resultPath:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->resultPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public jBeautifyPaint_getColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public jBeautifyPaint_getStrokeWidth()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public jBeautifyPaint_setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public jBeautifyPaint_setLineStyle(I)V
    .locals 11

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    packed-switch p1, :pswitch_data_0

    const-string v1, "SpenBeautifySkiaDrawer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLineStyle does not support lineType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->resultPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->GRADIENT_COLORS:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    new-array v9, v1, [F

    fill-array-data v9, :array_0

    new-instance v10, Landroid/graphics/EmbossMaskFilter;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x40600000    # 3.5f

    invoke-direct {v10, v9, v1, v2, v3}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :pswitch_2
    new-instance v10, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x41000000    # 8.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v10, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public jBeautifyPaint_setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public jDrawPath(II)Landroid/graphics/Bitmap;
    .locals 4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->resultPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->beautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public jFillPath([II)V
    .locals 8

    const v7, 0xffff

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->resultPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_6

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v5, v1, 0x1

    if-lt v5, p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    aget v5, p1, v1

    if-ne v5, v7, :cond_1

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    if-eq v5, v7, :cond_2

    :cond_1
    aget v5, p1, v1

    if-ne v5, v7, :cond_3

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    aget v5, p1, v1

    if-ne v5, v7, :cond_5

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    if-nez v5, :cond_5

    if-lt p2, v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {p0, v0, p1, v4, v2}, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->setBezierContour(Landroid/graphics/Path;[III)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->resultPath:Landroid/graphics/Path;

    invoke-virtual {v5, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_4
    add-int/lit8 v1, v1, 0x2

    move v4, v1

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_6
    return-void
.end method

.method public jResultPath_getBounds()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenBeautifySkiaDrawer;->resultPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-object v0
.end method

.method protected setBezierContour(Landroid/graphics/Path;[III)V
    .locals 8

    aget v0, p2, p3

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v7, 0x1

    :goto_0
    if-ge v7, p4, :cond_0

    mul-int/lit8 v0, v7, 0x2

    aget v0, p2, v0

    if-nez v0, :cond_1

    mul-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, p2, v0

    if-nez v0, :cond_1

    add-int/lit8 v7, v7, 0x4

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void

    :cond_1
    mul-int/lit8 v0, v7, 0x2

    aget v0, p2, v0

    int-to-float v1, v0

    mul-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, p2, v0

    int-to-float v2, v0

    add-int/lit8 v0, v7, 0x1

    mul-int/lit8 v0, v0, 0x2

    aget v0, p2, v0

    int-to-float v3, v0

    add-int/lit8 v0, v7, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, p2, v0

    int-to-float v4, v0

    add-int/lit8 v0, v7, 0x2

    mul-int/lit8 v0, v0, 0x2

    aget v0, p2, v0

    int-to-float v5, v0

    add-int/lit8 v0, v7, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, p2, v0

    int-to-float v6, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v7, v7, 0x4

    goto :goto_0
.end method
