.class Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PbapClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbapclient/PbapClientService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientService;Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v2, "PbapClientService"

    const-string/jumbo v3, "onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0
.end method
