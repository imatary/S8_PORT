.class public Lcom/samsung/android/media/vision/SemSegmentation;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vision/SemSegmentation$Mode;,
        Lcom/samsung/android/media/vision/SemSegmentation$Result;
    }
.end annotation


# static fields
.field private static volatile trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;


# instance fields
.field private blendArr:[B

.field private imheight:I

.field private imwidth:I

.field private volatile isReleased:Z

.field private maskArr:[B

.field private outputBuf:Ljava/nio/ByteBuffer;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SRIBSE_Lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "saiv_vision"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/media/vision/SemSegmentation;->create(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method private _getBitmap([BILandroid/graphics/Bitmap$Config;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0
.end method

.method private create(Landroid/graphics/Bitmap;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    iget v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCreate([BII)Z

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/graphics/Bitmap;)Lcom/samsung/android/media/vision/SemSegmentation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    if-eqz v0, :cond_1

    :goto_0
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ARGB_8888 format expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-class v1, Lcom/samsung/android/media/vision/SemSegmentation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    if-eqz v0, :cond_2

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/vision/SemSegmentation;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private native nativeCanRedo()Z
.end method

.method private native nativeCanUndo()Z
.end method

.method private native nativeCancel(Z)V
.end method

.method private static native nativeCreate([BII)Z
.end method

.method private native nativeProcess([B[BI[I)[I
.end method

.method private native nativeRedo([B[B)[I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeReset()V
.end method

.method private native nativeUndo([B[B)[I
.end method

.method private ptArr2PathList([I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    aget v5, p1, v3

    if-gtz v5, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    move v0, v2

    :goto_1
    if-lt v4, v5, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v0, 0x1

    aget v6, p1, v0

    if-gtz v6, :cond_2

    :goto_2
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_2
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v0, v8, 0x1

    aget v8, p1, v8

    int-to-float v3, v3

    int-to-float v8, v8

    invoke-virtual {v7, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v0

    move v0, v2

    :goto_3
    if-lt v0, v6, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v3, 0x1

    aget v9, p1, v3

    add-int/lit8 v3, v8, 0x1

    aget v8, p1, v8

    int-to-float v9, v9

    int-to-float v8, v8

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public canRedo()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCanRedo()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canUndo()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCanUndo()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCancel(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->release()V

    goto :goto_0
.end method

.method public process(Lcom/samsung/android/media/vision/SemSegmentation$Mode;[I)Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    :cond_0
    return v4

    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v0

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-virtual {v1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-virtual {p1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeProcess([B[BI[I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v2, v2, 0x4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/vision/SemSegmentation;->ptArr2PathList([I)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return v4

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v0

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-virtual {v1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_3

    return v4

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public redo()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeRedo([B[B)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/vision/SemSegmentation;->ptArr2PathList([I)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v1, v1, 0x4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeRelease()V

    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    iput v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    iput v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    iput v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    iput-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iput-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iput-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :goto_0
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeReset()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public undo()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeUndo([B[B)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/vision/SemSegmentation;->ptArr2PathList([I)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v1, v1, 0x4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    goto :goto_0
.end method
