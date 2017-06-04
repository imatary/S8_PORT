.class Lcom/amap/api/mapcore2d/ad;
.super Ljava/lang/Object;
.source "GLOverlayLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ac;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ad;->a:Lcom/amap/api/mapcore2d/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ad;->a:Lcom/amap/api/mapcore2d/ac;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ac;->a(Lcom/amap/api/mapcore2d/ac;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ad;->a:Lcom/amap/api/mapcore2d/ac;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ac;->b(Lcom/amap/api/mapcore2d/ac;)Lcom/amap/api/mapcore2d/ac$a;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ad;->a:Lcom/amap/api/mapcore2d/ac;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ac;->a(Lcom/amap/api/mapcore2d/ac;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/amap/api/mapcore2d/ad;->a:Lcom/amap/api/mapcore2d/ac;

    invoke-static {v4}, Lcom/amap/api/mapcore2d/ac;->a(Lcom/amap/api/mapcore2d/ac;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "MapOverlayImageView"

    const-string/jumbo v2, "changeOverlayIndex"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
