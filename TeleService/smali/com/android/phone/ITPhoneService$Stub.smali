.class public abstract Lcom/android/phone/ITPhoneService$Stub;
.super Landroid/os/Binder;
.source "ITPhoneService.java"

# interfaces
.implements Lcom/android/phone/ITPhoneService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ITPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.phone.ITPhoneService"

    invoke-virtual {p0, p0, v0}, Lcom/android/phone/ITPhoneService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    :sswitch_0
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_1
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-nez v13, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v3, v6, v7, v8}, Lcom/android/phone/ITPhoneService$Stub;->dial(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->acceptCall()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_3
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->rejectCall()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_4
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->hangupFgCall()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_5
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->hangupBgCall()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_6
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->swapCalls()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_7
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/ITPhoneService$Stub;->startVideoCall(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_8
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-nez v13, :cond_1

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/phone/ITPhoneService$Stub;->acceptVideoCall(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_9
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->getCallInfo()Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v13, 0x1

    return v13

    :sswitch_a
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    int-to-char v1, v13

    invoke-virtual {p0, v1}, Lcom/android/phone/ITPhoneService$Stub;->sendDtmf(C)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_b
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->proceedAfterWaitChar()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_c
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_d
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->cancelPostDial()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_e
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/android/phone/ITPhoneService$Stub;->sendSms(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_f
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-nez v13, :cond_2

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/phone/ITPhoneService$Stub;->setMute(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_10
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->getMute()Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v12, :cond_3

    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_3
    const/4 v13, 0x1

    goto :goto_3

    :sswitch_11
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/ITPhoneService$Stub;->startRecord(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v12, :cond_4

    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_4
    const/4 v13, 0x1

    goto :goto_4

    :sswitch_12
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->stopRecord()Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v12, :cond_5

    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_5
    const/4 v13, 0x1

    goto :goto_5

    :sswitch_13
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->isRecording()Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v12, :cond_6

    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_6
    const/4 v13, 0x1

    goto :goto_6

    :sswitch_14
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-nez v13, :cond_7

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {p0, v4}, Lcom/android/phone/ITPhoneService$Stub;->turnOnSpeaker(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_7
    const/4 v4, 0x1

    goto :goto_7

    :sswitch_15
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->isSpeakerOn()Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v12, :cond_8

    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_8
    const/4 v13, 0x1

    goto :goto_8

    :sswitch_16
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-nez v13, :cond_9

    const/4 v4, 0x0

    :goto_9
    invoke-virtual {p0, v4}, Lcom/android/phone/ITPhoneService$Stub;->connectBluetoothAudio(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_9
    const/4 v4, 0x1

    goto :goto_9

    :sswitch_17
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-nez v13, :cond_a

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {p0, v4}, Lcom/android/phone/ITPhoneService$Stub;->enableExpandedView(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_a
    const/4 v4, 0x1

    goto :goto_a

    :sswitch_18
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-nez v13, :cond_b

    const/4 v4, 0x0

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/ITPhoneService$Stub;->enableSystemNavigation(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_b
    const/4 v4, 0x1

    goto :goto_b

    :sswitch_19
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/ITPhoneService$Stub;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_1a
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/android/phone/ITPhoneService$Stub;->setSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_1b
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-nez v13, :cond_c

    const/4 v4, 0x0

    :goto_c
    invoke-virtual {p0, v4}, Lcom/android/phone/ITPhoneService$Stub;->screenOnImmediately(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_c
    const/4 v4, 0x1

    goto :goto_c

    :sswitch_1c
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/ITPhoneEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/ITPhoneEventListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/ITPhoneService$Stub;->registerCallBack(Lcom/android/phone/ITPhoneEventListener;)Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v12, :cond_d

    const/4 v13, 0x0

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_d
    const/4 v13, 0x1

    goto :goto_d

    :sswitch_1d
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/ITPhoneEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/ITPhoneEventListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/ITPhoneService$Stub;->unregisterCallBack(Lcom/android/phone/ITPhoneEventListener;)Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v12, :cond_e

    const/4 v13, 0x0

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_e
    const/4 v13, 0x1

    goto :goto_e

    :sswitch_1e
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->silenceRinger()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_1f
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->acceptCallAndHangupFgCall()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_20
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->acceptCallAndHangupBgCall()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_21
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->showCallScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_22
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->getApiVersion()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :sswitch_23
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->getCoverState()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :sswitch_24
    const-string/jumbo v13, "com.android.phone.ITPhoneService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ITPhoneService$Stub;->getCoverType()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
