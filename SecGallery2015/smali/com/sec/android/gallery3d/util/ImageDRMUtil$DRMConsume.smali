.class Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMConsume;
.super Ljava/lang/Object;
.source "ImageDRMUtil.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/util/ImageDRMUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DRMConsume"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMConsume;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMConsume;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMConsume;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v3

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMConsume;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v3

    iget-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    iput-object v7, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-object v7

    :catchall_0
    move-exception v3

    iget-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v4, :cond_1

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v4

    iget-object v5, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    iput-object v7, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_1
    throw v3
.end method
