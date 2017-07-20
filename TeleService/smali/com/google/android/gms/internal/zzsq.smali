.class public final Lcom/google/android/gms/internal/zzsq;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final zzbum:Lcom/google/android/gms/internal/zzsr;


# instance fields
.field private mSize:I

.field private zzbun:Z

.field private zzbuo:[I

.field private zzbup:[Lcom/google/android/gms/internal/zzsr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzsr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzsq;->zzbum:Lcom/google/android/gms/internal/zzsr;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsq;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzsq;->zzbun:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsq;->idealIntArraySize(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsq;->zzbuo:[I

    new-array v0, v0, [Lcom/google/android/gms/internal/zzsr;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsq;->zzbup:[Lcom/google/android/gms/internal/zzsr;

    iput v2, p0, Lcom/google/android/gms/internal/zzsq;->mSize:I

    return-void
.end method

.method private gc()V
    .locals 8

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/zzsq;->mSize:I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsq;->zzbuo:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzsq;->zzbup:[Lcom/google/android/gms/internal/zzsr;

    move v1, v2

    move v0, v2

    :goto_0
    if-lt v1, v3, :cond_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzsq;->zzbun:Z

    iput v0, p0, Lcom/google/android/gms/internal/zzsq;->mSize:I

    return-void

    :cond_0
    aget-object v6, v5, v1

    sget-object v7, Lcom/google/android/gms/internal/zzsq;->zzbum:Lcom/google/android/gms/internal/zzsr;

    if-ne v6, v7, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget v7, v4, v1

    aput v7, v4, v0

    aput-object v6, v5, v0

    const/4 v6, 0x0

    aput-object v6, v5, v1

    goto :goto_2
.end method

.method private idealByteArraySize(I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-le p1, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    shl-int v0, v2, v0

    add-int/lit8 v0, v0, -0xc

    return v0
.end method

.method private idealIntArraySize(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsq;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private zza([I[II)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-lt v0, p3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    aget v2, p1, v0

    aget v3, p2, v0

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private zza([Lcom/google/android/gms/internal/zzsr;[Lcom/google/android/gms/internal/zzsr;I)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-lt v0, p3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsq;->zzJq()Lcom/google/android/gms/internal/zzsq;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/internal/zzsq;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsq;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsq;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsq;->zzbuo:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsq;->zzbuo:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzsq;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/zzsq;->zza([I[II)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsq;->zzbup:[Lcom/google/android/gms/internal/zzsr;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsq;->zzbup:[Lcom/google/android/gms/internal/zzsr;

    iget v4, p0, Lcom/google/android/gms/internal/zzsq;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/zzsq;->zza([Lcom/google/android/gms/internal/zzsr;[Lcom/google/android/gms/internal/zzsr;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsq;->zzbun:Z

    if-nez v1, :cond_0

    :goto_0
    const/16 v1, 0x11

    :goto_1
    iget v2, p0, Lcom/google/android/gms/internal/zzsq;->mSize:I

    if-lt v0, v2, :cond_1

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsq;->gc()V

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsq;->zzbuo:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsq;->zzbup:[Lcom/google/android/gms/internal/zzsr;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsr;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsq;->size()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method size()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsq;->zzbun:Z

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzsq;->mSize:I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsq;->gc()V

    goto :goto_0
.end method

.method public final zzJq()Lcom/google/android/gms/internal/zzsq;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsq;->size()I

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/zzsq;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzsq;-><init>(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsq;->zzbuo:[I

    iget-object v4, v2, Lcom/google/android/gms/internal/zzsq;->zzbuo:[I

    invoke-static {v3, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-lt v0, v1, :cond_0

    iput v1, v2, Lcom/google/android/gms/internal/zzsq;->mSize:I

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsq;->zzbup:[Lcom/google/android/gms/internal/zzsr;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/google/android/gms/internal/zzsq;->zzbup:[Lcom/google/android/gms/internal/zzsr;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsq;->zzbup:[Lcom/google/android/gms/internal/zzsr;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzsr;->zzJr()Lcom/google/android/gms/internal/zzsr;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_1
.end method

.method zzmG(I)Lcom/google/android/gms/internal/zzsr;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsq;->zzbun:Z

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsq;->zzbup:[Lcom/google/android/gms/internal/zzsr;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsq;->gc()V

    goto :goto_0
.end method
