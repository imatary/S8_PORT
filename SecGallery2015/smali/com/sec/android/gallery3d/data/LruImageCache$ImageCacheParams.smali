.class public Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "LruImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LruImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field private diskCacheDir:Ljava/io/File;

.field diskCacheSize:I

.field final mContext:Landroid/content/Context;

.field private memCacheSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2800

    iput v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->memCacheSize:I

    const/high16 v0, 0x6400000

    iput v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->diskCacheSize:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->mContext:Landroid/content/Context;

    # invokes: Lcom/sec/android/gallery3d/data/LruImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/data/LruImageCache;->access$200(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->memCacheSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    return-object p1
.end method

.method private setMemCacheSizePercent(F)V
    .locals 2

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setMemCacheSizePercent - percent must be between 0.01 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->memCacheSize:I

    return-void
.end method
