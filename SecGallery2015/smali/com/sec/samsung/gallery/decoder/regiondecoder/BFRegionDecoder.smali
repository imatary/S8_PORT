.class public Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;
.super Ljava/lang/Object;
.source "BFRegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BFRegionDecoder"


# instance fields
.field private mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;-><init>()V

    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BFRegionDecoder"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;-><init>()V

    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BFRegionDecoder"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;-><init>()V

    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BFRegionDecoder"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newInstance([BIIZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;-><init>()V

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BFRegionDecoder"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    return-void
.end method
