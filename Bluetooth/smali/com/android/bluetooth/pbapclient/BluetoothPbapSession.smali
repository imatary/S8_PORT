.class Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;
.super Ljava/lang/Object;
.source "BluetoothPbapSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;
    }
.end annotation


# static fields
.field public static final ACTION_LISTING:I = 0xe

.field public static final ACTION_PHONEBOOK_SIZE:I = 0x10

.field public static final ACTION_VCARD:I = 0xf

.field public static final AUTH_REQUESTED:I = 0x8

.field public static final AUTH_TIMEOUT:I = 0x9

.field private static final PBAP_UUID:Ljava/lang/String; = "0000112f-0000-1000-8000-00805f9b34fb"

.field public static final REQUEST_COMPLETED:I = 0x3

.field public static final REQUEST_FAILED:I = 0x4

.field private static final RFCOMM_CONNECTED:I = 0x1

.field private static final RFCOMM_FAILED:I = 0x2

.field public static final SESSION_CONNECTED:I = 0x6

.field public static final SESSION_CONNECTING:I = 0x5

.field public static final SESSION_DISCONNECTED:I = 0x7

.field private static final TAG:Ljava/lang/String; = "com.android.bluetooth.pbapclient.BluetoothPbapSession"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnectThread:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

.field private final mParentHandler:Landroid/os/Handler;

.field private mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

.field private final mSessionHandler:Landroid/os/Handler;

.field private mTransport:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mSessionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "No Bluetooth adapter in the system"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mConnectThread:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mTransport:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;

    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PBAP session handler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mSessionHandler:Landroid/os/Handler;

    return-void
.end method

.method private startObexSession()V
    .locals 2

    const-string/jumbo v0, "com.android.bluetooth.pbapclient.BluetoothPbapSession"

    const-string/jumbo v1, "startObexSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mTransport:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mSessionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->start(Landroid/os/Handler;)Z

    return-void
.end method

.method private startRfcomm()V
    .locals 2

    const-string/jumbo v0, "com.android.bluetooth.pbapclient.BluetoothPbapSession"

    const-string/jumbo v1, "startRfcomm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mConnectThread:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;-><init>(Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mConnectThread:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mConnectThread:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;->start()V

    :cond_0
    return-void
.end method

.method private stopObexSession()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "com.android.bluetooth.pbapclient.BluetoothPbapSession"

    const-string/jumbo v1, "stopObexSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->stop()V

    iput-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    :cond_0
    return-void
.end method

.method private stopRfcomm()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "com.android.bluetooth.pbapclient.BluetoothPbapSession"

    const-string/jumbo v3, "stopRfcomm"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mConnectThread:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mConnectThread:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;->closeSocket()V

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mConnectThread:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mConnectThread:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mTransport:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mTransport:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iput-object v4, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mTransport:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "com.android.bluetooth.pbapclient.BluetoothPbapSession"

    const-string/jumbo v1, "abort"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->abort()V

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string/jumbo v0, "com.android.bluetooth.pbapclient.BluetoothPbapSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handler: msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    iput-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mConnectThread:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    iput-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mConnectThread:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession$RfcommConnectThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mTransport:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->startObexSession()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->stopObexSession()V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->schedule(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z

    iput-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->stopRfcomm()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mSessionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mSessionHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->setAuthResponse(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mParentHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x64 -> :sswitch_3
        0x65 -> :sswitch_2
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
    .end sparse-switch
.end method

.method public makeRequest(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z
    .locals 3

    const-string/jumbo v0, "com.android.bluetooth.pbapclient.BluetoothPbapSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.android.bluetooth.pbapclient.BluetoothPbapSession"

    const-string/jumbo v1, "makeRequest: request already queued, exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mPendingRequest:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->startRfcomm()V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->schedule(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z

    move-result v0

    return v0
.end method

.method public setAuthResponse(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "com.android.bluetooth.pbapclient.BluetoothPbapSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthResponse key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mSessionHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->mObexSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexSession;->setAuthReply(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 2

    const-string/jumbo v0, "com.android.bluetooth.pbapclient.BluetoothPbapSession"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->startRfcomm()V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string/jumbo v0, "com.android.bluetooth.pbapclient.BluetoothPbapSession"

    const-string/jumbo v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->stopObexSession()V

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->stopRfcomm()V

    return-void
.end method
