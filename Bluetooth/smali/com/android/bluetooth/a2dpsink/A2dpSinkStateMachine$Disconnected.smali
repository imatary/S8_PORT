.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;
.super Lcom/android/internal/util/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incorrect state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignore HF DISCONNECTED event, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v2, "Incoming A2DP accepted"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, p2, v2, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get18(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v2, "Incoming A2DP rejected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;[B)Z

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v2, "A2DP Connected from Disconnected state"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v2, "Incoming A2DP accepted"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, p2, v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v2, "Incoming A2DP rejected"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;[B)Z

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignore HF DISCONNECTING event, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set5(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)I

    return-void
.end method

.method public exit()V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exit Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Disconnected process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v5, "ERROR: current, target, or mIncomingDevice not null in Disconnected"

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    return v7

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    return v7

    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v1, v8, v7}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v5, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;[B)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v1, v7, v8}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    :goto_0
    :sswitch_1
    return v3

    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get18(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-wide/16 v6, 0x7530

    const/16 v5, 0xc9

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;

    iget v4, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->type:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected stack event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget v4, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v5, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v5, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    iget-object v6, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v4, v5, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap16(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigDataEvent;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    move-result-object v4

    iget-object v5, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigDataEvent;->valueStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->ParsingStackData(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
