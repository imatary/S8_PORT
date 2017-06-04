.class public Lcom/sec/android/gallery3d/glcore/GlTextView;
.super Lcom/sec/android/gallery3d/glcore/GlView;
.source "GlTextView.java"


# static fields
.field private static final mDefaultPaintForLabel:Landroid/text/TextPaint;


# instance fields
.field private mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private mStrokePaint:Landroid/text/TextPaint;

.field private mText:Ljava/lang/String;

.field private mUseCenterAlign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mDefaultPaintForLabel:Landroid/text/TextPaint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mText:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    iput-object p3, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p0, p4, p5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    return-void
.end method

.method public static ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo p0, ""

    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p3, p2, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p3, p2, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getDefaultPaint(FI)Landroid/text/TextPaint;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaint(FILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDefaultPaint(FILandroid/graphics/Typeface;)Landroid/text/TextPaint;
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    if-ne p1, v3, :cond_0

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :goto_0
    return-object v0

    :cond_0
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public static getDefaultPaintForLabel(F)Landroid/text/TextPaint;
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mDefaultPaintForLabel:Landroid/text/TextPaint;

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mDefaultPaintForLabel:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mDefaultPaintForLabel:Landroid/text/TextPaint;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;
    .locals 1

    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaint(FILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glcore/GlTextView;
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
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object v0
.end method


# virtual methods
.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getTextWidth()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mUseCenterAlign:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mStrokePaint:Landroid/text/TextPaint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mStrokePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sIsTallCategoryLanguage:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public setStrokePaint(III)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mStrokePaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mStrokePaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mStrokePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mStrokePaint:Landroid/text/TextPaint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mStrokePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mStrokePaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mStrokePaint:Landroid/text/TextPaint;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v2, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mText:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->invalidate()V

    return-void
.end method

.method public setTextBold()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v3, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    return-void
.end method

.method public setUseCenterAlign(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlTextView;->mUseCenterAlign:Z

    return-void
.end method
