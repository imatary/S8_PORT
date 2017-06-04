.class public Lcom/quramsoft/qrb/QuramBitmapFactory;
.super Ljava/lang/Object;
.source "QuramBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/qrb/QuramBitmapFactory$MidPointerData;,
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEC_CANCELED:I = 0x6

.field public static final DEC_FAIL:I = 0x0

.field public static final DEC_PROGRESS:I = 0x4

.field public static final DEC_SUCCESS:I = 0x1

.field public static final LENGTH_OF_MID_POINTER:I = 0x44

.field public static final Quram_JPEG:Ljava/lang/String; = "Quram_JPEG"

.field private static final TAG:Ljava/lang/String; = "QuramBitmapFactory"

.field protected static final USE_AUTO_BUFFERMODE:I = 0x2

.field protected static final USE_AUTO_FILEMODE:I = 0x0

.field public static final USE_FULLSIZE_BUFFER:I = 0x0

.field public static final USE_ITERSIZE_BUFFER:I = 0x1

.field public static final USE_MAKE_REGIONMAP:I = 0x2

.field protected static final USE_POWER_PROCESS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "Qjpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native AbortJPEGFromFileIter(J)I
.end method

.method public static native CompareJPEG(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;IIJJJI)D
.end method

.method public static native DecodeCancel(J)V
.end method

.method static native DecodeJPEGFromFileIter(JLandroid/graphics/Bitmap;IIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTN(JLandroid/graphics/Bitmap;IIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToBuffer(JLjava/nio/Buffer;IIIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToBufferMidpoint(JLjava/nio/Buffer;IIIIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToNativeBufferArray(JIII[JIII)I
.end method

.method static native DecodeJPEGFromFileIterToBuffer(JLjava/nio/Buffer;IIIII)I
.end method

.method static native DecodeJPEGFromFileMultiOutBuf(J[Landroid/graphics/Bitmap;IIII)I
.end method

.method public static native DecodeJPEGGetMidpoint(JLandroid/graphics/Bitmap;[BIIII)I
.end method

.method public static native DecodeJPEGThumbnail(JLandroid/graphics/Bitmap;III)I
.end method

.method static native DecodeJPEGThumbnailToNativeBuffer(J[JII)I
.end method

.method public static native DecodeJpegFromStream(Ljava/io/InputStream;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;[BILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method static native DecodePNGIterToNativeBufferArray(JJJIII[JII)I
.end method

.method static native GetJPEGMidPoint(JII)I
.end method

.method public static native GetJpegOffsetFromSRWFile(Ljava/lang/String;[I)I
.end method

.method public static native GetMidpoint([B)I
.end method

.method public static native PDecodeJPEGFromFile(JLandroid/graphics/Bitmap;III)I
.end method

.method static native PrepareJPEGFromFileIter(JII)I
.end method

.method static native PrepareJPEGFromFileIterMidpoint(J[BIII)I
.end method

.method public static native RegionMapCancel(J)V
.end method

.method public static abortFileIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 4

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->AbortJPEGFromFileIter(J)I

    invoke-virtual {p0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    :cond_0
    return-void
.end method

.method public static abortIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 4

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->AbortJPEGFromFileIter(J)I

    invoke-virtual {p0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    :cond_0
    return-void
.end method

.method public static native asyncTest(I)V
.end method

.method public static cancelDecode(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 4

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeCancel(J)V

    goto :goto_0
.end method

.method public static cancelRegionMap(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 4

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->RegionMapCancel(J)V

    goto :goto_0
.end method

.method public static compressToByte(Landroid/graphics/Bitmap;Ljava/lang/String;[BII)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Quram_JPEG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p2, p3, p4, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeByteArray(Landroid/graphics/Bitmap;[BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public static compressToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 7

    const/4 v6, 0x0

    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static compressToFile([BLjava/lang/String;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 7

    const/4 v6, 0x0

    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeFileFromByte([BLjava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static createDecInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0
.end method

.method public static createDecInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 4

    if-eqz p0, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecBufferInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0
.end method

.method public static decodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-lez p2, :cond_0

    array-length v2, p0

    add-int v3, p2, p1

    if-lt v2, v3, :cond_0

    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public static decodeFile(Landroid/content/Context;Landroid/net/Uri;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "r"

    invoke-virtual {v10, p1, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_0
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    :goto_1
    if-nez v5, :cond_0

    const-string v10, "QuramBitmapFactory"

    const-string v11, "inputstream is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v10, 0x0

    :goto_3
    return-object v10

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    const/high16 v10, 0x10000

    new-array v0, v10, [B

    const/4 v1, 0x0

    :goto_4
    :try_start_3
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_1

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    if-nez v1, :cond_2

    const-string v10, "QuramBitmapFactory"

    const-string v11, "buffer is Null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v3, v0, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v8

    const-string v10, "QuramBitmapFactory"

    const-string v11, "IOException happens"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_2
    const-string v10, "QuramBitmapFactory"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "buffer size is "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v1, v10, v11, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_3
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget v4, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-le v4, v6, :cond_3

    iget v2, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    iput v6, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$0(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v4

    if-lt v4, v2, :cond_0

    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$1(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v4

    if-lt v4, v2, :cond_0

    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$0(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v3

    int-to-double v4, v3

    int-to-double v6, v2

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v3, v4

    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$1(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v4

    int-to-double v4, v4

    int-to-double v6, v2

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput v2, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_2
    :goto_1
    invoke-virtual {p1, v10, v11}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v4, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    move-object v1, v0

    goto :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    const-string v7, "QuramBitmapFactory"

    const-string v8, "option Fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v6

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v1, v5, [B

    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v7, 0x0

    invoke-static {v1, v7, v5, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v10, v11}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v7, "QuramBitmapFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decodeFileFromThumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v4, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    move-object v1, v0

    goto :goto_0
.end method

.method public static decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    packed-switch p5, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-nez v7, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p2, 0x0

    :cond_2
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const/4 v5, 0x0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter(JLandroid/graphics/Bitmap;IIII)I

    move-result v7

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTN(JLandroid/graphics/Bitmap;IIII)I

    move-result v7

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    if-ne v7, v0, :cond_5

    if-eqz p5, :cond_4

    const/4 v0, 0x1

    if-ne p5, v0, :cond_5

    :cond_4
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    :cond_5
    move v0, v7

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I
    .locals 9

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    packed-switch p6, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-nez v8, :cond_4

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const/4 v6, 0x0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIterToBuffer(JLjava/nio/Buffer;IIIII)I

    move-result v8

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, p7, 0x2

    if-ne v0, p3, :cond_3

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBuffer(JLjava/nio/Buffer;IIIII)I

    move-result v8

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne v8, v0, :cond_6

    if-eqz p6, :cond_5

    const/4 v0, 0x1

    if-ne p6, v0, :cond_6

    :cond_5
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    :cond_6
    move v0, v8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIterToNativeBufferArray(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III[JIII)I
    .locals 10

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-nez v9, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToNativeBufferArray(JIII[JIII)I

    move-result v9

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    :cond_3
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    :cond_4
    move v0, v9

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIterWithMidPointer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIIIZ)I
    .locals 12

    const/4 v11, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    packed-switch p6, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-nez v11, :cond_5

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const/4 v8, 0x0

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIterToBuffer(JLjava/nio/Buffer;IIIII)I

    move-result v11

    goto :goto_1

    :pswitch_2
    add-int/lit8 v2, p7, 0x2

    if-ne v2, p3, :cond_4

    if-eqz p8, :cond_3

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const/4 v5, 0x2

    move-object v4, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBufferMidpoint(JLjava/nio/Buffer;IIIIII)I

    move-result v11

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBuffer(JLjava/nio/Buffer;IIIII)I

    move-result v11

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    if-ne v11, v2, :cond_7

    if-eqz p6, :cond_6

    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_7

    :cond_6
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    :cond_7
    move v2, v11

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;II)Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Ljava/nio/ByteBuffer;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_1
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    invoke-static {p0, v0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFileToBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    invoke-virtual {p1, v6, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    if-eqz v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_2
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v3, :cond_3

    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    mul-int v3, p2, p3

    add-int/lit8 v4, p2, 0x1

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, p3, 0x1

    shr-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v6, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0
.end method

.method public static decodeFileToThumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIIZI)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v10

    if-nez v10, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_4
    if-eqz p5, :cond_7

    mul-int/lit8 v0, p6, 0x44

    add-int/lit8 v0, v0, 0x4

    new-array v3, v0, [B

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const/4 v7, 0x1

    move/from16 v4, p6

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGGetMidpoint(JLandroid/graphics/Bitmap;[BIIII)I

    move-result v10

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setMidpoint([BI)V

    :cond_5
    :goto_2
    if-nez v10, :cond_8

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_6
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    const/4 v9, 0x1

    move-object v6, v2

    move v7, p2

    move v8, p3

    invoke-static/range {v4 .. v9}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGThumbnail(JLandroid/graphics/Bitmap;III)I

    move-result v10

    goto :goto_2

    :cond_8
    const/4 v0, 0x6

    if-ne v10, v0, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_9
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static decodeImageToBuffer(Ljava/lang/String;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;Lcom/quramsoft/qrb/ImageBufferData;)I
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    const/4 v3, 0x2

    invoke-static {p0, p3, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v1

    if-eqz v1, :cond_3

    new-array v0, v6, [J

    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    invoke-static {v4, v5, v0, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGThumbnailToNativeBuffer(J[JII)I

    move-result v1

    if-ne v1, v6, :cond_2

    sget-object v3, Lcom/quramsoft/qrb/ImageBufferData$Type;->HANDLE:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput-object v3, p4, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput p1, p4, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    iput p2, p4, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    aget-wide v2, v0, v2

    iput-wide v2, p4, Lcom/quramsoft/qrb/ImageBufferData;->handle:J

    :cond_2
    if-nez v1, :cond_3

    :cond_3
    invoke-virtual {p3, v8, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    move v2, v1

    goto :goto_0
.end method

.method public static decodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I
    .locals 7

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I

    move-result v0

    return v0
.end method

.method public static decodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I
    .locals 8

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I

    move-result v0

    return v0
.end method

.method public static decodeStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string v6, "QuramBitmapFactory"

    const-string v7, "inputstream is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    if-gtz v3, :cond_1

    const-string v6, "QuramBitmapFactory"

    const-string v7, "inpustream open fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    new-array v1, v3, [B

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    const-string v6, "QuramBitmapFactory"

    const-string v7, "option Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    invoke-virtual {p3, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p3, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    goto :goto_0
.end method

.method public static decodeThumbnailByteArrayToBuffer([BIILcom/quramsoft/qrb/ImageBufferData;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 10

    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-lez p2, :cond_0

    array-length v5, p0

    add-int v6, p2, p1

    if-lt v5, v6, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    invoke-static {p0, p1, p2, p4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v5, :cond_2

    iput v4, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_2
    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v2

    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v0

    if-nez v1, :cond_3

    invoke-virtual {p4, v8, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0

    :cond_3
    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    mul-int v5, v2, v0

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    :goto_1
    iget-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    invoke-virtual {p4, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    iget-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p0, v5, p1, p2, p4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v5

    iput v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v5

    iput v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    invoke-virtual {p4, v8, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    iget-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_4
    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v5, :cond_5

    mul-int v5, v2, v0

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    mul-int v5, v2, v0

    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_6
    invoke-virtual {p4, v8, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto/16 :goto_0
.end method

.method public static getExifData(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetExifData(Ljava/lang/String;JLcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setExif(J)V

    goto :goto_0
.end method

.method public static getJPEGMidPointer(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    iget v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    invoke-static {v2, v3, v1, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->GetJPEGMidPoint(JII)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public static native nativeCreateDecBufferInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I
.end method

.method public static native nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativeDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativeDecodeFileToBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeDecodeJPEG(JLandroid/graphics/Bitmap;III)I
.end method

.method public static native nativeEncodeByteArray(Landroid/graphics/Bitmap;[BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeEncodeFileFromByte([BLjava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetExifData(Ljava/lang/String;JLcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetImageInfoFromFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativePartialDecodeByteArray([BIIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativePartialDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativePartialDecodeFile(Ljava/lang/String;IIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static partialDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 15

    const/4 v10, 0x0

    move-object/from16 v0, p3

    iget v13, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/4 v14, 0x0

    const/4 v12, 0x0

    if-gez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    if-gtz p2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    array-length v2, p0

    add-int v3, p2, p1

    if-ge v2, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_4
    :goto_1
    sub-int v7, p5, p4

    sub-int v8, p7, p6

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v9, p3

    invoke-static/range {v2 .. v9}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeByteArray([BIIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v12

    if-nez v10, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_4

    const/16 v2, 0x8

    move-object/from16 v0, p3

    iput v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_6
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-ge v2, v13, :cond_7

    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v2, v14

    div-int/2addr v2, v13

    move-object/from16 v0, p3

    iget v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v3, v12

    div-int/2addr v3, v13

    const/4 v4, 0x0

    invoke-static {v10, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    move-object v10, v11

    move-object/from16 v0, p3

    iput v13, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_7
    move-object v2, v10

    goto :goto_0
.end method

.method public static partialDecodeByteArrayToBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;IIIILcom/quramsoft/qrb/ImageBufferData;)I
    .locals 14

    const/4 v12, 0x0

    if-gez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-gtz p2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    array-length v2, p0

    add-int v3, p2, p1

    if-ge v2, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_4

    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-gez v2, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    if-nez p8, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_7
    :goto_1
    invoke-static/range {p0 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p3

    iget v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p3

    iget v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v11

    if-nez v12, :cond_9

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_7

    const/16 v2, 0x8

    move-object/from16 v0, p3

    iput v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_9
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    mul-int v2, v13, v11

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p8

    iput-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    :goto_2
    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sub-int v8, p5, p4

    sub-int v9, p7, p6

    move-object v2, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p6

    move-object/from16 v10, p3

    invoke-static/range {v2 .. v10}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v12

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_d

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v2, :cond_b

    mul-int v2, v13, v11

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p8

    iput-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_b
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    mul-int v2, v13, v11

    add-int/lit8 v3, v13, 0x1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v11, 0x1

    shr-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p8

    iput-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_c
    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static partialDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v9, 0x0

    const/4 v6, 0x0

    iget v10, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_1
    :goto_1
    sub-int v3, p3, p2

    sub-int v4, p5, p4

    move-object v0, p0

    move v1, p2

    move/from16 v2, p4

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeFile(Ljava/lang/String;IIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    if-nez v6, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    const/16 v0, 0x8

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v8

    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-ge v0, v10, :cond_4

    sub-int v0, p3, p2

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v11, v0, v1

    sub-int v0, p5, p4

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v8, v0, v1

    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v0, v11

    div-int/2addr v0, v10

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v1, v8

    div-int/2addr v1, v10

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    move-object v6, v7

    iput v10, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method

.method public static prepareDecodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIZ)I
    .locals 10

    const-wide/16 v8, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_0
    return v6

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getMidpoint()[B

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpoint:[B
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$2(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)[B

    move-result-object v2

    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpointOffset:I
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$3(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v3

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIterMidpoint(J[BIII)I

    move-result v6

    :goto_1
    if-nez v6, :cond_1

    invoke-virtual {p1, v8, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIter(JII)I

    move-result v6

    goto :goto_1
.end method

.method public static prepareDecodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;II)I
    .locals 6

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIter(JII)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v4, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0
.end method

.method public static native recycleNativeBuffer(J)V
.end method

.method public static round(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static translateBitmapFactoryOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .locals 4

    const/4 v3, 0x7

    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    iput v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    :goto_0
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$4(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$5(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    goto :goto_0

    :cond_1
    iput v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    goto :goto_0
.end method
