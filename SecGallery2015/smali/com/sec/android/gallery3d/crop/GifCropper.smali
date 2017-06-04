.class public Lcom/sec/android/gallery3d/crop/GifCropper;
.super Ljava/lang/Object;
.source "GifCropper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;
    }
.end annotation


# static fields
.field private static final CACHE_PREFIX:Ljava/lang/String; = "/tmp"

.field private static final GIF:Ljava/lang/String; = "gif"

.field private static final MIDDLE_DURATION_GIF:I = 0x33

.field private static final SMALL_DURATION_GIF:I = 0x15

.field private static final STANDARD_DURATION_GIF:F = 0.03f

.field private static final TAG:Ljava/lang/String; = "GifCropper"

.field private static final TEM_CONTACT_PHOTO_NAME:Ljava/lang/String; = "-ContactPhoto.gif"


# instance fields
.field private mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

.field private final mContext:Landroid/content/Context;

.field private final mCropView:Lcom/sec/android/gallery3d/ui/CropView;

.field private mMaxHeight:I

.field private mMaxSize:I

.field private mMaxWidth:I

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mNumberFrame:I

.field private mOutputX:I

.field private mOutputY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/CropView;Lcom/sec/android/gallery3d/data/MediaItem;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iput-object p1, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput p4, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mMaxSize:I

    iput p5, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mMaxWidth:I

    iput p6, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mMaxHeight:I

    return-void
.end method

.method private countNewStep(II)I
    .locals 4

    const/16 v1, 0x15

    if-gt p1, v1, :cond_1

    iget v1, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mNumberFrame:I

    div-int/2addr v1, p2

    int-to-float v1, v1

    const v2, 0x3cf5c28f    # 0.03f

    int-to-float v3, p1

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v0, v1

    mul-int v1, p2, p2

    mul-int/2addr v1, p2

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    mul-int v1, p2, p2

    mul-int v0, v1, p2

    goto :goto_0

    :cond_1
    if-ge v1, p1, :cond_2

    const/16 v1, 0x33

    if-gt p1, v1, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method private decodeAGifToListBitmap(Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;",
            ">;"
        }
    .end annotation

    iget-object v11, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/ui/CropView;->getHighlightRect()Landroid/graphics/RectF;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/sec/android/gallery3d/crop/GifCropper;->getRectForCropAGif(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-lez v11, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gtz v11, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    iget v11, v9, Landroid/graphics/Rect;->right:I

    iget v12, v9, Landroid/graphics/Rect;->left:I

    sub-int v10, v11, v12

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int v7, v11, v12

    iget v11, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mMaxWidth:I

    if-ge v10, v11, :cond_4

    move v11, v10

    :goto_1
    iput v11, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mOutputX:I

    iget v11, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mMaxHeight:I

    if-ge v7, v11, :cond_5

    move v11, v7

    :goto_2
    iput v11, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mOutputY:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_3
    iget v11, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mNumberFrame:I

    if-ge v8, v11, :cond_6

    invoke-virtual {p1, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->decodeFrame(Landroid/graphics/Bitmap;)I

    invoke-virtual {p1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getDelay()I

    move-result v4

    if-nez v8, :cond_2

    move v3, v4

    :cond_2
    if-nez v4, :cond_3

    move v4, v3

    :cond_3
    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v11, v12, v10, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v11, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mOutputX:I

    iget v12, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mOutputY:I

    const/4 v13, 0x1

    invoke-static {v1, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v5, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;

    invoke-direct {v5, v2, v4}, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    iget v11, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mMaxWidth:I

    goto :goto_1

    :cond_5
    iget v11, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mMaxHeight:I

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private deleteTempFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private dump(Ljava/io/FileInputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v2, 0x1000

    new-array v0, v2, [B

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, v0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    array-length v2, v0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    goto :goto_0
.end method

.method private encodeToAGifByQuram(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    const-string/jumbo v5, "GifCropper"

    const-string/jumbo v6, "no frame for create AGif"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    invoke-direct {v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;-><init>()V

    if-le v4, v7, :cond_3

    invoke-virtual {v0, v7}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setMaxTaskTP(I)V

    :cond_3
    invoke-virtual {v0, v6}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDispose(I)V

    invoke-virtual {v0, v6, v6}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setPosition(II)V

    invoke-virtual {v0, v6}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setRepeat(I)V

    iget v5, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mOutputX:I

    iget v6, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mOutputY:I

    invoke-virtual {v0, v5, v6}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setGlobalSize(II)V

    iget v5, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mOutputX:I

    iget v6, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mOutputY:I

    invoke-virtual {v0, v5, v6}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setSize(II)V

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setTransparent(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/crop/GifCropper;->deleteTempFile(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->start(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "GifCropper"

    const-string/jumbo v6, "encode start error"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_6

    rem-int v5, v1, p3

    if-nez v5, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;

    iget v5, v5, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;->duration:I

    invoke-direct {p0, v5, p3}, Lcom/sec/android/gallery3d/crop/GifCropper;->countNewStep(II)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;

    iget v5, v5, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;->duration:I

    mul-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDelay(I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;

    iget-object v3, v5, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->addFrameTP(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "GifCropper"

    const-string/jumbo v6, "encode addFrame error"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->finish()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "GifCropper"

    const-string/jumbo v6, "encode finish error"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private generateTempPhotoFileName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-ContactPhoto.gif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/crop/GifCropper;->deleteTempFile(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/crop/GifCropper;->deleteTempFile(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/crop/GifCropper;->deleteTempFile(Ljava/lang/String;)V

    throw v3
.end method

.method private getGifImageSize(Ljava/lang/String;)J
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method private getQuramAGIF()Lcom/sec/android/gallery3d/util/QuramAGIF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/util/QuramAGIF;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/QuramAGIF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

    return-object v0
.end method

.method private getRectForCropAGif(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 8

    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    int-to-float v4, v1

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    int-to-float v5, v0

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v1

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private getTempPathToCropAGif()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/crop/GifCropper;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initAgifCloudImage(Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 5

    const/4 v4, 0x0

    move-object v2, p2

    check-cast v2, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getCachedPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v3, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, p2, v4}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/sec/android/gallery3d/ui/CropView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v2, v4, p2}, Lcom/sec/android/gallery3d/ui/CropView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method

.method private initAgifLocalImage(Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, p2, v2}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/gallery3d/ui/CropView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/CropView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    const-string/jumbo v0, "gif"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/sec/android/gallery3d/data/UriImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, p2, v2}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/gallery3d/ui/CropView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method

.method private initAgifSCloudImage(Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 5

    const/4 v4, 0x0

    instance-of v2, p2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getCachedPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v3, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, p2, v4}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/sec/android/gallery3d/ui/CropView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    :goto_1
    return-void

    :cond_0
    move-object v2, p2

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v2, v4, p2}, Lcom/sec/android/gallery3d/ui/CropView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_1
.end method

.method private initQuramDecoder(Landroid/net/Uri;)Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;
    .locals 5

    new-instance v0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const-string/jumbo v3, "GifCropper"

    const-string/jumbo v4, "Start load QuramAGIFDecoder Done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mNumberFrame:I

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mNumberFrame:I

    if-gtz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "GifCropper"

    const-string/jumbo v4, "can not read source stream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getCroppedAGifFileOS(Landroid/net/Uri;)Ljava/io/FileInputStream;
    .locals 10

    invoke-direct {p0}, Lcom/sec/android/gallery3d/crop/GifCropper;->getTempPathToCropAGif()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/crop/GifCropper;->initQuramDecoder(Landroid/net/Uri;)Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/crop/GifCropper;->decodeAGifToListBitmap(Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, v4, v3}, Lcom/sec/android/gallery3d/crop/GifCropper;->encodeToAGifByQuram(Ljava/util/ArrayList;Ljava/lang/String;I)V

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/crop/GifCropper;->getGifImageSize(Ljava/lang/String;)J

    move-result-wide v6

    iget v5, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mMaxSize:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;

    iget-object v5, v5, Lcom/sec/android/gallery3d/crop/GifCropper$AGifFrame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->finish()Z

    :cond_3
    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/crop/GifCropper;->getFileInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    goto :goto_0
.end method

.method public initAgif(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/crop/GifCropper;->getQuramAGIF()Lcom/sec/android/gallery3d/util/QuramAGIF;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/QuramAGIF;->getQURAMWINKUTIL()Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;

    move-result-object v0

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UriImage;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/gallery3d/crop/GifCropper;->initAgifLocalImage(Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v1, p1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/crop/GifCropper;->initAgifCloudImage(Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-nez v1, :cond_4

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v1, :cond_5

    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/crop/GifCropper;->initAgifSCloudImage(Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mContext:Landroid/content/Context;

    instance-of v3, p1, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    invoke-virtual {v0, v2, p1, v3}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/gallery3d/ui/CropView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    const-string/jumbo v1, "gif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, v3}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/gallery3d/ui/CropView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v1, v3, p1}, Lcom/sec/android/gallery3d/ui/CropView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method

.method public onAgifPlayRequests()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/crop/GifCropper;->getQuramAGIF()Lcom/sec/android/gallery3d/util/QuramAGIF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/QuramAGIF;->getQURAMWINKUTIL()Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/crop/GifCropper;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->updateAGIF(Lcom/sec/android/gallery3d/ui/GifPlayer;Lcom/sec/android/gallery3d/ui/GifPlayer;)V

    return-void
.end method

.method public saveCropedAgifToOutputStream(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileInputStream;Ljava/io/OutputStream;)Z
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/sec/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {v1, p3}, Lcom/sec/android/gallery3d/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lcom/sec/android/gallery3d/crop/GifCropper$1;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/gallery3d/crop/GifCropper$1;-><init>(Lcom/sec/android/gallery3d/crop/GifCropper;Lcom/sec/android/gallery3d/util/InterruptableOutputStream;)V

    invoke-interface {p1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    :try_start_0
    invoke-direct {p0, p2, v1}, Lcom/sec/android/gallery3d/crop/GifCropper;->dump(Ljava/io/FileInputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v3}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1, v3}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {p1, v3}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method
