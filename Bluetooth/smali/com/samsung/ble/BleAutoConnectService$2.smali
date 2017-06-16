.class Lcom/samsung/ble/BleAutoConnectService$2;
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

    iput-object p1, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "com.samsung.bt.hfp.intent.action.SET_BSSF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_0

    const-string/jumbo v5, "BleAutoConnectService"

    const-string/jumbo v6, "device is null"

    invoke-static {v5, v6}, Landroid/bluetooth/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-virtual {v5}, Lcom/samsung/ble/BleAutoConnectService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "supported_bssf"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v5, "BleAutoConnectService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Remote bssf is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v5}, Lcom/samsung/ble/BleAutoConnectService;->-get9(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v5

    and-int/2addr v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v5, v8}, Lcom/samsung/ble/BleAutoConnectService;->-set6(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v5, v8}, Lcom/samsung/ble/BleAutoConnectService;->-set4(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    invoke-static {v8}, Lcom/samsung/ble/BleAutoConnectService;->-set1(I)I

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v5}, Lcom/samsung/ble/BleAutoConnectService;->-wrap1(Lcom/samsung/ble/BleAutoConnectService;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    iget-object v5, v5, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v5, v1}, Lcom/samsung/ble/BleAutoConnectService;->-wrap4(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;)V

    sput-boolean v8, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    invoke-static {v8}, Lcom/samsung/ble/BleAutoConnectService;->-set9(Z)Z

    :cond_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "BleAutoConnectService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New Gear "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is connected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    iget-object v5, v5, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/samsung/ble/BleAutoConnectService;->-get15()Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    iget-object v5, v5, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {}, Lcom/samsung/ble/BleAutoConnectService;->-get15()Landroid/bluetooth/BluetoothGatt;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v5, v7, v6}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    invoke-static {v9}, Lcom/samsung/ble/BleAutoConnectService;->-set2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    :cond_2
    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v5, v3}, Lcom/samsung/ble/BleAutoConnectService;->-wrap0(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;)Z

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelLowRssi()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/ble/BleAutoConnectService;->-set7(Lcom/samsung/ble/BleAutoConnectService;I)I

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelMidRssi()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/ble/BleAutoConnectService;->-set8(Lcom/samsung/ble/BleAutoConnectService;I)I

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelHighRssi()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/ble/BleAutoConnectService;->-set3(Lcom/samsung/ble/BleAutoConnectService;I)I

    iget-object v5, p0, Lcom/samsung/ble/BleAutoConnectService$2;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v5, v3}, Lcom/samsung/ble/BleAutoConnectService;->-wrap5(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;)V

    :cond_3
    return-void
.end method
