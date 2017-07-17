.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;
.super Landroid/os/Handler;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentBroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    return-void
.end method

.method private onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 7

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v4, 0xf0

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, p3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set0(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)I

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Connection state  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v6, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/4 v4, 0x3

    if-ne p3, v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap20(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    :cond_2
    if-nez p3, :cond_4

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setBigdataInfo(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->sendBigdatas()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v4, 0x2

    if-ne p3, v4, :cond_3

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a009e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get24(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
