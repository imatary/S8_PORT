.class Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;
.super Landroid/content/BroadcastReceiver;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v10, :cond_2

    const-string/jumbo v7, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v6, v8, :cond_2

    if-eq v6, v4, :cond_2

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v7, v7, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v7, v7, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iget v7, v7, Lcom/android/bluetooth/avrcp/RemoteDevice;->mRemoteFeatures:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v7, v7, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iget v7, v7, Lcom/android/bluetooth/avrcp/RemoteDevice;->mAbsVolNotificationState:I

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get0()Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get0()Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    mul-int/lit8 v7, v1, 0x7f

    div-int v3, v7, v2

    const-string/jumbo v7, "AvrcpControllerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " Abs Vol Notify Rsp Changed vol = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v9, v9, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iget-object v9, v9, Lcom/android/bluetooth/avrcp/RemoteDevice;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v8, v9}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap6(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v9, v9, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iget v9, v9, Lcom/android/bluetooth/avrcp/RemoteDevice;->mNotificationLabel:I

    invoke-static {v7, v8, v11, v3, v9}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap10(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BBII)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v7, v7, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iget v7, v7, Lcom/android/bluetooth/avrcp/RemoteDevice;->mAbsVolNotificationState:I

    if-ne v7, v11, :cond_2

    const-string/jumbo v7, "AvrcpControllerService"

    const-string/jumbo v8, " Don\'t Complete Notification Rsp. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    iget-object v7, v7, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iput v9, v7, Lcom/android/bluetooth/avrcp/RemoteDevice;->mAbsVolNotificationState:I

    goto :goto_0
.end method
