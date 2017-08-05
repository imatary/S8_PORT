.class Lcom/android/bluetooth/btservice/AdapterState$OffState;
.super Lcom/android/internal/util/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$OffState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$OffState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string/jumbo v1, "Entering OffState"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap5(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    const-string/jumbo v0, "BluetoothAdapterState Entering OffState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterState;->-get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received message in OffState after cleanup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current state: OFF, message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothAdapterState Current state: OFF, message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    return v4

    :sswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V

    const-string/jumbo v1, "BluetoothAdapterState"

    const-string/jumbo v2, "Set Downloadbale DB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDownloadableDbObject()Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/btservice/AdapterState;->btDownloadableDb:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/AdapterState;->btDownloadableDb:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/AdapterState;->btDownloadableDb:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->initDdbFromAdapter()V

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setBleTurningOn(Z)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterState;->-get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->-wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v2, 0x7d0

    const/16 v4, 0x6a

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->BleOnProcessStart()V

    :sswitch_1
    return v5

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
