.class Lcom/android/phone/CdmaAdditionalCallOptions$3;
.super Landroid/os/Handler;
.source "CdmaAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNetworkServiceHandler  msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->-wrap7(Ljava/lang/String;)V

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "mNetworkServiceHandler: network available for queries."

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->-wrap7(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->-wrap3(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->-get1(Lcom/android/phone/CdmaAdditionalCallOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->-get0(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_1
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "mNetworkServiceHandler: cancel query requested."

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->-wrap7(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->-wrap2(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x258 -> :sswitch_1
    .end sparse-switch
.end method
