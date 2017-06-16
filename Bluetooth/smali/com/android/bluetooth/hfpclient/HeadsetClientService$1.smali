.class Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "HeadsetClientService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Volume changed for stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v6, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v5, v9, :cond_0

    if-eq v5, v3, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->-get0(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-static {v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->-get0(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8, v5, v10}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "android.bluetooth.headsetclient.profile.action.SET_BIA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x68

    const-string/jumbo v6, "android.bluetooth.headsetclient.extra.BIA_VALUE"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v6, "HeadsetClientService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HeadsetClientService get new BIA value - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->-get0(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendBiaValue(I)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->-get0(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendBiaValue(I)V

    goto :goto_0
.end method
