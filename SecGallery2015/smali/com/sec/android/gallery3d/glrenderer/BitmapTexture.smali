.class public Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;
.super Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field private final mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;-><init>(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
