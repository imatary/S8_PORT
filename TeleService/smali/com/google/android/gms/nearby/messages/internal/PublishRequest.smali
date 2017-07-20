.class public final Lcom/google/android/gms/nearby/messages/internal/PublishRequest;
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
            "Lcom/google/android/gms/nearby/messages/internal/PublishRequest;",
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

.field public final zzbbG:Z

.field public final zzbbH:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbcT:Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

.field public final zzbcU:Lcom/google/android/gms/nearby/messages/Strategy;

.field public final zzbcV:Lcom/google/android/gms/nearby/messages/internal/zzg;

.field public final zzbco:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbcr:Lcom/google/android/gms/nearby/messages/internal/zze;

.field public final zzbcs:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/internal/MessageWrapper;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbcT:Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbcU:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {p4}, Lcom/google/android/gms/nearby/messages/internal/zze$zza;->zzdz(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zze;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbcr:Lcom/google/android/gms/nearby/messages/internal/zze;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbbF:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbco:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbbG:Z

    if-eqz p8, :cond_0

    invoke-static {p8}, Lcom/google/android/gms/nearby/messages/internal/zzg$zza;->zzdB(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzg;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbcV:Lcom/google/android/gms/nearby/messages/internal/zzg;

    iput-boolean p9, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbbH:Z

    if-nez p10, :cond_1

    new-instance p10, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbco:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbbF:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbbH:Z

    invoke-direct {p10, v0, v1, v2}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iput-object p10, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbcs:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzq;->zza(Lcom/google/android/gms/nearby/messages/internal/PublishRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzED()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbcr:Lcom/google/android/gms/nearby/messages/internal/zze;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zze;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzEF()Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbcV:Lcom/google/android/gms/nearby/messages/internal/zzg;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->zzbcV:Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method
