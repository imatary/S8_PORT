.class Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
.super Lcom/android/internal/util/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommandState"
.end annotation


# instance fields
.field private mIsBleTurningOff:Z

.field private mIsBleTurningOn:Z

.field private mIsTurningOff:Z

.field private mIsTurningOn:Z

.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v1, "Entering PendingCommandState"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    const-string/jumbo v0, "BluetoothAdapterState Entering PendingCommandState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void
.end method

.method public isBleTurningOff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsBleTurningOff:Z

    return v0
.end method

.method public isBleTurningOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsBleTurningOn:Z

    return v0
.end method

.method public isTurningOff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOff:Z

    return v0
.end method

.method public isTurningOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOn:Z

    return v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14

    const/16 v13, 0xf

    const/16 v10, 0x65

    const/16 v12, 0xa

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOn()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOff()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isBleTurningOn()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isBleTurningOff()Z

    move-result v2

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get0(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Received message in PendingCommandState after cleanup: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v9}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    return v11

    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Current state: PENDING_COMMAND, message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v9}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BluetoothAdapterState Current state: PENDING_COMMAND, message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    return v11

    :sswitch_0
    if-nez v2, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Deferring USER_TURN_ON request..."

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, p1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap3(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    :cond_3
    :goto_0
    const/4 v7, 0x1

    return v7

    :sswitch_1
    if-nez v6, :cond_4

    if-eqz v3, :cond_3

    :cond_4
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Deferring USER_TURN_OFF request..."

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, p1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap3(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Don\'t defer BLE_TURN_ON request."

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    if-nez v6, :cond_5

    if-eqz v3, :cond_3

    :cond_5
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Deferring BLE_TURN_OFF request..."

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, p1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap3(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_4
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x6a

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/bluetooth/btservice/AdapterService;->enableNative(Z)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error while turning Bluetooth on"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v12}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v8, 0x2ee0

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    goto :goto_0

    :sswitch_5
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x64

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->enableBrEdrNative()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v8, 0xfa0

    const/16 v10, 0xc9

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v7, "BluetoothAdapterState"

    const-string/jumbo v8, "Error while turning Bluetooth On - 2"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_6
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xc9

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBluetoothReady()V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get4(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OnState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xc

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v10}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOn(Z)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get2(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v7, v7, Lcom/android/bluetooth/btservice/AdapterState;->btDownloadableDb:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v7, v7, Lcom/android/bluetooth/btservice/AdapterState;->btDownloadableDb:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {v7}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->refreshDbFile()V

    :cond_8
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v13}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v7, "BluetoothAdapterState"

    const-string/jumbo v8, "SET_SCAN_MODE_TIMEOUT. abnormalRecover()"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x69

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->disableBrEdrNative()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v8, 0x1f40

    const/16 v10, 0xcb

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v7, "BluetoothAdapterState"

    const-string/jumbo v8, "disableBrEdrNative fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "BluetoothAdapterState"

    const-string/jumbo v8, "Error while turning Bluetooth Off - 2"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_b
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0xcb

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v8, 0xfa0

    const/16 v10, 0x6b

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopProfileServices()Z

    const-string/jumbo v7, "bluetooth.pan.tether_on"

    const-string/jumbo v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_d
    if-eqz v6, :cond_a

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v10}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error enabling Bluetooth - hardware init failed?"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopProfileServices()Z

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v12}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x67

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v8, 0x7d0

    const/16 v10, 0x68

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopGattProfileService()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Stopping Gatt profile services that were post enabled"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    :sswitch_e
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x68

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOff(Z)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v12}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x6b

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterService;->disconnectIncomingConnClients()V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get2(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v13}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error enabling Bluetooth (BLE start timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOn(Z)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v12}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error enabling Bluetooth (start timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterService;->printEnabledService()V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get2(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v12}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error enabling Bluetooth (enable timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOn(Z)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v12}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error stopping Bluetooth profiles (stop timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterService;->printEnabledService()V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get2(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v12}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error stopping Bluetooth profiles (BLE stop timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v12}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v8, "Error disabling Bluetooth (disable timeout)"

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    if-eqz v6, :cond_c

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    :cond_c
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopProfileServices()Z

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopGattProfileService()Z

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOff(Z)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/AdapterState;->-get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v7, v12}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap1(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_8
        0x4 -> :sswitch_4
        0x14 -> :sswitch_1
        0x15 -> :sswitch_a
        0x17 -> :sswitch_3
        0x18 -> :sswitch_d
        0x19 -> :sswitch_e
        0x1a -> :sswitch_f
        0x64 -> :sswitch_11
        0x65 -> :sswitch_12
        0x67 -> :sswitch_15
        0x68 -> :sswitch_14
        0x69 -> :sswitch_9
        0x6a -> :sswitch_10
        0x6b -> :sswitch_13
        0xc8 -> :sswitch_7
        0xc9 -> :sswitch_6
        0xca -> :sswitch_b
        0xcb -> :sswitch_c
    .end sparse-switch
.end method

.method public setBleTurningOff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsBleTurningOff:Z

    return-void
.end method

.method public setBleTurningOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsBleTurningOn:Z

    return-void
.end method

.method public setTurningOff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOff:Z

    return-void
.end method

.method public setTurningOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOn:Z

    return-void
.end method
