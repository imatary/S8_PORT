.class Lcom/amap/api/mapcore2d/bf;
.super Ljava/lang/Object;
.source "MapOverlayImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/be;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/be;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/be;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/be;->a(Lcom/amap/api/mapcore2d/be;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/be;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/be;->b:Lcom/amap/api/mapcore2d/be$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/be;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/be;->b(Lcom/amap/api/mapcore2d/be;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/be;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/be;->b:Lcom/amap/api/mapcore2d/be$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/be;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "MapOverlayImageView"

    const-string/jumbo v2, "changeOverlayIndex"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
