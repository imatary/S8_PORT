.class Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;
.super Ljava/lang/Object;
.source "SecMMCodecInterface.java"


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

    const-string/jumbo v1, "SecMMCodecInterface"

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

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x2

    new-array v1, v4, [I

    if-eqz p0, :cond_1

    if-lez p2, :cond_1

    if-ge p1, p2, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativeCreateFds()J

    move-result-wide v2

    array-length v4, p0

    invoke-static {v2, v3, p0, p1, v4}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativecopybytebuffer(J[BII)I

    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativegetImageinfo(J[I)I

    invoke-static {v2, v3, v1, p3}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->doDecode(J[ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativefreeFds(J)I

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    iget-object v4, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-object v4, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x2

    new-array v1, v4, [I

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativeCreateFds()J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativecopyfilename(JLjava/lang/String;)I

    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativegetImageinfo(J[I)I

    invoke-static {v2, v3, v1, p1}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->doDecode(J[ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativefreeFds(J)I

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static doDecode(J[ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    aget v1, p2, v5

    const/4 v5, 0x1

    aget v0, p2, v5

    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-nez v5, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    if-eq v1, v8, :cond_1

    if-eq v0, v8, :cond_1

    iget-boolean v5, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v5, :cond_2

    iput v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_1
    move-object v3, v2

    goto :goto_0

    :cond_2
    iget v4, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int v5, v1, v4

    add-int/lit8 v5, v5, -0x1

    div-int v1, v5, v4

    add-int v5, v0, v4

    add-int/lit8 v5, v5, -0x1

    div-int v0, v5, v4

    iget-object v5, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    iget-object v5, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v1, :cond_4

    iget-object v5, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v0, :cond_5

    :cond_4
    const-string/jumbo v5, "SecMM"

    const-string/jumbo v6, "SecMMCodec DecodeBytearray Input Bitmap Erraneous\n"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v5, 0x0

    iput-object v5, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_5
    :goto_2
    if-eqz v2, :cond_1

    invoke-static {p0, p1, v2}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativelockBitmap(JLandroid/graphics/Bitmap;)I

    invoke-static {p0, p1, v4}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativeDecode(JI)I

    invoke-static {v2}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativeunlockBitmap(Landroid/graphics/Bitmap;)I

    goto :goto_1

    :cond_6
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->nativeCreateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2
.end method

.method private static native nativeCreateBitmap(II)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFds()J
.end method

.method private static native nativeDecode(JI)I
.end method

.method private static native nativecopybytebuffer(J[BII)I
.end method

.method private static native nativecopyfilename(JLjava/lang/String;)I
.end method

.method private static native nativefreeFds(J)I
.end method

.method private static native nativegetImageinfo(J[I)I
.end method

.method private static native nativelockBitmap(JLandroid/graphics/Bitmap;)I
.end method

.method private static native nativeunlockBitmap(Landroid/graphics/Bitmap;)I
.end method
