.class Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;
.super Lcom/android/phone/IPhoneVoiceRecorderService$Stub;
.source "PhoneVoiceRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneVoiceRecorderServiceStub"
.end annotation


# instance fields
.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;


# direct methods
.method constructor <init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;Landroid/os/RemoteCallbackList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    iput-object p2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public getRecordTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->getRecordTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isVoiceRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->isVoiceRecording()Z

    move-result v0

    return v0
.end method

.method public pauseRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->pauseRecord()V

    return-void
.end method

.method public registerCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public resumeRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->resumeRecord()V

    return-void
.end method

.method public setCallerName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    invoke-virtual {v0, p1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->setCallerName(Ljava/lang/String;)V

    return-void
.end method

.method public setCallerNumber(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    invoke-virtual {v0, p1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->setCallerNumber(Ljava/lang/String;)V

    return-void
.end method

.method public startRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->startRecord()V

    return-void
.end method

.method public stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->stopRecord()V

    return-void
.end method

.method public unregisterCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$IPhoneVoiceRecorderServiceStub;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method
