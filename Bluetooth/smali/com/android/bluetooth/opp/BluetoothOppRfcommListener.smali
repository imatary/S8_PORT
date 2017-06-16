.class public Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;
.super Ljava/lang/Object;
.source "BluetoothOppRfcommListener.java"


# static fields
.field private static final CREATE_RETRY_TIME:I = 0xa

.field private static final D:Z

.field public static final MSG_INCOMING_BTOPP_CONNECTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BtOppRfcommListener"

.field private static final V:Z


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mCallback:Landroid/os/Handler;

.field private volatile mInterrupted:Z

.field private mSocketAcceptThread:Ljava/lang/Thread;

.field private mTcpServerSocket:Ljava/net/ServerSocket;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->D:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->V:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mTcpServerSocket:Ljava/net/ServerSocket;

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;

    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;

    const-string/jumbo v1, "BtOppRfcommListener"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "BtOppRfcommListener"

    const-string/jumbo v3, "stopping Accept Thread"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BtOppRfcommListener"

    const-string/jumbo v3, "close mBtServerSocket"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BtOppRfcommListener"

    const-string/jumbo v3, "waiting for thread to terminate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->V:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BtOppRfcommListener"

    const-string/jumbo v3, "done waiting for thread to terminate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "BtOppRfcommListener"

    const-string/jumbo v3, "Error close mBtServerSocket"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_1
    move-exception v1

    :try_start_4
    const-string/jumbo v2, "BtOppRfcommListener"

    const-string/jumbo v3, "Interrupted waiting for Accept Thread to join"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
