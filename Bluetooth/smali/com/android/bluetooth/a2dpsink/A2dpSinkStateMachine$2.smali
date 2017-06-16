.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;
.super Landroid/os/Handler;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHandler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " RoutingFromApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " OutDeviceState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get19(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mAudioState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " CreateAudioPatch :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " SuspendForQC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get22(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " PreSuspendState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get20(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap22(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get22(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get22(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get22(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap22(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get20(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->INIT:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->SUSPENDED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get22(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
