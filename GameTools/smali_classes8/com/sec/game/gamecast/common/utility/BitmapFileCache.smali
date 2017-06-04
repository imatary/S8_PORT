.class public Lcom/sec/game/gamecast/common/utility/BitmapFileCache;
.super Ljava/lang/Object;
.source "BitmapFileCache.java"


# static fields
.field private static mInstance:Lcom/sec/game/gamecast/common/utility/BitmapFileCache;


# instance fields
.field private final cache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheDir:Ljava/io/File;

.field private limit:J

.field private final mMaxSize:J

.field private final mMinSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->mInstance:Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xd00000

    iput-wide v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->mMaxSize:J

    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->mMinSize:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->limit:J

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "chche"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cacheDir:Ljava/io/File;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->setLimit(J)V

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->initialize()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/BitmapFileCache;
    .locals 2

    const-class v1, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->mInstance:Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

    invoke-direct {v0, p0}, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->mInstance:Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

    :cond_0
    sget-object v0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->mInstance:Lcom/sec/game/gamecast/common/utility/BitmapFileCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initialize()V
    .locals 10

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    array-length v7, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v2, v4, v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "thumb_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "icon_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v0, v8

    const-wide/32 v8, 0xd00000

    cmp-long v8, v0, v8

    if-lez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "FileCache mMaxSize:13631488 mCacheSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long/2addr v0, v8

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 6

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 12

    iget-object v7, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    monitor-enter v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "thumb_"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "icon_"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    move-object v4, p1

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_3

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-long v8, v6

    iget-wide v10, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->limit:J

    cmp-long v6, v8, v10

    if-gtz v6, :cond_1

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v8

    const-wide/32 v10, 0x200000

    cmp-long v6, v8, v10

    if-gez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cacheDir:Ljava/io/File;

    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    monitor-exit v7

    return-object v3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public getTempFile()Ljava/lang/String;
    .locals 12

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v8, v5

    iget-wide v10, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->limit:J

    cmp-long v5, v8, v10

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v8

    const-wide/32 v10, 0x200000

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cache:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->cacheDir:Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    monitor-exit v6

    return-object v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public setLimit(J)V
    .locals 5

    iput-wide p1, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->limit:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FileCache will use up to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->limit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    return-void
.end method
