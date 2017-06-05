.class public Lcom/android/gallery3d/glrenderer/BitmapTexture;
.super Lcom/android/gallery3d/glrenderer/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field protected mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/android/gallery3d/glrenderer/UploadedTexture;-><init>(Z)V

    invoke-virtual {p0, p3}, Lcom/android/gallery3d/glrenderer/BitmapTexture;->setOpaque(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/android/gallery3d/glrenderer/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
