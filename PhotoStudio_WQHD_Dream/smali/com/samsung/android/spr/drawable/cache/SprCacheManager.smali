.class public Lcom/samsung/android/spr/drawable/cache/SprCacheManager;
.super Ljava/lang/Object;
.source "SprCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;
    }
.end annotation


# instance fields
.field private mCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;",
            ">;"
        }
    .end annotation
.end field

.field private mHashCode:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mName:Ljava/lang/String;

    rem-int/lit16 v0, p2, 0x2710

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCache(Landroid/graphics/Bitmap;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v5

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;

    iget v6, v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->width:I

    if-ne v6, v3, :cond_0

    iget v6, v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->height:I

    if-ne v6, v2, :cond_0

    iget v6, v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->dpi:I

    if-ne v6, p2, :cond_0

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;

    invoke-direct {v6, p1, p2}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getCache(III)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;

    iget v4, v1, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->width:I

    if-ne v4, p1, :cond_0

    iget v4, v1, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->height:I

    if-ne v4, p2, :cond_0

    iget v4, v1, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->dpi:I

    if-ne v4, p3, :cond_0

    iget-object v0, v1, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public lock(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;

    iget-object v3, v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    if-ne v3, p1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->lock()V

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lcom/samsung/android/spr/drawable/document/debug/SprDebug;->IsDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "SprDrawable"

    const-string v2, "-lock--------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->printDebug()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public printDebug()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    const-string v1, "SprDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") printDebug"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;

    const-string v3, "SprDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->dpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->refCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    const-string v1, "SprDrawable"

    const-string v3, "-------------------------------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public unlock(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;

    iget-object v3, v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    if-ne v3, p1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->unlock()V

    iget v1, v0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->refCount:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lcom/samsung/android/spr/drawable/document/debug/SprDebug;->IsDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "SprDrawable"

    const-string v2, "-unlock------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->printDebug()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
