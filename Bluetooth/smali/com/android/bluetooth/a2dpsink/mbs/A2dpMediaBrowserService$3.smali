.class Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$3;
.super Landroid/content/BroadcastReceiver;
.source "A2dpMediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$3;->this$0:Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const-string/jumbo v5, "A2dpMediaBrowserService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v5, "android.bluetooth.profile.extra.STATE"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "A2dpMediaBrowserService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleConnectionStateChange: newState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " btDev="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v9, :cond_1

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$3;->this$0:Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;

    invoke-static {v5}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-get0(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$3;->this$0:Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;

    invoke-static {v5}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-get0(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "android.bluetooth.avrcp-controller.profile.action.TRACK_EVENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "android.bluetooth.avrcp-controller.profile.extra.PLAYBACK"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/media/session/PlaybackState;

    const-string/jumbo v5, "android.bluetooth.avrcp-controller.profile.extra.METADATA"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/media/MediaMetadata;

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$3;->this$0:Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;

    invoke-static {v5}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->-get0(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
