.class public Lcom/google/android/gms/fitness/result/DailyTotalResult;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/result/DailyTotalResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzUX:Lcom/google/android/gms/common/api/Status;

.field private final zzaxn:Lcom/google/android/gms/fitness/data/DataSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/result/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzUX:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzaxn:Lcom/google/android/gms/fitness/data/DataSet;

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/result/DailyTotalResult;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzUX:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p1, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzUX:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzaxn:Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v2, p1, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzaxn:Lcom/google/android/gms/fitness/data/DataSet;

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
    instance-of v1, p1, Lcom/google/android/gms/fitness/result/DailyTotalResult;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/result/DailyTotalResult;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzb(Lcom/google/android/gms/fitness/result/DailyTotalResult;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzUX:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getTotal()Lcom/google/android/gms/fitness/data/DataSet;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzaxn:Lcom/google/android/gms/fitness/data/DataSet;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzUX:Lcom/google/android/gms/common/api/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzaxn:Lcom/google/android/gms/fitness/data/DataSet;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "status"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzUX:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "dataPoint"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zzaxn:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/zzb;->zza(Lcom/google/android/gms/fitness/result/DailyTotalResult;Landroid/os/Parcel;I)V

    return-void
.end method
