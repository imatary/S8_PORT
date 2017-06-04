.class public Lcom/sec/android/gallery3d/glrenderer/StringTexture;
.super Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;
.source "StringTexture.java"


# static fields
.field public static final DEFAULT_SHADOW_SIZE:F = 2.0f


# instance fields
.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0

    invoke-direct {p0, p4, p5}, Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;-><init>(II)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->mText:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->mPaint:Landroid/text/TextPaint;

    iput-object p3, p0, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method private static getDefaultPaint(FI)Landroid/text/TextPaint;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultPaint(FIZ)Landroid/text/TextPaint;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FIZF)Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPaint(FIZF)Landroid/text/TextPaint;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz p2, :cond_0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, p3, v2, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_0
    return-object v0
.end method

.method public static getNormalPaint(FI)Landroid/text/TextPaint;
    .locals 2

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getStrokePaint(FIFI)Landroid/text/TextPaint;
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getNormalPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setColor(I)V

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glrenderer/StringTexture;
    .locals 1

    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FIFZLandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glrenderer/StringTexture;
    .locals 2

    invoke-static {p1, p2, p4}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p3, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;FIZ)Lcom/sec/android/gallery3d/glrenderer/StringTexture;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FIZLandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glrenderer/StringTexture;
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v1

    return-object v1
.end method

.method private static newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glrenderer/StringTexture;
    .locals 6

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v5, v0, v1

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-gtz v5, :cond_1

    const/4 v5, 0x1

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/text/TextPaint;F)Lcom/sec/android/gallery3d/glrenderer/StringTexture;
    .locals 1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
