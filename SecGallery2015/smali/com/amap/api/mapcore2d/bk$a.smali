.class Lcom/amap/api/mapcore2d/bk$a;
.super Ljava/lang/Thread;
.source "MarkerDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/bk;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/bk;Lcom/amap/api/mapcore2d/bk$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bk$a;-><init>(Lcom/amap/api/mapcore2d/bk;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v1, "run"

    const-string/jumbo v0, "MarkerThread"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bk$a;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->b(Lcom/amap/api/mapcore2d/bk;)I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;I)I

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->d(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/be;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->e(Lcom/amap/api/mapcore2d/bk;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xfa

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->c(Lcom/amap/api/mapcore2d/bk;)I

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MarkerDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-void
.end method
