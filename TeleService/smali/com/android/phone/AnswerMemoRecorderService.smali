.class public Lcom/android/phone/AnswerMemoRecorderService;
.super Landroid/app/Service;
.source "AnswerMemoRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AnswerMemoRecorderService$1;,
        Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mBinder:Lcom/android/phone/IAnswerMemoRecorderService$Stub;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/IAnswerMemoRecorderServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private recorder:Lcom/android/phone/AnswerMemoRecorder;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/AnswerMemoRecorderService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/AnswerMemoRecorderService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/AnswerMemoRecorderService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/AnswerMemoRecorderService;->sendMessageCallback(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string/jumbo v0, "AnswerMemoRecorderService"

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/AnswerMemoRecorderService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AnswerMemoRecorderService$1;-><init>(Lcom/android/phone/AnswerMemoRecorderService;)V

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "AnswerMemoRecorderService"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "AnswerMemoRecorderService"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private sendMessageCallback(I)V
    .locals 5

    const-string/jumbo v3, "sendMessageCallback()"

    invoke-direct {p0, v3}, Lcom/android/phone/AnswerMemoRecorderService;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/phone/AnswerMemoRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/phone/AnswerMemoRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    invoke-interface {v3, p1}, Lcom/android/phone/IAnswerMemoRecorderServiceCallback;->messageCallback(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/AnswerMemoRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    :goto_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMessageCallback exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AnswerMemoRecorderService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getRecordTime()J
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    invoke-virtual {v1}, Lcom/android/phone/AnswerMemoRecorder;->getRecordTime()J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRecordTime outofmemory exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AnswerMemoRecorderService;->log(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorder;->isPaused()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorder;->isVoiceRecording()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string/jumbo v0, "onBind()"

    invoke-direct {p0, v0}, Lcom/android/phone/AnswerMemoRecorderService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->mBinder:Lcom/android/phone/IAnswerMemoRecorderService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "onCreate()"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/AnswerMemoRecorderService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/AnswerMemoRecorder;->getInstance()Lcom/android/phone/AnswerMemoRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorderService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/phone/AnswerMemoRecorder;->registerForInfoStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    invoke-virtual {v0, v3}, Lcom/android/phone/AnswerMemoRecorder;->setServiceAlive(Z)V

    :cond_0
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;-><init>(Lcom/android/phone/AnswerMemoRecorderService;Landroid/os/RemoteCallbackList;)V

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->mBinder:Lcom/android/phone/IAnswerMemoRecorderService$Stub;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "onDestroy()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AnswerMemoRecorderService;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/phone/AnswerMemoRecorder;->unregisterForInfoStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/AnswerMemoRecorder;->setServiceAlive(Z)V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string/jumbo v0, "onUnbind()"

    invoke-direct {p0, v0}, Lcom/android/phone/AnswerMemoRecorderService;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public pauseRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorder;->pauseRecord()V

    :cond_0
    return-void
.end method

.method public resumeRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorder;->resumeRecord()V

    :cond_0
    return-void
.end method

.method public setCallerNumber(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    invoke-virtual {v0, p1}, Lcom/android/phone/AnswerMemoRecorder;->setCallerNumber(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorder;->startRecord()V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService;->recorder:Lcom/android/phone/AnswerMemoRecorder;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorder;->stopRecord()V

    :cond_0
    return-void
.end method
