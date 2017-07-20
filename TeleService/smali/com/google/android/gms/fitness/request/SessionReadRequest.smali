.class public Lcom/google/android/gms/fitness/request/SessionReadRequest;
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
            "Lcom/google/android/gms/fitness/request/SessionReadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzLq:Ljava/lang/String;

.field private final zzRD:J

.field private final zzaAF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaAQ:Z

.field private final zzaBu:Ljava/lang/String;

.field private zzaBv:Z

.field private final zzaBw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaBx:Lcom/google/android/gms/internal/zzou;

.field private final zzavV:J

.field private final zzawe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;ZZLjava/util/List;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBu:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzLq:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzRD:J

    iput-wide p6, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzavV:J

    iput-object p8, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzawe:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaAF:Ljava/util/List;

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBv:Z

    iput-boolean p11, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaAQ:Z

    iput-object p12, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBw:Ljava/util/List;

    invoke-static {p13}, Lcom/google/android/gms/internal/zzou$zza;->zzbP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzou;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBx:Lcom/google/android/gms/internal/zzou;

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/SessionReadRequest;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBu:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBu:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzLq:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzLq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzRD:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzRD:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzavV:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzavV:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzawe:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzawe:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaAF:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaAF:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBv:Z

    iget-boolean v2, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBv:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBw:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBw:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaAQ:Z

    iget-boolean v2, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaAQ:Z

    if-ne v1, v2, :cond_0

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
    instance-of v1, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzb(Lcom/google/android/gms/fitness/request/SessionReadRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBx:Lcom/google/android/gms/internal/zzou;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBx:Lcom/google/android/gms/internal/zzou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzou;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDataSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaAF:Ljava/util/List;

    return-object v0
.end method

.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzawe:Ljava/util/List;

    return-object v0
.end method

.method public getExcludedPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBw:Ljava/util/List;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzLq:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBu:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBu:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzLq:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzRD:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzavV:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    const-string/jumbo v1, "sessionName"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "sessionId"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzLq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "startTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzRD:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "endTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzavV:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzawe:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "dataSources"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaAF:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "sessionsFromAllApps"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBv:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "excludedPackages"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBw:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string/jumbo v1, "useServer"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaAQ:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzy;->zza(Lcom/google/android/gms/fitness/request/SessionReadRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzlO()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzRD:J

    return-wide v0
.end method

.method public zzuP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaAQ:Z

    return v0
.end method

.method public zzud()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzavV:J

    return-wide v0
.end method

.method public zzve()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzaBv:Z

    return v0
.end method
