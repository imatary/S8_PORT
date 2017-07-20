.class public abstract Lcom/google/android/gms/internal/zzqf$zza;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/zzqf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqf$zza$zza;
    }
.end annotation


# direct methods
.method public static zzdr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzqf;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.google.android.gms.nearby.bootstrap.internal.IDataListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzqf$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqf$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    instance-of v1, v0, Lcom/google/android/gms/internal/zzqf;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/zzqf;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.google.android.gms.nearby.bootstrap.internal.IDataListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v0, "com.google.android.gms.nearby.bootstrap.internal.IDataListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqf$zza;->zzs([B)V

    return v1

    :sswitch_2
    const-string/jumbo v0, "com.google.android.gms.nearby.bootstrap.internal.IDataListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqf$zza;->onError(I)V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
