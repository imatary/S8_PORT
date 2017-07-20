.class public final Lcom/google/android/gms/internal/zzsz$zza;
.super Lcom/google/android/gms/internal/zzso;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzso",
        "<",
        "Lcom/google/android/gms/internal/zzsz$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbuI:[Ljava/lang/String;

.field public zzbuJ:[Ljava/lang/String;

.field public zzbuK:[I

.field public zzbuL:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzso;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz$zza;->zzJC()Lcom/google/android/gms/internal/zzsz$zza;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/internal/zzsz$zza;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzsz$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_8

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_9

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    return v0

    :cond_5
    return v0

    :cond_6
    return v0

    :cond_7
    return v0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsz$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsq;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_9
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    if-nez v0, :cond_8

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    if-nez v0, :cond_9

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzso;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    array-length v0, v0

    if-lez v0, :cond_3

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    array-length v0, v0

    if-ge v1, v0, :cond_3

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public zzJC()Lcom/google/android/gms/internal/zzsz$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuB:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuB:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbux:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuu:I

    return-object p0
.end method

.method protected zzz()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzso;->zzz()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_0
    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    if-nez v2, :cond_a

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    if-nez v2, :cond_c

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_4
    iget-object v5, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    array-length v5, v5

    if-lt v0, v5, :cond_5

    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuI:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-nez v5, :cond_6

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzsn;->zzgO(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_6
    iget-object v5, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_8

    add-int/2addr v0, v3

    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuJ:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-nez v5, :cond_9

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzsn;->zzgO(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_7

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    move v3, v1

    :goto_8
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    array-length v4, v4

    if-lt v2, v4, :cond_b

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_2

    :cond_b
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuK:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    :goto_9
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    array-length v3, v3

    if-lt v1, v3, :cond_d

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_d
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zza;->zzbuL:[J

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzsn;->zzas(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method
