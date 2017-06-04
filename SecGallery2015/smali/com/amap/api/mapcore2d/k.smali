.class Lcom/amap/api/mapcore2d/k;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/j;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/j;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v3, "run"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "TaskRunDownLoad"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/j;->a(Lcom/amap/api/mapcore2d/j;)Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/j;->a(Lcom/amap/api/mapcore2d/j;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v2, v0

    move-object v1, v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/j;->b(Lcom/amap/api/mapcore2d/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/j;->b:Lcom/amap/api/mapcore2d/bl;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/amap/api/mapcore2d/j;->a(Lcom/amap/api/mapcore2d/j;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AsyncServer"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getNetworkEnable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_5

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v4, "AsyncServer"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/j;->a:Lcom/amap/api/mapcore2d/bx;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/j;->a:Lcom/amap/api/mapcore2d/bx;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/j;->f()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/amap/api/mapcore2d/bx;->a(IZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/j;->b(Lcom/amap/api/mapcore2d/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/j;->b(Lcom/amap/api/mapcore2d/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/j;->b:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/j;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_2

    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/j;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_4
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_8

    :try_start_5
    iget-object v2, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/j;->a:Lcom/amap/api/mapcore2d/bx;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/j;->a:Lcom/amap/api/mapcore2d/bx;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/amap/api/mapcore2d/bx;->a(Ljava/util/List;Z)V

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/j;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/j;->b(Lcom/amap/api/mapcore2d/j;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v2

    if-nez v2, :cond_9

    const-wide/16 v4, 0x32

    :try_start_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v2, v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_7
    const-string/jumbo v4, "AsyncServer"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    move-object v2, v0

    goto/16 :goto_0

    :catch_5
    move-exception v2

    const-string/jumbo v4, "AsyncServer"

    invoke-static {v2, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v2, v0

    goto/16 :goto_0

    :cond_9
    move-object v2, v0

    goto/16 :goto_0

    :cond_a
    move-object v0, v2

    goto :goto_2
.end method
