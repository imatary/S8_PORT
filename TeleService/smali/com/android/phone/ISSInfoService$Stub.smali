.class public abstract Lcom/android/phone/ISSInfoService$Stub;
.super Landroid/os/Binder;
.source "ISSInfoService.java"

# interfaces
.implements Lcom/android/phone/ISSInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ISSInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.phone.ISSInfoService"

    invoke-virtual {p0, p0, v0}, Lcom/android/phone/ISSInfoService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_0
    const-string/jumbo v2, "com.android.phone.ISSInfoService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_1
    const-string/jumbo v2, "com.android.phone.ISSInfoService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ISSInfoServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/ISSInfoServiceCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/ISSInfoService$Stub;->addListener(Lcom/android/phone/ISSInfoServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_2
    const-string/jumbo v2, "com.android.phone.ISSInfoService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ISSInfoServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/ISSInfoServiceCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/ISSInfoService$Stub;->removeListener(Lcom/android/phone/ISSInfoServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_3
    const-string/jumbo v2, "com.android.phone.ISSInfoService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ISSInfoService$Stub;->onSSInfo(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
