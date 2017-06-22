.class public Lcom/quramsoft/images/QrBitmapRegionDecoder;
.super Ljava/lang/Object;
.source "QrBitmapRegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QrBitmapRegionDecoder"


# instance fields
.field public mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

.field public mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    iput-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    return-void
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/quramsoft/images/QrBitmapRegionDecoder;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/images/QrBitmapRegionDecoder;-><init>()V

    new-instance v1, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v1}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2, v1}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_0

    iget v3, v1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_0

    invoke-static {p0, p1}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    move-result-object v3

    iput-object v3, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    :cond_0
    iget-object v3, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-nez v3, :cond_1

    move-object v0, v2

    :cond_1
    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/quramsoft/images/QrBitmapRegionDecoder;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/images/QrBitmapRegionDecoder;-><init>()V

    new-instance v1, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v1}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v3, v3, v1}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeStream(Ljava/io/InputStream;IILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v2, v1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    invoke-static {p0, p1}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    :cond_0
    iget-object v2, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/quramsoft/images/QrBitmapRegionDecoder;
    .locals 4

    new-instance v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/images/QrBitmapRegionDecoder;-><init>()V

    new-instance v2, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v2}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_0

    iget v3, v2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_0

    invoke-static {p0, p1}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    move-result-object v3

    iput-object v3, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    :cond_0
    iget-object v3, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {p0, p1}, Lcom/quramsoft/images/QuramDngRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/quramsoft/images/QuramDngRegionDecoder;

    move-result-object v3

    iput-object v3, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;ZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QrBitmapRegionDecoder;
    .locals 4

    new-instance v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/images/QrBitmapRegionDecoder;-><init>()V

    new-instance v2, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v2}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_0

    iget v3, v2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_0

    invoke-static {p0, p1, p2}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->newInstance(Ljava/lang/String;ZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    move-result-object v3

    iput-object v3, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    :cond_0
    iget-object v3, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {p0, p1}, Lcom/quramsoft/images/QuramDngRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/quramsoft/images/QuramDngRegionDecoder;

    move-result-object v3

    iput-object v3, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    invoke-virtual {v3}, Lcom/quramsoft/images/QuramDngRegionDecoder;->getWidth()I

    move-result v3

    iput v3, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    iget-object v3, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    invoke-virtual {v3}, Lcom/quramsoft/images/QuramDngRegionDecoder;->getHeight()I

    move-result v3

    iput v3, p2, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance([BIIZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QrBitmapRegionDecoder;
    .locals 3

    new-instance v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/images/QrBitmapRegionDecoder;-><init>()V

    new-instance v1, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v1}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, p2, v1}, Lcom/quramsoft/images/QuramBitmapFactory;->decodeByteArray([BIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v2, v1, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->newInstance([BIIZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    :cond_0
    iget-object v2, v0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public cancelDecoding()V
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->cancelDecoding()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramDngRegionDecoder;->cancelDecoding()V

    goto :goto_0
.end method

.method public decodeRegion(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/quramsoft/images/QuramDngRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decodeRegionEx(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->decodeRegionEx(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/quramsoft/images/QuramDngRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramDngRegionDecoder;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramDngRegionDecoder;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecycled()Z
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->isRecycled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    const-string v0, "quram"

    const-string v1, "called recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mRd:Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->recycle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QrBitmapRegionDecoder;->mDngRd:Lcom/quramsoft/images/QuramDngRegionDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramDngRegionDecoder;->recycle()V

    goto :goto_0
.end method
