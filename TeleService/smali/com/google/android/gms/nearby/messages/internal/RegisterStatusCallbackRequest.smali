.class public final Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field public zzbbF:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbcW:Lcom/google/android/gms/nearby/messages/internal/zzh;

.field public zzbcX:Z

.field public final zzbcr:Lcom/google/android/gms/nearby/messages/internal/zze;

.field public final zzbcs:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;ZLjava/lang/String;Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zze$zza;->zzdz(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzbcr:Lcom/google/android/gms/nearby/messages/internal/zze;

    invoke-static {p3}, Lcom/google/android/gms/nearby/messages/internal/zzh$zza;->zzdC(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzbcW:Lcom/google/android/gms/nearby/messages/internal/zzh;

    iput-boolean p4, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzbcX:Z

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzbbF:Ljava/lang/String;

    if-nez p6, :cond_0

    new-instance p6, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzbbF:Ljava/lang/String;

    invoke-direct {p6, v1, v0}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzbcs:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzr;->zza(Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzED()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzbcr:Lcom/google/android/gms/nearby/messages/internal/zze;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zze;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzEG()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzbcW:Lcom/google/android/gms/nearby/messages/internal/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
