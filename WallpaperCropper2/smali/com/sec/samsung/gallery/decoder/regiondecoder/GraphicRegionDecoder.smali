.class public Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;
.super Ljava/lang/Object;
.source "GraphicRegionDecoder.java"

# interfaces
.implements Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cropper2_GraphicDecoder"


# instance fields
.field mDecoder:Landroid/graphics/BitmapRegionDecoder;


# direct methods
.method private constructor <init>(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    return-void
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;-><init>(Landroid/graphics/BitmapRegionDecoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_GraphicDecoder"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Cropper2_GraphicDecoder"

    const-string/jumbo v2, "getting decoder failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;-><init>(Landroid/graphics/BitmapRegionDecoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_GraphicDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getting decoder failed for path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :cond_0
    return-object v4
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    :cond_0
    return-void
.end method
