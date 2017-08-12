.class Lcom/android/bluetooth/avrcp/Avrcp$2;
.super Landroid/content/BroadcastReceiver;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$2;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Connection state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp$2;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v7, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$2;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v5, 0x11

    iput v5, v3, Landroid/os/Message;->what:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    iput v1, v3, Landroid/os/Message;->arg2:I

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$2;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "enabled"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "Emergency or Ultra power saving mode was disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$2;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v5, 0xdc

    iput v5, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$2;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
