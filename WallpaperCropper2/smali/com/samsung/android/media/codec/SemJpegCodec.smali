.class public Lcom/samsung/android/media/codec/SemJpegCodec;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final COMPRESS_LEVEL_HIGH:I = 0x1

.field public static final COMPRESS_LEVEL_LOW:I = 0x64

.field public static final COMPRESS_LEVEL_NORMAL:I = 0x32

.field public static final ENCODE_ERROR:I = 0x0

.field public static final ENCODE_SUCCESS:I = 0x1

.field public static final ERROR_CORRUPTED_BS:I = -0x3

.field public static final ERROR_INVALID_ARG:I = -0x1

.field public static final ERROR_INVALID_CONFIG:I = -0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_AVAILABLE:I = -0x6

.field public static final ERROR_NOT_SUFF_MEM:I = -0x4

.field public static final ERROR_NOT_SUPPORTED:I = -0x5

.field public static final ERROR_SMALL_BS_BUF:I = -0x8

.field public static final ERROR_SMALL_IMB_BUF:I = -0x7

.field public static final ERROR_UNKNOWN:I = -0x64

.field public static final GET_LENGTH_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Jpeg_Codec"

.field public static final TYPE_QURAM_ATOM:I = 0x1

.field public static final TYPE_QURAM_QJPEG:I = 0x0

.field public static final TYPE_SQUEEZER:I = 0x3

.field public static final TYPE_SRIB:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "Qjpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "saiv_codec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(ILjava/lang/String;II[I)[B
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg decode : height or width is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string/jumbo v3, "image/jpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    move v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/codec/SemJpegCodec;->decodeF2BRotate(ILjava/lang/String;[BII[I)[B

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg decode "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v3, "Fail jpeg decode : Format is not Jpeg "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Jpeg_Codec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v2, "Susses jpeg decode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static decode(ILjava/lang/String;[BI)[B
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg decode : height or width is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, p1, p2, p3, v3}, Lcom/samsung/android/media/codec/SemJpegCodec;->decodeF2B(ILjava/lang/String;[BII)[B

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg decode : output buffer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v2, "Fail jpeg decode : Format is not Jpeg "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Jpeg_Codec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v2, "Susses jpeg decode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static decode(ILjava/lang/String;[BII)[B
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg decode : height or width is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/media/codec/SemJpegCodec;->decodeF2B(ILjava/lang/String;[BII)[B

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg decode "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v2, "Fail jpeg decode : Format is not Jpeg "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Jpeg_Codec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v2, "Susses jpeg decode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static decode(ILjava/lang/String;[BII[I)[B
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg decode : height or width is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/media/codec/SemJpegCodec;->decodeF2BRotate(ILjava/lang/String;[BII[I)[B

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg decode "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v2, "Fail jpeg decode : Format is not Jpeg "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Jpeg_Codec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v2, "Susses jpeg decode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static decode(I[B[BI)[B
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/codec/SemJpegCodec;->decodeB2B(I[B[BII)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg decode "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v2, "Susses jpeg decode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static decode(I[B[BII)[B
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/media/codec/SemJpegCodec;->decodeB2B(I[B[BII)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg decode "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v2, "Susses jpeg decode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static decode(I[B[BII[I)[B
    .locals 3

    const/4 v2, 0x0

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/media/codec/SemJpegCodec;->decodeB2BRotate(I[B[BII[I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg decode "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v2, "Susses jpeg decode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static native decodeB2B(I[B[BII)[B
.end method

.method private static native decodeB2BRotate(I[B[BII[I)[B
.end method

.method private static native decodeF2B(ILjava/lang/String;[BII)[B
.end method

.method private static native decodeF2BRotate(ILjava/lang/String;[BII[I)[B
.end method

.method public static encode(I[BLjava/lang/String;IIII)I
    .locals 5

    const/4 v4, 0x0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/media/codec/SemJpegCodec;->encodeF2B(I[BLjava/lang/String;IIII)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "Jpeg_Codec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail jpeg encode error code :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Susses jpeg encode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static encode(I[B[BIIII)[B
    .locals 3

    const/4 v2, 0x0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/media/codec/SemJpegCodec;->encodeB2B(I[B[BIIII)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail jpeg encode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string/jumbo v1, "Jpeg_Codec"

    const-string/jumbo v2, "Susses jpeg encode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static native encodeB2B(I[B[BIIII)[B
.end method

.method private static native encodeF2B(I[BLjava/lang/String;IIII)I
.end method

.method public static getHeight(ILjava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail inputPath "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/media/codec/SemJpegCodec;->getImageHeight(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native getImageHeight(Ljava/lang/String;)I
.end method

.method private static native getImageWidth(Ljava/lang/String;)I
.end method

.method public static getWidth(ILjava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "Jpeg_Codec"

    const-string/jumbo v1, "Fail inputPath "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/media/codec/SemJpegCodec;->getImageWidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
