.class public final Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;
.super Ljava/lang/Object;
.source "QuramBitmapRegionDecoderInternal.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "QuramBitmapRegionDecoderInternal"


# instance fields
.field public mHandle:J

.field private mRecycled:Z

.field public mShared:Z

.field public mType:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mShared:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mRecycled:Z

    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mRecycled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/quramsoft/images/QrBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeNewInstanceWithOpt(Lcom/quramsoft/images/QrBitmapFactory$Options;J)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    :cond_0
    instance-of v1, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_1

    :cond_1
    return-object v2
.end method

.method public static newInstance(Ljava/lang/String;ZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeNewInstance(Ljava/lang/String;ZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inCancelingRequested:Z

    if-nez v1, :cond_0

    const-string v1, "QuramBitmapRegionDecoderInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newInstance is failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static newInstance([BIIZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    or-int v1, p1, p2

    if-ltz v1, :cond_0

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeNewInstanceBuffer([BIIZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceWithDec(Ljava/lang/String;Landroid/graphics/Bitmap;IZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeNewInstanceWithDec(Ljava/lang/String;Landroid/graphics/Bitmap;IZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p4, Lcom/quramsoft/images/QrBitmapFactory$Options;->inCancelingRequested:Z

    if-nez v1, :cond_0

    const-string v1, "QuramBitmapRegionDecoderInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newInstanceWithDec is failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method


# virtual methods
.method public cancelDecoding()V
    .locals 2

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mHandle:J

    invoke-static {v0, v1}, Lcom/quramsoft/images/QuramBitmapFactory;->DecodeCancel(J)V

    :cond_0
    return-void
.end method

.method public declared-synchronized decodeRegion(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "QuramBitmapRegionDecoderInternal.decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->checkRecycled(Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    invoke-virtual {p0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getHeight()I

    move-result v0

    iput v0, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    iget-wide v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mHandle:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeDecodeRegion(JIIIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getPNGWidth()I

    move-result v0

    iput v0, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    invoke-virtual {p0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getPNGHeight()I

    move-result v0

    iput v0, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    iget-wide v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mHandle:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeDecodeRegionPNG(JIIIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized decodeRegionEx(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "QuramBitmapRegionDecoderInternal.decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->checkRecycled(Ljava/lang/String;)V

    iget v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    invoke-virtual {p0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getHeight()I

    move-result v0

    iput v0, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    iget-wide v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mHandle:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeDecodeRegionEx(JIIIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getPNGWidth()I

    move-result v0

    iput v0, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    invoke-virtual {p0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getPNGHeight()I

    move-result v0

    iput v0, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    iget-wide v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mHandle:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeDecodeRegionPNGEx(JIIIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->recycle()V
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
    .locals 2

    const-string v0, "QuramBitmapRegionDecoderInternal.getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mHandle:J

    invoke-static {v0, v1}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getPNGHeight()I
    .locals 2

    const-string v0, "QuramBitmapRegionDecoderInternal.getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mHandle:J

    invoke-static {v0, v1}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeGetPNGHeight(J)I

    move-result v0

    return v0
.end method

.method public getPNGWidth()I
    .locals 2

    const-string v0, "QuramBitmapRegionDecoderInternal.getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mHandle:J

    invoke-static {v0, v1}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeGetPNGWidth(J)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mType:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    const-string v0, "QuramBitmapRegionDecoderInternal.getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mHandle:J

    invoke-static {v0, v1}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mRecycled:Z

    return v0
.end method

.method public declared-synchronized recycle()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mRecycled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mHandle:J

    invoke-static {v0, v1}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativePNGClean(J)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->mHandle:J

    invoke-static {v0, v1}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeClean(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
