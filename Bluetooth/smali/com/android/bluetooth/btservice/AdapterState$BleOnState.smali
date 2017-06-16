.class Lcom/android/bluetooth/btservice/AdapterState$BleOnState;
.super Lcom/android/internal/util/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleOnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$BleOnState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v1, "Entering BleOnState"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    const-string/jumbo v0, "BluetoothAdapterState Entering BleOnState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9

    const/16 v8, 0x67

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-get0(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received message in BleOnState after cleanup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current state: BLE ON, message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BluetoothAdapterState Current state: BLE ON, message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    return v6

    :sswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v4, 0xfa0

    const/16 v6, 0x64

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->startCoreServices()V

    :cond_2
    :goto_0
    return v7

    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOff(Z)V

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBleDisable()V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->disableNative()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3, v8}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v4, "Error while calling disableNative"

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOff(Z)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v4, 0xf

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
