.class public final Lcom/google/android/gms/drive/internal/zzas;
.super Lcom/google/android/gms/internal/zzso;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzso",
        "<",
        "Lcom/google/android/gms/drive/internal/zzas;",
        ">;"
    }
.end annotation


# instance fields
.field public versionCode:I

.field public zzarV:J

.field public zzarW:J

.field public zzarX:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzso;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzas;->zztk()Lcom/google/android/gms/drive/internal/zzas;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/drive/internal/zzas;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/drive/internal/zzas;

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzas;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/drive/internal/zzas;->versionCode:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarV:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzas;->zzarV:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarW:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzas;->zzarW:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v0

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarX:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzas;->zzarX:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    return v0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_8

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzas;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    :goto_0
    return v0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/zzas;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsq;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_9
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzas;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzas;->versionCode:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarV:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarV:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarW:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarW:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarX:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarX:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsq;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzsn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzas;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarV:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(IJ)V

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarW:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(IJ)V

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarX:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzso;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    return-void
.end method

.method public zztk()Lcom/google/android/gms/drive/internal/zzas;
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzas;->versionCode:I

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarV:J

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarW:J

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarX:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzas;->zzbuu:I

    return-object p0
.end method

.method protected zzz()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzso;->zzz()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzas;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarV:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarW:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzas;->zzarX:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
