.class public abstract Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "ISecConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->getSecCallExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/4 v4, 0x1

    return v4

    :sswitch_2
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->updateParentCallExtras(Ljava/lang/String;Z)V

    const/4 v4, 0x1

    return v4

    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->onLineCtrlEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v4, 0x1

    return v4

    :sswitch_4
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->answerRingingCallInUI()V

    const/4 v4, 0x1

    return v4

    :sswitch_5
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v12, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v12, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->onPostDialPause(Ljava/lang/String;CZ)V

    const/4 v4, 0x1

    return v4

    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v12, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->onPostDialPauseComplete(Ljava/lang/String;C)V

    const/4 v4, 0x1

    return v4

    :sswitch_7
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->acceptCall()V

    const/4 v4, 0x1

    return v4

    :sswitch_8
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->rejectCall()V

    const/4 v4, 0x1

    return v4

    :sswitch_9
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->hangupFgCall()V

    const/4 v4, 0x1

    return v4

    :sswitch_a
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->hangupBgCall()V

    const/4 v4, 0x1

    return v4

    :sswitch_b
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->holdCalls(Z)V

    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :sswitch_c
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->swapCalls()V

    const/4 v4, 0x1

    return v4

    :sswitch_d
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->setOtherPartyHold(Z)V

    const/4 v4, 0x1

    return v4

    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :sswitch_e
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->setMute(Z)V

    const/4 v4, 0x1

    return v4

    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    :sswitch_f
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->getMute()Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :sswitch_10
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->turnOnSpeaker(Z)V

    const/4 v4, 0x1

    return v4

    :cond_6
    const/4 v11, 0x0

    goto :goto_6

    :sswitch_11
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->isSpeakerOn()Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    :sswitch_12
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v11, 0x1

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->turnOnBluetooth(Z)V

    const/4 v4, 0x1

    return v4

    :cond_8
    const/4 v11, 0x0

    goto :goto_8

    :sswitch_13
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->saveParticipantLog(Ljava/lang/String;JJ)V

    const/4 v4, 0x1

    return v4

    :sswitch_14
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->saveModifiedCallLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_15
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->isLowBatt()Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    :sswitch_16
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->isCriticalLowBatt()Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    :sswitch_17
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->restartRingingOrCallWaiting()V

    const/4 v4, 0x1

    return v4

    :sswitch_18
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v14, v1, v2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->setEcholocateCallState(ILandroid/net/Uri;ILjava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :cond_b
    const/4 v14, 0x0

    goto :goto_b

    :sswitch_19
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->setAlerting()V

    const/4 v4, 0x1

    return v4

    :sswitch_1a
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->handleCallSessionMessage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1b
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->sendSessionModifyRequestForTPhone(Ljava/lang/String;I)V

    const/4 v4, 0x1

    return v4

    :sswitch_1c
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->sendSessionModifyResponseForTPhone(Ljava/lang/String;I)V

    const/4 v4, 0x1

    return v4

    :sswitch_1d
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->sendSessionModifyRequestForUWA(Ljava/lang/String;I)V

    const/4 v4, 0x1

    return v4

    :sswitch_1e
    const-string/jumbo v4, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v15, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->emergencyCallWithMessage(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v4, 0x1

    return v4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
