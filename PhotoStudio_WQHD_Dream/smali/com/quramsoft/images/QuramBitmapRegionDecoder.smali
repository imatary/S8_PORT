.class public Lcom/quramsoft/images/QuramBitmapRegionDecoder;
.super Ljava/lang/Object;
.source "QuramBitmapRegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuramBitmapRegionDecoder"


# instance fields
.field public mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

.field public mHeight:I

.field public mIsShareable:Z

.field public mIsUseQuramRegionDecoder:Z

.field public mIsUseSkia:Z

.field public mPathName:Ljava/lang/String;

.field public mType:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    iput-boolean v1, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    iput-boolean v1, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseSkia:Z

    iput-object v2, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mPathName:Ljava/lang/String;

    iput v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mWidth:I

    iput v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mHeight:I

    iput-boolean v1, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsShareable:Z

    iput v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mType:I

    return-void
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/quramsoft/images/QuramBitmapRegionDecoder;
    .locals 11

    const/4 v8, 0x0

    new-instance v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-direct {v1}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;-><init>()V

    new-instance v7, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v7}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v2, v6, [B

    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    :try_start_1
    iget-boolean v9, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-static {v2, v9, v6, p1, v7}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->newInstance([BIIZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    move-result-object v9

    iput-object v9, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    iget-object v9, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    if-nez v9, :cond_1

    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v8

    :cond_0
    :goto_1
    return-object v1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v9, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v9}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getType()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->setType(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v9, "QuramBitmapRegionDecoder"

    const-string v10, "newInstance : Bad Instance"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v8

    goto :goto_1
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/quramsoft/images/QuramBitmapRegionDecoder;
    .locals 10

    const/4 v7, 0x0

    new-instance v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-direct {v1}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;-><init>()V

    new-instance v5, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v5}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_1

    const-string v8, "QuramBitmapRegionDecoder"

    const-string v9, "inputstream is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    if-gtz v4, :cond_2

    const-string v8, "QuramBitmapRegionDecoder"

    const-string v9, "inpustream open fail"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    new-array v2, v4, [B

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    :try_start_2
    iget-boolean v8, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-static {v2, v8, v4, p1, v5}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->newInstance([BIIZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    move-result-object v8

    iput-object v8, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    iget-object v8, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    if-nez v8, :cond_3

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v7

    goto :goto_0

    :catch_1
    move-exception v3

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_3
    iget-object v8, v1, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v8}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getType()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->setType(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    const-string v8, "QuramBitmapRegionDecoder"

    const-string v9, "newInstance : Bad Instance"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v7

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/quramsoft/images/QuramBitmapRegionDecoder;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;-><init>()V

    new-instance v2, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v2}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    :goto_0
    :try_start_0
    iget-boolean v4, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v4, :cond_1

    invoke-static {p0, p1, v2}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->newInstance(Ljava/lang/String;ZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    move-result-object v4

    iput-object v4, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    iget-object v4, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iput-boolean v6, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v4, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v4}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getType()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->setType(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "QuramBitmapRegionDecoder"

    const-string v5, "newInstance : Bad Instance"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v3

    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;ZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoder;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-instance v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    :goto_0
    :try_start_0
    iget-boolean v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v3, :cond_1

    invoke-static {p0, p1, p2}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->newInstance(Ljava/lang/String;ZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    move-result-object v3

    iput-object v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    iget-object v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iput-boolean v5, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v3}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->setType(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "QuramBitmapRegionDecoder"

    const-string v4, "newInstance : Bad Instance"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    goto :goto_1
.end method

.method public static newInstance([BIIZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoder;
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;-><init>()V

    or-int v3, p1, p2

    if-ltz v3, :cond_0

    array-length v3, p0

    add-int v4, p1, p2

    if-ge v3, v4, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    :try_start_0
    iget-boolean v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v3, :cond_2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->newInstance([BIIZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    move-result-object v3

    iput-object v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    iget-object v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    move-object v0, v2

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v3, v0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v3}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->setType(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "QuramBitmapRegionDecoder"

    const-string v4, "newInstance : Bad Instance"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public cancelDecoding()V
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->cancelDecoding()V

    :cond_0
    return-void
.end method

.method public decodeRegion(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0, p1, p2}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->decodeRegion(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decodeRegionEx(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0, p1, p2}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->decodeRegionEx(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getPNGHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->getPNGWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/quramsoft/images/QuramBitmapRegionDecoder;->mType:I

    return-void
.end method
