.class public abstract Lcom/android/phone/IAnswerMemoRecorderService$Stub;
.super Landroid/os/Binder;
.source "IAnswerMemoRecorderService.java"

# interfaces
.implements Lcom/android/phone/IAnswerMemoRecorderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IAnswerMemoRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p0, p0, v0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string/jumbo v5, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->startRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_2
    const-string/jumbo v5, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->stopRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_3
    const-string/jumbo v5, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->pauseRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_4
    const-string/jumbo v5, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->resumeRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_5
    const-string/jumbo v7, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->isVoiceRecording()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_6
    const-string/jumbo v7, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->isPaused()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_7
    const-string/jumbo v5, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->getRecordTime()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v6

    :sswitch_8
    const-string/jumbo v5, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->setCallerNumber(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_9
    const-string/jumbo v5, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/IAnswerMemoRecorderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->registerCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_a
    const-string/jumbo v5, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/IAnswerMemoRecorderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->unregisterCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
