.class Lcom/android/phone/callsettings/KddiCallPrevention$5;
.super Landroid/os/Handler;
.source "KddiCallPrevention.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/KddiCallPrevention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/KddiCallPrevention;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$5;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage() msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$5;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNetworkServiceHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

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

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$5;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    const-string/jumbo v2, "mNetworkServiceHandler: network available for queries."

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->-wrap3(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$5;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->-wrap2(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$5;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-static {v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get9(Lcom/android/phone/callsettings/KddiCallPrevention;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$5;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-static {v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get8(Lcom/android/phone/callsettings/KddiCallPrevention;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$5;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    const-string/jumbo v2, "mNetworkServiceHandler: cancel query requested."

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->-wrap3(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x258 -> :sswitch_1
    .end sparse-switch
.end method
