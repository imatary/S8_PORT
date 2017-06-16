.class Lcom/samsung/ble/BleAutoConnectService$5;
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

    iput-object p1, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v8, 0x2

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v7, "com.samsung.bluetooth.device.extra.DISCONNECTION_REASON"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v7, "com.samsung.bluetooth.device.extra.LINKTYPE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get1(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v7

    if-ne v4, v7, :cond_4

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get7(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v7

    if-eq v5, v7, :cond_4

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get12(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v7

    if-eq v5, v7, :cond_4

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get0(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v7

    if-eq v5, v7, :cond_4

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-wrap1(Lcom/samsung/ble/BleAutoConnectService;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get18(Lcom/samsung/ble/BleAutoConnectService;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BleAutoConnectService"

    const-string/jumbo v8, "BR/EDR ACL disconnected, AG connection trial is in progress"

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    if-ne v7, v11, :cond_2

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v1, v10}, Lcom/samsung/ble/BleAutoConnectService;->-wrap3(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v7, "BleAutoConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "device = is not in bonded state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "BleAutoConnectService"

    const-string/jumbo v8, "device not matched"

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get6(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v7

    if-ne v4, v7, :cond_6

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get8(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v7

    if-eq v5, v7, :cond_6

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get2(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v7

    if-eq v5, v7, :cond_6

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get12(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v7

    if-eq v5, v7, :cond_6

    sput-boolean v9, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-wrap1(Lcom/samsung/ble/BleAutoConnectService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v7, "BleAutoConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Le device disonnected, establish connection with headset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[1006]{000C}(26::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/samsung/ble/BleAutoConnectService;->-get14()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v10}, Lcom/samsung/ble/BleAutoConnectService;->-set4(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    invoke-static {}, Lcom/samsung/ble/BleAutoConnectService;->-get14()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-set1(I)I

    goto/16 :goto_0

    :cond_5
    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "BleAutoConnectService"

    const-string/jumbo v8, "device not matched"

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get6(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v7

    if-ne v4, v7, :cond_1

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get8(Lcom/samsung/ble/BleAutoConnectService;)I

    move-result v7

    if-ne v5, v7, :cond_1

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-wrap1(Lcom/samsung/ble/BleAutoConnectService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "BleAutoConnectService"

    const-string/jumbo v8, "LE link loss in 2 seconds, start LE Autoconnection again"

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    if-ne v7, v11, :cond_7

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v1, v10}, Lcom/samsung/ble/BleAutoConnectService;->-wrap3(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v7, "BleAutoConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "device = is not in bonded state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v7, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string/jumbo v7, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_a

    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-wrap1(Lcom/samsung/ble/BleAutoConnectService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "[1006]{0022}"

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v9}, Lcom/samsung/ble/BleAutoConnectService;->-set6(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v9}, Lcom/samsung/ble/BleAutoConnectService;->-set4(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    invoke-static {v9}, Lcom/samsung/ble/BleAutoConnectService;->-set1(I)I

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v10}, Lcom/samsung/ble/BleAutoConnectService;->-set5(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    invoke-static {v9}, Lcom/samsung/ble/BleAutoConnectService;->-set9(Z)Z

    sget-boolean v7, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v1}, Lcom/samsung/ble/BleAutoConnectService;->-wrap4(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;)V

    sput-boolean v9, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    goto/16 :goto_0

    :cond_9
    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "BleAutoConnectService"

    const-string/jumbo v8, "device not matched"

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_1

    const-string/jumbo v7, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-wrap1(Lcom/samsung/ble/BleAutoConnectService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {}, Lcom/samsung/ble/BleAutoConnectService;->-get23()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {v9}, Lcom/samsung/ble/BleAutoConnectService;->-set9(Z)Z

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v9}, Lcom/samsung/ble/BleAutoConnectService;->-set4(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    invoke-static {v9}, Lcom/samsung/ble/BleAutoConnectService;->-set1(I)I

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v10}, Lcom/samsung/ble/BleAutoConnectService;->-set5(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    if-ne v7, v11, :cond_b

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v2, v10}, Lcom/samsung/ble/BleAutoConnectService;->-wrap3(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v7, "BleAutoConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "device = is not in bonded state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-get18(Lcom/samsung/ble/BleAutoConnectService;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/samsung/ble/BleAutoConnectService;->-get14()I

    move-result v7

    if-ge v7, v8, :cond_e

    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[1006]{000C}(26::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/samsung/ble/BleAutoConnectService;->-get14()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    if-eqz v3, :cond_d

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_d
    invoke-static {}, Lcom/samsung/ble/BleAutoConnectService;->-get14()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-set1(I)I

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v7, "BleAutoConnectService"

    const-string/jumbo v8, "AG connetion trial failed, start RSSI logic"

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "[1006]{001D}"

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v9}, Lcom/samsung/ble/BleAutoConnectService;->-set5(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v9}, Lcom/samsung/ble/BleAutoConnectService;->-set4(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    invoke-static {v9}, Lcom/samsung/ble/BleAutoConnectService;->-set1(I)I

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v9}, Lcom/samsung/ble/BleAutoConnectService;->-set6(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    if-ne v7, v11, :cond_f

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v2, v10}, Lcom/samsung/ble/BleAutoConnectService;->-wrap3(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v7, "BleAutoConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "device = is not in bonded state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "BleAutoConnectService"

    const-string/jumbo v8, "device not matched"

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v7, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    const/high16 v8, -0x80000000

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_1

    const-string/jumbo v7, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v8, -0x80000000

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7}, Lcom/samsung/ble/BleAutoConnectService;->-wrap1(Lcom/samsung/ble/BleAutoConnectService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string/jumbo v7, "BleAutoConnectService"

    const-string/jumbo v8, "Bonding removed, stop Autoconnection process"

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[1006]{0020}(01::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v9}, Lcom/samsung/ble/BleAutoConnectService;->-set6(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v9}, Lcom/samsung/ble/BleAutoConnectService;->-set4(Lcom/samsung/ble/BleAutoConnectService;Z)Z

    invoke-static {v9}, Lcom/samsung/ble/BleAutoConnectService;->-set1(I)I

    sget-boolean v7, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService$5;->this$0:Lcom/samsung/ble/BleAutoConnectService;

    invoke-static {v7, v1}, Lcom/samsung/ble/BleAutoConnectService;->-wrap4(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;)V

    sput-boolean v9, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    invoke-static {v9}, Lcom/samsung/ble/BleAutoConnectService;->-set9(Z)Z

    goto/16 :goto_0

    :cond_12
    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "BleAutoConnectService"

    const-string/jumbo v8, "device not matched"

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
