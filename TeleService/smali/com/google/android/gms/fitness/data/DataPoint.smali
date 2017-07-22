.class public final Lcom/google/android/gms/fitness/data/DataPoint;
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
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzavU:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzawj:J

.field private zzawk:J

.field private final zzawl:[Lcom/google/android/gms/fitness/data/Value;

.field private zzawm:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzawn:J

.field private zzawo:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;JJ[Lcom/google/android/gms/fitness/data/Value;Lcom/google/android/gms/fitness/data/DataSource;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawm:Lcom/google/android/gms/fitness/data/DataSource;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawj:J

    iput-wide p5, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawk:J

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawl:[Lcom/google/android/gms/fitness/data/Value;

    iput-wide p9, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawn:J

    iput-wide p11, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawo:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/RawDataPoint;)V
    .locals 16

    const/4 v4, 0x4

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzawj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcom/google/android/gms/fitness/data/DataPoint;->zza(Ljava/lang/Long;J)J

    move-result-wide v6

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzawk:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v8, 0x0

    invoke-static {v2, v8, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->zza(Ljava/lang/Long;J)J

    move-result-wide v8

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzawl:[Lcom/google/android/gms/fitness/data/Value;

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzawn:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v12, 0x0

    invoke-static {v2, v12, v13}, Lcom/google/android/gms/fitness/data/DataPoint;->zza(Ljava/lang/Long;J)J

    move-result-wide v12

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzawo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v14, 0x0

    invoke-static {v2, v14, v15}, Lcom/google/android/gms/fitness/data/DataPoint;->zza(Ljava/lang/Long;J)J

    move-result-wide v14

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v11, p2

    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(ILcom/google/android/gms/fitness/data/DataSource;JJ[Lcom/google/android/gms/fitness/data/Value;Lcom/google/android/gms/fitness/data/DataSource;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/google/android/gms/fitness/data/RawDataPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;",
            "Lcom/google/android/gms/fitness/data/RawDataPoint;",
            ")V"
        }
    .end annotation

    iget v0, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzaxg:I

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->zza(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    iget v1, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->zzaxh:I

    invoke-static {p1, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->zza(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/RawDataPoint;)V

    return-void
.end method

.method private static zza(Ljava/lang/Long;J)J
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method private static zza(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;I)",
            "Lcom/google/android/gms/fitness/data/DataSource;"
        }
    .end annotation

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/fitness/data/DataPoint;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v2, p1, Lcom/google/android/gms/fitness/data/DataPoint;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawj:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/DataPoint;->zzawj:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawk:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/DataPoint;->zzawk:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawl:[Lcom/google/android/gms/fitness/data/Value;

    iget-object v2, p1, Lcom/google/android/gms/fitness/data/DataPoint;->zzawl:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getOriginalDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getOriginalDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

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
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/DataPoint;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataPoint;->zza(Lcom/google/android/gms/fitness/data/DataPoint;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getOriginalDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawm:Lcom/google/android/gms/fitness/data/DataSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawm:Lcom/google/android/gms/fitness/data/DataSource;

    goto :goto_0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawk:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestamp(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawj:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawj:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawk:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, "DataPoint{%s@[%s, %s,raw=%s,insert=%s](%s %s)}"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawl:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawk:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawj:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawn:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawo:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzavU:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawm:Lcom/google/android/gms/fitness/data/DataSource;

    if-nez v0, :cond_0

    const-string/jumbo v0, "N/A"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawm:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzd;->zza(Lcom/google/android/gms/fitness/data/DataPoint;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzuf()[Lcom/google/android/gms/fitness/data/Value;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawl:[Lcom/google/android/gms/fitness/data/Value;

    return-object v0
.end method

.method public zzug()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawn:J

    return-wide v0
.end method

.method public zzuh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawo:J

    return-wide v0
.end method

.method public zzuj()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->zzawk:J

    return-wide v0
.end method
