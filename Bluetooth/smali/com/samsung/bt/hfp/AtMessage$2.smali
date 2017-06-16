.class Lcom/samsung/bt/hfp/AtMessage$2;
.super Landroid/database/ContentObserver;
.source "AtMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/bt/hfp/AtMessage;->createCMTIContentObservers()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/bt/hfp/AtMessage;


# direct methods
.method constructor <init>(Lcom/samsung/bt/hfp/AtMessage;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/bt/hfp/AtMessage$2;->this$0:Lcom/samsung/bt/hfp/AtMessage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage$2;->this$0:Lcom/samsung/bt/hfp/AtMessage;

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->-get1(Lcom/samsung/bt/hfp/AtMessage;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage$2;->this$0:Lcom/samsung/bt/hfp/AtMessage;

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->-get1(Lcom/samsung/bt/hfp/AtMessage;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage$2;->this$0:Lcom/samsung/bt/hfp/AtMessage;

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->-get1(Lcom/samsung/bt/hfp/AtMessage;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage$2;->this$0:Lcom/samsung/bt/hfp/AtMessage;

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage$2;->this$0:Lcom/samsung/bt/hfp/AtMessage;

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->-get0(Lcom/samsung/bt/hfp/AtMessage;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/samsung/bt/hfp/AtMessage;->-wrap0(Lcom/samsung/bt/hfp/AtMessage;Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    monitor-exit p0

    return-void
.end method
