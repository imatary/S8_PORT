.class Lcom/android/phone/SSInfoService$1;
.super Lcom/android/phone/ISSInfoService$Stub;
.source "SSInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SSInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SSInfoService;


# direct methods
.method constructor <init>(Lcom/android/phone/SSInfoService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/SSInfoService$1;->this$0:Lcom/android/phone/SSInfoService;

    invoke-direct {p0}, Lcom/android/phone/ISSInfoService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/phone/ISSInfoServiceCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/SSInfoService$1;->this$0:Lcom/android/phone/SSInfoService;

    invoke-static {v0}, Lcom/android/phone/SSInfoService;->-get0(Lcom/android/phone/SSInfoService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SSInfoService$1;->this$0:Lcom/android/phone/SSInfoService;

    invoke-static {v0}, Lcom/android/phone/SSInfoService;->-get0(Lcom/android/phone/SSInfoService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    const-string/jumbo v0, "SSInfoService"

    const-string/jumbo v1, "listener added"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSSInfo(I)V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/SSInfoService$1;->this$0:Lcom/android/phone/SSInfoService;

    invoke-static {v3}, Lcom/android/phone/SSInfoService;->-get0(Lcom/android/phone/SSInfoService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/SSInfoService$1;->this$0:Lcom/android/phone/SSInfoService;

    invoke-static {v3}, Lcom/android/phone/SSInfoService;->-get0(Lcom/android/phone/SSInfoService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const-string/jumbo v3, "SSInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSSInfo : code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " broadcastSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/SSInfoService$1;->this$0:Lcom/android/phone/SSInfoService;

    invoke-static {v3}, Lcom/android/phone/SSInfoService;->-get0(Lcom/android/phone/SSInfoService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ISSInfoServiceCallback;

    invoke-interface {v3, p1}, Lcom/android/phone/ISSInfoServiceCallback;->onSSInfoReceived(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SSInfoService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/phone/SSInfoService$1;->this$0:Lcom/android/phone/SSInfoService;

    invoke-static {v3}, Lcom/android/phone/SSInfoService;->-get0(Lcom/android/phone/SSInfoService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public removeListener(Lcom/android/phone/ISSInfoServiceCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/SSInfoService$1;->this$0:Lcom/android/phone/SSInfoService;

    invoke-static {v0}, Lcom/android/phone/SSInfoService;->-get0(Lcom/android/phone/SSInfoService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SSInfoService$1;->this$0:Lcom/android/phone/SSInfoService;

    invoke-static {v0}, Lcom/android/phone/SSInfoService;->-get0(Lcom/android/phone/SSInfoService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    const-string/jumbo v0, "SSInfoService"

    const-string/jumbo v1, "listener removed"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
