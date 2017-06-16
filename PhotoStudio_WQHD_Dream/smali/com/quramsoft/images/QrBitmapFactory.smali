.class public Lcom/quramsoft/images/QrBitmapFactory;
.super Ljava/lang/Object;
.source "QrBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/images/QrBitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "QrBitmapFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckNinePng(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/quramsoft/images/QuramDngBitmap;->CheckNinePng(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static cancelDecoding(Lcom/quramsoft/images/QrBitmapFactory$Options;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/quramsoft/images/QuramDngBitmap;->cancelDecoding(Lcom/quramsoft/images/QrBitmapFactory$Options;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static compressToByte(Landroid/graphics/Bitmap;Ljava/lang/String;[BII)I
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/images/QuramBitmapFactory;->compressToByte(Landroid/graphics/Bitmap;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static compressToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILcom/quramsoft/images/QrBitmapFactory$Options;)I
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/images/QuramBitmapFactory;->compressToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v0

    return v0
.end method

.method public static compressToFile([BLjava/lang/String;Ljava/lang/String;IIILcom/quramsoft/images/QrBitmapFactory$Options;)I
    .locals 1

    invoke-static/range {p0 .. p6}, Lcom/quramsoft/images/QuramBitmapFactory;->compressToFile([BLjava/lang/String;Ljava/lang/String;IIILcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v0

    return v0
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/quramsoft/images/QuramDngBitmap;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeByteArray([BIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v2, :cond_1

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-gtz v2, :cond_0

    iget v2, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/images/QuramDngBitmap;->decodeByteArray([BIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/quramsoft/images/QuramDngBitmap;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v3, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-gtz v3, :cond_0

    iget v3, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    if-nez v0, :cond_2

    :try_start_0
    invoke-static {p0, p1}, Lcom/quramsoft/images/QuramDngBitmap;->decodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/quramsoft/images/QuramDngBitmap;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v3, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-gtz v3, :cond_0

    iget v3, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    if-nez v0, :cond_2

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/quramsoft/images/QuramDngBitmap;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;II)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;III)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decodeImageToBuffer(Ljava/lang/String;IILcom/quramsoft/images/QrBitmapFactory$Options;Lcom/quramsoft/images/QuramImageBufferData;)I
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeImageToBuffer(Ljava/lang/String;IILcom/quramsoft/images/QrBitmapFactory$Options;Lcom/quramsoft/images/QuramImageBufferData;)I

    move-result v0

    return v0
.end method

.method public static decodePreview(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/quramsoft/images/QuramDngBitmap;->decodePreview(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/quramsoft/images/QuramDngBitmap;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/quramsoft/images/QuramDngBitmap;->decodeResource(Landroid/content/res/Resources;ILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/quramsoft/images/QuramDngBitmap;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;IILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeStream(Ljava/io/InputStream;IILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v3, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v3, :cond_1

    iget v3, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-gtz v3, :cond_0

    iget v3, p3, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    if-nez v0, :cond_2

    :try_start_0
    invoke-static {p0, p3}, Lcom/quramsoft/images/QuramDngBitmap;->decodeStream(Ljava/io/InputStream;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v3, v3, p2}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeStream(Ljava/io/InputStream;IILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v3, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-gtz v3, :cond_0

    iget v3, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    if-nez v0, :cond_2

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/quramsoft/images/QuramDngBitmap;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeStream(Ljava/io/InputStream;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v3, v3, p1}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeStream(Ljava/io/InputStream;IILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v3, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-gtz v3, :cond_0

    iget v3, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    if-nez v0, :cond_2

    :try_start_0
    invoke-static {p0, p1}, Lcom/quramsoft/images/QuramDngBitmap;->decodeStream(Ljava/io/InputStream;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeThumbnailByteArrayToBuffer([BIILcom/quramsoft/images/QuramImageBufferData;Lcom/quramsoft/images/QrBitmapFactory$Options;)I
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeThumbnailByteArrayToBuffer([BIILcom/quramsoft/images/QuramImageBufferData;Lcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v0

    return v0
.end method

.method public static getExifInfoFromFile(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaExif;)I
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/quramsoft/images/QuramDngBitmap;->getExifInfoFromFile(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaExif;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMetadataFromFile(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaMetadata;)I
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/quramsoft/images/QuramDngBitmap;->getMetadataFromFile(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaMetadata;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getXmpInfo(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaExif;Lcom/quramsoft/images/QuramDngJavaCRS;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/quramsoft/images/QuramDngBitmap;->getXmpInfo(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaExif;Lcom/quramsoft/images/QuramDngJavaCRS;)I

    move-result v0

    return v0
.end method

.method public static partialDecodeByteArray([BIILcom/quramsoft/images/QrBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static/range {p0 .. p7}, Lcom/quramsoft/images/QuramBitmapFactory;->partialDecodeByteArray([BIILcom/quramsoft/images/QrBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static partialDecodeByteArrayToBuffer([BIILcom/quramsoft/images/QrBitmapFactory$Options;IIIILcom/quramsoft/images/QuramImageBufferData;)I
    .locals 1

    invoke-static/range {p0 .. p8}, Lcom/quramsoft/images/QuramBitmapFactory;->partialDecodeByteArrayToBuffer([BIILcom/quramsoft/images/QrBitmapFactory$Options;IIIILcom/quramsoft/images/QuramImageBufferData;)I

    move-result v0

    return v0
.end method

.method public static partialDecodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/quramsoft/images/QuramBitmapFactory;->partialDecodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
