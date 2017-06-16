.class public Lcom/quramsoft/images/QuramDngBitmap;
.super Ljava/lang/Object;
.source "QuramDngBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/images/QuramDngBitmap$UseInfoType;
    }
.end annotation


# static fields
.field public static LogFile:Ljava/io/File;

.field public static ResultPath:Ljava/lang/String;

.field public static fLog:Ljava/io/FileOutputStream;

.field public static fOut:Ljava/io/FileOutputStream;


# instance fields
.field decodedSize:I

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/pictures/BitMapCreate.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/quramsoft/images/QuramDngBitmap;->ResultPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/quramsoft/images/QuramDngBitmap;->ResultPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/quramsoft/images/QuramDngBitmap;->LogFile:Ljava/io/File;

    :try_start_0
    const-string v0, "QuramCodecPE"

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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/quramsoft/images/QuramDngBitmap;->size:I

    iput v0, p0, Lcom/quramsoft/images/QuramDngBitmap;->decodedSize:I

    return-void
.end method

.method public static CheckNinePng(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v3, v2, -0x6

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".9.png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static CompressionLog(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/quramsoft/images/QuramDngBitmap;->fLog:Ljava/io/FileOutputStream;

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/quramsoft/images/QuramDngBitmap;->LogFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v2, Lcom/quramsoft/images/QuramDngBitmap;->fLog:Ljava/io/FileOutputStream;

    :cond_0
    sget-object v2, Lcom/quramsoft/images/QuramDngBitmap;->fLog:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static CompressionLogClose(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/quramsoft/images/QuramDngBitmap;->fLog:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/quramsoft/images/QuramDngBitmap;->fLog:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v2, Lcom/quramsoft/images/QuramDngBitmap;->fLog:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static native DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I
.end method

.method public static native DecodeDNGPreviewImageBufferJNI([BLandroid/graphics/Bitmap;ILcom/quramsoft/images/QrBitmapFactory$Options;)I
.end method

.method public static SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v6, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevel:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevel:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    array-length v5, v5

    invoke-static {p0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileBlackLevel:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v6, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevel:[[[D

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevel:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    array-length v5, v5

    invoke-static {v3, v4, p0, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserBlackLevel:[[[D

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    array-length v3, v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static cancelDecoding(Lcom/quramsoft/images/QrBitmapFactory$Options;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/quramsoft/images/QuramDngBitmap;->cancelDecodingDNGImageBufferJNI(Lcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "QURAM_DNG"

    const-string v2, "cancelDecoding fail "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public static native cancelDecodingDNGImageBufferJNI(Lcom/quramsoft/images/QrBitmapFactory$Options;)I
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 8

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    new-instance v5, Lcom/quramsoft/images/QrBitmapFactory$Options;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    const/4 v1, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x100

    new-array v3, v0, [D

    iget-object v4, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {p0, p2, v3, v4, v5}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v0

    if-gez v0, :cond_2

    move-object v6, v1

    :goto_0
    return-object v6

    :cond_2
    invoke-static {v3, v5}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    iget v0, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v2, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v0, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, v5}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    move-object v0, p0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-object v6, v1

    goto :goto_0
.end method

.method public static decodeByteArray([BIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x1

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance p3, Lcom/quramsoft/images/QrBitmapFactory$Options;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    :cond_2
    const/4 v1, 0x0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x100

    new-array v3, v0, [D

    iget-object v4, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {p0, p2, v3, v4, p3}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v0

    if-gez v0, :cond_3

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_3
    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    if-nez v0, :cond_4

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    if-nez v0, :cond_4

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    if-nez v0, :cond_4

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    if-eqz v0, :cond_9

    :cond_4
    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    if-ge v0, v2, :cond_5

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    if-lt v0, v2, :cond_6

    :cond_5
    move-object v0, v9

    goto :goto_0

    :cond_6
    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    sub-int/2addr v0, v2

    iput v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    sub-int/2addr v0, v2

    iput v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginX:I

    if-nez v0, :cond_7

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginY:I

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr v0, v2

    iput v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr v0, v2

    iput v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr v0, v2

    iput v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr v0, v2

    iput v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    :cond_8
    :goto_1
    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iput v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    iput v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    iget-boolean v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_c

    move-object v0, v1

    goto :goto_0

    :cond_9
    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropWidth:I

    if-ltz v0, :cond_a

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropWidth:I

    :goto_2
    iput v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropHeight:I

    if-ltz v0, :cond_b

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropHeight:I

    :goto_3
    iput v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    goto :goto_1

    :cond_a
    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    goto :goto_2

    :cond_b
    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    goto :goto_3

    :cond_c
    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    if-lez v0, :cond_d

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    if-gtz v0, :cond_e

    :cond_d
    move-object v0, v9

    goto :goto_0

    :cond_e
    invoke-static {v3, p3}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v0, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, p3}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    move-object v0, p0

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    int-to-float v8, v0

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    int-to-float v7, v0

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_11

    iput v10, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    :cond_f
    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-eq v10, v0, :cond_10

    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v0, v0

    div-float v0, v8, v0

    float-to-int v0, v0

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v2, v2

    div-float v2, v7, v2

    float-to-int v2, v2

    invoke-static {v1, v0, v2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_10
    move-object v0, v1

    goto/16 :goto_0

    :cond_11
    iget v0, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_f

    move-object v0, v9

    goto/16 :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const-wide/16 v8, 0x0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    long-to-int v2, v8

    new-array v0, v2, [B

    long-to-int v2, v8

    invoke-virtual {v11, v0, v12, v2}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    new-instance v5, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v5, v12}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x100

    new-array v3, v2, [D

    iget-object v4, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    long-to-int v2, v8

    invoke-static {v0, v2, v3, v4, v5}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v6, v1

    :goto_0
    return-object v6

    :cond_0
    invoke-static {v3, v5}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    iget v2, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v12, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v2, v12, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, v5}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    long-to-int v2, v8

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-object v6, v1

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v1, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const-wide/16 v8, 0x0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    long-to-int v2, v8

    new-array v0, v2, [B

    const/4 v2, 0x0

    long-to-int v5, v8

    invoke-virtual {v10, v0, v2, v5}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    if-nez p1, :cond_0

    new-instance p1, Lcom/quramsoft/images/QrBitmapFactory$Options;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x100

    new-array v3, v2, [D

    iget-object v4, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    long-to-int v2, v8

    invoke-static {v0, v2, v3, v4, p1}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v2

    if-gez v2, :cond_1

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    if-nez v2, :cond_2

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    if-nez v2, :cond_2

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    if-nez v2, :cond_2

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    if-eqz v2, :cond_8

    :cond_2
    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    if-ge v2, v5, :cond_3

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    if-lt v2, v5, :cond_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    sub-int/2addr v2, v5

    iput v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    sub-int/2addr v2, v5

    iput v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginX:I

    if-nez v2, :cond_5

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginY:I

    if-eqz v2, :cond_6

    :cond_5
    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr v2, v5

    iput v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr v2, v5

    iput v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr v2, v5

    iput v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr v2, v5

    iput v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    :cond_6
    :goto_1
    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iput v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    iput v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    if-lez v2, :cond_7

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    if-gtz v2, :cond_b

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropWidth:I

    if-ltz v2, :cond_9

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropWidth:I

    :goto_2
    iput v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropHeight:I

    if-ltz v2, :cond_a

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropHeight:I

    :goto_3
    iput v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    goto :goto_1

    :cond_9
    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    goto :goto_2

    :cond_a
    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    goto :goto_3

    :cond_b
    iget-boolean v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v2, :cond_c

    move-object v2, v1

    goto :goto_0

    :cond_c
    invoke-static {v3, p1}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v2, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, p1}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    long-to-int v2, v8

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    int-to-float v12, v2

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    int-to-float v11, v2

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-nez v2, :cond_f

    const/4 v2, 0x1

    iput v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    :cond_d
    const/4 v2, 0x1

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-eq v2, v5, :cond_e

    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v2, v2

    div-float v2, v12, v2

    float-to-int v2, v2

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v5

    div-float v5, v11, v5

    float-to-int v5, v5

    const/4 v13, 0x1

    invoke-static {v1, v2, v5, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_e
    move-object v2, v1

    goto/16 :goto_0

    :cond_f
    iget v2, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-gez v2, :cond_d

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v7, 0x0

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {v7, v0, v9, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    new-instance v5, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v5, v9}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    const/4 v1, 0x0

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v9, 0x100

    new-array v3, v9, [D

    iget-object v4, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {v0, v2, v3, v4, v5}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v9

    if-gez v9, :cond_0

    move-object v6, v1

    :goto_0
    return-object v6

    :cond_0
    invoke-static {v3, v5}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    iget v9, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v10, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v9, v10, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, v5}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-object v6, v1

    goto :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {v6, v0, v5, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-nez p2, :cond_0

    new-instance p2, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {p2, v5}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x100

    new-array v3, v5, [D

    iget-object v4, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {v0, v2, v3, v4, p2}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v5

    if-gez v5, :cond_1

    move-object v5, v1

    :goto_0
    return-object v5

    :cond_1
    invoke-static {v3, p2}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v10, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v5, v10, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v5, :cond_2

    move-object v5, v1

    goto :goto_0

    :cond_2
    iget-object v4, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, p2}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    int-to-float v9, v5

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    int-to-float v8, v5

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-nez v5, :cond_5

    iput v11, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    :cond_3
    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-eq v11, v5, :cond_4

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v5

    div-float v5, v9, v5

    float-to-int v5, v5

    iget v10, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v10, v10

    div-float v10, v8, v10

    float-to-int v10, v10

    invoke-static {v1, v5, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    move-object v5, v1

    goto :goto_0

    :cond_5
    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-gez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static decodePreview(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const-wide/16 v4, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    long-to-int v9, v4

    new-array v0, v9, [B

    long-to-int v9, v4

    invoke-virtual {v6, v0, v10, v9}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    new-instance v7, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v7, v10}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    long-to-int v9, v4

    invoke-static {v0, v9, v7}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGPreviewImageBufferJNI([BILcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v9

    if-gez v9, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    iget v9, v7, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v10, v7, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v9, v10, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    long-to-int v9, v4

    invoke-static {v0, v1, v9, v7}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGPreviewImageBufferJNI([BLandroid/graphics/Bitmap;ILcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v9

    if-ltz v9, :cond_0

    move-object v8, v1

    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {v7, v0, v9, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    new-instance v5, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v5, v9}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    const/4 v1, 0x0

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v9, 0x100

    new-array v3, v9, [D

    iget-object v4, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {v0, v2, v3, v4, v5}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v9

    if-gez v9, :cond_0

    move-object v6, v1

    :goto_0
    return-object v6

    :cond_0
    invoke-static {v3, v5}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    iget v9, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v10, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v9, v10, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, v5}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-object v6, v1

    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {v6, v0, v5, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-nez p2, :cond_0

    new-instance p2, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {p2, v5}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x100

    new-array v3, v5, [D

    iget-object v4, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {v0, v2, v3, v4, p2}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v5

    if-gez v5, :cond_1

    move-object v5, v1

    :goto_0
    return-object v5

    :cond_1
    invoke-static {v3, p2}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v10, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v5, v10, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v5, :cond_2

    move-object v5, v1

    goto :goto_0

    :cond_2
    iget-object v4, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, p2}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    int-to-float v9, v5

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    int-to-float v8, v5

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-nez v5, :cond_5

    iput v11, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    :cond_3
    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-eq v11, v5, :cond_4

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v5

    div-float v5, v9, v5

    float-to-int v5, v5

    iget v10, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v10, v10

    div-float v10, v8, v10

    float-to-int v10, v10

    invoke-static {v1, v5, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    move-object v5, v1

    goto :goto_0

    :cond_5
    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-gez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v7, p0

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {v7, v0, v9, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    new-instance v5, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v5, v9}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    const/4 v1, 0x0

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v9, 0x100

    new-array v3, v9, [D

    iget-object v4, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {v0, v2, v3, v4, v5}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v9

    if-gez v9, :cond_0

    move-object v6, v1

    :goto_0
    return-object v6

    :cond_0
    invoke-static {v3, v5}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    iget v9, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v10, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v9, v10, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, v5, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, v5}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-object v6, v1

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    move-object v6, p0

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {v6, v0, v5, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-nez p2, :cond_0

    new-instance p2, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {p2, v5}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x100

    new-array v3, v5, [D

    iget-object v4, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {v0, v2, v3, v4, p2}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v5

    if-gez v5, :cond_1

    move-object v5, v1

    :goto_0
    return-object v5

    :cond_1
    invoke-static {v3, p2}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v10, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v5, v10, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v5, :cond_2

    move-object v5, v1

    goto :goto_0

    :cond_2
    iget-object v4, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, p2}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    int-to-float v9, v5

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    int-to-float v8, v5

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-nez v5, :cond_5

    iput v11, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    :cond_3
    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-eq v11, v5, :cond_4

    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v5

    div-float v5, v9, v5

    float-to-int v5, v5

    iget v10, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v10, v10

    div-float v10, v8, v10

    float-to-int v10, v10

    invoke-static {v1, v5, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    move-object v5, v1

    goto :goto_0

    :cond_5
    iget v5, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-gez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    move-object v6, p0

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {v6, v0, v5, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-nez p1, :cond_0

    new-instance p1, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {p1, v5}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x100

    new-array v3, v5, [D

    iget-object v4, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    invoke-static {v0, v2, v3, v4, p1}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v5

    if-gez v5, :cond_1

    move-object v5, v1

    :goto_0
    return-object v5

    :cond_1
    invoke-static {v3, p1}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iget v10, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v5, v10, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v5, :cond_2

    move-object v5, v1

    goto :goto_0

    :cond_2
    iget-object v4, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    invoke-static {v3, p1}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    int-to-float v9, v5

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    int-to-float v8, v5

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-nez v5, :cond_5

    iput v11, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    :cond_3
    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-eq v11, v5, :cond_4

    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v5

    div-float v5, v9, v5

    float-to-int v5, v5

    iget v10, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v10, v10

    div-float v10, v8, v10

    float-to-int v10, v10

    invoke-static {v1, v5, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    move-object v5, v1

    goto :goto_0

    :cond_5
    iget v5, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-gez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static dumpXMPfromFile(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaExif;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v12, 0x0

    new-array v8, v9, [J

    new-array v7, v9, [I

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v5, p0, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v9, v2

    new-array v4, v9, [B

    long-to-int v9, v2

    invoke-virtual {v5, v4, v12, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v6, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-direct {v6}, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;-><init>()V

    long-to-int v9, v2

    invoke-static {v4, v9, v8, v7, v6}, Lcom/quramsoft/images/QuramDngBitmap;->parseXMPBufferJNI([BI[J[ILcom/quramsoft/images/QuramDngJavaExifPrimitive;)I

    move-result v9

    if-gez v9, :cond_0

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, v6}, Lcom/quramsoft/images/QuramDngJavaExif;->buildExif(Lcom/quramsoft/images/QuramDngJavaExifPrimitive;)V

    aget v9, v7, v12

    new-array v1, v9, [B

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    aget-wide v10, v8, v12

    invoke-virtual {v5, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    aget v9, v7, v12

    invoke-virtual {v5, v1, v12, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0
.end method

.method public static native finalizeRegionDecoderHandle(Lcom/quramsoft/images/QrBitmapFactory$Options;)I
.end method

.method public static getExifInfoFromFile(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaExif;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    long-to-int v6, v2

    new-array v4, v6, [B

    const/4 v6, 0x0

    long-to-int v7, v2

    invoke-virtual {v1, v4, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    new-instance v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-direct {v5}, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;-><init>()V

    long-to-int v6, v2

    invoke-static {v4, v6, v5}, Lcom/quramsoft/images/QuramDngBitmap;->parseExifInfoJNI([BILcom/quramsoft/images/QuramDngJavaExifPrimitive;)I

    move-result v6

    if-gez v6, :cond_0

    const/4 v6, -0x1

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p1, v5}, Lcom/quramsoft/images/QuramDngJavaExif;->buildExif(Lcom/quramsoft/images/QuramDngJavaExifPrimitive;)V

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static getMetadataFromFile(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaMetadata;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    long-to-int v8, v2

    new-array v4, v8, [B

    const/4 v8, 0x0

    long-to-int v9, v2

    invoke-virtual {v1, v4, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    new-instance v7, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;

    invoke-direct {v7}, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;-><init>()V

    new-instance v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-direct {v5}, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;-><init>()V

    new-instance v6, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-direct {v6}, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;-><init>()V

    long-to-int v8, v2

    invoke-static {v4, v8, v7, v5, v6}, Lcom/quramsoft/images/QuramDngBitmap;->parseMetadataJNI([BILcom/quramsoft/images/QuramDngJavaMetadataPrimitive;Lcom/quramsoft/images/QuramDngJavaExifPrimitive;Lcom/quramsoft/images/QuramDngJavaExifPrimitive;)I

    move-result v8

    if-gez v8, :cond_0

    const/4 v8, -0x1

    :goto_0
    return v8

    :cond_0
    iput-object v6, v7, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mOriginalExif:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-virtual {p1, v7}, Lcom/quramsoft/images/QuramDngJavaMetadata;->buildMetadata(Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;)V

    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static getXmpInfo(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaExif;Lcom/quramsoft/images/QuramDngJavaCRS;)I
    .locals 15

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v4, Lcom/quramsoft/images/QuramDngJavaExif;

    invoke-direct {v4}, Lcom/quramsoft/images/QuramDngJavaExif;-><init>()V

    :try_start_0
    invoke-static {p0, v4}, Lcom/quramsoft/images/QuramDngBitmap;->dumpXMPfromFile(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaExif;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_0
    :try_start_1
    new-instance v8, Lcom/quramsoft/images/XMLParser;

    invoke-direct {v8}, Lcom/quramsoft/images/XMLParser;-><init>()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    :goto_1
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    :try_start_2
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v10, v11

    :goto_2
    invoke-virtual {v7, v10}, Lcom/quramsoft/images/XMLParser;->getDom(Ljava/io/ByteArrayInputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/quramsoft/images/XMLParser;->setRootNode(Lorg/w3c/dom/Document;)V

    iget-object v13, v7, Lcom/quramsoft/images/XMLParser;->root:Lorg/w3c/dom/Node;

    invoke-virtual {v7, v13}, Lcom/quramsoft/images/XMLParser;->getAllDesc(Lorg/w3c/dom/Node;)Z

    move-result v5

    iget-object v13, v7, Lcom/quramsoft/images/XMLParser;->exif:Lcom/quramsoft/images/QuramDngJavaExif;

    iget-object v14, v7, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-virtual {v13, v14}, Lcom/quramsoft/images/QuramDngJavaExif;->buildExif(Lcom/quramsoft/images/QuramDngJavaExifPrimitive;)V

    iget-object v0, v7, Lcom/quramsoft/images/XMLParser;->exif:Lcom/quramsoft/images/QuramDngJavaExif;

    move-object/from16 p1, v0

    iget-object v0, v7, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    move-object/from16 p2, v0

    const/4 v13, 0x1

    return v13

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method public static native parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I
.end method

.method public static native parseDNGPreviewImageBufferJNI([BILcom/quramsoft/images/QrBitmapFactory$Options;)I
.end method

.method public static native parseExifInfoJNI([BILcom/quramsoft/images/QuramDngJavaExifPrimitive;)I
.end method

.method public static native parseMetadataJNI([BILcom/quramsoft/images/QuramDngJavaMetadataPrimitive;Lcom/quramsoft/images/QuramDngJavaExifPrimitive;Lcom/quramsoft/images/QuramDngJavaExifPrimitive;)I
.end method

.method public static native parseXMPBufferJNI([BI[J[ILcom/quramsoft/images/QuramDngJavaExifPrimitive;)I
.end method
