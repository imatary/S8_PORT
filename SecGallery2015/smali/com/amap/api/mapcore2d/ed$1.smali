.class Lcom/amap/api/mapcore2d/ed$1;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/ed;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/dh;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/mapcore2d/dh;

.field final synthetic c:Z

.field final synthetic d:Lcom/amap/api/mapcore2d/ed;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ed;Landroid/content/Context;Lcom/amap/api/mapcore2d/dh;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ed$1;->d:Lcom/amap/api/mapcore2d/ed;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ed$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/mapcore2d/ed$1;->b:Lcom/amap/api/mapcore2d/dh;

    iput-boolean p4, p0, Lcom/amap/api/mapcore2d/ed$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/ds;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ed$1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore2d/ds;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ed$1;->b:Lcom/amap/api/mapcore2d/dh;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ds;->a(Lcom/amap/api/mapcore2d/dh;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ed$1;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v0, Lcom/amap/api/mapcore2d/dv;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ed$1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore2d/dv;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/amap/api/mapcore2d/dx;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/dx;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/dx;->c(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/dx;->a(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/dx;->b(Z)V

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/dv;->a(Lcom/amap/api/mapcore2d/dx;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ed$1;->d:Lcom/amap/api/mapcore2d/ed;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ed;->a(Lcom/amap/api/mapcore2d/ed;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ek;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method
