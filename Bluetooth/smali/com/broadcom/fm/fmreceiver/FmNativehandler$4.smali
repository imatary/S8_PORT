.class Lcom/broadcom/fm/fmreceiver/FmNativehandler$4;
.super Landroid/content/BroadcastReceiver;
.source "FmNativehandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/fm/fmreceiver/FmNativehandler;->registerBluetoothStateReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;


# direct methods
.method constructor <init>(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V
    .locals 0

    iput-object p1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$4;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "FmNativehandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AdapterStateChanged :: BluetoothAdapter.ACTION_STATE_CHANGED, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    sget v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$4;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-static {v2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-get0(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$4;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-static {v2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-get0(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
