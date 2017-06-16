.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;
.super Lcom/android/internal/util/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pending"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processConnectionEvent state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incorrect state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setDisconnectedReason(I)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get5(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1, v3, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown device Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v1, "current device is not null"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1, v5, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v1, "target device is not null"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1, v5, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto/16 :goto_1

    :catchall_6
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v1, "incoming device is not null"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1, v5, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_1

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown device Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0, p2, v5, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto/16 :goto_1

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v1, "current device tries to connect back"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v1, "Stack and target device are connecting"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v1, "Another connecting event on the incoming device"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v1, "Incoming connection while pending, ignore"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v1, "stack is disconnecting mCurrentDevice"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v1, "TargetDevice is getting disconnected"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v1, "IncomingDevice is getting disconnected"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disconnecting unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

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
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Pending process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    const/4 v3, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    return v7

    :sswitch_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/os/Message;)V

    :goto_0
    return v3

    :sswitch_1
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setDisconnectedReason(I)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-static {v4, v7, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I[B)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setDisconnectedReason(I)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v5, 0x1

    invoke-static {v4, v1, v7, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STACK_EVENT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget v4, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->type:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

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

    goto/16 :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/16 v5, 0xc9

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap19(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)V

    iget v4, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v5, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v5, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    iget-object v6, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v4, v5, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap16(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigDataEvent;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    move-result-object v4

    iget-object v5, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigDataEvent;->valueStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->ParsingStackData(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0xc9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
