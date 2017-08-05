.class public Lcom/android/bluetooth/sap/SapServer;
.super Ljava/lang/Thread;
.source "SapServer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sap/SapServer$1;,
        Lcom/android/bluetooth/sap/SapServer$SAP_STATE;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final DISCONNECT_TIMEOUT_IMMEDIATE:I = 0x1388

.field private static final DISCONNECT_TIMEOUT_RFCOMM:I = 0x7d0

.field public static final NOTIFICATION_ID:I = 0x1080080

.field public static final SAP_DISCONNECT_ACTION:Ljava/lang/String; = "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

.field public static final SAP_DISCONNECT_TYPE_EXTRA:Ljava/lang/String; = "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

.field public static final SAP_MSG_RFC_REPLY:I = 0x0

.field public static final SAP_MSG_RIL_CONNECT:I = 0x1

.field public static final SAP_MSG_RIL_IND:I = 0x3

.field public static final SAP_MSG_RIL_REQ:I = 0x2

.field public static final SAP_MSG_RIL_SIM_RESET:I = 0x5

.field public static final SAP_RIL_SOCK_CLOSED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SapServer"

.field private static final TAG_HANDLER:Ljava/lang/String; = "SapServerHandler"

.field public static final VERBOSE:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsLocalInitDisconnect:Z

.field private mMaxMsgSize:I

.field private mRfcommIn:Ljava/io/BufferedInputStream;

.field private mRfcommOut:Ljava/io/BufferedOutputStream;

.field private mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

.field private mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

.field private mRilBtReceiverThread:Ljava/lang/Thread;

.field private mSapHandler:Landroid/os/Handler;

.field private mSapServiceHandler:Landroid/os/Handler;

.field private mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

.field private mTestMode:I

.field private pDiscIntent:Landroid/app/PendingIntent;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/sap/SapServer;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/sap/SapServer;)Lcom/android/bluetooth/sap/SapServer$SAP_STATE;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/sap/SapServer;Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->onConnectRequest(Lcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/sap/SapServer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/sap/SapServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->shutdown()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    iput-boolean v4, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    iput v4, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    new-instance v1, Lcom/android/bluetooth/sap/SapServer$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/sap/SapServer$1;-><init>(Lcom/android/bluetooth/sap/SapServer;)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SapServerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Changing state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-virtual {v2}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;->setClearRilQueue(Z)V

    :cond_0
    return-void
.end method

.method private static getMessageName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "Unknown message ID"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "SAP_MSG_REPLY"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "SAP_MSG_RIL_CONNECT"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "SAP_MSG_RIL_REQ"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "SAP_MSG_RIL_IND"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "SAP_MSG_RIL_SIM_RESET"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private handleRfcommReply(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 10

    const/16 v9, 0x101

    const/4 v8, 0x1

    const/16 v7, 0x7d0

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SapServerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRfcommReply() handling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v5

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v4, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/android/bluetooth/sap/SapMessage;->getNumPendingRilMessages()I

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SapServer"

    const-string/jumbo v4, "CONNECTION STATE changed to CONNECTED due to NoPending RilMessages"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendReply(Lcom/android/bluetooth/sap/SapMessage;)V

    :cond_4
    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v4, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v3, v4, :cond_7

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    :cond_5
    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "SapServer"

    const-string/jumbo v4, "Hold back the connect resp, as a call was ongoing when the initial response were sent."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p1, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result v3

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string/jumbo v3, "SapServer"

    const-string/jumbo v4, "ID_CONNECT_RESP will be sent later after SIM_RESET"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string/jumbo v3, "SapServer"

    const-string/jumbo v4, "SAP CONNECTION STATE will be changed later after SIM_RESET"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 p1, 0x0

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x100

    invoke-direct {p0, v3, v7}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v4, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v3, v4, :cond_d

    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string/jumbo v3, "SapServer"

    const-string/jumbo v4, "ID_DISCONNECT_RESP received in SAP_STATE.DISCONNECTING."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v1, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    move-object p1, v1

    invoke-direct {p0, v9, v7}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-boolean v3, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-eqz v3, :cond_f

    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v3, :cond_e

    const-string/jumbo v3, "SapServerHandler"

    const-string/jumbo v4, "This is a FORCED disconnect."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->shutdown()V

    const/4 p1, 0x0

    goto/16 :goto_0

    :cond_f
    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v3, :cond_10

    const-string/jumbo v3, "SapServerHandler"

    const-string/jumbo v4, "This is a NORMAL disconnect."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-direct {p0, v9, v7}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v4, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v3, v4, :cond_11

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v4, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v3, v4, :cond_13

    :cond_11
    :goto_1
    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v3, :cond_12

    const-string/jumbo v3, "SapServer"

    const-string/jumbo v4, "don\'t send ID_STATUS_IND"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 p1, 0x0

    goto/16 :goto_0

    :cond_13
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v4, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :sswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v4, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getResultCode()I

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v3, :cond_14

    const-string/jumbo v3, "SapServer"

    const-string/jumbo v4, "SIM RESET! Now send CONNECT_RESP and STATUS_IND(CARD_RESET) by force"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v0, v8}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/sap/SapMessage;->setConnectionStatus(I)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendReply(Lcom/android/bluetooth/sap/SapMessage;)V

    new-instance v2, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-virtual {v2, v8}, Lcom/android/bluetooth/sap/SapMessage;->setStatusChange(I)V

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->sendReply(Lcom/android/bluetooth/sap/SapMessage;)V

    const/4 p1, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0xe -> :sswitch_3
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleRilInd(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v1, "SapServer"

    const-string/jumbo v2, "handleRilInd : Message is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SapServerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleRilInd() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v3

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-boolean v1, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SapServerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled message - type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v3

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v1, v2, :cond_3

    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getDisconnectionType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;->setDisconnectionType(I)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getDisconnectionType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isCallOngoing()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private onConnectRequest(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v1, v4}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v4}, Lcom/android/bluetooth/sap/SapMessage;->setConnectionStatus(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMaxMsgSize()I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->isCallOngoing()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "SapServer"

    const-string/jumbo v3, "ongoing call!!, reject sap connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v0, v4}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/sap/SapMessage;->setConnectionStatus(I)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendReply(Lcom/android/bluetooth/sap/SapMessage;)V

    return-void

    :cond_3
    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v1, v4}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/android/bluetooth/sap/SapMessage;->setConnectionStatus(I)V

    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0
.end method

.method private sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendDisconnectInd(I)V
    .locals 7

    const/16 v6, 0x100

    const/4 v5, 0x1

    sget-boolean v2, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SapServer"

    const-string/jumbo v3, "in sendDisconnectInd()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq p1, v6, :cond_4

    sget-boolean v2, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SapServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending  disconnect ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") indication to client"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapMessage;->setDisconnectionType(I)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-ne p1, v5, :cond_2

    const/16 v2, 0x1388

    invoke-direct {p0, v6, v2}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapServer;->clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapServer;->sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    iput-boolean v5, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    goto :goto_0
.end method

.method private sendReply(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 4

    sget-boolean v1, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapServerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendReply() RFCOMM - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v3

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/sap/SapMessage;->write(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SapServerHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 7

    const/16 v6, 0x12

    sget-boolean v3, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SapServerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendRilMessage() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v5

    invoke-static {v5}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    invoke-virtual {p1, v3}, Lcom/android/bluetooth/sap/SapMessage;->writeReqToStream(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SapServerHandler"

    const-string/jumbo v4, "Unable encode message"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v2, v6}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "SapServerHandler"

    const-string/jumbo v4, "Unable to send message to RIL"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v2, v6}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0
.end method

.method private sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private shutdown()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapServerHandler"

    const-string/jumbo v2, "in Shutdown()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private startDisconnectTimer(II)V
    .locals 6

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v2, p1, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget-boolean v2, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SapServerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting alarm for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms to activate disconnect type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private stopDisconnectTimer()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    sget-boolean v1, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapServerHandler"

    const-string/jumbo v2, "Canceling disconnect alarm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->pDiscIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateNotification()V
    .locals 12

    const/4 v11, -0x2

    const/4 v10, 0x0

    const/4 v7, 0x1

    const v9, 0x1080080

    const-string/jumbo v4, "SapServer"

    const-string/jumbo v5, "updateNotification"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "PTS-SAP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    sget-boolean v4, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SapServer"

    const-string/jumbo v5, "Connected to PTS-SAP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00f3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v9, v5, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00f7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v7, v10

    const v4, 0x7f0a00f8

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00f5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Landroid/app/Notification;->flags:I

    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v1, Landroid/app/Notification;->flags:I

    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->flags:I

    iget v4, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/Notification;->defaults:I

    iget v4, v1, Landroid/app/Notification;->visibility:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/Notification;->visibility:I

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v9, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_1
    return-void

    :cond_2
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00f7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v7, v10

    const v4, 0x7f0a00f8

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00f5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Landroid/app/Notification;->flags:I

    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v1, Landroid/app/Notification;->flags:I

    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->flags:I

    iget v4, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/Notification;->defaults:I

    iget v4, v1, Landroid/app/Notification;->visibility:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/Notification;->visibility:I

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v9, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v8, 0x7f0a00f9

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v8, 0x7f0a00f9

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method


# virtual methods
.method clearNotification()V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x1080080

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    sget-boolean v4, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SapServerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Handling message (ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v6}, Lcom/android/bluetooth/sap/SapServer;->getMessageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    return v8

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/sap/SapServer;->handleRfcommReply(Lcom/android/bluetooth/sap/SapMessage;)V

    :cond_1
    :goto_0
    return v9

    :pswitch_1
    iget-object v4, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v4}, Lcom/android/bluetooth/sap/SapRilReceiver;->getRilBtOutStream()Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtOutStream:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    iget v4, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    if-eq v4, v7, :cond_2

    new-instance v2, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v4, 0x201

    invoke-direct {v2, v4}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    iget v4, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/sap/SapMessage;->setTestMode(I)V

    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    iput v7, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    :cond_2
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v0, v8}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    iget v4, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/sap/SapMessage;->setMaxMsgSize(I)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/sap/SapMessage;

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/sap/SapServer;->handleRilInd(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v9}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    const/16 v4, 0x101

    const/16 v5, 0x7d0

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v4, 0xd

    invoke-direct {v1, v4}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public run()V
    .locals 14

    const/16 v11, 0xa

    :try_start_0
    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v11, Landroid/os/HandlerThread;

    const-string/jumbo v12, "SapServerHandler"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11, v10, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/bluetooth/sap/SapRilReceiver;

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-direct {v11, v12, v13}, Lcom/android/bluetooth/sap/SapRilReceiver;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    new-instance v11, Ljava/lang/Thread;

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    const-string/jumbo v13, "RilBtReceiver"

    invoke-direct {v11, v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->updateNotification()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2c

    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v11, :cond_1

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Waiting for incomming RFCOMM message..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->read()I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-static {v9, v11}, Lcom/android/bluetooth/sap/SapMessage;->readMessage(ILjava/io/InputStream;)Lcom/android/bluetooth/sap/SapMessage;

    move-result-object v8

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v11}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    if-eqz v8, :cond_22

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v11, v12, :cond_22

    sparse-switch v9, :sswitch_data_0

    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v11, v12, :cond_4

    const-string/jumbo v11, "SapServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Message received in STATE != CONNECTED - state = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-virtual {v13}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v11, 0x12

    invoke-direct {v6, v11}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-direct {p0, v6}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    const/4 v8, 0x0

    :cond_4
    :goto_2
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/bluetooth/sap/SapMessage;->getSendToRil()Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v11}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    invoke-direct {p0, v8}, Lcom/android/bluetooth/sap/SapServer;->sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_1
    const-string/jumbo v11, "SapServer"

    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v11, v12, :cond_45

    sget-object v11, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v11}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    :goto_3
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_5
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v11, :cond_6

    :try_start_2
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->quit()Z

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->join()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_f

    :cond_6
    :goto_4
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v11, :cond_8

    :try_start_3
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v11}, Lcom/android/bluetooth/sap/SapRilReceiver;->shutdown()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    :cond_7
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->join()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_e

    :cond_8
    :goto_5
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v11, :cond_a

    :try_start_4
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v11, :cond_9

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Closing mRfcommIn..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d

    :cond_a
    :goto_6
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v11, :cond_c

    :try_start_5
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v11, :cond_b

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Closing mRfcommOut..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    :cond_c
    :goto_7
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v11, :cond_49

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    const/16 v11, 0x1388

    iput v11, v7, Landroid/os/Message;->what:I

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v11, :cond_d

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_8
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "All done exiting thread..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :sswitch_0
    :try_start_6
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v11, :cond_e

    const-string/jumbo v11, "SapServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CONNECT_REQ - MaxMsgSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/android/bluetooth/sap/SapMessage;->getMaxMsgSize()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-direct {p0, v8}, Lcom/android/bluetooth/sap/SapServer;->onConnectRequest(Lcom/android/bluetooth/sap/SapMessage;)V

    const/4 v8, 0x0

    goto/16 :goto_2

    :sswitch_1
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v11, :cond_f

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "DISCONNECT_REQ"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-direct {p0, v8}, Lcom/android/bluetooth/sap/SapServer;->clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V

    sget-object v11, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v11}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    invoke-direct {p0, v8}, Lcom/android/bluetooth/sap/SapServer;->sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v2

    :try_start_7
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "IOException received, this is probably a shutdown signal, cleaning up..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v11, v12, :cond_40

    sget-object v11, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v11}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    :goto_a
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_10
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v11, :cond_11

    :try_start_8
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->quit()Z

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->join()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_13

    :cond_11
    :goto_b
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v11, :cond_13

    :try_start_9
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v11}, Lcom/android/bluetooth/sap/SapRilReceiver;->shutdown()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    :cond_12
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->join()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_12

    :cond_13
    :goto_c
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v11, :cond_15

    :try_start_a
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v11, :cond_14

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Closing mRfcommIn..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    :cond_15
    :goto_d
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v11, :cond_17

    :try_start_b
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v11, :cond_16

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Closing mRfcommOut..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    :cond_17
    :goto_e
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v11, :cond_44

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    const/16 v11, 0x1388

    iput v11, v7, Landroid/os/Message;->what:I

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v11, :cond_18

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_f
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "All done exiting thread..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :sswitch_2
    :try_start_c
    invoke-direct {p0, v8}, Lcom/android/bluetooth/sap/SapServer;->clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v3

    :try_start_d
    const-string/jumbo v11, "SapServer"

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v11, v12, :cond_3b

    sget-object v11, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v11}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    :goto_10
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_19
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v11, :cond_1a

    :try_start_e
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->quit()Z

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->join()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_17

    :cond_1a
    :goto_11
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v11, :cond_1c

    :try_start_f
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v11, :cond_1b

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v11}, Lcom/android/bluetooth/sap/SapRilReceiver;->shutdown()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    :cond_1b
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->join()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_16

    :cond_1c
    :goto_12
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v11, :cond_1e

    :try_start_10
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v11, :cond_1d

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Closing mRfcommIn..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_15

    :cond_1e
    :goto_13
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v11, :cond_20

    :try_start_11
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v11, :cond_1f

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Closing mRfcommOut..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_14

    :cond_20
    :goto_14
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v11, :cond_3f

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    const/16 v11, 0x1388

    iput v11, v7, Landroid/os/Message;->what:I

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v11, :cond_21

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_15
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "All done exiting thread..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :sswitch_3
    :try_start_12
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v11, v12, :cond_3

    invoke-virtual {v8}, Lcom/android/bluetooth/sap/SapMessage;->getTransportProtocol()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v8}, Lcom/android/bluetooth/sap/SapMessage;->getTransportProtocol()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    const-string/jumbo v11, "SapServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid TransportProtocol received:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/android/bluetooth/sap/SapMessage;->getTransportProtocol()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v11, 0x12

    invoke-direct {v6, v11}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-direct {p0, v6}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Unable to parse message."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v11, 0x12

    invoke-direct {v0, v11}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v12, v13, :cond_4a

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    :goto_16
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v12, :cond_23

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_23
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v12, :cond_24

    :try_start_13
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->quit()Z

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->join()V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_b

    :cond_24
    :goto_17
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v12, :cond_26

    :try_start_14
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v12, :cond_25

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v12}, Lcom/android/bluetooth/sap/SapRilReceiver;->shutdown()V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    :cond_25
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v12}, Ljava/lang/Thread;->join()V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_a

    :cond_26
    :goto_18
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v12, :cond_28

    :try_start_15
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v12, :cond_27

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Closing mRfcommIn..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    :cond_28
    :goto_19
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_2a

    :try_start_16
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v12, :cond_29

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Closing mRfcommOut..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    :cond_2a
    :goto_1a
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v12, :cond_4e

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    const/16 v12, 0x1388

    iput v12, v7, Landroid/os/Message;->what:I

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v12, :cond_2b

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_1b
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "All done exiting thread..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v11

    :cond_2c
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v11, v12, :cond_36

    sget-object v11, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v11}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    :goto_1c
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v11, :cond_2d

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_2d
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v11, :cond_2e

    :try_start_17
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->quit()Z

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->join()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_1b

    :cond_2e
    :goto_1d
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    if-eqz v11, :cond_30

    :try_start_18
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v11, :cond_2f

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v11}, Lcom/android/bluetooth/sap/SapRilReceiver;->shutdown()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    :cond_2f
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->join()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiverThread:Ljava/lang/Thread;
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_1a

    :cond_30
    :goto_1e
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v11, :cond_32

    :try_start_19
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v11, :cond_31

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Closing mRfcommIn..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_19

    :cond_32
    :goto_1f
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v11, :cond_34

    :try_start_1a
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->VERBOSE:Z

    if-eqz v11, :cond_33

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Closing mRfcommOut..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_18

    :cond_34
    :goto_20
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v11, :cond_3a

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    const/16 v11, 0x1388

    iput v11, v7, Landroid/os/Message;->what:I

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v11, :cond_35

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_21
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "All done exiting thread..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_36
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v11, v12, :cond_39

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v11, v12, :cond_37

    iget-boolean v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v11, :cond_37

    const/16 v11, 0x100

    invoke-direct {p0, v11}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    :cond_37
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v11, :cond_38

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Waiting for deinit to complete"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :try_start_1b
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_3

    goto/16 :goto_1c

    :catch_3
    move-exception v4

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Interrupt received while waitinf for de-init to complete"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    :cond_39
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "SAP_STATE is DISCONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_3a
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "mSapServiceHandler is NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_3b
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v11, v12, :cond_3e

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v11, v12, :cond_3c

    iget-boolean v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v11, :cond_3c

    const/16 v11, 0x100

    invoke-direct {p0, v11}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    :cond_3c
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v11, :cond_3d

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Waiting for deinit to complete"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :try_start_1c
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_4

    goto/16 :goto_10

    :catch_4
    move-exception v4

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Interrupt received while waitinf for de-init to complete"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    :cond_3e
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "SAP_STATE is DISCONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_3f
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "mSapServiceHandler is NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_40
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v11, v12, :cond_43

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v11, v12, :cond_41

    iget-boolean v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v11, :cond_41

    const/16 v11, 0x100

    invoke-direct {p0, v11}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    :cond_41
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v11, :cond_42

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Waiting for deinit to complete"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :try_start_1d
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_5

    goto/16 :goto_a

    :catch_5
    move-exception v4

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Interrupt received while waitinf for de-init to complete"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    :cond_43
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "SAP_STATE is DISCONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_44
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "mSapServiceHandler is NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_45
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v11, v12, :cond_48

    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v12, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v11, v12, :cond_46

    iget-boolean v11, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v11, :cond_46

    const/16 v11, 0x100

    invoke-direct {p0, v11}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    :cond_46
    sget-boolean v11, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v11, :cond_47

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Waiting for deinit to complete"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :try_start_1e
    iget-object v11, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v4

    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "Interrupt received while waitinf for de-init to complete"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_48
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "SAP_STATE is DISCONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_49
    const-string/jumbo v11, "SapServer"

    const-string/jumbo v12, "mSapServiceHandler is NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_4a
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_4d

    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v13, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v12, v13, :cond_4b

    iget-boolean v12, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v12, :cond_4b

    const/16 v12, 0x100

    invoke-direct {p0, v12}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    :cond_4b
    sget-boolean v12, Lcom/android/bluetooth/sap/SapServer;->DEBUG:Z

    if-eqz v12, :cond_4c

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Waiting for deinit to complete"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :try_start_1f
    iget-object v12, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_7

    goto/16 :goto_16

    :catch_7
    move-exception v4

    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "Interrupt received while waitinf for de-init to complete"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    :cond_4d
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "SAP_STATE is DISCONNECTED"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_4e
    const-string/jumbo v12, "SapServer"

    const-string/jumbo v13, "mSapServiceHandler is NULL"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :catch_8
    move-exception v2

    goto/16 :goto_1a

    :catch_9
    move-exception v2

    goto/16 :goto_19

    :catch_a
    move-exception v4

    goto/16 :goto_18

    :catch_b
    move-exception v4

    goto/16 :goto_17

    :catch_c
    move-exception v2

    goto/16 :goto_7

    :catch_d
    move-exception v2

    goto/16 :goto_6

    :catch_e
    move-exception v4

    goto/16 :goto_5

    :catch_f
    move-exception v4

    goto/16 :goto_4

    :catch_10
    move-exception v2

    goto/16 :goto_e

    :catch_11
    move-exception v2

    goto/16 :goto_d

    :catch_12
    move-exception v4

    goto/16 :goto_c

    :catch_13
    move-exception v4

    goto/16 :goto_b

    :catch_14
    move-exception v2

    goto/16 :goto_14

    :catch_15
    move-exception v2

    goto/16 :goto_13

    :catch_16
    move-exception v4

    goto/16 :goto_12

    :catch_17
    move-exception v4

    goto/16 :goto_11

    :catch_18
    move-exception v2

    goto/16 :goto_20

    :catch_19
    move-exception v2

    goto/16 :goto_1f

    :catch_1a
    move-exception v4

    goto/16 :goto_1e

    :catch_1b
    move-exception v4

    goto/16 :goto_1d

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
        0xd -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method public setTestMode(I)V
    .locals 0

    return-void
.end method
