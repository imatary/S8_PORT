.class Lcom/sec/ims/ImsManager$ImsSwitchObserver;
.super Landroid/database/ContentObserver;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsSwitchObserver"
.end annotation


# instance fields
.field mLastRcsEnabled:Z

.field final synthetic this$0:Lcom/sec/ims/ImsManager;


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v3, p0, Lcom/sec/ims/ImsManager$ImsSwitchObserver;->this$0:Lcom/sec/ims/ImsManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsManager;->isRcsEnabled(Z)Z

    move-result v2

    iget-boolean v3, p0, Lcom/sec/ims/ImsManager$ImsSwitchObserver;->mLastRcsEnabled:Z

    if-ne v3, v2, :cond_0

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/sec/ims/ImsManager$ImsSwitchObserver;->mLastRcsEnabled:Z

    iget-object v3, p0, Lcom/sec/ims/ImsManager$ImsSwitchObserver;->this$0:Lcom/sec/ims/ImsManager;

    invoke-static {v3}, Lcom/sec/ims/ImsManager;->-get0(Lcom/sec/ims/ImsManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IIMSSwitchListener;

    const/4 v3, 0x2

    invoke-interface {v0, v3, v2}, Lcom/sec/ims/IIMSSwitchListener;->onReceive(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method
