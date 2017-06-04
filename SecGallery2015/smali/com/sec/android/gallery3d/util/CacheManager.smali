.class public Lcom/sec/android/gallery3d/util/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static final KEY_CACHE_UP_TO_DATE:Ljava/lang/String; = "cache-up-to-date"

.field private static final KEY_SDK_VERSION:Ljava/lang/String; = "android-sdk-version"

.field private static final TAG:Ljava/lang/String; = "CacheManager"

.field private static final sCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/common/BlobCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldCheckDone:Z


# instance fields
.field private final mCacheFileDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/gallery3d/util/CacheManager;->sOldCheckDone:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/CacheManager;->mCacheFileDirectory:Ljava/io/File;

    return-void
.end method

.method private removeOldFilesIfNecessary(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/util/CacheManager;->removeOldFilesIfNecessary(Landroid/content/Context;Z)V

    return-void
.end method

.method private removeOldFilesIfNecessary(Landroid/content/Context;Z)V
    .locals 7

    if-nez p2, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, "cache-up-to-date"

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "android-sdk-version"

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    if-eqz v2, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v5, "cache-up-to-date"

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v5, "android-sdk-version"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/CacheManager;->mCacheFileDirectory:Ljava/io/File;

    if-nez v0, :cond_3

    const-string/jumbo v5, "CacheManager"

    const-string/jumbo v6, "cacheDir is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/sec/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/sec/android/gallery3d/common/BlobCache;
    .locals 11

    sget-object v9, Lcom/sec/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    sget-boolean v2, Lcom/sec/android/gallery3d/util/CacheManager;->sOldCheckDone:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/CacheManager;->removeOldFilesIfNecessary(Landroid/content/Context;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/gallery3d/util/CacheManager;->sOldCheckDone:Z

    :cond_0
    sget-object v2, Lcom/sec/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/common/BlobCache;

    if-eqz v6, :cond_1

    monitor-exit v9

    move-object v0, v6

    :goto_0
    return-object v6

    :cond_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/util/CacheManager;->mCacheFileDirectory:Ljava/io/File;

    if-nez v7, :cond_2

    const-string/jumbo v2, "CacheManager"

    const-string/jumbo v3, "cacheDir is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-exit v9

    move-object v10, v6

    move-object v6, v0

    move-object v0, v10

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    new-instance v0, Lcom/sec/android/gallery3d/common/BlobCache;

    const/4 v4, 0x0

    move v2, p3

    move v3, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Lcom/sec/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v9

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v0, v6

    :goto_2
    const-string/jumbo v2, "CacheManager"

    const-string/jumbo v3, "Cannot instantiate cache!"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_1
    move-exception v8

    goto :goto_2
.end method
