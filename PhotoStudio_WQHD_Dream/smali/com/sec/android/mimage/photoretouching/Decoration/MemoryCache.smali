.class public Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryCache"


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private limit:J

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->cache:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->size:J

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->limit:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->setLimit(J)V

    return-void
.end method

.method private checkSize()V
    .locals 6

    const-string v2, "MemoryCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->size:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->size:J

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->limit:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->size:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v2

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->size:J

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->size:J

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->limit:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    :cond_1
    const-string v2, "MemoryCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clean cache. New size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->size:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0
.end method

.method getSizeInBytes(Landroid/graphics/Bitmap;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->size:J

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->size:J

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->size:J

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->size:J

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->checkSize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setLimit(J)V
    .locals 7

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    iput-wide p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->limit:J

    const-string v0, "MemoryCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemoryCache will use up to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->limit:J

    long-to-double v2, v2

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
