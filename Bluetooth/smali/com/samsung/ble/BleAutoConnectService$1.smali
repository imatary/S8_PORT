.class Lcom/samsung/ble/BleAutoConnectService$1;
.super Landroid/bluetooth/BluetoothGattCallback;
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

    iput-object p1, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x3e8

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string/jumbo v2, "BleAutoConnectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConnectionStateChange ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne p3, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2}, Lcom/samsung/ble/BleAutoConnectService;->-get5(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v2

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2}, Lcom/samsung/ble/BleAutoConnectService;->-wrap1(Lcom/samsung/ble/BleAutoConnectService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2}, Lcom/samsung/ble/BleAutoConnectService;->-get19(Lcom/samsung/ble/BleAutoConnectService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2}, Lcom/samsung/ble/BleAutoConnectService;->-get17(Lcom/samsung/ble/BleAutoConnectService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2}, Lcom/samsung/ble/BleAutoConnectService;->-get17(Lcom/samsung/ble/BleAutoConnectService;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    iget-object v3, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v3}, Lcom/samsung/ble/BleAutoConnectService;->-get21(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v4}, Lcom/samsung/ble/BleAutoConnectService;->-get22(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v5}, Lcom/samsung/ble/BleAutoConnectService;->-get20(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/samsung/ble/BleAutoConnectService;->BleMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-virtual {v2}, Lcom/samsung/ble/BleAutoConnectService;->removeSlowScanTimer()V

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    iget-object v2, v2, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    iget-object v2, v2, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v3}, Lcom/samsung/ble/BleAutoConnectService;->-get3(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v4}, Lcom/samsung/ble/BleAutoConnectService;->-get4(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->semSetBleConnectionScanParameter(II)Z

    :cond_2
    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2, v7}, Lcom/samsung/ble/BleAutoConnectService;->-set5(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "BleAutoConnectService"

    const-string/jumbo v3, "device not matched"

    invoke-static {v2, v3}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2}, Lcom/samsung/ble/BleAutoConnectService;->-get17(Lcom/samsung/ble/BleAutoConnectService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public semOnMonitorLeRssi(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string/jumbo v2, "BleAutoConnectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semOnMonitorLeRssi rssi value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and device is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2}, Lcom/samsung/ble/BleAutoConnectService;->-wrap1(Lcom/samsung/ble/BleAutoConnectService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, -0x46

    if-lt p2, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[1006]{0006}(0A::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    sget-boolean v2, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-virtual {v2, v0, v5, v5, v5}, Lcom/samsung/ble/BleAutoConnectService;->BleMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService$1;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v2, v0}, Lcom/samsung/ble/BleAutoConnectService;->-wrap4(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "BleAutoConnectService"

    const-string/jumbo v3, "device not matched"

    invoke-static {v2, v3}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
