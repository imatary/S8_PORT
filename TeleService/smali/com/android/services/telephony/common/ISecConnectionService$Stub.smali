.class public abstract Lcom/android/services/telephony/common/ISecConnectionService$Stub;
.super Landroid/os/Binder;
.source "ISecConnectionService.java"

# interfaces
.implements Lcom/android/services/telephony/common/ISecConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ISecConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_0
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_1
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->setSecConnectionServiceAdapter(Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;)V

    const/4 v11, 0x1

    return v11

    :sswitch_2
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->transfer(Landroid/telecom/PhoneAccountHandle;)V

    const/4 v11, 0x1

    return v11

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    sget-object v11, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->blindTransfer(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v5, v7}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->requestJanskyTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_5
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->requestTPhoneStart(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_6
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->requestRingtoneUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_7
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->getSilence()Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_2

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :sswitch_8
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_9
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_a
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->sendEmptyFlash()V

    const/4 v11, 0x1

    return v11

    :sswitch_b
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->getParticipantsCount()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_c
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->setDisconnectVolteGroupCall(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_d
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->requestOfSecVideoProvider(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_e
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->sendVideoCallResultForTPhone(Ljava/lang/String;II)V

    const/4 v11, 0x1

    return v11

    :sswitch_f
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->sendRequestVideoCallForTPhone(Ljava/lang/String;I)V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    const-string/jumbo v11, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->sendSessionModificationState(Ljava/lang/String;I)V

    const/4 v11, 0x1

    return v11

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
