.class public final Lcom/google/android/gms/drive/internal/zzat;
.super Lcom/google/android/gms/internal/zzso;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzso",
        "<",
        "Lcom/google/android/gms/drive/internal/zzat;",
        ">;"
    }
.end annotation


# instance fields
.field public versionCode:I

.field public zzarW:J

.field public zzarY:Ljava/lang/String;

.field public zzarZ:J

.field public zzasa:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzso;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzat;->zztl()Lcom/google/android/gms/drive/internal/zzat;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/drive/internal/zzat;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/drive/internal/zzat;

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarY:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarY:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/internal/zzat;->zzarY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarZ:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzat;->zzarZ:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v0

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzat;->zzarY:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v0

    :cond_5
    return v0

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarW:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzat;->zzarW:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    return v0

    :cond_7
    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzasa:I

    iget v3, p1, Lcom/google/android/gms/drive/internal/zzat;->zzasa:I

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_b

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzat;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_c

    :cond_9
    move v0, v1

    :goto_0
    return v0

    :cond_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/zzat;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsq;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_c
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzat;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarY:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarZ:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarZ:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarW:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarW:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzasa:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsq;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzsn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarZ:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(IJ)V

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarW:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(IJ)V

    iget v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzasa:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzso;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzasa:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    goto :goto_0
.end method

.method public zztl()Lcom/google/android/gms/drive/internal/zzat;
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarY:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarZ:J

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarW:J

    iput v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzasa:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    iput v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzbuu:I

    return-object p0
.end method

.method protected zzz()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzso;->zzz()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarY:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarZ:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzarW:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzat;->zzasa:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzat;->zzasa:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
