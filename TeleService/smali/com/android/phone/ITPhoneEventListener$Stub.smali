.class public abstract Lcom/android/phone/ITPhoneEventListener$Stub;
.super Landroid/os/Binder;
.source "ITPhoneEventListener.java"

# interfaces
.implements Lcom/android/phone/ITPhoneEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ITPhoneEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ITPhoneEventListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/phone/ITPhoneEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/phone/ITPhoneEventListener;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.android.phone.ITPhoneEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Lcom/android/phone/ITPhoneEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/phone/ITPhoneEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_1
    return-object v1

    :cond_2
    instance-of v1, v0, Lcom/android/phone/ITPhoneEventListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/phone/ITPhoneEventListener;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_0
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_1
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ITPhoneEventListener$Stub;->onPhoneStateChanged(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_2
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/android/phone/ITPhoneEventListener$Stub;->onDisconnect(Lcom/skt/prod/phone/TCall;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_0
    sget-object v9, Lcom/skt/prod/phone/TCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skt/prod/phone/TCall;

    goto :goto_0

    :cond_1
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_1

    :sswitch_3
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v3, v9

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/ITPhoneEventListener$Stub;->onPostDialCharacter(IC)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_4
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ITPhoneEventListener$Stub;->onSuppServiceFailed(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_5
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/ITPhoneEventListener$Stub;->onCoverStateChanged(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_6
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ITPhoneEventListener$Stub;->onHDVoiceAvailabilityChanged(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_7
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/phone/ITPhoneEventListener$Stub;->onRequestVideoCall(Lcom/skt/prod/phone/TCall;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_2
    sget-object v9, Lcom/skt/prod/phone/TCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skt/prod/phone/TCall;

    goto :goto_2

    :sswitch_8
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ITPhoneEventListener$Stub;->onVideoCallResult(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_9
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {p0, v2, v8}, Lcom/android/phone/ITPhoneEventListener$Stub;->onQueryComplete(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_a
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/ITPhoneEventListener$Stub;->onSuppServiceNotification(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_b
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_3

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/phone/ITPhoneEventListener$Stub;->onNewIncomingCall(Lcom/skt/prod/phone/TCall;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_3
    sget-object v9, Lcom/skt/prod/phone/TCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skt/prod/phone/TCall;

    goto :goto_3

    :sswitch_c
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_4

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_5

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {p0, v1, v5}, Lcom/android/phone/ITPhoneEventListener$Stub;->onRecordStateChanged(Lcom/skt/prod/phone/TCall;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_4
    sget-object v9, Lcom/skt/prod/phone/TCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skt/prod/phone/TCall;

    goto :goto_4

    :cond_5
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_5

    :sswitch_d
    const-string/jumbo v9, "com.android.phone.ITPhoneEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_6

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p0, v1, v6, v7}, Lcom/android/phone/ITPhoneEventListener$Stub;->onCallLogCreated(Lcom/skt/prod/phone/TCall;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_6
    sget-object v9, Lcom/skt/prod/phone/TCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skt/prod/phone/TCall;

    goto :goto_6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
