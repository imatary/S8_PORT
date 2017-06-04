.class public Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;
.super Lcom/sec/android/gallery3d/glcore/GlView;
.source "GlNewLineTextView.java"


# static fields
.field private static final mDefaultPaintForLabel:Landroid/text/TextPaint;


# instance fields
.field private mExtraWidthInHighContrastFont:I

.field private mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private mText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mDefaultPaintForLabel:Landroid/text/TextPaint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mPaint:Landroid/text/TextPaint;

    iput-object p3, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p0, p4, p5}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setSize(II)V

    return-void
.end method

.method public static ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo p0, ""

    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float v4, p2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p3, p2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_4

    aget-object v3, v2, v1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, p3, p2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_3

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getDefaultPaint(FI)Landroid/text/TextPaint;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultPaint(FIZ)Landroid/text/TextPaint;
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    if-ne p1, v3, :cond_1

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :goto_1
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_1
.end method

.method public static getDefaultPaintForLabel(F)Landroid/text/TextPaint;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mDefaultPaintForLabel:Landroid/text/TextPaint;

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mDefaultPaintForLabel:Landroid/text/TextPaint;

    return-object v0
.end method

.method private measureText([Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mPaint:Landroid/text/TextPaint;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpg-float v3, v2, v1

    if-gez v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    return v3
.end method

.method public static newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;
    .locals 1

    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;
    .locals 9

    const-string/jumbo v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v0, v8

    if-ge v6, v0, :cond_1

    aget-object v0, v8, v6

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v7, v0

    if-ge v4, v7, :cond_0

    move v4, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    array-length v1, v8

    mul-int v5, v0, v1

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-gtz v5, :cond_3

    const/4 v5, 0x1

    :cond_3
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object v0
.end method


# virtual methods
.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->measureText([Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    sub-int v7, v5, v7

    iget v8, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mExtraWidthInHighContrastFont:I

    add-int v1, v7, v8

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    aget-object v7, v7, v0

    int-to-float v8, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    int-to-float v9, v6

    iget-object v10, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExtraWidthInHighContrastFont(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mExtraWidthInHighContrastFont:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->measureText([Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    array-length v3, v3

    mul-int v0, v2, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setSize(II)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->measureText([Ljava/lang/String;)I

    move-result v3

    :goto_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->mText:[Ljava/lang/String;

    array-length v1, v4

    :goto_1
    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v5

    mul-int v0, v4, v1

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setSize(II)V

    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1
.end method
