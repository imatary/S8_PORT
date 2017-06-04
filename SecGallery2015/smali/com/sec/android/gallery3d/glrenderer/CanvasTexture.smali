.class public abstract Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;
.super Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
.source "CanvasTexture.java"


# instance fields
.field private final mConfig:Landroid/graphics/Bitmap$Config;


# direct methods
.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;->setSize(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;->setOpaque(Z)V

    return-void
.end method


# virtual methods
.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    iget v2, p0, Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;->mWidth:I

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;->mHeight:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;->onDraw(Landroid/graphics/Canvas;)V

    return-object v0
.end method
