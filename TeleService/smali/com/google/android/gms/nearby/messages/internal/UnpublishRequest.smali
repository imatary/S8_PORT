.class public final Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;
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
            "Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field public final zzbbF:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbbH:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbcT:Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

.field public final zzbco:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbcr:Lcom/google/android/gms/nearby/messages/internal/zze;

.field public final zzbcs:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/internal/MessageWrapper;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzbcT:Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

    invoke-static {p3}, Lcom/google/android/gms/nearby/messages/internal/zze$zza;->zzdz(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzbcr:Lcom/google/android/gms/nearby/messages/internal/zze;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzbbF:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzbco:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzbbH:Z

    if-nez p7, :cond_0

    new-instance p7, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzbco:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzbbF:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzbbH:Z

    invoke-direct {p7, v0, v1, v2}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iput-object p7, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzbcs:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzt;->zza(Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzED()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;->zzbcr:Lcom/google/android/gms/nearby/messages/internal/zze;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zze;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
