.class final Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;
.super Ljava/lang/Object;
.source "BluetoothPbapObexSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession$ObexClientHandler;
    }
.end annotation


# static fields
.field static final CONNECTED:I = 0x0

.field static final CONNECTING:I = 0x1

.field private static final DBG:Z = true

.field static final DISCONNECTED:I = 0x2

.field static final MSG_CONNECT:I = 0x0

.field static final MSG_REQUEST:I = 0x1

.field static final OBEX_SESSION_AUTHENTICATION_REQUEST:I = 0x69

.field static final OBEX_SESSION_AUTHENTICATION_TIMEOUT:I = 0x6a

.field static final OBEX_SESSION_CONNECTED:I = 0x64

.field static final OBEX_SESSION_DISCONNECTED:I = 0x66

.field static final OBEX_SESSION_FAILED:I = 0x65

.field static final OBEX_SESSION_REQUEST_COMPLETED:I = 0x67

.field static final OBEX_SESSION_REQUEST_FAILED:I = 0x68

.field private static final PBAP_TARGET:[B

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapObexSession"


# instance fields
.field private mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

.field private mClientSession:Ljavax/obex/ClientSession;

.field private mHandler:Landroid/os/Handler;

.field private mSessionHandler:Landroid/os/Handler;

.field private mState:I

.field private mThread:Landroid/os/HandlerThread;

.field private final mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->connect()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->executeRequest(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->PBAP_TARGET:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x61t
        0x35t
        -0x10t
        -0x10t
        -0x3bt
        0x11t
        -0x28t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Ljavax/obex/ObexTransport;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mState:I

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mTransport:Ljavax/obex/ObexTransport;

    return-void
.end method

.method private connect()V
    .locals 6

    const-string/jumbo v3, "BluetoothPbapObexSession"

    const-string/jumbo v4, "connect()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljavax/obex/ClientSession;

    iget-object v4, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v3, v4}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mClientSession:Ljavax/obex/ClientSession;

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mClientSession:Ljavax/obex/ClientSession;

    iget-object v4, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    invoke-virtual {v3, v4}, Ljavax/obex/ClientSession;->setAuthenticator(Ljavax/obex/Authenticator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    sget-object v3, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->PBAP_TARGET:[B

    const/16 v4, 0x46

    invoke-virtual {v1, v4, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v3, v1}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v3

    const/16 v4, 0xa0

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->disconnect(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :cond_0
    :goto_1
    monitor-enter p0

    if-eqz v2, :cond_1

    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BluetoothPbapObexSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect() exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized disconnect(Z)V
    .locals 4

    const/4 v3, 0x2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "BluetoothPbapObexSession"

    const-string/jumbo v2, "disconnect()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mClientSession:Ljavax/obex/ClientSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mClientSession:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private executeRequest(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;->execute(Ljavax/obex/ClientSession;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothPbapObexSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error during executeRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->disconnect(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->stop()V

    return-void
.end method

.method public isConnected()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mState:I

    return v0
.end method

.method public schedule(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "BluetoothPbapObexSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule() called with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "BluetoothPbapObexSession"

    const-string/jumbo v2, "Adding messages failed, obex must be disconnected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    return v4
.end method

.method public setAuthReply(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "BluetoothPbapObexSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthReply key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;->setReply(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "BluetoothPbapObexSession"

    const-string/jumbo v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v5, :cond_1

    :cond_0
    monitor-exit p0

    return v4

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mState:I

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "BluetoothPbapObexSessionThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession$ObexClientHandler;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession$ObexClientHandler;-><init>(Landroid/os/Looper;Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;)V

    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v4

    :cond_2
    monitor-exit p0

    return v5

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stop()V
    .locals 2

    const-string/jumbo v0, "BluetoothPbapObexSession"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->disconnect(Z)V

    return-void
.end method
