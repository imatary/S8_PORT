.class public Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;
.super Ljava/lang/Object;
.source "QuramCodecRegionDecoder.java"

# interfaces
.implements Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cropper2_QuramDecoder"


# instance fields
.field private mDngFile:Z

.field public mHandle:J

.field private mHeight:I

.field private final mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

.field private final mNativeLock:Ljava/lang/Object;

.field private final mNativeLock_decode:Ljava/lang/Object;

.field private final mPath:Ljava/lang/String;

.field private mRecycled:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "quram"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "QuramCodecRegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load library fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mDngFile:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mRecycled:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mNativeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mPath:Ljava/lang/String;

    const-string/jumbo v1, "dng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mDngFile:Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->nativeNewInstance(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    new-instance v0, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mRecycled:Z

    return-void
.end method

.method public static native nativeDecodeRegion(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativeGetHeight(J)I
.end method

.method public static native nativeGetWidth(J)I
.end method

.method public static native nativeNewInstance(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)J
.end method

.method public static native nativeRecycle(J)I
.end method

.method public static native nativeRegionCancel(J)I
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_QuramDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_1
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int v0, v2, v0

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_4

    :cond_3
    const-string/jumbo v0, "Cropper2_QuramDecoder"

    const-string/jumbo v1, " RegionDecode Input Bitmap Err"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_4
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mDngFile:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->getCropOriginX()I

    move-result v0

    if-lez v0, :cond_5

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    invoke-static {v2, v3, p1, p2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->nativeDecodeRegion(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_QuramDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 4

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHeight:I

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mDngFile:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->getImageHeight()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/decoder/QuramCodecInterface;->nativeParseMetadata(Ljava/lang/String;Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->getCropOriginY()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->getCropSizeHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHeight:I

    :cond_2
    :goto_1
    iget v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHeight:I

    return v0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->getImageHeight()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->nativeGetHeight(J)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHeight:I

    goto :goto_1
.end method

.method public getWidth()I
    .locals 4

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mWidth:I

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mDngFile:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->getImageWidth()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/decoder/QuramCodecInterface;->nativeParseMetadata(Ljava/lang/String;Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->getCropOriginX()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->getCropSizeWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mWidth:I

    :cond_2
    :goto_1
    iget v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mWidth:I

    return v0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mMetadataInfo:Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->getImageWidth()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->nativeGetWidth(J)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mWidth:I

    goto :goto_1
.end method

.method public final isRecycled()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v4, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->nativeRecycle(J)I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mRecycled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestCancelDecode()V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->mHandle:J

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->nativeRegionCancel(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
