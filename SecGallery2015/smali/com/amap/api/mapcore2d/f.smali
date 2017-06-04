.class Lcom/amap/api/mapcore2d/f;
.super Ljava/lang/Thread;
.source "AMapDelegateImpGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x3

    const-string/jumbo v1, "run"

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    :goto_0
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getNetworkEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v3, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/az;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/b;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/amap/api/mapcore2d/az;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az;->a()Lcom/amap/api/mapcore2d/ba;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v6, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/amap/api/mapcore2d/y;->a(Z)Lcom/amap/api/mapcore2d/dh;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/db;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/dh;)Z

    sget v0, Lcom/amap/api/mapcore2d/db;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    return-void

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v3, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput v6, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iput v6, v2, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/f;->interrupt()V

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
