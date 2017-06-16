.class public Lcom/android/bluetooth/ObexServerSockets;
.super Ljava/lang/Object;
.source "ObexServerSockets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    }
.end annotation


# static fields
.field private static final BTDUMP_TAG:Ljava/lang/String; = "ObxSerSock -- "

.field private static final D:Z = true

.field private static final NUMBER_OF_SOCKET_TYPES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ObexServerSockets"


# instance fields
.field private volatile mConAccepted:Z

.field private final mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

.field private final mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

.field private mMasInstanceId:I

.field private final mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/ObexServerSockets;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mMasInstanceId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ObexServerSockets;->onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/bluetooth/IObexConnectionHandler;Landroid/bluetooth/BluetoothServerSocket;Landroid/bluetooth/BluetoothServerSocket;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iput-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iput-boolean v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConAccepted:Z

    iput v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mMasInstanceId:I

    iput-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    iput-object p2, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    iput-object p3, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    iput p4, p0, Lcom/android/bluetooth/ObexServerSockets;->mMasInstanceId:I

    return-void
.end method

.method public static create(Lcom/android/bluetooth/IObexConnectionHandler;I)Lcom/android/bluetooth/ObexServerSockets;
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0, v0, p1}, Lcom/android/bluetooth/ObexServerSockets;->create(Lcom/android/bluetooth/IObexConnectionHandler;III)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object v0

    return-object v0
.end method

.method private static create(Lcom/android/bluetooth/IObexConnectionHandler;III)Lcom/android/bluetooth/ObexServerSockets;
    .locals 15

    const-string/jumbo v12, "ObexServerSockets"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "create(rfcomm = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", l2capPsm = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") for masId"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "No bluetooth adapter..."

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v2, 0xa

    const/4 v6, 0x0

    :goto_0
    const/16 v12, 0xa

    if-ge v6, v12, :cond_3

    const/4 v7, 0x1

    if-nez v9, :cond_1

    :try_start_0
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v9

    :cond_1
    if-nez v8, :cond_2

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_2
    :goto_1
    if-nez v7, :cond_3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v11

    const/16 v12, 0xb

    if-eq v11, v12, :cond_4

    const/16 v12, 0xc

    if-eq v11, v12, :cond_4

    const-string/jumbo v12, "ObexServerSockets"

    const-string/jumbo v13, "initServerSockets failed as BT is (being) turned off"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v7, :cond_5

    const-string/jumbo v12, "ObexServerSockets"

    const-string/jumbo v13, "Succeed to create listening sockets "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/bluetooth/ObexServerSockets;

    move/from16 v0, p3

    invoke-direct {v10, p0, v9, v8, v0}, Lcom/android/bluetooth/ObexServerSockets;-><init>(Lcom/android/bluetooth/IObexConnectionHandler;Landroid/bluetooth/BluetoothServerSocket;Landroid/bluetooth/BluetoothServerSocket;I)V

    invoke-direct {v10}, Lcom/android/bluetooth/ObexServerSockets;->startAccept()V

    return-object v10

    :catch_0
    move-exception v4

    const-string/jumbo v12, "ObexServerSockets"

    const-string/jumbo v13, "Error create ServerSockets "

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    const-string/jumbo v12, "ObexServerSockets"

    const-string/jumbo v13, "waiting 300 ms..."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, 0x12c

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_1
    move-exception v5

    const-string/jumbo v12, "ObexServerSockets"

    const-string/jumbo v13, "create() was interrupted"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string/jumbo v12, "ObexServerSockets"

    const-string/jumbo v13, "Error to create listening socket after 10 try"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_6

    :try_start_2
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_3
    const/4 v12, 0x0

    return-object v12

    :catch_2
    move-exception v4

    const-string/jumbo v12, "ObexServerSockets"

    const-string/jumbo v13, "Error closing the socket. ignoring..."

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private declared-synchronized onAcceptFailed()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ObexServerSockets"

    const-string/jumbo v1, "onAcceptFailed() calling shutdown..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    invoke-interface {v0}, Lcom/android/bluetooth/IObexConnectionHandler;->onAcceptFailed()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ObexServerSockets;->shutdown(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ObexServerSockets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnect() socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mConAccepted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/ObexServerSockets;->mConAccepted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConAccepted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/bluetooth/IObexConnectionHandler;->onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConAccepted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startAccept()V
    .locals 3

    const-string/jumbo v0, "ObexServerSockets"

    const-string/jumbo v1, "startAccept()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConAccepted:Z

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;-><init>(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothServerSocket;)V

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BtMasId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/ObexServerSockets;->mMasInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_rfc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;-><init>(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothServerSocket;)V

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BtMasId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/ObexServerSockets;->mMasInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_l2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getL2capPsm()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result v0

    return v0
.end method

.method public getRfcommChannel()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result v0

    return v0
.end method

.method public prepareForNewConnect()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "ObexServerSockets"

    const-string/jumbo v1, "prepareForNewConnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/ObexServerSockets;->startAccept()V

    return-void
.end method

.method public declared-synchronized shutdown(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "ObexServerSockets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shutdown(block = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->shutdown()V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->shutdown()V

    :cond_1
    if-eqz p1, :cond_5

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "ObexServerSockets"

    const-string/jumbo v2, "shutdown() interrupted, continue waiting..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_5
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    monitor-exit p0

    return-void
.end method
