.class Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
.source "SmsSendService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;-><init>(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$700(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "extra_bgsender_available"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$500(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$800(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 8

    iget v2, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string/jumbo v3, "SmsSendService"

    const-string/jumbo v4, "[%s] Process BindState startId=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v7, v2}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$200(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$500(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/transaction/IMessageBackgroundSender;

    invoke-static {v4, v3}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$402(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;Lcom/android/mms/transaction/IMessageBackgroundSender;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$400(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "SmsSendService"

    const-string/jumbo v4, "Failed to connect MessageBackgroundSender. Stop self()"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$500(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$800(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v3, v1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$300(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;I)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$400(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/mms/transaction/IMessageBackgroundSender;->startListening()V

    const-string/jumbo v3, "SmsSendService"

    const-string/jumbo v4, "Start message status listening.."

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$500(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$800(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SmsSendService"

    invoke-static {v3, v0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$500(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$800(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-static {v3, v1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$300(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;I)V

    goto :goto_0
.end method
