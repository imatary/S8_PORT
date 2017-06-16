.class Lcom/samsung/ble/BleAutoConnectService$3;
.super Landroid/content/BroadcastReceiver;
.source "BleAutoConnectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ble/BleAutoConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ble/BleAutoConnectService;


# direct methods
.method constructor <init>(Lcom/samsung/ble/BleAutoConnectService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/ble/BleAutoConnectService$3;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "BleAutoConnectService"

    invoke-static {v3, v0}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.bluetooth.device.action.RSSI_IN_RANGE_ALERT_FOR_GEAR1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.bluetooth.device.action.ACTION_IN_RANGE_ALERT_FOR_GEAR1"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/ble/BleAutoConnectService$3;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v3}, Lcom/samsung/ble/BleAutoConnectService;->-get16(Lcom/samsung/ble/BleAutoConnectService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.permission.SMART_UNLOCK"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "com.samsung.bluetooth.device.action.RSSI_OUT_OF_RANGE_ALERT_FOR_GEAR1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT_FOR_GEAR1"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/ble/BleAutoConnectService$3;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v3}, Lcom/samsung/ble/BleAutoConnectService;->-get16(Lcom/samsung/ble/BleAutoConnectService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.permission.SMART_UNLOCK"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/ble/BleAutoConnectService$3;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelLowRssi()I

    move-result v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/samsung/ble/BleAutoConnectService;->-set7(Lcom/samsung/ble/BleAutoConnectService;I)I

    iget-object v3, p0, Lcom/samsung/ble/BleAutoConnectService$3;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelMidRssi()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/ble/BleAutoConnectService;->-set8(Lcom/samsung/ble/BleAutoConnectService;I)I

    iget-object v3, p0, Lcom/samsung/ble/BleAutoConnectService$3;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelHighRssi()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/ble/BleAutoConnectService;->-set3(Lcom/samsung/ble/BleAutoConnectService;I)I

    iget-object v3, p0, Lcom/samsung/ble/BleAutoConnectService$3;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v3, v1}, Lcom/samsung/ble/BleAutoConnectService;->-wrap5(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method
