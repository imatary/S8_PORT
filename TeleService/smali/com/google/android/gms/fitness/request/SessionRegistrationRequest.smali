.class public Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;
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
            "Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mVersionCode:I

.field private final zzaAD:Lcom/google/android/gms/internal/zzow;

.field private final zzaBy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzz;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/app/PendingIntent;Landroid/os/IBinder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/internal/zzow$zza;->zzbR(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzow;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->zzaAD:Lcom/google/android/gms/internal/zzow;

    iput p4, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->zzaBy:I

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->zzaBy:I

    iget v2, p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->zzaBy:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v1, p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->zzb(Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->zzaAD:Lcom/google/android/gms/internal/zzow;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->zzaAD:Lcom/google/android/gms/internal/zzow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->zzaBy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "pendingIntent"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "sessionRegistrationOption"

    iget v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->zzaBy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzz;->zza(Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzvf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->zzaBy:I

    return v0
.end method
