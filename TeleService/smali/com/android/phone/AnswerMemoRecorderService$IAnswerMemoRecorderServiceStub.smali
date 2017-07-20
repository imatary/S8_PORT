.class Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;
.super Lcom/android/phone/IAnswerMemoRecorderService$Stub;
.source "AnswerMemoRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AnswerMemoRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IAnswerMemoRecorderServiceStub"
.end annotation


# instance fields
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

.field private mRecorder:Lcom/android/phone/AnswerMemoRecorderService;


# direct methods
.method constructor <init>(Lcom/android/phone/AnswerMemoRecorderService;Landroid/os/RemoteCallbackList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/phone/AnswerMemoRecorderService;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/IAnswerMemoRecorderServiceCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mRecorder:Lcom/android/phone/AnswerMemoRecorderService;

    iput-object p2, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public getRecordTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mRecorder:Lcom/android/phone/AnswerMemoRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorderService;->getRecordTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mRecorder:Lcom/android/phone/AnswerMemoRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorderService;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isVoiceRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mRecorder:Lcom/android/phone/AnswerMemoRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorderService;->isVoiceRecording()Z

    move-result v0

    return v0
.end method

.method public pauseRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mRecorder:Lcom/android/phone/AnswerMemoRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorderService;->pauseRecord()V

    return-void
.end method

.method public registerCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public resumeRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mRecorder:Lcom/android/phone/AnswerMemoRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorderService;->resumeRecord()V

    return-void
.end method

.method public setCallerNumber(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mRecorder:Lcom/android/phone/AnswerMemoRecorderService;

    invoke-virtual {v0, p1}, Lcom/android/phone/AnswerMemoRecorderService;->setCallerNumber(Ljava/lang/String;)V

    return-void
.end method

.method public startRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mRecorder:Lcom/android/phone/AnswerMemoRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorderService;->startRecord()V

    return-void
.end method

.method public stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mRecorder:Lcom/android/phone/AnswerMemoRecorderService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mRecorder:Lcom/android/phone/AnswerMemoRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/AnswerMemoRecorderService;->stopRecord()V

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$IAnswerMemoRecorderServiceStub;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method
