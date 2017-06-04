.class public Lcom/sec/android/gallery3d/ui/BitmapScreenNail;
.super Ljava/lang/Object;
.source "BitmapScreenNail.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/ScreenNail;


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    return-void
.end method


# virtual methods
.method public copy()Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public isAnimatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;->recycle()V

    return-void
.end method

.method public startAnimation()V
    .locals 0

    return-void
.end method

.method public stopAnimation()V
    .locals 0

    return-void
.end method
