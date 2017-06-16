.class Lcom/samsung/ble/BleAutoConnectService$4;
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

    iput-object p1, p0, Lcom/samsung/ble/BleAutoConnectService$4;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BleAutoConnectService"

    invoke-static {v1, v0}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.ble.BleAutoConnectService.intent.action.MSG_WAIT_FOR_LE_CONNECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService$4;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    iget-object v1, v1, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[1006]{{0021}"

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService$4;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    iget-object v1, v1, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$4;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2}, Lcom/samsung/ble/BleAutoConnectService;->-get10(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/ble/BleAutoConnectService$4;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v3}, Lcom/samsung/ble/BleAutoConnectService;->-get11(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->semSetBleConnectionScanParameter(II)Z

    :cond_0
    return-void
.end method
