.class public Lcom/google/android/gms/fitness/data/Bucket;
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
            "Lcom/google/android/gms/fitness/data/Bucket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzRD:J

.field private final zzavV:J

.field private final zzavX:Lcom/google/android/gms/fitness/data/Session;

.field private final zzawf:I

.field private final zzawg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final zzawh:I

.field private zzawi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Bucket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lcom/google/android/gms/fitness/data/Session;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawi:Z

    iput p1, p0, Lcom/google/android/gms/fitness/data/Bucket;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzRD:J

    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzavV:J

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzavX:Lcom/google/android/gms/fitness/data/Session;

    iput p7, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawf:I

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawg:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawh:I

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawi:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/RawBucket;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/RawBucket;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zzRD:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zzavV:J

    iget-object v6, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zzavX:Lcom/google/android/gms/fitness/data/Session;

    iget v7, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zzaxf:I

    iget-object v0, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zzawg:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/gms/fitness/data/Bucket;->zza(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget v9, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zzawh:I

    iget-boolean v10, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zzawi:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/fitness/data/Bucket;-><init>(IJJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;IZ)V

    return-void
.end method

.method private static zza(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/fitness/data/RawDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/RawDataSet;

    new-instance v3, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-direct {v3, v0, p1}, Lcom/google/android/gms/fitness/data/DataSet;-><init>(Lcom/google/android/gms/fitness/data/RawDataSet;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Bucket;)Z
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzRD:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzRD:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzavV:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzavV:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawf:I

    iget v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzawf:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawg:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzawg:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawh:I

    iget v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzawh:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawi:Z

    iget-boolean v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzawi:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static zzeM(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "bug"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "time"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "type"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "segment"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "session"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/Bucket;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Bucket;->zza(Lcom/google/android/gms/fitness/data/Bucket;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public getBucketType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawh:I

    return v0
.end method

.method public getDataSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawg:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzavV:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSession()Lcom/google/android/gms/fitness/data/Session;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzavX:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzRD:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzRD:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzavV:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "startTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzRD:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzavV:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "activity"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "dataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawg:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "bucketType"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawh:I

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/Bucket;->zzeM(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "serverHasMoreData"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzc;->zza(Lcom/google/android/gms/fitness/data/Bucket;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzlO()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzRD:J

    return-wide v0
.end method

.method public zzub()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawf:I

    return v0
.end method

.method public zzuc()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawi:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzawg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_1
    return v3

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->zzuc()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3
.end method

.method public zzud()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzavV:J

    return-wide v0
.end method
