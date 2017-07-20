.class public Lcom/google/android/gms/drive/DriveId;
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
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaoL:Ljava/lang/String;

.field final zzaoM:J

.field final zzaoN:I

.field private volatile zzaoO:Ljava/lang/String;

.field final zzaou:J

.field private volatile zzaow:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zze;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJI)V
    .locals 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaow:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaoO:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/drive/DriveId;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/DriveId;->zzaoL:Ljava/lang/String;

    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzac(Z)V

    if-eqz p2, :cond_2

    :goto_1
    move v1, v2

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzx;->zzac(Z)V

    iput-wide p3, p0, Lcom/google/android/gms/drive/DriveId;->zzaoM:J

    iput-wide p5, p0, Lcom/google/android/gms/drive/DriveId;->zzaou:J

    iput p7, p0, Lcom/google/android/gms/drive/DriveId;->zzaoN:I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-wide/16 v4, -0x1

    cmp-long v0, p3, v4

    if-eqz v0, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final encodeToString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaow:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaow:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->zzsu()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DriveId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaow:Ljava/lang/String;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/drive/DriveId;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaou:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->zzaou:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    return v1

    :cond_0
    return v1

    :cond_1
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaoM:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaoM:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/drive/DriveId;->zzaoL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->zzaoL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaoL:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_3
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaoM:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->zzaoM:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    :goto_0
    return v0

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaoL:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaoM:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->zzaoM:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaoL:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/drive/DriveId;->zzaoL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v0, "DriveId"

    const-string/jumbo v2, "Unexpected unequal resourceId for same DriveId object."

    invoke-static {v0, v2}, Lcom/google/android/gms/drive/internal/zzz;->zzz(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v1

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaoM:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaoL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaou:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaoM:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->encodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zze;->zza(Lcom/google/android/gms/drive/DriveId;Landroid/os/Parcel;I)V

    return-void
.end method

.method final zzsu()[B
    .locals 4

    new-instance v1, Lcom/google/android/gms/drive/internal/zzat;

    invoke-direct {v1}, Lcom/google/android/gms/drive/internal/zzat;-><init>()V

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->mVersionCode:I

    iput v0, v1, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaoL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaoL:Ljava/lang/String;

    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/drive/internal/zzat;->zzarY:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaoM:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/zzat;->zzarZ:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaou:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/zzat;->zzarW:J

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaoN:I

    iput v0, v1, Lcom/google/android/gms/drive/internal/zzat;->zzasa:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzsu;->toByteArray(Lcom/google/android/gms/internal/zzsu;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
