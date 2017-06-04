.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;
.super Landroid/app/Service;
.source "SppAckService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;,
        Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBindState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private mServiceBinder:Lcom/sec/spp/push/IPushClientService;

.field private mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mBindState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/sec/spp/push/IPushClientService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mServiceBinder:Lcom/sec/spp/push/IPushClientService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;Lcom/sec/spp/push/IPushClientService;)Lcom/sec/spp/push/IPushClientService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mServiceBinder:Lcom/sec/spp/push/IPushClientService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mBindState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->stopService(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->bind()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->token2str(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    return-object v0
.end method

.method private bind()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.spp.push.PUSH_CLIENT_SERVICE_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.spp.push"

    const-string/jumbo v3, "com.sec.spp.push.RequestService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bind spp service result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopService(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "STOP SERVICE startId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->stopSelf(I)V

    return-void
.end method

.method private token2str(I)Ljava/lang/String;
    .locals 4

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN TOKEN(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "TOKEN_IND_SVC_CONNECTED"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "TOKEN_REQ_ACK"

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

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SppAckService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string/jumbo v0, "SERVICE DESTROYED"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mServiceBinder:Lcom/sec/spp/push/IPushClientService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    if-eqz p1, :cond_0

    const-string/jumbo v2, "notificationId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v2, 0x2

    return v2
.end method
