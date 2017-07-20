.class public Lcom/google/android/gms/fitness/data/DataUpdateNotification;
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
            "Lcom/google/android/gms/fitness/data/DataUpdateNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzavT:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzavU:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzawF:J

.field private final zzawG:J

.field private final zzawH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawF:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawG:J

    iput p6, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawH:I

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavT:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/DataUpdateNotification;)Z
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawF:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawF:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawG:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawG:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawH:I

    iget v2, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawH:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v2, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavT:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavT:Lcom/google/android/gms/fitness/data/DataType;

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

    if-ne p1, p0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataUpdateNotification;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zza(Lcom/google/android/gms/fitness/data/DataUpdateNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavT:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public getOperationType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawH:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawF:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavT:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "updateStartTimeNanos"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawF:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "updateEndTimeNanos"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "operationType"

    iget v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "dataSource"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "dataType"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzavT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzh;->zza(Lcom/google/android/gms/fitness/data/DataUpdateNotification;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzup()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawF:J

    return-wide v0
.end method

.method public zzuq()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataUpdateNotification;->zzawG:J

    return-wide v0
.end method
