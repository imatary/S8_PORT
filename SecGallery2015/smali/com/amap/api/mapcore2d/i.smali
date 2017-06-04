.class Lcom/amap/api/mapcore2d/i;
.super Ljava/lang/Object;
.source "AnimBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/h;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/h;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/i;->a:Lcom/amap/api/mapcore2d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string/jumbo v1, "run"

    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->a:Lcom/amap/api/mapcore2d/h;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/h;->a(Lcom/amap/api/mapcore2d/h;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->a:Lcom/amap/api/mapcore2d/h;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/h;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->a:Lcom/amap/api/mapcore2d/h;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/h;->b(Lcom/amap/api/mapcore2d/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->a:Lcom/amap/api/mapcore2d/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/h;->a(Lcom/amap/api/mapcore2d/h;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->a:Lcom/amap/api/mapcore2d/h;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/h;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->a:Lcom/amap/api/mapcore2d/h;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/h;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->a:Lcom/amap/api/mapcore2d/h;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/h;->c(Lcom/amap/api/mapcore2d/h;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->a:Lcom/amap/api/mapcore2d/h;

    iget v0, v0, Lcom/amap/api/mapcore2d/h;->b:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->a:Lcom/amap/api/mapcore2d/h;

    iget v0, v0, Lcom/amap/api/mapcore2d/h;->b:I

    int-to-long v6, v0

    sub-long v2, v4, v2

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AnimBase"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
