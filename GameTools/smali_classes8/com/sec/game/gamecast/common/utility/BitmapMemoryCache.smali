.class public Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;
.super Ljava/lang/Object;
.source "BitmapMemoryCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCache"


# instance fields
.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mReusableBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit8 v2, v2, 0x5

    div-int/lit16 v1, v2, 0x400

    const/16 v0, 0x2800

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->hasHoneycomb()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mReusableBitmaps:Ljava/util/Set;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "limit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache$1;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache$1;-><init>(Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;I)V

    iput-object v2, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mMemoryCache:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mReusableBitmaps:Ljava/util/Set;

    return-object v0
.end method

.method private static canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->hasKitKat()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v5, v6, :cond_1

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v5, v3, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v2, v5, v6

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v1, v5, v6

    mul-int v5, v2, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v6

    mul-int v0, v5, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v5

    if-le v0, v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static getBitmapSize(Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->hasKitKat()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->hasHoneycombMR1()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_0
.end method

.method private static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p0, v2, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p0, v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-eq p0, v2, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    const-string/jumbo v0, "Memory cache cleared"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mMemoryCache:Landroid/util/LruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-object v0
.end method

.method public getBitmapFromReusableSet(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mReusableBitmaps:Ljava/util/Set;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mReusableBitmaps:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mReusableBitmaps:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mReusableBitmaps:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, p1}, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_1
    monitor-exit v4

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;I)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    const-class v0, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;->setIsCached(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapMemoryCache;->mMemoryCache:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
