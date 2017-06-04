.class public Lcom/sec/android/gallery3d/data/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;


# static fields
.field private static final IMAGE_CACHE_SECURITY_KEY:Ljava/lang/String; = "Sam2016Sung"

.field public static final IMAGE_CACHE_VERSION:I = 0x9

.field private static final bUseLruCache:Z


# instance fields
.field private mDiskCache:Lcom/sec/android/gallery3d/data/ImageCachable;

.field private mLruCacheManager:Lcom/sec/android/gallery3d/data/LruCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLruCache:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ImageCacheService;->bUseLruCache:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ImageCacheService;->bUseLruCache:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/LruCacheManager;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/data/LruCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mLruCacheManager:Lcom/sec/android/gallery3d/data/LruCacheManager;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/data/ImageDiskCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mDiskCache:Lcom/sec/android/gallery3d/data/ImageCachable;

    goto :goto_0
.end method

.method private makeKey(Lcom/sec/android/gallery3d/data/Path;JI)[B
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Sam2016Sung"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public clearImageData(Lcom/sec/android/gallery3d/data/Path;JI)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/sec/android/gallery3d/data/Path;JI)[B

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ImageCacheService;->bUseLruCache:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mLruCacheManager:Lcom/sec/android/gallery3d/data/LruCacheManager;

    invoke-virtual {v1, v0, p4}, Lcom/sec/android/gallery3d/data/LruCacheManager;->removeImageData([BI)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mDiskCache:Lcom/sec/android/gallery3d/data/ImageCachable;

    invoke-interface {v1, v0, p4}, Lcom/sec/android/gallery3d/data/ImageCachable;->clearImageData([BI)V

    goto :goto_0
.end method

.method public clearMemory()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ImageCacheService;->bUseLruCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mLruCacheManager:Lcom/sec/android/gallery3d/data/LruCacheManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LruCacheManager;->clearMemory()V

    :cond_0
    return-void
.end method

.method public deleteBlobCache(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCurrentDiskCacheSize()J
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ImageCacheService;->bUseLruCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mLruCacheManager:Lcom/sec/android/gallery3d/data/LruCacheManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LruCacheManager;->getCurrentDiskCacheSize()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mDiskCache:Lcom/sec/android/gallery3d/data/ImageCachable;

    check-cast v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ImageDiskCache;->getCurrentDiskCacheSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/sec/android/gallery3d/data/Path;JI)[B

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ImageCacheService;->bUseLruCache:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mLruCacheManager:Lcom/sec/android/gallery3d/data/LruCacheManager;

    invoke-virtual {v1, v0, p4, p5}, Lcom/sec/android/gallery3d/data/LruCacheManager;->getImageData([BILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mDiskCache:Lcom/sec/android/gallery3d/data/ImageCachable;

    invoke-interface {v1, v0, p4, p5}, Lcom/sec/android/gallery3d/data/ImageCachable;->getImageData([BILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v1

    goto :goto_0
.end method

.method public getImageDiskCacheMaxBytes()J
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ImageCacheService;->bUseLruCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mLruCacheManager:Lcom/sec/android/gallery3d/data/LruCacheManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LruCacheManager;->getImageDiskCacheMaxBytes()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    sget v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->IMAGE_CACHE_MAX_BYTES:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getLruCacheManager()Lcom/sec/android/gallery3d/data/LruCacheManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mLruCacheManager:Lcom/sec/android/gallery3d/data/LruCacheManager;

    return-object v0
.end method

.method public putImageData(Lcom/sec/android/gallery3d/data/Path;JI[B)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/sec/android/gallery3d/data/Path;JI)[B

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/gallery3d/data/ImageCacheService;->bUseLruCache:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mLruCacheManager:Lcom/sec/android/gallery3d/data/LruCacheManager;

    invoke-virtual {v1, v0, p4, p5}, Lcom/sec/android/gallery3d/data/LruCacheManager;->putImageData([BI[B)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageCacheService;->mDiskCache:Lcom/sec/android/gallery3d/data/ImageCachable;

    invoke-interface {v1, v0, p4, p5}, Lcom/sec/android/gallery3d/data/ImageCachable;->putImageData([BI[B)V

    goto :goto_0
.end method
