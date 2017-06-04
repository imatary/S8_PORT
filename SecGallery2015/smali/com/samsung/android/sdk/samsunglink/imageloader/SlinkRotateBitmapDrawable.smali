.class public Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SlinkRotateBitmapDrawable.java"


# instance fields
.field private final mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput p3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;->mOrientation:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;->mOrientation:I

    rem-int/lit16 v3, v3, 0x168

    if-nez v3, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;->mOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;->mOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkRotateBitmapDrawable;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method
