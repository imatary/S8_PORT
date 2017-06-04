.class public Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;
.super Landroid/app/Service;
.source "SmsSendService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;,
        Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;
    }
.end annotation


# static fields
.field private static final EXTRA_BGSENDER_AVAILABLE:Ljava/lang/String; = "extra_bgsender_available"

.field private static final EXTRA_HIDDEN:Ljava/lang/String; = "extra_hidden"

.field public static final EXTRA_MESSAGE_BODY:Ljava/lang/String; = "extra_message_body"

.field public static final EXTRA_RECIPIENTS:Ljava/lang/String; = "extra_recipients"

.field private static final EXTRA_SENDER_IMSI:Ljava/lang/String; = "extra_sender_imsi"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "extra_token"

.field private static final TAG:Ljava/lang/String; = "SmsSendService"

.field private static final TOKEN_IND_SVC_CONNECTED:I = 0x0

.field public static final TOKEN_REQ_SEND_SMS:I = 0x1


# instance fields
.field private final mBindState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;

.field private mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;-><init>(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$BindState;-><init>(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mBindState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$1;-><init>(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->token2str(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->stopService(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/android/mms/transaction/IMessageBackgroundSender;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;Lcom/android/mms/transaction/IMessageBackgroundSender;)Lcom/android/mms/transaction/IMessageBackgroundSender;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mBindState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->bind()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    return-object v0
.end method

.method private bind()Z
    .locals 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->getMessagePackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.mms.transaction.MessageBackgroundSenderService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.mms.transaction.IMessageBackgroundSender"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const-string/jumbo v3, "SmsSendService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bind result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getMessagePackageName()Ljava/lang/String;
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string/jumbo v3, "com.android.mms"

    invoke-interface {v0, v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private stopService(I)V
    .locals 3

    const-string/jumbo v0, "SmsSendService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STOP SERVICE startId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->stopSelf(I)V

    return-void
.end method

.method private token2str(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN TOKEN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "TOKEN_IND_SVC_CONNECTED"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "TOKEN_REQ_SEND_SMS"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "SmsSendService"

    const-string/jumbo v1, "SERVICE CREATED"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SmsSendService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string/jumbo v2, "SmsSendService"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string/jumbo v1, "SmsSendService"

    const-string/jumbo v2, "SERVICE DESTROYTED"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;

    invoke-interface {v1}, Lcom/android/mms/transaction/IMessageBackgroundSender;->stopListening()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SmsSendService"

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v5, 0x2

    const-string/jumbo v2, "SmsSendService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "START COMMAND startId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v2, "SmsSendService"

    const-string/jumbo v3, "intent null"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_0
    const-string/jumbo v2, "extra_token"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    const-string/jumbo v2, "SmsSendService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid token, token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->stopService(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
