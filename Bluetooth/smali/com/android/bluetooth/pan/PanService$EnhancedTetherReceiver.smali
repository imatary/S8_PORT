.class Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnhancedTetherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pan/PanService;Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;-><init>(Lcom/android/bluetooth/pan/PanService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/high16 v12, -0x80000000

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "PanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v10}, Lcom/android/bluetooth/pan/PanService;->-set2(Z)Z

    invoke-static {v10}, Lcom/android/bluetooth/pan/PanService;->-set0(Z)Z

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    const-string/jumbo v6, "PanService"

    const-string/jumbo v7, "BT STATE ON"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    new-instance v7, Lcom/samsung/bt/pan/EnhancedTetheringManager;

    iget-object v8, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v8}, Lcom/android/bluetooth/pan/PanService;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v9}, Lcom/android/bluetooth/pan/PanService;->-get5(Lcom/android/bluetooth/pan/PanService;)Landroid/os/Handler;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/samsung/bt/pan/EnhancedTetheringManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v6, v7}, Lcom/android/bluetooth/pan/PanService;->-set3(Lcom/android/bluetooth/pan/PanService;Lcom/samsung/bt/pan/EnhancedTetheringManager;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->start()V

    :cond_0
    const-string/jumbo v6, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const/16 v6, 0xa

    if-ne v1, v6, :cond_1

    invoke-static {v10}, Lcom/android/bluetooth/pan/PanService;->-set2(Z)Z

    invoke-static {v10}, Lcom/android/bluetooth/pan/PanService;->-set0(Z)Z

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isLastTetheredDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->clearLastTetheredDevice()V

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->removeTetheredDevice(Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    const-string/jumbo v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v6, "com.samsung.bluetooth.device.extra.DISCONNECTION_REASON"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/android/bluetooth/pan/PanService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "PanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PAN Disconnection Reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isLastTetheredDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get2(Lcom/android/bluetooth/pan/PanService;)I

    move-result v6

    if-ne v4, v6, :cond_5

    invoke-static {v11}, Lcom/android/bluetooth/pan/PanService;->-set2(Z)Z

    invoke-static {v10}, Lcom/android/bluetooth/pan/PanService;->-set0(Z)Z

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->startFindTetherServer()V

    :cond_3
    :goto_0
    const-string/jumbo v6, "com.samsung.bluetooth.pan.inactivenap.ASK_CONFIRM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v6, "com.samsung.bluetooth.extra.pan.inactivenap.CONFIRM_RESULT"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v6, "PanService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "connection request from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is confirmed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v6, v11}, Lcom/android/bluetooth/pan/PanService;->setBluetoothTethering(Z)V

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v6, v7, v11, v8}, Lcom/android/bluetooth/pan/PanService;->-wrap1(Lcom/android/bluetooth/pan/PanService;[BII)Z

    :cond_4
    return-void

    :cond_5
    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get1(Lcom/android/bluetooth/pan/PanService;)I

    move-result v6

    if-eq v4, v6, :cond_6

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get3(Lcom/android/bluetooth/pan/PanService;)I

    move-result v6

    if-ne v4, v6, :cond_3

    :cond_6
    invoke-static {v10}, Lcom/android/bluetooth/pan/PanService;->-set2(Z)Z

    invoke-static {v10}, Lcom/android/bluetooth/pan/PanService;->-set0(Z)Z

    iget-object v6, p0, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v6}, Lcom/android/bluetooth/pan/PanService;->-get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->clearLastTetheredDevice()V

    goto :goto_0
.end method
