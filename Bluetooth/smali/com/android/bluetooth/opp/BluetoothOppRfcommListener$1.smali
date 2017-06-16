.class Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;
.super Ljava/lang/Thread;
.source "BluetoothOppRfcommListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v14, 0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    :goto_0
    const/16 v10, 0xa

    if-ge v4, v10, :cond_0

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get5(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_0
    if-nez v8, :cond_1

    const-string/jumbo v10, "BtOppRfcommListener"

    const-string/jumbo v11, "Error start listening after 10 try"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v10, v14}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-set1(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z

    :cond_1
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get5(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "BtOppRfcommListener"

    const-string/jumbo v11, "Accept thread started."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get5(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v10

    if-nez v10, :cond_b

    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get1()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, "BtOppRfcommListener"

    const-string/jumbo v11, "Accepting connection..."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get3(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v10

    if-nez v10, :cond_4

    :cond_4
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get3(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    if-nez v7, :cond_9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-set1(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v10, "BtOppRfcommListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error accept connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x1f4

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :cond_5
    const/4 v8, 0x1

    :try_start_2
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get1()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string/jumbo v10, "BtOppRfcommListener"

    const-string/jumbo v11, "Starting RFCOMM listener...."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    iget-object v11, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get2(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    const-string/jumbo v12, "OBEX Object Push"

    sget-object v13, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v13}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-set0(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get1()Z

    move-result v10

    if-eqz v10, :cond_7

    const-string/jumbo v10, "BtOppRfcommListener"

    const-string/jumbo v11, "Started RFCOMM listener...."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_2
    if-nez v8, :cond_0

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get1()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string/jumbo v10, "BtOppRfcommListener"

    const-string/jumbo v11, "Wait 300 ms"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-wide/16 v10, 0x12c

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit p0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v3

    const-string/jumbo v10, "BtOppRfcommListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error create RfcommServerSocket "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_4
    const-string/jumbo v10, "BtOppRfcommListener"

    const-string/jumbo v11, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-set1(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_9
    :try_start_5
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get0()Z

    move-result v10

    if-eqz v10, :cond_a

    const-string/jumbo v10, "BtOppRfcommListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Accepted connection from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v9, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-direct {v9, v0}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->-get4(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    const/16 v10, 0x64

    iput v10, v6, Landroid/os/Message;->what:I

    iput-object v9, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v10, "BtOppRfcommListener"

    const-string/jumbo v11, "BluetoothSocket listen thread finished"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
