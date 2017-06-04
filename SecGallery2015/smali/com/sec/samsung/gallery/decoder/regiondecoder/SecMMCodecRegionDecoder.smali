.class public Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
.super Ljava/lang/Object;
.source "SecMMCodecRegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecMMCodecRegionDecoder"

.field private static final USE_SEC_MM_MULTI_CORE:Z = true


# instance fields
.field private mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private final mNativeLock:Ljava/lang/Object;

.field private final mNativeLock_decode:Ljava/lang/Object;

.field private mNativeSisoRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

.field private mRecycled:Z

.field private secmmrd:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "SecMMCodec"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecMMCodecRegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load library fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mRecycled:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeSisoRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mRecycled:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BIIZZ)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mRecycled:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    invoke-static/range {p1 .. p6}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->nativerdinstance(Ljava/lang/String;[BIIZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    iget-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->configMultiCore(J)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mRecycled:Z

    return-void
.end method

.method private static native RequestCancelDecode(J)I
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static native configLTN(J)I
.end method

.method private static native configMultiCore(J)I
.end method

.method private static native nativeDecodeRegion(JIIIIILandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeRegionBB(JIIIIILjava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativerdinstance(Ljava/lang/String;[BIIZZ)J
.end method

.method private static native nativerecycle(J)I
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;-><init>(Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;)V

    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SecMMCodecRegionDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_1
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
    .locals 9

    const/4 v8, 0x0

    if-nez p0, :cond_1

    move-object v0, v8

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->convertInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;-><init>(Ljava/lang/String;[BIIZZ)V

    iget-wide v2, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeSisoRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v1, :cond_0

    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v1, "SecMMCodecRegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    const-string/jumbo v1, "SecMMCodecRegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;-><init>(Ljava/lang/String;[BIIZZ)V

    iget-wide v2, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeSisoRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v7

    const-string/jumbo v1, "SecMMCodecRegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    const-string/jumbo v1, "SecMMCodecRegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto :goto_1

    :cond_1
    move-object v0, v8

    goto :goto_1
.end method

.method public static newInstance([BIIZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
    .locals 9

    const/4 v8, 0x0

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
    :try_start_0
    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;-><init>(Ljava/lang/String;[BIIZZ)V

    iget-wide v2, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeSisoRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v7

    const-string/jumbo v1, "SecMMCodecRegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    const-string/jumbo v1, "SecMMCodecRegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto :goto_1

    :cond_3
    move-object v0, v8

    goto :goto_1
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeSisoRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :cond_1
    add-int v0, v8, v6

    add-int/lit8 v0, v0, -0x1

    div-int v8, v0, v6

    add-int v0, v9, v6

    add-int/lit8 v0, v0, -0x1

    div-int v9, v0, v6

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v9, :cond_3

    :cond_2
    const-string/jumbo v0, "SecMM"

    const-string/jumbo v1, "SecMMCodec RegionDecode Input Bitmap Erraneous\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v9}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->nativeDecodeRegion(JIIIIILandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v10

    const-string/jumbo v0, "SecMMCodecRegionDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->recycle()V
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

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeSisoRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->nativeGetHeight(J)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWidth()I
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeSisoRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->nativeGetWidth(J)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v4, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->nativerecycle(J)I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mRecycled:Z

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public requestCancelDecode()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->RequestCancelDecode(J)I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->recycle()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public useLTN()I
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->configLTN(J)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
