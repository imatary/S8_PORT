.class public Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedImageDrawable.java"


# instance fields
.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mRoundPx:I

.field private mScaledBitmapDrawable:Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;I)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p2, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput p3, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mRoundPx:I

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method private getSqareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ne v6, v5, :cond_0

    move v3, v7

    :goto_0
    if-ne v1, v5, :cond_1

    move v2, v7

    :goto_1
    const-string/jumbo v8, "width :: %s, height :: %s, sideSize :: %s, offsetW :: %s, offsetH :: %s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v3, v5

    add-int v10, v2, v5

    invoke-direct {v8, v3, v2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7, v7, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v4

    :cond_0
    sub-int v8, v6, v5

    div-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    :cond_1
    sub-int v8, v1, v5

    div-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->getSqareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mScaledBitmapDrawable:Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mScaledBitmapDrawable:Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    invoke-virtual {v2}, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mRectF:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mBitmapWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mBitmapHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mRoundPx:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mRoundPx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mRoundPx:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v0, v0, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAntiAlias(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void
.end method

.method public setIsDisplayed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v0, v0, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;->setIsDisplayed(Z)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->mScaledBitmapDrawable:Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;->setIsDisplayed(Z)V

    :cond_0
    return-void
.end method
