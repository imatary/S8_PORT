.class public abstract Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;
.super Landroid/os/Binder;
.source "IBleProxyService.java"

# interfaces
.implements Lcom/samsung/android/library/beaconmanager/IBleProxyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/library/beaconmanager/IBleProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.library.beaconmanager.IBleProxyService"

.field static final TRANSACTION_getBeaconManagerVersion:I = 0x1

.field static final TRANSACTION_registerScanCallback:I = 0x4

.field static final TRANSACTION_registerTvCallback:I = 0x2

.field static final TRANSACTION_unregisterScanCallback:I = 0x5

.field static final TRANSACTION_unregisterTvCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.library.beaconmanager.IBleProxyService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/library/beaconmanager/IBleProxyService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "com.samsung.android.library.beaconmanager.IBleProxyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string/jumbo v6, "com.samsung.android.library.beaconmanager.IBleProxyService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "com.samsung.android.library.beaconmanager.IBleProxyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->getBeaconManagerVersion()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "com.samsung.android.library.beaconmanager.IBleProxyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->registerTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "com.samsung.android.library.beaconmanager.IBleProxyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->unregisterTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "com.samsung.android.library.beaconmanager.IBleProxyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/library/beaconmanager/IBleProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->registerScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "com.samsung.android.library.beaconmanager.IBleProxyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/library/beaconmanager/IBleProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/library/beaconmanager/IBleProxyService$Stub;->unregisterScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
