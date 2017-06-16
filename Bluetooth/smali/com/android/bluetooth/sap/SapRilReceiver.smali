.class public Lcom/android/bluetooth/sap/SapRilReceiver;
.super Ljava/lang/Object;
.source "SapRilReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEBUG:Z

.field public static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field private static final SOCKET_NAME_RIL_BT:Ljava/lang/String; = "sap_uim_socket1"

.field private static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SapRilReceiver"

.field public static final VERBOSE:Z


# instance fields
.field buffer:[B

.field mRilBtInStream:Ljava/io/InputStream;

.field mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

.field private mSapServerMsgHandler:Landroid/os/Handler;

.field private mSapServiceHandler:Landroid/os/Handler;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/sap/SapRilReceiver;->DEBUG:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/sap/SapRilReceiver;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtInStream:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServiceHandler:Landroid/os/Handler;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->buffer:[B

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method private notifyShutdown()V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/sap/SapRilReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SapRilReceiver"

    const-string/jumbo v1, "notifyShutdown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendShutdownMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static openRilBtSocket()Landroid/net/LocalSocket;
    .locals 11

    const/16 v10, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    :goto_0
    :try_start_0
    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v7, "sap_uim_socket1"

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v7, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v5, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    return-object v5

    :catch_0
    move-exception v2

    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_2
    if-ne v4, v10, :cond_2

    const-string/jumbo v7, "SapRilReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t find \'sap_uim_socket1\' socket after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " times, continuing to retry silently"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    const-wide/16 v8, 0xfa0

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_2
    if-lez v4, :cond_1

    if-ge v4, v10, :cond_1

    const-string/jumbo v7, "SapRilReceiver"

    const-string/jumbo v8, "Couldn\'t find \'sap_uim_socket1\' socket; retrying after timeout"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/bluetooth/sap/SapRilReceiver;->VERBOSE:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "SapRilReceiver"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private static readMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_1

    const-string/jumbo v4, "SapRilReceiver"

    const-string/jumbo v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    add-int/2addr v2, v0

    sub-int/2addr v3, v0

    if-gtz v3, :cond_0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    sget-boolean v4, Lcom/android/bluetooth/sap/SapRilReceiver;->VERBOSE:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SapRilReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Message length found to be: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    move v3, v1

    :cond_3
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_4

    const-string/jumbo v4, "SapRilReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " remaining="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4
    add-int/2addr v2, v0

    sub-int/2addr v3, v0

    if-gtz v3, :cond_3

    return v1
.end method

.method private sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendRilConnectMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private sendRilIndMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendRilSimResetMessage()V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private sendShutdownMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getRilBtOutStream()Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    return-object v0
.end method

.method public run()V
    .locals 8

    const/4 v7, -0x1

    :try_start_0
    sget-boolean v5, Lcom/android/bluetooth/sap/SapRilReceiver;->VERBOSE:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "Starting RilBtReceiverThread..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/sap/SapRilReceiver;->openRilBtSocket()Landroid/net/LocalSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtInStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendRilConnectMessage()V

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendRilSimResetMessage()V

    :goto_0
    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/bluetooth/sap/SapRilReceiver;->VERBOSE:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "Waiting for incoming message..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mRilBtInStream:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->buffer:[B

    invoke-static {v5, v6}, Lcom/android/bluetooth/sap/SapRilReceiver;->readMessage(Ljava/io/InputStream;[B)I

    move-result v1

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    if-ne v1, v7, :cond_3

    sget-boolean v5, Lcom/android/bluetooth/sap/SapRilReceiver;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "EOF reached - closing down."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "Disconnected from \'sap_uim_socket1\' socket"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->buffer:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance([BII)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v2

    invoke-static {v2}, Lorg/android/btsap/SapApi$MsgHeader;->parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    move-result-object v3

    sget-boolean v5, Lcom/android/bluetooth/sap/SapRilReceiver;->VERBOSE:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "Message received."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v3}, Lcom/android/bluetooth/sap/SapMessage;->newInstance(Lorg/android/btsap/SapApi$MsgHeader;)Lcom/android/bluetooth/sap/SapMessage;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v5

    if-eq v5, v7, :cond_6

    invoke-virtual {v4}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v5

    const/16 v6, 0x100

    if-ge v5, v6, :cond_5

    invoke-direct {p0, v4}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->notifyShutdown()V

    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "\'sap_uim_socket1\' socket inputStream closed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "Disconnected from \'sap_uim_socket1\' socket"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_3
    invoke-direct {p0, v4}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendRilIndMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    const-string/jumbo v6, "SapRilReceiver"

    const-string/jumbo v7, "Disconnected from \'sap_uim_socket1\' socket"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v5

    :cond_6
    :try_start_4
    const-string/jumbo v5, "SapRilReceiver"

    const-string/jumbo v6, "no need to send message"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public shutdown()V
    .locals 4

    sget-boolean v2, Lcom/android/bluetooth/sap/SapRilReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SapRilReceiver"

    const-string/jumbo v3, "shutdown()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownInput()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_5
    sget-boolean v2, Lcom/android/bluetooth/sap/SapRilReceiver;->VERBOSE:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SapRilReceiver"

    const-string/jumbo v3, "Uncaught exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    :try_start_7
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSocket:Landroid/net/LocalSocket;

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
