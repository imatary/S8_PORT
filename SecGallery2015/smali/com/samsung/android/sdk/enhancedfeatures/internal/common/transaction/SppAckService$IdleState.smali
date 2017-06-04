.class Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
.source "SppAckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mServiceBinder:Lcom/sec/spp/push/IPushClientService;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/sec/spp/push/IPushClientService;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mBindState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    :goto_0
    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mServiceBinder:Lcom/sec/spp/push/IPushClientService;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/sec/spp/push/IPushClientService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/spp/push/IPushClientService;->ackNotification(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SPP ACKED, nid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->stopService(I)V
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to SPP ack nid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method
