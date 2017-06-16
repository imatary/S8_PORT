.class Lcom/android/bluetooth/a2dp/A2dpService$1;
.super Landroid/content/BroadcastReceiver;
.source "A2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.bluetooth.a2dp.profile.UHQA_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "uhq_mode"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    const-string/jumbo v3, "A2dpService"

    const-string/jumbo v4, "A2dpService - Received UHQA_MODE_ON"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "bluetooth_a2dp_uhqa_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "A2dpService"

    const-string/jumbo v4, "A2dpService - Received UHQA_MODE_OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "bluetooth_a2dp_uhqa_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "wifi_state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const-string/jumbo v3, "A2dpService"

    const-string/jumbo v4, "A2dpService - WIFI_STATE_ENABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpService;->-get0(Lcom/android/bluetooth/a2dp/A2dpService;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setBusyLevelForWifi(I)V

    goto :goto_0

    :cond_3
    if-ne v2, v5, :cond_0

    const-string/jumbo v3, "A2dpService"

    const-string/jumbo v4, "A2dpService - WIFI_STATE_DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService$1;->this$0:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpService;->-get0(Lcom/android/bluetooth/a2dp/A2dpService;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setBusyLevelForWifi(I)V

    goto :goto_0
.end method
